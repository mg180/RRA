library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity rra is
port (
		clk			: in  std_ulogic;
		rst			: in  std_ulogic;

		--Servo Positions (PWM)
		l1,l2			: out std_ulogic;
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
		 leds       : out std_logic_vector(9 downto 0);
		
		--7 segment
		 segment7_1 : out std_logic_vector(6 downto 0);
       segment7_2 : out std_logic_vector(6 downto 0);
       segment7_3 : out std_logic_vector(6 downto 0);
       segment7_4 : out std_logic_vector(6 downto 0);
		 
		--Control
		speed		: in std_ulogic_vector(3 downto 0);
		mode		: in std_ulogic_vector(1 downto 0)
	 );
end rra;

architecture v1 of rra is

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
			clk		: in  std_ulogic;
			rst 	: in  std_ulogic;

			addr	: in  std_ulogic_vector(7 downto 0);
			data_in	: in  std_ulogic_vector(63 downto 0);
			data_out: out std_ulogic_vector(63 downto 0);
			l_memory: in  std_ulogic;
			w_memory: in  std_ulogic
		);
	end component;

	component rra_controller
	port(
			clk       : in  std_ulogic;
	        rst       : in  std_ulogic;
	        
	        mode      : in  std_ulogic_vector(1 downto 0);
	        moving    : in  std_ulogic;
	        store     : in  std_ulogic;
	        l_keypad  : out std_ulogic;
	        l_memory  : out std_ulogic;
	        w_memory  : out std_ulogic
		);
	end component;

	component rra_servo_controller
	generic(
			STEP		: integer
		);
	port(
			i_clk		: in  std_ulogic;
			i_rst		: in  std_ulogic;

			i_speed 	: in  std_ulogic_vector(3 downto 0);
			o_current	: out std_ulogic_vector(9 downto 0);
			o_current_i : out std_ulogic_vector(9 downto 0);
			i_target  	: in  std_ulogic_vector(9 downto 0);
			i_offset		: in  std_ulogic_vector(7 downto 0);
			o_pwm_out 	: out std_ulogic;
			o_pwm_out_i	: out std_ulogic
		);
	end component;

	--Keypad
	signal key_out	: std_ulogic_vector(15 downto 0);
	signal key_err  : std_ulogic;
	signal low_u	: std_ulogic;
	signal low_d	: std_ulogic;
	signal mid_u	: std_ulogic;
	signal mid_d	: std_ulogic;
	signal upp_u	: std_ulogic;
	signal upp_d	: std_ulogic;
	signal store 	: std_ulogic;

	--Memory
	signal addr		: std_ulogic_vector(7 downto 0);
	signal data_in	: std_ulogic_vector(63 downto 0);
	signal data_out	: std_ulogic_vector(63 downto 0);
	signal l_memory : std_ulogic;
	signal w_memory : std_ulogic;

	--Movement (c - current, t - target)
	constant SERVO_STEP						: integer := 10;
	signal moving							: std_ulogic;
	signal c_lower_pos,		t_lower_pos		: std_ulogic_vector(9 downto 0);
	signal c_lower_pos_i					: std_ulogic_vector(9 downto 0);
	signal c_middle_pos,	t_middle_pos	: std_ulogic_vector(9 downto 0);
	signal c_middle_pos_i					: std_ulogic_vector(9 downto 0);
	signal c_upper_pos,		t_upper_pos		: std_ulogic_vector(9 downto 0);
	signal c_upper_pos_i					: std_ulogic_vector(9 downto 0);
	signal c_wrist_pos,		t_wrist_pos		: std_ulogic_vector(9 downto 0);
	signal c_wrist_pos_i					: std_ulogic_vector(9 downto 0);
	signal c_gripper_pos,	t_gripper_pos	: std_ulogic_vector(9 downto 0);
	signal c_gripper_pos_i					: std_ulogic_vector(9 downto 0);
	signal c_base_pos,		t_base_pos		: std_ulogic_vector(9 downto 0);
	signal c_base_pos_i						: std_ulogic_vector(9 downto 0);
	
	--Servo control
	signal l_keypad 					: std_ulogic;
	signal l_pwm, m_pwm, u_pwm, g_pwm, b_pwm, w_pwm					: std_ulogic;
	signal l_pwm_i, m_pwm_i, u_pwm_i, g_pwm_i, b_pwm_i, w_pwm_i		: std_ulogic;

