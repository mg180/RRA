library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity rra is
port (
		clk			: in  std_ulogic;
		rst			: in  std_ulogic;

		--Servo Positions (PWM)
		l1,l2		: out std_ulogic;
		l1_i,l2_i	: out std_ulogic;		
		m1,m2		: out std_ulogic;
		m1_i,m2_i	: out std_ulogic;
		u1,u2		: out std_ulogic;
		u1_i,u2_i	: out std_ulogic;
		w1,g1 		: out std_ulogic;
		w1_i,g1_i	: out std_ulogic;
		b1			: out std_ulogic;
		b1_i		: out std_ulogic;


		--Keypad
		i_key_row	: in  std_ulogic_vector(3 downto 0);
		o_key_col 	: out std_ulogic_vector(3 downto 0);

		--LEDs
		 leds       : out std_ulogic_vector(9 downto 0);
		
		--7 segment
		display_id : in  std_ulogic_vector(2 downto 0);
		segment7_1 : out std_ulogic_vector(6 downto 0);
   	segment7_2 : out std_ulogic_vector(6 downto 0);
   	segment7_3 : out std_ulogic_vector(6 downto 0);
   	segment7_4 : out std_ulogic_vector(6 downto 0);
		 
		--Control
		led_sel 	: in std_ulogic;
		speed		: in std_ulogic_vector(3 downto 0);
		mode		: in std_ulogic_vector(1 downto 0)
	 );
end rra;

