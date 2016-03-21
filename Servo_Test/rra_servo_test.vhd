library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rra_servo_test is
    port(
      clk         : in  std_ulogic;
      rst         : in  std_ulogic;

      speed   	  	: in  std_ulogic_vector(3 downto 0);
		servo_pos	: in  std_ulogic_vector(9 downto 0);
      pwm_out 	  	: out std_ulogic;
	   pwm_out_i	: out std_ulogic
    );
  
end rra_servo_test;

architecture rtl of rra_servo_test is
	component rra_servo_controller
	generic(
			STEP      : integer;
			MAX_STEPS : integer  
		);
	port(
			i_clk         : in  std_ulogic;
			i_clk_1khz    : in  std_ulogic;
			i_clk_10mhz   : in  std_ulogic;
			i_rst         : in  std_ulogic;

			i_speed 			: in  std_ulogic_vector(3 downto 0);
			i_target  		: in  std_ulogic_vector(9 downto 0);
			i_offset			: in  std_ulogic_vector(7 downto 0);
			o_pwm_out 		: out std_ulogic
		);
	end component;
	
	component rra_pll_10mhz_10khz
		port(
			areset		: in  std_logic  := '0';
			inclk0		: in  std_logic  := '0';
			c0				: out std_logic;
			c1				: out std_logic 
		);
	end component;
	
	signal clk_10mhz 		: std_ulogic;
	signal clk_1khz 		: std_ulogic;
	
	signal reset 			: std_ulogic;
begin
	
	rra_clk_10mhz_10kh : rra_pll_10mhz_10khz PORT MAP (
		areset		=> '0',
		inclk0		=> clk,
		c0				=> clk_10mhz,
		c1	    	 	=> clk_1khz
	);
	
	rra_servo_lower : rra_servo_controller 
	generic map(
		STEP 		=> 1,
		MAX_STEPS 	=> 2000
	)
	port map(
		i_clk 				=> clk,
		i_clk_1khz 			=> clk_1khz,
		i_clk_10mhz 		=> clk_10mhz,
		i_rst 				=> reset,
		i_speed				=> speed,
		i_offset 			=> "00000000",
		i_target				=> servo_pos,
		o_pwm_out			=> pwm_out
	);
	
	reset <= NOT rst;
end rtl;