begin
	
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
		clk 		=> clk,
		rst 		=> rst,
		addr		=> addr,
		data_in		=> data_in,
		data_out	=> data_out,
		l_memory	=> l_memory,
		w_memory	=> w_memory
	);

	controller		: rra_controller 
	port map(
		clk 		=> clk,
		rst 		=> rst,
		mode 		=> mode,
		moving  	=> moving,
		store 		=> store,
		l_keypad	=> l_keypad,
		l_memory	=> l_memory,
		w_memory	=> w_memory
	);

	rra_servo_lower : rra_servo_controller 
	generic map(
		STEP 		=> SERVO_STEP
	)
	port map(
		i_clk 		=> clk,
		i_rst 		=> rst,
		i_speed		=> speed,
		i_offset 	=> "00111111",
		o_current	=> c_lower_pos,
		o_current_i	=> c_lower_pos_i,
		i_target	=> t_lower_pos,
		o_pwm_out	=> l_pwm,
		o_pwm_out_i	=> l_pwm_i
	);
	

	rra_servo_middle: rra_servo_controller 
	generic map(
		STEP 		=> SERVO_STEP
	)
	port map(
		i_clk 		=> clk,
		i_rst 		=> rst,
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
		STEP 		=> SERVO_STEP
	)
	port map(
		i_clk 		=> clk,
		i_rst 		=> rst,
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
		STEP 		=> SERVO_STEP
	)
	port map(
		i_clk 		=> clk,
		i_rst 		=> rst,
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
		STEP 		=> SERVO_STEP
	)
	port map(
		i_clk 		=> clk,
		i_rst 		=> rst,
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
		STEP 		=> SERVO_STEP
	)
	port map(
		i_clk 		=> clk,
		i_rst 		=> rst,
		i_speed		=> speed,
		i_offset 	=> "00000000",
		o_current	=> c_base_pos,
		o_current_i	=> c_base_pos_i,
		i_target	=> t_base_pos,
		o_pwm_out	=> b_pwm,
		o_pwm_out_i	=> b_pwm_i
	);


	movement 	: process(c_lower_pos, t_lower_pos, c_middle_pos, t_middle_pos, c_upper_pos, t_upper_pos)
	begin
		if((c_lower_pos = t_lower_pos) AND (c_middle_pos = t_middle_pos) AND (c_upper_pos = t_upper_pos)) then
			moving <= '0';
		else 
			moving <= '1';
		end if;
	end process;

	set_target: process(clk)
	begin
		if rst = '1' then
			t_lower_pos <= (others => '0');
			t_middle_pos <= (others => '0');
			t_upper_pos <= (others => '0');
			t_gripper_pos <= (others => '0');
			t_wrist_pos <= (others => '0');
			t_base_pos <= (others => '0');
		else
			if rising_edge(clk) then
				--if l_keypad = '1' then
					--TODO Check for upper and lower boundaries
					if low_u = '1' then
						--t_lower_pos <= std_ulogic_vector(to_unsigned((to_integer(unsigned(t_lower_pos))) + SERVO_STEP, t_lower_pos'length));
						t_lower_pos <= "1111011111";
					end if;
					if low_d = '1' then
						--t_lower_pos <= std_ulogic_vector(to_unsigned((to_integer(unsigned(t_lower_pos))) - SERVO_STEP, t_lower_pos'length));
						t_lower_pos <= (others => '0');
					end if;
					if mid_u = '1' then
						t_middle_pos <= std_ulogic_vector(to_unsigned((to_integer(unsigned(t_middle_pos))) + SERVO_STEP, t_middle_pos'length));
						t_middle_pos <= "1111011111";
					end if;
					if mid_d = '1' then
						t_middle_pos <= std_ulogic_vector(to_unsigned((to_integer(unsigned(t_middle_pos))) - SERVO_STEP, t_middle_pos'length));
						t_middle_pos <= (others => '0');
					end if;
					if upp_u = '1' then
						t_upper_pos <= std_ulogic_vector(to_unsigned((to_integer(unsigned(t_upper_pos))) + SERVO_STEP, t_upper_pos'length));
						t_upper_pos <= "1111011111";
					end if;
					if upp_d = '1' then
						t_upper_pos <= std_ulogic_vector(to_unsigned((to_integer(unsigned(t_upper_pos))) - SERVO_STEP, t_upper_pos'length));
						t_upper_pos <= (others => '0');
					end if;
				end if;
			--end if;
		end if;
	end process;

	to_implement: process(clk)
	begin
		addr <= (others => '0');
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

	leds(0) <= key_out(1);
	leds(1) <= key_out(7);
	leds(2) <= key_out(2);
	leds(3) <= key_out(8);
	leds(4) <= key_out(3);
	leds(5) <= key_out(9);
	leds(6) <= '1';
	
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
	
	
----------------------------------------------------------------------
-- 7 Seg display - int input max 9999
----------------------------------------------------------------------
  seg7dis : process(c_lower_pos)
    variable dig : integer;
    variable ten : integer;
    variable hun : integer;
    variable tho : integer;
  begin
    tho := to_integer(unsigned(c_lower_pos))/1000;
    hun := (to_integer(unsigned(c_lower_pos))-(tho*1000))/100;
    ten := (to_integer(unsigned(c_lower_pos))-(tho*1000)-(hun*100))/10;
    dig := to_integer(unsigned(c_lower_pos))-(tho*1000)-(hun*100)-(ten*10);

    case std_logic_vector(to_unsigned(dig, 4)) is
      when "0000" => segment7_1 <= "0000001";  --   
      when "0001" => segment7_1 <= "1001111";  -- 
      when "0010" => segment7_1 <= "0010010";  --   
      when "0011" => segment7_1 <= "0000110";  --   
      when "0100" => segment7_1 <= "1001100";  --    
      when "0101" => segment7_1 <= "0100100";  --   
      when "0110" => segment7_1 <= "0100000";  --   
      when "0111" => segment7_1 <= "0001111";  --   
      when "1000" => segment7_1 <= "0000000";  --     
      when "1001" => segment7_1 <= "0000100";  --      
      when others => segment7_1 <= "1111111";  -- when anything other is types
    end case;

    case std_logic_vector(to_unsigned(ten, 4)) is
      when "0000" => segment7_2 <= "0000001";  --   
      when "0001" => segment7_2 <= "1001111";  -- 
      when "0010" => segment7_2 <= "0010010";  --   
      when "0011" => segment7_2 <= "0000110";  --   
      when "0100" => segment7_2 <= "1001100";  --    
      when "0101" => segment7_2 <= "0100100";  --   
      when "0110" => segment7_2 <= "0100000";  --   
      when "0111" => segment7_2 <= "0001111";  --   
      when "1000" => segment7_2 <= "0000000";  --     
      when "1001" => segment7_2 <= "0000100";  --      
      when others => segment7_2 <= "1111111";  -- when anything other is types
    end case;

    case std_logic_vector(to_unsigned(hun, 4)) is
      when "0000" => segment7_3 <= "0000001";  --   
      when "0001" => segment7_3 <= "1001111";  -- 
      when "0010" => segment7_3 <= "0010010";  --   
      when "0011" => segment7_3 <= "0000110";  --   
      when "0100" => segment7_3 <= "1001100";  --    
      when "0101" => segment7_3 <= "0100100";  --   
      when "0110" => segment7_3 <= "0100000";  --   
      when "0111" => segment7_3 <= "0001111";  --   
      when "1000" => segment7_3 <= "0000000";  --     
      when "1001" => segment7_3 <= "0000100";  --      
      when others => segment7_3 <= "1111111";  -- when anything other is types
    end case;

    case std_logic_vector(to_unsigned(tho, 4)) is
      when "0000" => segment7_4 <= "0000001";  --   
      when "0001" => segment7_4 <= "1001111";  -- 
      when "0010" => segment7_4 <= "0010010";  --   
      when "0011" => segment7_4 <= "0000110";  --   
      when "0100" => segment7_4 <= "1001100";  --    
      when "0101" => segment7_4 <= "0100100";  --   
      when "0110" => segment7_4 <= "0100000";  --   
      when "0111" => segment7_4 <= "0001111";  --   
      when "1000" => segment7_4 <= "0000000";  --     
      when "1001" => segment7_4 <= "0000100";  --      
      when others => segment7_4 <= "1111111";  -- when anything other is types
    end case;
  end process seg7dis;
-------------------------------------------------------------------------------



end v1;