architecture v1 of rra is

	component rra_pll_10mhz_10khz
		port(
			areset		: in  std_logic  := '0';
			inclk0		: in  std_logic  := '0';
			c0				: out std_logic;
			c1				: out std_logic 
		);
	end component;

	component rra_key_in is
  	port(
      clk       : in  std_ulogic;

      key_col   : out std_ulogic_vector(3 downto 0);
      key_row   : in  std_ulogic_vector(3 downto 0);
      key_out   : out std_ulogic_vector(15 downto 0);

      -- 1 bit per key as shown below:
      --
      -- 15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00
      -- D  C  B  A  #  *  9  8  7  6  5  4  3  2  1  0

      key_err   : out std_ulogic
    );
  
  	end component;

	component rra_memory
	port(
			clk		 		: in  std_ulogic;
			rst 	 		: in  std_ulogic;

			addr	 		: in  std_ulogic_vector(6 downto 0);
			data_in	 		: in  std_ulogic_vector(71 downto 0);
			data_out 		: out std_ulogic_vector(71 downto 0);
			data_out_prev	: out std_ulogic_vector(71 downto 0);
			valid_out		: out std_ulogic;
			l_memory 		: in  std_ulogic;
			w_memory 		: in  std_ulogic
		);
	end component;

	component rra_controller
	port(
			clk       : in  std_ulogic;
	        rst       : in  std_ulogic;
	        
	        mode      : in  std_ulogic_vector(1 downto 0);
	        moving    : in  std_ulogic;
	        moved 	  : in  std_ulogic;
	        store     : in  std_ulogic;
	        l_keypad  : out std_ulogic;
	        l_memory  : out std_ulogic;
	        w_memory  : out std_ulogic
		);
	end component;

	component rra_servo_controller
	generic(
			STEP      : integer;
			MAX_STEPS : integer  
		);
	port(
			i_clk         : in  std_ulogic;
      i_clk_10mhz   : in  std_ulogic;
		i_clk_10khz   : in  std_ulogic;
      i_rst         : in  std_ulogic;

			i_speed 			: in  std_ulogic_vector(3 downto 0);
			o_current			: out std_ulogic_vector(11 downto 0);
			o_current_i 	: out std_ulogic_vector(11 downto 0);
			i_target  		: in  std_ulogic_vector(11 downto 0);
			i_offset			: in  std_ulogic_vector(7 downto 0);
			o_pwm_out 		: out std_ulogic;
			o_pwm_out_i		: out std_ulogic
		);
	end component;

	component rra_feedback is
	port(
		i_clk   	: in  std_ulogic;
		i_rst   	: in  std_ulogic;

		i_select   	: in  std_ulogic_vector(2 downto 0);
		i_ch1	 	: in  std_ulogic_vector(13 downto 0);
		i_ch2	 	: in  std_ulogic_vector(13 downto 0);
		i_ch3	 	: in  std_ulogic_vector(13 downto 0);
		i_ch4	 	: in  std_ulogic_vector(13 downto 0);
		i_ch5	 	: in  std_ulogic_vector(13 downto 0);
		i_ch6	 	: in  std_ulogic_vector(13 downto 0);

		o_7seg1		: out std_ulogic_vector(6 downto 0);
		o_7seg2		: out std_ulogic_vector(6 downto 0);
		o_7seg3		: out std_ulogic_vector(6 downto 0);
		o_7seg4		: out std_ulogic_vector(6 downto 0)
    );
	end component;

	--General
	signal reset 	: std_ulogic;

	--Keypad
	signal key_out	: std_ulogic_vector(15 downto 0);
	signal key_err  : std_ulogic;
	signal low_u	: std_ulogic;
	signal low_d	: std_ulogic;
	signal mid_u	: std_ulogic;
	signal mid_d	: std_ulogic;
	signal upp_u	: std_ulogic;
	signal upp_d	: std_ulogic;
	signal wri_l	: std_ulogic;
	signal wri_r	: std_ulogic;
	signal gri_g	: std_ulogic;
	signal gri_r	: std_ulogic;
	signal bas_l	: std_ulogic;
	signal bas_r	: std_ulogic;
	signal store 	: std_ulogic;

	--Clocks
	signal clk_10mhz: std_ulogic;
	signal clk_10khz: std_ulogic;
	signal clk_10mhz_count: integer range 0 to 4;
	signal clk_1khz_count: integer range 0 to 9999;

	--Memory
	signal addr			: std_ulogic_vector(6 downto 0);
	signal data_in		: std_ulogic_vector(71 downto 0);
	signal data_out		: std_ulogic_vector(71 downto 0);
	signal data_out_prev: std_ulogic_vector(71 downto 0);
	signal valid_out	: std_ulogic;
	signal l_memory 	: std_ulogic;
	signal w_memory 	: std_ulogic;

	signal moved 	: std_ulogic;

	--Movement (c - current, t - target)
	constant SERVO_STEP						: integer := 1;
	constant LOWER_MAX_STEPS				: integer := 2000;
	constant MIDDLE_MAX_STEPS				: integer := 2000;
	constant UPPER_MAX_STEPS				: integer := 2000;
	constant WRIST_MAX_STEPS				: integer := 2000;
	constant GRIPPER_MAX_STEPS				: integer := 2000;
	constant BASE_MAX_STEPS 				: integer := 2000;
	signal moving							: std_ulogic;
	signal c_lower_pos,		t_lower_pos		: std_ulogic_vector(11 downto 0);
	signal c_lower_pos_i					: std_ulogic_vector(11 downto 0);
	signal c_middle_pos,	t_middle_pos	: std_ulogic_vector(11 downto 0);
	signal c_middle_pos_i					: std_ulogic_vector(11 downto 0);
	signal c_upper_pos,		t_upper_pos		: std_ulogic_vector(11 downto 0);
	signal c_upper_pos_i					: std_ulogic_vector(11 downto 0);
	signal c_wrist_pos,		t_wrist_pos		: std_ulogic_vector(11 downto 0);
	signal c_wrist_pos_i					: std_ulogic_vector(11 downto 0);
	signal c_gripper_pos,	t_gripper_pos	: std_ulogic_vector(11 downto 0);
	signal c_gripper_pos_i					: std_ulogic_vector(11 downto 0);
	signal c_base_pos,		t_base_pos		: std_ulogic_vector(11 downto 0);
	signal c_base_pos_i						: std_ulogic_vector(11 downto 0);
	
	--Servo control
	signal l_keypad 					: std_ulogic;
	signal l_pwm, m_pwm, u_pwm, g_pwm, b_pwm, w_pwm					: std_ulogic;
	signal l_pwm_i, m_pwm_i, u_pwm_i, g_pwm_i, b_pwm_i, w_pwm_i		: std_ulogic;

	--Feedback
	signal ch1, ch2, ch3, ch4, ch5, ch6 	: std_ulogic_vector(13 downto 0);

