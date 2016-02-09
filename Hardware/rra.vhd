library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity rra is
port (
		clk			: in  std_ulogic;
		rst			: in  std_ulogic;

		--Servo Positions
		l1,l2		: out std_ulogic;
		m1,m2		: out std_ulogic;
		u1,u2		: out std_ulogic;

		--Control
		low_u		: in std_ulogic;
		low_d		: in std_ulogic;
		mid_u		: in std_ulogic;
		mid_d		: in std_ulogic;
		upp_u		: in std_ulogic;
		upp_d		: in std_ulogic;
		store 		: in std_ulogic;
		speed		: in std_ulogic_vector(3 downto 0);
		mode		: in std_ulogic_vector(1 downto 0)
	 );
end rra;

architecture v1 of rra is

	component memory
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

	component controller
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

	component servo_controller
	generic(
			STEP		: integer
		);
	port(
			i_clk		: in  std_ulogic;
			i_rst		: in  std_ulogic;

			i_speed 	: in  std_ulogic_vector(3 downto 0);
			o_current	: out unsigned(15 downto 0);
			i_target  	: in  unsigned(15 downto 0);
			o_pwm_out 	: out std_ulogic
		);
	end component;

	--Memory
	signal addr		: std_ulogic_vector(7 downto 0);
	signal data_in	: std_ulogic_vector(63 downto 0);
	signal data_out	: std_ulogic_vector(63 downto 0);
	signal l_memory : std_ulogic;
	signal w_memory : std_ulogic;

	--Movement (c - current, t - target)
	constant SERVO_STEP					: integer := 10;
	signal moving						: std_ulogic;
	signal c_lower_pos,		t_lower_pos	: unsigned(15 downto 0);
	signal c_middle_pos,	t_middle_pos: unsigned(15 downto 0);
	signal c_upper_pos,		t_upper_pos	: unsigned(15 downto 0);

	--Servo control
	signal l_keypad 					: std_ulogic;
	signal l_pwm, m_pwm, u_pwm			: std_ulogic;

begin
	
	rra_memory	: memory 
	port map(
		clk 		=> clk,
		rst 		=> rst,
		addr		=> addr,
		data_in		=> data_in,
		data_out	=> data_out,
		l_memory	=> l_memory,
		w_memory	=> w_memory
	);

	rra_controller	: controller 
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

	rra_servo_lower : servo_controller 
	generic map(
		STEP 		=> SERVO_STEP
	)
	port map(
		i_clk 		=> clk,
		i_rst 		=> rst,
		i_speed		=> speed,
		o_current	=> c_lower_pos,
		i_target	=> t_lower_pos,
		o_pwm_out	=> l_pwm
	);

	rra_servo_middle: servo_controller 
	generic map(
		STEP 		=> SERVO_STEP
	)
	port map(
		i_clk 		=> clk,
		i_rst 		=> rst,
		i_speed		=> speed,
		o_current	=> c_lower_pos,
		i_target	=> t_lower_pos,
		o_pwm_out	=> m_pwm
	);

	rra_servo_upper : servo_controller 
	generic map(
		STEP 		=> SERVO_STEP
	)
	port map(
		i_clk 		=> clk,
		i_rst 		=> rst,
		i_speed		=> speed,
		o_current	=> c_lower_pos,
		i_target	=> t_lower_pos,
		o_pwm_out	=> u_pwm
	);


	movement 	: process(c_lower_pos, t_lower_pos, c_middle_pos, t_middle_pos, c_upper_pos, t_upper_pos)
	begin
		if((c_lower_pos = t_lower_pos) AND (c_middle_pos = t_middle_pos) AND (c_upper_pos = t_upper_pos)) then
			moving <= '0';
		else 
			moving <= '1';
		end if;

		l1 <= l_pwm;
		l2 <= l_pwm;
		m1 <= m_pwm;
		m2 <= m_pwm;
		u1 <= u_pwm;
		u2 <= u_pwm;
	end process;
end v1;