begin
	
	rra_clk_10mhz_10kh : rra_pll_10mhz_10khz PORT MAP (
		areset	 => '0',
		inclk0	 => clk,
		c0	 	   => clk_10mhz,
		c1	     => clk_10khz
	);

	keypad 		: rra_key_in
	port map(
		clk 	=> clk,
		key_col => o_key_col,
		key_row => i_key_row,
		key_out => key_out,
		key_err => key_err
	);

	memory : rra_memory	 
	port map(
		clk 			=> clk,
		rst 			=> reset,
		addr			=> addr,
		data_in			=> data_in,
		data_out		=> data_out,
		data_out_prev 	=> data_out_prev,
		valid_out 		=> valid_out,
		l_memory		=> l_memory,
		w_memory		=> w_memory
	);

	controller		: rra_controller 
	port map(
		clk 		=> clk,
		rst 		=> reset,
		mode 		=> mode,
		moving  	=> moving,
		moved 		=> moved,
		store 		=> store,
		l_keypad	=> l_keypad,
		l_memory	=> l_memory,
		w_memory	=> w_memory
	);

	rra_servo_lower : rra_servo_controller 
	generic map(
		STEP 		=> SERVO_STEP,
		MAX_STEPS 	=> LOWER_MAX_STEPS
	)
	port map(
		i_clk 				=> clk,
		i_clk_10mhz 	=> clk_10mhz,
		i_clk_10khz 	=> clk_10khz,
		i_rst 				=> reset,
		i_speed				=> speed,
		i_offset 			=> "00111111",
		o_current			=> c_lower_pos,
		o_current_i		=> c_lower_pos_i,
		i_target			=> t_lower_pos,
		o_pwm_out			=> l_pwm,
		o_pwm_out_i		=> l_pwm_i
	);
	

	rra_servo_middle: rra_servo_controller 
	generic map(
		STEP 		=> SERVO_STEP,
		MAX_STEPS 	=> MIDDLE_MAX_STEPS
	)
	port map(
		i_clk 				=> clk,
		i_clk_10mhz 	=> clk_10mhz,
		i_clk_10khz 	=> clk_10khz,
		i_rst 		=> reset,
		i_speed		=> speed,
		i_offset 	=> "00000000",
		o_current	=> c_middle_pos,
		o_current_i	=> c_middle_pos_i,
		i_target	=> t_middle_pos,
		o_pwm_out	=> m_pwm,
		o_pwm_out_i	=> m_pwm_i
	);

	rra_servo_upper : rra_servo_controller 
	generic map(
		STEP 		=> SERVO_STEP,
		MAX_STEPS 	=> UPPER_MAX_STEPS
	)
	port map(
		i_clk 				=> clk,
		i_clk_10mhz 	=> clk_10mhz,
		i_clk_10khz 	=> clk_10khz,
		i_rst 		=> reset,
		i_speed		=> speed,
		i_offset 	=> "00111111",
		o_current	=> c_upper_pos,
		o_current_i	=> c_upper_pos_i,
		i_target	=> t_upper_pos,
		o_pwm_out	=> u_pwm,
		o_pwm_out_i	=> u_pwm_i
	);
	
   rra_servo_wrist : rra_servo_controller 
	generic map(
		STEP 		=> SERVO_STEP,
		MAX_STEPS 	=> WRIST_MAX_STEPS
	)
	port map(
		i_clk 				=> clk,
		i_clk_10mhz 	=> clk_10mhz,
		i_clk_10khz 	=> clk_10khz,
		i_rst 		=> reset,
		i_speed		=> speed,
		i_offset 	=> "00000000",
		o_current	=> c_wrist_pos,
		o_current_i	=> c_wrist_pos_i,
		i_target	=> t_wrist_pos,
		o_pwm_out	=> w_pwm,
		o_pwm_out_i	=> w_pwm_i
	);
	
	rra_servo_gripper : rra_servo_controller 
	generic map(
		STEP 		=> SERVO_STEP,
		MAX_STEPS 	=> GRIPPER_MAX_STEPS
	)
	port map(
		i_clk 				=> clk,
		i_clk_10mhz 	=> clk_10mhz,
		i_clk_10khz 	=> clk_10khz,
		i_rst 		=> reset,
		i_speed		=> speed,
		i_offset 	=> "00000000",
		o_current	=> c_gripper_pos,
		o_current_i	=> c_gripper_pos_i,
		i_target	=> t_gripper_pos,
		o_pwm_out	=> g_pwm,
		o_pwm_out_i	=> g_pwm_i
	);
	
	rra_servo_base : rra_servo_controller 
	generic map(
		STEP 		=> SERVO_STEP,
		MAX_STEPS 	=> BASE_MAX_STEPS
	)
	port map(
		i_clk 				=> clk,
		i_clk_10mhz 	=> clk_10mhz,
		i_clk_10khz 	=> clk_10khz,
		i_rst 		=> reset,
		i_speed		=> speed,
		i_offset 	=> "00000000",
		o_current	=> c_base_pos,
		o_current_i	=> c_base_pos_i,
		i_target	=> t_base_pos,
		o_pwm_out	=> b_pwm,
		o_pwm_out_i	=> b_pwm_i
	);

	feedback : rra_feedback
	port map(
		i_clk 	 	=> clk,
		i_rst 		=> reset,
		i_select 	=> display_id,
		i_ch1 	 	=> ch1,
		i_ch2 	 	=> ch2,
		i_ch3 	 	=> ch3,
		i_ch4 	 	=> ch4,
		i_ch5 	 	=> ch5,
		i_ch6 	 	=> ch6,

		o_7seg1 	=> segment7_1,
		o_7seg2 	=> segment7_2,
		o_7seg3 	=> segment7_3,
		o_7seg4 	=> segment7_4
	);


	movement 	: process  (c_lower_pos, 	t_lower_pos, 
						  	c_middle_pos, 	t_middle_pos, 
						  	c_upper_pos, 	t_upper_pos,
						  	c_wrist_pos, 	t_wrist_pos,
						  	c_gripper_pos,	t_gripper_pos,
						  	c_base_pos,		t_base_pos)
	begin
		if((c_lower_pos = t_lower_pos) AND (c_middle_pos = t_middle_pos)   AND (c_upper_pos = t_upper_pos)) AND
		  ((c_wrist_pos = t_wrist_pos) AND (c_gripper_pos = t_gripper_pos) AND (c_base_pos = t_base_pos)) then
			moving <= '0';
		else 
			moving <= '1';
		end if;
	end process;

	set_target: process(clk)
		variable adjusted_step: integer range 0 to (SERVO_STEP*15);
		variable new_target: 	integer;
	begin
		if rising_edge(clk_10khz) then
			if reset = '1' then
				t_lower_pos <= (others => '0');
				t_middle_pos <= (others => '0');
				t_upper_pos <= (others => '0');
				t_gripper_pos <= (others => '0');
				t_wrist_pos <= (others => '0');
				t_base_pos <= (others => '0');
			else
				if l_memory = '1' then
					t_lower_pos <= data_out(11 downto 0);
					t_middle_pos <= data_out(23 downto 12);
					t_upper_pos <= data_out(35 downto 24);
					t_wrist_pos <= data_out(47 downto 36);
					t_gripper_pos <= data_out(59 downto 48);
					t_base_pos <= data_out(71 downto 60);
				else
					if l_keypad = '1' then
						if key_err = '0' then
							--Find how much to step by
							adjusted_step := to_integer(unsigned(speed)) * SERVO_STEP;

							if low_u = '1' then
								new_target := (to_integer(unsigned(t_lower_pos))) + adjusted_step;
								if new_target > LOWER_MAX_STEPS then
									new_target:= LOWER_MAX_STEPS;
								end if;
								t_lower_pos <= std_ulogic_vector(to_unsigned(new_target, t_lower_pos'length));
							end if;
							if low_d = '1' then
								new_target := (to_integer(unsigned(t_lower_pos))) - adjusted_step;
								if new_target < 0 then
									new_target:= 0;
								end if;
								t_lower_pos <= std_ulogic_vector(to_unsigned(new_target, t_lower_pos'length));
							end if;
							if mid_u = '1' then
								new_target := (to_integer(unsigned(t_middle_pos))) + adjusted_step;
								if new_target > MIDDLE_MAX_STEPS then
									new_target:= MIDDLE_MAX_STEPS;
								end if;
								t_middle_pos <= std_ulogic_vector(to_unsigned(new_target, t_middle_pos'length));
							end if;
							if mid_d = '1' then
								new_target := (to_integer(unsigned(t_middle_pos))) - adjusted_step;
								if new_target < 0 then
									new_target:= 0;
								end if;
								t_middle_pos <= std_ulogic_vector(to_unsigned(new_target, t_middle_pos'length));
							end if;
							if upp_u = '1' then
								new_target := (to_integer(unsigned(t_upper_pos))) + adjusted_step;
								if new_target > UPPER_MAX_STEPS then
									new_target:= UPPER_MAX_STEPS;
								end if;
								t_upper_pos <= std_ulogic_vector(to_unsigned(new_target, t_upper_pos'length));
							end if;
							if upp_d = '1' then
								new_target := (to_integer(unsigned(t_upper_pos))) - adjusted_step;
								if new_target < 0 then
									new_target:= 0;
								end if;
								t_upper_pos <= std_ulogic_vector(to_unsigned(new_target, t_upper_pos'length));
							end if;
							if wri_r = '1' then
								new_target := (to_integer(unsigned(t_wrist_pos))) + adjusted_step;
								if new_target > WRIST_MAX_STEPS then
									new_target:= WRIST_MAX_STEPS;
								end if;
								t_wrist_pos <= std_ulogic_vector(to_unsigned(new_target, t_wrist_pos'length));
							end if;
							if wri_l = '1' then
								new_target := (to_integer(unsigned(t_wrist_pos))) - adjusted_step;
								if new_target < 0 then
									new_target:= 0;
								end if;
								t_wrist_pos <= std_ulogic_vector(to_unsigned(new_target, t_wrist_pos'length));
							end if;
							if gri_g = '1' then
								new_target := (to_integer(unsigned(t_gripper_pos))) + adjusted_step;
								if new_target > GRIPPER_MAX_STEPS then
									new_target:= GRIPPER_MAX_STEPS;
								end if;
								t_gripper_pos <= std_ulogic_vector(to_unsigned(new_target, t_gripper_pos'length));
							end if;
							if gri_r = '1' then
								new_target := (to_integer(unsigned(t_gripper_pos))) - adjusted_step;
								if new_target < 0 then
									new_target:= 0;
								end if;
								t_gripper_pos <= std_ulogic_vector(to_unsigned(new_target, t_gripper_pos'length));
							end if;
							if bas_r = '1' then
								new_target := (to_integer(unsigned(t_base_pos))) + adjusted_step;
								if new_target > BASE_MAX_STEPS then
									new_target:= BASE_MAX_STEPS;
								end if;
								t_base_pos <= std_ulogic_vector(to_unsigned(new_target, t_base_pos'length));
							end if;
							if bas_l = '1' then
								new_target := (to_integer(unsigned(t_base_pos))) - adjusted_step;
								if new_target < 0 then
									new_target:= 0;
								end if;
								t_base_pos <= std_ulogic_vector(to_unsigned(new_target, t_base_pos'length));
							end if;
						end if;
					end if;
				end if;
			end if;
		end if;
	end process;

	check_movement: process(clk)
	-- Checks to see if any current positions have moved from the current stored memory value
	begin
		if rising_edge(clk) then
			data_in(11 downto 0) <= c_lower_pos;
			data_in(23 downto 12) <= c_middle_pos;
			data_in(35 downto 24) <= c_upper_pos;
			data_in(47 downto 36) <= c_wrist_pos;
			data_in(59 downto 48) <= c_gripper_pos;
			data_in(71 downto 60) <= c_base_pos;
			if (data_out_prev(11 downto 0) = c_lower_pos) AND (data_out_prev(23 downto 12) = c_middle_pos) AND (data_out_prev(35 downto 24) = c_upper_pos)
				AND (data_out_prev(47 downto 36) = c_wrist_pos) AND (data_out_prev(59 downto 48) = c_gripper_pos) AND (data_out_prev(71 downto 60) = c_base_pos) then
				moved <= '0';
			else 
				moved <= '1';
			end if;
		end if;
	end process;

	increment_memory: process(clk)
	begin
	
		if rising_edge(clk) then
			if reset = '1' then
				addr <= (others => '0');
			else
				if w_memory = '1' then
					addr <= std_ulogic_vector(to_unsigned((to_integer(unsigned(addr)) + 1), addr'length));
				end if;
				if l_memory = '1' then
					if valid_out = '1' then
						
						addr <= std_ulogic_vector(to_unsigned((to_integer(unsigned(addr)) + 1), addr'length));
					else 
						addr <= (others => '0');
					end if;
				end if;
			end if;
		end if;
	end process;

	-- Map keypad keys to control signals
	-- 1 bit per key as shown below:
	--
	-- 15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00
	-- D  C  B  A  #  *  9  8  7  6  5  4  3  2  1  0
	low_u <= key_out(1);
	low_d <= key_out(7);
	mid_u <= key_out(2);
	mid_d <= key_out(8);
	upp_u <= key_out(3);
	upp_d <= key_out(9);
	wri_l <= key_out(4);
	wri_r <= key_out(13);
	gri_g <= key_out(12);
	gri_r <= key_out(14);
	bas_l <= key_out(10);
	bas_r <= key_out(15);
	store <= key_out(5);

	update_leds: process(clk)
	begin
		if rising_edge(clk) then
			if led_sel = '1' then
				leds(0) <= l_pwm;
				leds(1) <= l_pwm_i;
				leds(2) <= m_pwm;
				leds(3) <= m_pwm_i;
				leds(4) <= u_pwm;
				leds(5) <= u_pwm_i;
				leds(6) <= w_pwm;
				leds(7) <= w_pwm_i;
				leds(8) <= g_pwm;
				leds(9) <= g_pwm_i;
			else 
				leds(6 downto 0) <= addr;
				leds(8 downto 7) <= (others => '0');
				leds(9) <= moved;
			end if;
		end if;
	end process;
	

	reset <= NOT rst;
	
	-- Map PWM out signals to port
	l1 <= l_pwm;
	l1_i <= l_pwm_i;
	l2 <= l_pwm;
	l2_i <= l_pwm_i;
	m1 <= m_pwm;
	m1_i <= m_pwm_i;
	m2 <= m_pwm;
	m2_i <= m_pwm_i;
	u1 <= u_pwm;
	u1_i <= u_pwm_i;
	u2 <= u_pwm;
	u2_i <= u_pwm_i;
	g1 <= g_pwm;
	g1_i <= g_pwm_i;
	w1 <= w_pwm;
	w1_i <= w_pwm_i;
	b1 <= b_pwm;
	b1_i <= b_pwm_i;

	--Feedback
	ch1(13 downto 12) <= "00";	ch1(11 downto 0)  <= c_lower_pos;
	ch2(13 downto 12) <= "00";	ch2(11 downto 0)  <= c_middle_pos;
	ch3(13 downto 12) <= "00";	ch3(11 downto 0)  <= c_upper_pos;
	ch4(13 downto 12) <= "00";	ch4(11 downto 0)  <= c_wrist_pos;
	ch5(13 downto 12) <= "00";	ch5(11 downto 0)  <= c_gripper_pos;
	ch6(13 downto 12) <= "00";	ch6(11 downto 0)  <= c_base_pos;


end v1;


