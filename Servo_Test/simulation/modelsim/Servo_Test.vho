-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/20/2016 22:43:54"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	rra_servo_test IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	speed : IN std_logic_vector(3 DOWNTO 0);
	servo_pos : IN std_logic_vector(9 DOWNTO 0);
	pwm_out : BUFFER std_logic;
	pwm_out_i : BUFFER std_logic
	);
END rra_servo_test;

-- Design Ports Information
-- speed[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_out	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pwm_out_i	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- rst	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- servo_pos[8]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- servo_pos[9]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- servo_pos[7]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- servo_pos[5]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- servo_pos[6]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- servo_pos[4]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- servo_pos[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- servo_pos[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- servo_pos[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- servo_pos[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rra_servo_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_speed : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_servo_pos : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_pwm_out : std_logic;
SIGNAL ww_pwm_out_i : std_logic;
SIGNAL \rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \speed[0]~input_o\ : std_logic;
SIGNAL \speed[1]~input_o\ : std_logic;
SIGNAL \speed[2]~input_o\ : std_logic;
SIGNAL \speed[3]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \servo_pos[8]~input_o\ : std_logic;
SIGNAL \servo_pos[9]~input_o\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[2][5]~13_combout\ : std_logic;
SIGNAL \servo_pos[5]~input_o\ : std_logic;
SIGNAL \servo_pos[7]~input_o\ : std_logic;
SIGNAL \servo_pos[6]~input_o\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[1][9]~0_combout\ : std_logic;
SIGNAL \servo_pos[4]~input_o\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[1][8]~1_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[1][7]~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[1][6]~3_combout\ : std_logic;
SIGNAL \servo_pos[3]~input_o\ : std_logic;
SIGNAL \servo_pos[2]~input_o\ : std_logic;
SIGNAL \servo_pos[1]~input_o\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[0][9]~5_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[1][5]~4_combout\ : std_logic;
SIGNAL \servo_pos[0]~input_o\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[0][8]~7_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[1][4]~6_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[1][3]~combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[0][7]~combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[1][2]~8_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[0][6]~9_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[1][1]~10_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[0][5]~11_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[0][4]~12_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|_~1_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[2][1]~14_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add0~1\ : std_logic;
SIGNAL \rra_servo_lower|Add0~3\ : std_logic;
SIGNAL \rra_servo_lower|Add0~5\ : std_logic;
SIGNAL \rra_servo_lower|Add0~7\ : std_logic;
SIGNAL \rra_servo_lower|Add0~9\ : std_logic;
SIGNAL \rra_servo_lower|Add0~11\ : std_logic;
SIGNAL \rra_servo_lower|Add0~13\ : std_logic;
SIGNAL \rra_servo_lower|Add0~15\ : std_logic;
SIGNAL \rra_servo_lower|Add0~17\ : std_logic;
SIGNAL \rra_servo_lower|Add0~19\ : std_logic;
SIGNAL \rra_servo_lower|Add0~21\ : std_logic;
SIGNAL \rra_servo_lower|Add0~23\ : std_logic;
SIGNAL \rra_servo_lower|Add0~24_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[0]~19_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[16]~52\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[17]~54_combout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan2~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan2~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan2~1_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count~18_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count~53_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[0]~20\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[1]~21_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[1]~22\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[2]~23_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[2]~24\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[3]~25_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[3]~26\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[4]~27_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[4]~28\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[5]~29_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[5]~30\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[6]~31_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[6]~32\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[7]~33_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[7]~34\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[8]~35_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[8]~36\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[9]~37_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[9]~38\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[10]~39_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[10]~40\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[11]~41_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[11]~42\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[12]~43_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[12]~44\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[13]~45_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[13]~46\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[14]~47_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[14]~48\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[15]~49_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[15]~50\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[16]~51_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add0~22_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add0~20_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add0~18_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add0~16_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add0~14_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add0~12_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add0~10_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add0~8_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add0~6_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add0~4_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add0~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add0~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[0][3]~combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[0][2]~15_combout\ : std_logic;
SIGNAL \rra_servo_lower|Mult0|mult_core|romout[0][1]~16_combout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan1~1_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan1~3_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan1~5_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan1~7_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan1~9_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan1~11_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan1~13_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan1~15_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan1~17_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan1~19_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan1~21_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan1~23_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan1~25_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan1~27_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan1~29_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan1~31_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan1~32_combout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~1_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~3_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~4_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~q\ : std_logic;
SIGNAL \rra_servo_lower|o_pwm_out~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|o_pwm_out~q\ : std_logic;
SIGNAL \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rra_servo_lower|target\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \rra_servo_lower|pwm_count\ : std_logic_vector(17 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_speed <= speed;
ww_servo_pos <= servo_pos;
pwm_out <= ww_pwm_out;
pwm_out_i <= ww_pwm_out_i;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk\(0) <= \rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1_CLK_bus\(0);
\rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk\(1) <= \rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1_CLK_bus\(1);
\rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk\(2) <= \rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1_CLK_bus\(2);
\rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk\(3) <= \rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1_CLK_bus\(3);
\rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk\(4) <= \rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1_CLK_bus\(4);

\rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk\(0));

-- Location: IOOBUF_X7_Y0_N16
\pwm_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_lower|o_pwm_out~q\,
	devoe => ww_devoe,
	o => ww_pwm_out);

-- Location: IOOBUF_X3_Y0_N16
\pwm_out_i~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pwm_out_i);

-- Location: IOIBUF_X19_Y29_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_3
\rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 30,
	c0_initial => 1,
	c0_low => 30,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 5,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5628,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G13
\rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y21_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\servo_pos[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_servo_pos(8),
	o => \servo_pos[8]~input_o\);

-- Location: FF_X17_Y25_N9
\rra_servo_lower|target[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \servo_pos[8]~input_o\,
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|target\(8));

-- Location: IOIBUF_X0_Y22_N15
\servo_pos[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_servo_pos(9),
	o => \servo_pos[9]~input_o\);

-- Location: FF_X17_Y25_N11
\rra_servo_lower|target[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \servo_pos[9]~input_o\,
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|target\(9));

-- Location: LCCOMB_X17_Y25_N12
\rra_servo_lower|Mult0|mult_core|romout[2][5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[2][5]~13_combout\ = (\rra_servo_lower|target\(8)) # (\rra_servo_lower|target\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_lower|target\(8),
	datad => \rra_servo_lower|target\(9),
	combout => \rra_servo_lower|Mult0|mult_core|romout[2][5]~13_combout\);

-- Location: IOIBUF_X0_Y27_N1
\servo_pos[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_servo_pos(5),
	o => \servo_pos[5]~input_o\);

-- Location: FF_X11_Y27_N27
\rra_servo_lower|target[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \servo_pos[5]~input_o\,
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|target\(5));

-- Location: IOIBUF_X0_Y23_N8
\servo_pos[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_servo_pos(7),
	o => \servo_pos[7]~input_o\);

-- Location: FF_X11_Y27_N9
\rra_servo_lower|target[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \servo_pos[7]~input_o\,
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|target\(7));

-- Location: IOIBUF_X0_Y25_N22
\servo_pos[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_servo_pos(6),
	o => \servo_pos[6]~input_o\);

-- Location: FF_X11_Y27_N5
\rra_servo_lower|target[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \servo_pos[6]~input_o\,
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|target\(6));

-- Location: LCCOMB_X11_Y27_N6
\rra_servo_lower|Mult0|mult_core|romout[1][9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[1][9]~0_combout\ = (\rra_servo_lower|target\(7) & ((\rra_servo_lower|target\(5)) # (\rra_servo_lower|target\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|target\(5),
	datab => \rra_servo_lower|target\(7),
	datac => \rra_servo_lower|target\(6),
	combout => \rra_servo_lower|Mult0|mult_core|romout[1][9]~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\servo_pos[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_servo_pos(4),
	o => \servo_pos[4]~input_o\);

-- Location: FF_X11_Y27_N17
\rra_servo_lower|target[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \servo_pos[4]~input_o\,
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|target\(4));

-- Location: LCCOMB_X11_Y27_N2
\rra_servo_lower|Mult0|mult_core|romout[1][8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[1][8]~1_combout\ = (\rra_servo_lower|target\(5) & (((\rra_servo_lower|target\(6))))) # (!\rra_servo_lower|target\(5) & ((\rra_servo_lower|target\(7) & (!\rra_servo_lower|target\(6))) # (!\rra_servo_lower|target\(7) 
-- & (\rra_servo_lower|target\(6) & \rra_servo_lower|target\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|target\(5),
	datab => \rra_servo_lower|target\(7),
	datac => \rra_servo_lower|target\(6),
	datad => \rra_servo_lower|target\(4),
	combout => \rra_servo_lower|Mult0|mult_core|romout[1][8]~1_combout\);

-- Location: LCCOMB_X11_Y27_N12
\rra_servo_lower|Mult0|mult_core|romout[1][7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[1][7]~2_combout\ = (\rra_servo_lower|target\(5) & (!\rra_servo_lower|target\(7) & ((\rra_servo_lower|target\(4))))) # (!\rra_servo_lower|target\(5) & ((\rra_servo_lower|target\(7)) # ((\rra_servo_lower|target\(6) & 
-- !\rra_servo_lower|target\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|target\(5),
	datab => \rra_servo_lower|target\(7),
	datac => \rra_servo_lower|target\(6),
	datad => \rra_servo_lower|target\(4),
	combout => \rra_servo_lower|Mult0|mult_core|romout[1][7]~2_combout\);

-- Location: LCCOMB_X11_Y27_N30
\rra_servo_lower|Mult0|mult_core|romout[1][6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[1][6]~3_combout\ = (\rra_servo_lower|target\(7) & (((\rra_servo_lower|target\(5) & \rra_servo_lower|target\(6))) # (!\rra_servo_lower|target\(4)))) # (!\rra_servo_lower|target\(7) & ((\rra_servo_lower|target\(4)) # 
-- ((!\rra_servo_lower|target\(5) & !\rra_servo_lower|target\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|target\(5),
	datab => \rra_servo_lower|target\(7),
	datac => \rra_servo_lower|target\(6),
	datad => \rra_servo_lower|target\(4),
	combout => \rra_servo_lower|Mult0|mult_core|romout[1][6]~3_combout\);

-- Location: IOIBUF_X16_Y29_N1
\servo_pos[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_servo_pos(3),
	o => \servo_pos[3]~input_o\);

-- Location: FF_X17_Y27_N1
\rra_servo_lower|target[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \servo_pos[3]~input_o\,
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|target\(3));

-- Location: IOIBUF_X14_Y29_N8
\servo_pos[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_servo_pos(2),
	o => \servo_pos[2]~input_o\);

-- Location: FF_X17_Y27_N3
\rra_servo_lower|target[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \servo_pos[2]~input_o\,
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|target\(2));

-- Location: IOIBUF_X11_Y29_N22
\servo_pos[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_servo_pos(1),
	o => \servo_pos[1]~input_o\);

-- Location: FF_X17_Y27_N29
\rra_servo_lower|target[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \servo_pos[1]~input_o\,
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|target\(1));

-- Location: LCCOMB_X17_Y27_N30
\rra_servo_lower|Mult0|mult_core|romout[0][9]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[0][9]~5_combout\ = (\rra_servo_lower|target\(3) & ((\rra_servo_lower|target\(2)) # (\rra_servo_lower|target\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|target\(3),
	datac => \rra_servo_lower|target\(2),
	datad => \rra_servo_lower|target\(1),
	combout => \rra_servo_lower|Mult0|mult_core|romout[0][9]~5_combout\);

-- Location: LCCOMB_X11_Y27_N24
\rra_servo_lower|Mult0|mult_core|romout[1][5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[1][5]~4_combout\ = (\rra_servo_lower|target\(5) & (\rra_servo_lower|target\(6) $ (((!\rra_servo_lower|target\(4)) # (!\rra_servo_lower|target\(7)))))) # (!\rra_servo_lower|target\(5) & (!\rra_servo_lower|target\(6) 
-- & ((\rra_servo_lower|target\(7)) # (\rra_servo_lower|target\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|target\(5),
	datab => \rra_servo_lower|target\(7),
	datac => \rra_servo_lower|target\(6),
	datad => \rra_servo_lower|target\(4),
	combout => \rra_servo_lower|Mult0|mult_core|romout[1][5]~4_combout\);

-- Location: IOIBUF_X16_Y29_N22
\servo_pos[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_servo_pos(0),
	o => \servo_pos[0]~input_o\);

-- Location: FF_X17_Y27_N5
\rra_servo_lower|target[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \servo_pos[0]~input_o\,
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|target\(0));

-- Location: LCCOMB_X17_Y27_N6
\rra_servo_lower|Mult0|mult_core|romout[0][8]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[0][8]~7_combout\ = (\rra_servo_lower|target\(3) & ((\rra_servo_lower|target\(2) $ (!\rra_servo_lower|target\(1))))) # (!\rra_servo_lower|target\(3) & (\rra_servo_lower|target\(2) & ((\rra_servo_lower|target\(0)) # 
-- (\rra_servo_lower|target\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|target\(0),
	datab => \rra_servo_lower|target\(3),
	datac => \rra_servo_lower|target\(2),
	datad => \rra_servo_lower|target\(1),
	combout => \rra_servo_lower|Mult0|mult_core|romout[0][8]~7_combout\);

-- Location: LCCOMB_X11_Y27_N4
\rra_servo_lower|Mult0|mult_core|romout[1][4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[1][4]~6_combout\ = (\rra_servo_lower|target\(7) & (\rra_servo_lower|target\(5) $ (((!\rra_servo_lower|target\(4)))))) # (!\rra_servo_lower|target\(7) & (!\rra_servo_lower|target\(5) & ((\rra_servo_lower|target\(6)) 
-- # (\rra_servo_lower|target\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|target\(5),
	datab => \rra_servo_lower|target\(7),
	datac => \rra_servo_lower|target\(6),
	datad => \rra_servo_lower|target\(4),
	combout => \rra_servo_lower|Mult0|mult_core|romout[1][4]~6_combout\);

-- Location: LCCOMB_X11_Y27_N8
\rra_servo_lower|Mult0|mult_core|romout[1][3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[1][3]~combout\ = \rra_servo_lower|target\(7) $ (((!\rra_servo_lower|target\(4) & ((\rra_servo_lower|target\(5)) # (\rra_servo_lower|target\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|target\(5),
	datab => \rra_servo_lower|target\(6),
	datac => \rra_servo_lower|target\(7),
	datad => \rra_servo_lower|target\(4),
	combout => \rra_servo_lower|Mult0|mult_core|romout[1][3]~combout\);

-- Location: LCCOMB_X17_Y27_N2
\rra_servo_lower|Mult0|mult_core|romout[0][7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[0][7]~combout\ = (\rra_servo_lower|target\(0) & (\rra_servo_lower|target\(3) $ (((\rra_servo_lower|target\(1)))))) # (!\rra_servo_lower|target\(0) & (!\rra_servo_lower|target\(1) & ((\rra_servo_lower|target\(3)) # 
-- (\rra_servo_lower|target\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|target\(0),
	datab => \rra_servo_lower|target\(3),
	datac => \rra_servo_lower|target\(2),
	datad => \rra_servo_lower|target\(1),
	combout => \rra_servo_lower|Mult0|mult_core|romout[0][7]~combout\);

-- Location: LCCOMB_X11_Y27_N16
\rra_servo_lower|Mult0|mult_core|romout[1][2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[1][2]~8_combout\ = \rra_servo_lower|target\(6) $ (((\rra_servo_lower|target\(5)) # (\rra_servo_lower|target\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|target\(5),
	datab => \rra_servo_lower|target\(6),
	datac => \rra_servo_lower|target\(4),
	combout => \rra_servo_lower|Mult0|mult_core|romout[1][2]~8_combout\);

-- Location: LCCOMB_X17_Y27_N0
\rra_servo_lower|Mult0|mult_core|romout[0][6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[0][6]~9_combout\ = (\rra_servo_lower|target\(3) & (((\rra_servo_lower|target\(2) & \rra_servo_lower|target\(1))) # (!\rra_servo_lower|target\(0)))) # (!\rra_servo_lower|target\(3) & ((\rra_servo_lower|target\(0)) # 
-- ((!\rra_servo_lower|target\(2) & !\rra_servo_lower|target\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|target\(2),
	datab => \rra_servo_lower|target\(1),
	datac => \rra_servo_lower|target\(3),
	datad => \rra_servo_lower|target\(0),
	combout => \rra_servo_lower|Mult0|mult_core|romout[0][6]~9_combout\);

-- Location: LCCOMB_X11_Y27_N26
\rra_servo_lower|Mult0|mult_core|romout[1][1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[1][1]~10_combout\ = \rra_servo_lower|target\(5) $ (\rra_servo_lower|target\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_lower|target\(5),
	datad => \rra_servo_lower|target\(4),
	combout => \rra_servo_lower|Mult0|mult_core|romout[1][1]~10_combout\);

-- Location: LCCOMB_X17_Y27_N28
\rra_servo_lower|Mult0|mult_core|romout[0][5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[0][5]~11_combout\ = (\rra_servo_lower|target\(3) & (\rra_servo_lower|target\(2) $ (((!\rra_servo_lower|target\(0)) # (!\rra_servo_lower|target\(1)))))) # (!\rra_servo_lower|target\(3) & (!\rra_servo_lower|target\(2) 
-- & ((\rra_servo_lower|target\(1)) # (\rra_servo_lower|target\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|target\(2),
	datab => \rra_servo_lower|target\(3),
	datac => \rra_servo_lower|target\(1),
	datad => \rra_servo_lower|target\(0),
	combout => \rra_servo_lower|Mult0|mult_core|romout[0][5]~11_combout\);

-- Location: LCCOMB_X17_Y27_N4
\rra_servo_lower|Mult0|mult_core|romout[0][4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[0][4]~12_combout\ = (\rra_servo_lower|target\(3) & ((\rra_servo_lower|target\(0) $ (!\rra_servo_lower|target\(1))))) # (!\rra_servo_lower|target\(3) & (!\rra_servo_lower|target\(1) & ((\rra_servo_lower|target\(2)) # 
-- (\rra_servo_lower|target\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|target\(2),
	datab => \rra_servo_lower|target\(3),
	datac => \rra_servo_lower|target\(0),
	datad => \rra_servo_lower|target\(1),
	combout => \rra_servo_lower|Mult0|mult_core|romout[0][4]~12_combout\);

-- Location: LCCOMB_X17_Y27_N8
\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\rra_servo_lower|target\(4) & (\rra_servo_lower|Mult0|mult_core|romout[0][4]~12_combout\ $ (VCC))) # (!\rra_servo_lower|target\(4) & 
-- (\rra_servo_lower|Mult0|mult_core|romout[0][4]~12_combout\ & VCC))
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\rra_servo_lower|target\(4) & \rra_servo_lower|Mult0|mult_core|romout[0][4]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|target\(4),
	datab => \rra_servo_lower|Mult0|mult_core|romout[0][4]~12_combout\,
	datad => VCC,
	combout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X17_Y27_N10
\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\rra_servo_lower|Mult0|mult_core|romout[1][1]~10_combout\ & ((\rra_servo_lower|Mult0|mult_core|romout[0][5]~11_combout\ & 
-- (\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\rra_servo_lower|Mult0|mult_core|romout[0][5]~11_combout\ & (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\rra_servo_lower|Mult0|mult_core|romout[1][1]~10_combout\ & ((\rra_servo_lower|Mult0|mult_core|romout[0][5]~11_combout\ & (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\rra_servo_lower|Mult0|mult_core|romout[0][5]~11_combout\ & ((\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\rra_servo_lower|Mult0|mult_core|romout[1][1]~10_combout\ & (!\rra_servo_lower|Mult0|mult_core|romout[0][5]~11_combout\ & 
-- !\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\rra_servo_lower|Mult0|mult_core|romout[1][1]~10_combout\ & ((!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # 
-- (!\rra_servo_lower|Mult0|mult_core|romout[0][5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|romout[1][1]~10_combout\,
	datab => \rra_servo_lower|Mult0|mult_core|romout[0][5]~11_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X17_Y27_N12
\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\rra_servo_lower|Mult0|mult_core|romout[1][2]~8_combout\ $ (\rra_servo_lower|Mult0|mult_core|romout[0][6]~9_combout\ $ 
-- (\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\rra_servo_lower|Mult0|mult_core|romout[1][2]~8_combout\ & ((!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\) # 
-- (!\rra_servo_lower|Mult0|mult_core|romout[0][6]~9_combout\))) # (!\rra_servo_lower|Mult0|mult_core|romout[1][2]~8_combout\ & (!\rra_servo_lower|Mult0|mult_core|romout[0][6]~9_combout\ & 
-- !\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|romout[1][2]~8_combout\,
	datab => \rra_servo_lower|Mult0|mult_core|romout[0][6]~9_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X17_Y27_N14
\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\rra_servo_lower|Mult0|mult_core|romout[1][3]~combout\ & ((\rra_servo_lower|Mult0|mult_core|romout[0][7]~combout\ & 
-- (\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\rra_servo_lower|Mult0|mult_core|romout[0][7]~combout\ & (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\rra_servo_lower|Mult0|mult_core|romout[1][3]~combout\ & ((\rra_servo_lower|Mult0|mult_core|romout[0][7]~combout\ & (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\rra_servo_lower|Mult0|mult_core|romout[0][7]~combout\ & 
-- ((\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\rra_servo_lower|Mult0|mult_core|romout[1][3]~combout\ & (!\rra_servo_lower|Mult0|mult_core|romout[0][7]~combout\ & 
-- !\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\rra_servo_lower|Mult0|mult_core|romout[1][3]~combout\ & ((!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # 
-- (!\rra_servo_lower|Mult0|mult_core|romout[0][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|romout[1][3]~combout\,
	datab => \rra_servo_lower|Mult0|mult_core|romout[0][7]~combout\,
	datad => VCC,
	cin => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X17_Y27_N16
\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\rra_servo_lower|Mult0|mult_core|romout[0][8]~7_combout\ $ (\rra_servo_lower|Mult0|mult_core|romout[1][4]~6_combout\ $ 
-- (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\rra_servo_lower|Mult0|mult_core|romout[0][8]~7_combout\ & ((\rra_servo_lower|Mult0|mult_core|romout[1][4]~6_combout\) # 
-- (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # (!\rra_servo_lower|Mult0|mult_core|romout[0][8]~7_combout\ & (\rra_servo_lower|Mult0|mult_core|romout[1][4]~6_combout\ & 
-- !\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|romout[0][8]~7_combout\,
	datab => \rra_servo_lower|Mult0|mult_core|romout[1][4]~6_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X17_Y27_N18
\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\rra_servo_lower|Mult0|mult_core|romout[0][9]~5_combout\ & ((\rra_servo_lower|Mult0|mult_core|romout[1][5]~4_combout\ & 
-- (\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\rra_servo_lower|Mult0|mult_core|romout[1][5]~4_combout\ & (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # 
-- (!\rra_servo_lower|Mult0|mult_core|romout[0][9]~5_combout\ & ((\rra_servo_lower|Mult0|mult_core|romout[1][5]~4_combout\ & (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\rra_servo_lower|Mult0|mult_core|romout[1][5]~4_combout\ & ((\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\rra_servo_lower|Mult0|mult_core|romout[0][9]~5_combout\ & (!\rra_servo_lower|Mult0|mult_core|romout[1][5]~4_combout\ & 
-- !\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\rra_servo_lower|Mult0|mult_core|romout[0][9]~5_combout\ & ((!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # 
-- (!\rra_servo_lower|Mult0|mult_core|romout[1][5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|romout[0][9]~5_combout\,
	datab => \rra_servo_lower|Mult0|mult_core|romout[1][5]~4_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X17_Y27_N20
\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = (\rra_servo_lower|Mult0|mult_core|romout[1][6]~3_combout\ & (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ & VCC)) # 
-- (!\rra_servo_lower|Mult0|mult_core|romout[1][6]~3_combout\ & (\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ $ (GND)))
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((!\rra_servo_lower|Mult0|mult_core|romout[1][6]~3_combout\ & !\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|romout[1][6]~3_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X17_Y27_N22
\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\rra_servo_lower|Mult0|mult_core|romout[1][7]~2_combout\ & (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # 
-- (!\rra_servo_lower|Mult0|mult_core|romout[1][7]~2_combout\ & ((\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\rra_servo_lower|Mult0|mult_core|romout[1][7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|romout[1][7]~2_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X17_Y27_N24
\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = (\rra_servo_lower|Mult0|mult_core|romout[1][8]~1_combout\ & (\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ $ (GND))) # 
-- (!\rra_servo_lower|Mult0|mult_core|romout[1][8]~1_combout\ & (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ & VCC))
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\rra_servo_lower|Mult0|mult_core|romout[1][8]~1_combout\ & !\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|Mult0|mult_core|romout[1][8]~1_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X17_Y27_N26
\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ $ (\rra_servo_lower|Mult0|mult_core|romout[1][9]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|Mult0|mult_core|romout[1][9]~0_combout\,
	cin => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\);

-- Location: LCCOMB_X17_Y25_N6
\rra_servo_lower|Mult0|mult_core|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|_~0_combout\ = (\rra_servo_lower|target\(8) & !\rra_servo_lower|target\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_lower|target\(8),
	datad => \rra_servo_lower|target\(9),
	combout => \rra_servo_lower|Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X17_Y25_N10
\rra_servo_lower|Mult0|mult_core|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|_~1_combout\ = (!\rra_servo_lower|target\(8) & \rra_servo_lower|target\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|target\(8),
	datac => \rra_servo_lower|target\(9),
	combout => \rra_servo_lower|Mult0|mult_core|_~1_combout\);

-- Location: LCCOMB_X17_Y25_N8
\rra_servo_lower|Mult0|mult_core|romout[2][1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[2][1]~14_combout\ = \rra_servo_lower|target\(8) $ (\rra_servo_lower|target\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_lower|target\(8),
	datad => \rra_servo_lower|target\(9),
	combout => \rra_servo_lower|Mult0|mult_core|romout[2][1]~14_combout\);

-- Location: LCCOMB_X17_Y25_N14
\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\rra_servo_lower|target\(8) $ (VCC))) # 
-- (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\rra_servo_lower|target\(8) & VCC))
-- \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & \rra_servo_lower|target\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \rra_servo_lower|target\(8),
	datad => VCC,
	combout => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X17_Y25_N16
\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\rra_servo_lower|Mult0|mult_core|romout[2][1]~14_combout\ & ((\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- (\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # (!\rra_servo_lower|Mult0|mult_core|romout[2][1]~14_combout\ & ((\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- ((\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\rra_servo_lower|Mult0|mult_core|romout[2][1]~14_combout\ & (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- !\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\rra_servo_lower|Mult0|mult_core|romout[2][1]~14_combout\ & ((!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|romout[2][1]~14_combout\,
	datab => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X17_Y25_N18
\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\rra_servo_lower|Mult0|mult_core|romout[2][5]~13_combout\ $ (\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ 
-- (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\rra_servo_lower|Mult0|mult_core|romout[2][5]~13_combout\ & ((\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\) # 
-- (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # (!\rra_servo_lower|Mult0|mult_core|romout[2][5]~13_combout\ & (\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & 
-- !\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|romout[2][5]~13_combout\,
	datab => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X17_Y25_N20
\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((\rra_servo_lower|Mult0|mult_core|_~1_combout\ & 
-- (\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\rra_servo_lower|Mult0|mult_core|_~1_combout\ & (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((\rra_servo_lower|Mult0|mult_core|_~1_combout\ & (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # 
-- (!\rra_servo_lower|Mult0|mult_core|_~1_combout\ & ((\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\rra_servo_lower|Mult0|mult_core|_~1_combout\ & 
-- !\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- ((!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (!\rra_servo_lower|Mult0|mult_core|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datab => \rra_servo_lower|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X17_Y25_N22
\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = ((\rra_servo_lower|Mult0|mult_core|_~0_combout\ $ (\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ $ 
-- (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((\rra_servo_lower|Mult0|mult_core|_~0_combout\ & ((\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\) # 
-- (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\))) # (!\rra_servo_lower|Mult0|mult_core|_~0_combout\ & (\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- !\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|_~0_combout\,
	datab => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X17_Y25_N24
\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = (\rra_servo_lower|Mult0|mult_core|romout[2][5]~13_combout\ & ((\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- (\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)))) # (!\rra_servo_lower|Mult0|mult_core|romout[2][5]~13_combout\ & ((\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- ((\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ = CARRY((\rra_servo_lower|Mult0|mult_core|romout[2][5]~13_combout\ & (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- !\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\rra_servo_lower|Mult0|mult_core|romout[2][5]~13_combout\ & ((!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # 
-- (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|romout[2][5]~13_combout\,
	datab => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	cout => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X17_Y25_N26
\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = (\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ & (\rra_servo_lower|target\(9) & (!\rra_servo_lower|target\(8) & VCC))) # 
-- (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ & ((((\rra_servo_lower|target\(9) & !\rra_servo_lower|target\(8))))))
-- \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ = CARRY((\rra_servo_lower|target\(9) & (!\rra_servo_lower|target\(8) & !\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|target\(9),
	datab => \rra_servo_lower|target\(8),
	datad => VCC,
	cin => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\,
	combout => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cout => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X17_Y25_N28
\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ = \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ $ (((\rra_servo_lower|target\(8) & \rra_servo_lower|target\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|target\(8),
	datad => \rra_servo_lower|target\(9),
	cin => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\,
	combout => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\);

-- Location: LCCOMB_X20_Y24_N2
\rra_servo_lower|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~0_combout\ = \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (VCC)
-- \rra_servo_lower|Add0~1\ = CARRY(\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	combout => \rra_servo_lower|Add0~0_combout\,
	cout => \rra_servo_lower|Add0~1\);

-- Location: LCCOMB_X20_Y24_N4
\rra_servo_lower|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~2_combout\ = (\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\rra_servo_lower|Add0~1\)) # (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & 
-- ((\rra_servo_lower|Add0~1\) # (GND)))
-- \rra_servo_lower|Add0~3\ = CARRY((!\rra_servo_lower|Add0~1\) # (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add0~1\,
	combout => \rra_servo_lower|Add0~2_combout\,
	cout => \rra_servo_lower|Add0~3\);

-- Location: LCCOMB_X20_Y24_N6
\rra_servo_lower|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~4_combout\ = (\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\rra_servo_lower|Add0~3\ $ (GND))) # (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & 
-- (!\rra_servo_lower|Add0~3\ & VCC))
-- \rra_servo_lower|Add0~5\ = CARRY((\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\rra_servo_lower|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add0~3\,
	combout => \rra_servo_lower|Add0~4_combout\,
	cout => \rra_servo_lower|Add0~5\);

-- Location: LCCOMB_X20_Y24_N8
\rra_servo_lower|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~6_combout\ = (\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\rra_servo_lower|Add0~5\)) # (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & 
-- ((\rra_servo_lower|Add0~5\) # (GND)))
-- \rra_servo_lower|Add0~7\ = CARRY((!\rra_servo_lower|Add0~5\) # (!\rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add0~5\,
	combout => \rra_servo_lower|Add0~6_combout\,
	cout => \rra_servo_lower|Add0~7\);

-- Location: LCCOMB_X20_Y24_N10
\rra_servo_lower|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~8_combout\ = (\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & ((GND) # (!\rra_servo_lower|Add0~7\))) # 
-- (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & (\rra_servo_lower|Add0~7\ $ (GND)))
-- \rra_servo_lower|Add0~9\ = CARRY((\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\) # (!\rra_servo_lower|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add0~7\,
	combout => \rra_servo_lower|Add0~8_combout\,
	cout => \rra_servo_lower|Add0~9\);

-- Location: LCCOMB_X20_Y24_N12
\rra_servo_lower|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~10_combout\ = (\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (\rra_servo_lower|Add0~9\ & VCC)) # 
-- (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (!\rra_servo_lower|Add0~9\))
-- \rra_servo_lower|Add0~11\ = CARRY((!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & !\rra_servo_lower|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add0~9\,
	combout => \rra_servo_lower|Add0~10_combout\,
	cout => \rra_servo_lower|Add0~11\);

-- Location: LCCOMB_X20_Y24_N14
\rra_servo_lower|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~12_combout\ = (\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & ((GND) # (!\rra_servo_lower|Add0~11\))) # 
-- (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & (\rra_servo_lower|Add0~11\ $ (GND)))
-- \rra_servo_lower|Add0~13\ = CARRY((\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\) # (!\rra_servo_lower|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add0~11\,
	combout => \rra_servo_lower|Add0~12_combout\,
	cout => \rra_servo_lower|Add0~13\);

-- Location: LCCOMB_X20_Y24_N16
\rra_servo_lower|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~14_combout\ = (\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (!\rra_servo_lower|Add0~13\)) # 
-- (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & ((\rra_servo_lower|Add0~13\) # (GND)))
-- \rra_servo_lower|Add0~15\ = CARRY((!\rra_servo_lower|Add0~13\) # (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add0~13\,
	combout => \rra_servo_lower|Add0~14_combout\,
	cout => \rra_servo_lower|Add0~15\);

-- Location: LCCOMB_X20_Y24_N18
\rra_servo_lower|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~16_combout\ = (\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & (\rra_servo_lower|Add0~15\ $ (GND))) # 
-- (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & (!\rra_servo_lower|Add0~15\ & VCC))
-- \rra_servo_lower|Add0~17\ = CARRY((\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & !\rra_servo_lower|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add0~15\,
	combout => \rra_servo_lower|Add0~16_combout\,
	cout => \rra_servo_lower|Add0~17\);

-- Location: LCCOMB_X20_Y24_N20
\rra_servo_lower|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~18_combout\ = (\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (\rra_servo_lower|Add0~17\ & VCC)) # 
-- (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (!\rra_servo_lower|Add0~17\))
-- \rra_servo_lower|Add0~19\ = CARRY((!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & !\rra_servo_lower|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add0~17\,
	combout => \rra_servo_lower|Add0~18_combout\,
	cout => \rra_servo_lower|Add0~19\);

-- Location: LCCOMB_X20_Y24_N22
\rra_servo_lower|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~20_combout\ = (\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & (\rra_servo_lower|Add0~19\ $ (GND))) # 
-- (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & (!\rra_servo_lower|Add0~19\ & VCC))
-- \rra_servo_lower|Add0~21\ = CARRY((\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & !\rra_servo_lower|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add0~19\,
	combout => \rra_servo_lower|Add0~20_combout\,
	cout => \rra_servo_lower|Add0~21\);

-- Location: LCCOMB_X20_Y24_N24
\rra_servo_lower|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~22_combout\ = (\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & (!\rra_servo_lower|Add0~21\)) # 
-- (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & ((\rra_servo_lower|Add0~21\) # (GND)))
-- \rra_servo_lower|Add0~23\ = CARRY((!\rra_servo_lower|Add0~21\) # (!\rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add0~21\,
	combout => \rra_servo_lower|Add0~22_combout\,
	cout => \rra_servo_lower|Add0~23\);

-- Location: LCCOMB_X20_Y24_N26
\rra_servo_lower|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~24_combout\ = !\rra_servo_lower|Add0~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rra_servo_lower|Add0~23\,
	combout => \rra_servo_lower|Add0~24_combout\);

-- Location: LCCOMB_X23_Y24_N14
\rra_servo_lower|pwm_count[0]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[0]~19_combout\ = \rra_servo_lower|pwm_count\(0) $ (VCC)
-- \rra_servo_lower|pwm_count[0]~20\ = CARRY(\rra_servo_lower|pwm_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(0),
	datad => VCC,
	combout => \rra_servo_lower|pwm_count[0]~19_combout\,
	cout => \rra_servo_lower|pwm_count[0]~20\);

-- Location: LCCOMB_X23_Y23_N14
\rra_servo_lower|pwm_count[16]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[16]~51_combout\ = (\rra_servo_lower|pwm_count\(16) & (\rra_servo_lower|pwm_count[15]~50\ $ (GND))) # (!\rra_servo_lower|pwm_count\(16) & (!\rra_servo_lower|pwm_count[15]~50\ & VCC))
-- \rra_servo_lower|pwm_count[16]~52\ = CARRY((\rra_servo_lower|pwm_count\(16) & !\rra_servo_lower|pwm_count[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(16),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[15]~50\,
	combout => \rra_servo_lower|pwm_count[16]~51_combout\,
	cout => \rra_servo_lower|pwm_count[16]~52\);

-- Location: LCCOMB_X23_Y23_N16
\rra_servo_lower|pwm_count[17]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[17]~54_combout\ = \rra_servo_lower|pwm_count\(17) $ (\rra_servo_lower|pwm_count[16]~52\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(17),
	cin => \rra_servo_lower|pwm_count[16]~52\,
	combout => \rra_servo_lower|pwm_count[17]~54_combout\);

-- Location: FF_X23_Y23_N17
\rra_servo_lower|pwm_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[17]~54_combout\,
	sclr => \rra_servo_lower|pwm_count~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(17));

-- Location: LCCOMB_X23_Y23_N28
\rra_servo_lower|LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan2~2_combout\ = (!\rra_servo_lower|pwm_count\(14) & (!\rra_servo_lower|pwm_count\(15) & (!\rra_servo_lower|pwm_count\(13) & !\rra_servo_lower|pwm_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(14),
	datab => \rra_servo_lower|pwm_count\(15),
	datac => \rra_servo_lower|pwm_count\(13),
	datad => \rra_servo_lower|pwm_count\(12),
	combout => \rra_servo_lower|LessThan2~2_combout\);

-- Location: LCCOMB_X23_Y24_N0
\rra_servo_lower|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan2~0_combout\ = (!\rra_servo_lower|pwm_count\(9) & (((!\rra_servo_lower|pwm_count\(6) & !\rra_servo_lower|pwm_count\(7))) # (!\rra_servo_lower|pwm_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(6),
	datab => \rra_servo_lower|pwm_count\(9),
	datac => \rra_servo_lower|pwm_count\(8),
	datad => \rra_servo_lower|pwm_count\(7),
	combout => \rra_servo_lower|LessThan2~0_combout\);

-- Location: LCCOMB_X23_Y23_N18
\rra_servo_lower|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan2~1_combout\ = (\rra_servo_lower|LessThan2~0_combout\) # ((!\rra_servo_lower|pwm_count\(11)) # (!\rra_servo_lower|pwm_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|LessThan2~0_combout\,
	datab => \rra_servo_lower|pwm_count\(10),
	datac => \rra_servo_lower|pwm_count\(11),
	combout => \rra_servo_lower|LessThan2~1_combout\);

-- Location: LCCOMB_X23_Y23_N22
\rra_servo_lower|pwm_count~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count~18_combout\ = (((\rra_servo_lower|LessThan2~2_combout\ & \rra_servo_lower|LessThan2~1_combout\)) # (!\rra_servo_lower|pwm_count\(16))) # (!\rra_servo_lower|pwm_count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(17),
	datab => \rra_servo_lower|LessThan2~2_combout\,
	datac => \rra_servo_lower|pwm_count\(16),
	datad => \rra_servo_lower|LessThan2~1_combout\,
	combout => \rra_servo_lower|pwm_count~18_combout\);

-- Location: LCCOMB_X21_Y23_N24
\rra_servo_lower|pwm_count~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count~53_combout\ = (!\rra_servo_lower|pwm_count~18_combout\) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \rra_servo_lower|pwm_count~18_combout\,
	combout => \rra_servo_lower|pwm_count~53_combout\);

-- Location: FF_X23_Y24_N15
\rra_servo_lower|pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[0]~19_combout\,
	sclr => \rra_servo_lower|pwm_count~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(0));

-- Location: LCCOMB_X23_Y24_N16
\rra_servo_lower|pwm_count[1]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[1]~21_combout\ = (\rra_servo_lower|pwm_count\(1) & (!\rra_servo_lower|pwm_count[0]~20\)) # (!\rra_servo_lower|pwm_count\(1) & ((\rra_servo_lower|pwm_count[0]~20\) # (GND)))
-- \rra_servo_lower|pwm_count[1]~22\ = CARRY((!\rra_servo_lower|pwm_count[0]~20\) # (!\rra_servo_lower|pwm_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(1),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[0]~20\,
	combout => \rra_servo_lower|pwm_count[1]~21_combout\,
	cout => \rra_servo_lower|pwm_count[1]~22\);

-- Location: FF_X23_Y24_N17
\rra_servo_lower|pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[1]~21_combout\,
	sclr => \rra_servo_lower|pwm_count~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(1));

-- Location: LCCOMB_X23_Y24_N18
\rra_servo_lower|pwm_count[2]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[2]~23_combout\ = (\rra_servo_lower|pwm_count\(2) & (\rra_servo_lower|pwm_count[1]~22\ $ (GND))) # (!\rra_servo_lower|pwm_count\(2) & (!\rra_servo_lower|pwm_count[1]~22\ & VCC))
-- \rra_servo_lower|pwm_count[2]~24\ = CARRY((\rra_servo_lower|pwm_count\(2) & !\rra_servo_lower|pwm_count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(2),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[1]~22\,
	combout => \rra_servo_lower|pwm_count[2]~23_combout\,
	cout => \rra_servo_lower|pwm_count[2]~24\);

-- Location: FF_X23_Y24_N19
\rra_servo_lower|pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[2]~23_combout\,
	sclr => \rra_servo_lower|pwm_count~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(2));

-- Location: LCCOMB_X23_Y24_N20
\rra_servo_lower|pwm_count[3]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[3]~25_combout\ = (\rra_servo_lower|pwm_count\(3) & (!\rra_servo_lower|pwm_count[2]~24\)) # (!\rra_servo_lower|pwm_count\(3) & ((\rra_servo_lower|pwm_count[2]~24\) # (GND)))
-- \rra_servo_lower|pwm_count[3]~26\ = CARRY((!\rra_servo_lower|pwm_count[2]~24\) # (!\rra_servo_lower|pwm_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(3),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[2]~24\,
	combout => \rra_servo_lower|pwm_count[3]~25_combout\,
	cout => \rra_servo_lower|pwm_count[3]~26\);

-- Location: FF_X23_Y24_N21
\rra_servo_lower|pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[3]~25_combout\,
	sclr => \rra_servo_lower|pwm_count~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(3));

-- Location: LCCOMB_X23_Y24_N22
\rra_servo_lower|pwm_count[4]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[4]~27_combout\ = (\rra_servo_lower|pwm_count\(4) & (\rra_servo_lower|pwm_count[3]~26\ $ (GND))) # (!\rra_servo_lower|pwm_count\(4) & (!\rra_servo_lower|pwm_count[3]~26\ & VCC))
-- \rra_servo_lower|pwm_count[4]~28\ = CARRY((\rra_servo_lower|pwm_count\(4) & !\rra_servo_lower|pwm_count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(4),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[3]~26\,
	combout => \rra_servo_lower|pwm_count[4]~27_combout\,
	cout => \rra_servo_lower|pwm_count[4]~28\);

-- Location: FF_X23_Y24_N23
\rra_servo_lower|pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[4]~27_combout\,
	sclr => \rra_servo_lower|pwm_count~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(4));

-- Location: LCCOMB_X23_Y24_N24
\rra_servo_lower|pwm_count[5]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[5]~29_combout\ = (\rra_servo_lower|pwm_count\(5) & (!\rra_servo_lower|pwm_count[4]~28\)) # (!\rra_servo_lower|pwm_count\(5) & ((\rra_servo_lower|pwm_count[4]~28\) # (GND)))
-- \rra_servo_lower|pwm_count[5]~30\ = CARRY((!\rra_servo_lower|pwm_count[4]~28\) # (!\rra_servo_lower|pwm_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(5),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[4]~28\,
	combout => \rra_servo_lower|pwm_count[5]~29_combout\,
	cout => \rra_servo_lower|pwm_count[5]~30\);

-- Location: FF_X23_Y24_N25
\rra_servo_lower|pwm_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[5]~29_combout\,
	sclr => \rra_servo_lower|pwm_count~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(5));

-- Location: LCCOMB_X23_Y24_N26
\rra_servo_lower|pwm_count[6]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[6]~31_combout\ = (\rra_servo_lower|pwm_count\(6) & (\rra_servo_lower|pwm_count[5]~30\ $ (GND))) # (!\rra_servo_lower|pwm_count\(6) & (!\rra_servo_lower|pwm_count[5]~30\ & VCC))
-- \rra_servo_lower|pwm_count[6]~32\ = CARRY((\rra_servo_lower|pwm_count\(6) & !\rra_servo_lower|pwm_count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(6),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[5]~30\,
	combout => \rra_servo_lower|pwm_count[6]~31_combout\,
	cout => \rra_servo_lower|pwm_count[6]~32\);

-- Location: FF_X23_Y24_N27
\rra_servo_lower|pwm_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[6]~31_combout\,
	sclr => \rra_servo_lower|pwm_count~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(6));

-- Location: LCCOMB_X23_Y24_N28
\rra_servo_lower|pwm_count[7]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[7]~33_combout\ = (\rra_servo_lower|pwm_count\(7) & (!\rra_servo_lower|pwm_count[6]~32\)) # (!\rra_servo_lower|pwm_count\(7) & ((\rra_servo_lower|pwm_count[6]~32\) # (GND)))
-- \rra_servo_lower|pwm_count[7]~34\ = CARRY((!\rra_servo_lower|pwm_count[6]~32\) # (!\rra_servo_lower|pwm_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(7),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[6]~32\,
	combout => \rra_servo_lower|pwm_count[7]~33_combout\,
	cout => \rra_servo_lower|pwm_count[7]~34\);

-- Location: FF_X23_Y24_N29
\rra_servo_lower|pwm_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[7]~33_combout\,
	sclr => \rra_servo_lower|pwm_count~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(7));

-- Location: LCCOMB_X23_Y24_N30
\rra_servo_lower|pwm_count[8]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[8]~35_combout\ = (\rra_servo_lower|pwm_count\(8) & (\rra_servo_lower|pwm_count[7]~34\ $ (GND))) # (!\rra_servo_lower|pwm_count\(8) & (!\rra_servo_lower|pwm_count[7]~34\ & VCC))
-- \rra_servo_lower|pwm_count[8]~36\ = CARRY((\rra_servo_lower|pwm_count\(8) & !\rra_servo_lower|pwm_count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(8),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[7]~34\,
	combout => \rra_servo_lower|pwm_count[8]~35_combout\,
	cout => \rra_servo_lower|pwm_count[8]~36\);

-- Location: FF_X23_Y24_N31
\rra_servo_lower|pwm_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[8]~35_combout\,
	sclr => \rra_servo_lower|pwm_count~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(8));

-- Location: LCCOMB_X23_Y23_N0
\rra_servo_lower|pwm_count[9]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[9]~37_combout\ = (\rra_servo_lower|pwm_count\(9) & (!\rra_servo_lower|pwm_count[8]~36\)) # (!\rra_servo_lower|pwm_count\(9) & ((\rra_servo_lower|pwm_count[8]~36\) # (GND)))
-- \rra_servo_lower|pwm_count[9]~38\ = CARRY((!\rra_servo_lower|pwm_count[8]~36\) # (!\rra_servo_lower|pwm_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(9),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[8]~36\,
	combout => \rra_servo_lower|pwm_count[9]~37_combout\,
	cout => \rra_servo_lower|pwm_count[9]~38\);

-- Location: FF_X23_Y23_N1
\rra_servo_lower|pwm_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[9]~37_combout\,
	sclr => \rra_servo_lower|pwm_count~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(9));

-- Location: LCCOMB_X23_Y23_N2
\rra_servo_lower|pwm_count[10]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[10]~39_combout\ = (\rra_servo_lower|pwm_count\(10) & (\rra_servo_lower|pwm_count[9]~38\ $ (GND))) # (!\rra_servo_lower|pwm_count\(10) & (!\rra_servo_lower|pwm_count[9]~38\ & VCC))
-- \rra_servo_lower|pwm_count[10]~40\ = CARRY((\rra_servo_lower|pwm_count\(10) & !\rra_servo_lower|pwm_count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(10),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[9]~38\,
	combout => \rra_servo_lower|pwm_count[10]~39_combout\,
	cout => \rra_servo_lower|pwm_count[10]~40\);

-- Location: FF_X23_Y23_N3
\rra_servo_lower|pwm_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[10]~39_combout\,
	sclr => \rra_servo_lower|pwm_count~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(10));

-- Location: LCCOMB_X23_Y23_N4
\rra_servo_lower|pwm_count[11]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[11]~41_combout\ = (\rra_servo_lower|pwm_count\(11) & (!\rra_servo_lower|pwm_count[10]~40\)) # (!\rra_servo_lower|pwm_count\(11) & ((\rra_servo_lower|pwm_count[10]~40\) # (GND)))
-- \rra_servo_lower|pwm_count[11]~42\ = CARRY((!\rra_servo_lower|pwm_count[10]~40\) # (!\rra_servo_lower|pwm_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(11),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[10]~40\,
	combout => \rra_servo_lower|pwm_count[11]~41_combout\,
	cout => \rra_servo_lower|pwm_count[11]~42\);

-- Location: FF_X23_Y23_N5
\rra_servo_lower|pwm_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[11]~41_combout\,
	sclr => \rra_servo_lower|pwm_count~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(11));

-- Location: LCCOMB_X23_Y23_N6
\rra_servo_lower|pwm_count[12]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[12]~43_combout\ = (\rra_servo_lower|pwm_count\(12) & (\rra_servo_lower|pwm_count[11]~42\ $ (GND))) # (!\rra_servo_lower|pwm_count\(12) & (!\rra_servo_lower|pwm_count[11]~42\ & VCC))
-- \rra_servo_lower|pwm_count[12]~44\ = CARRY((\rra_servo_lower|pwm_count\(12) & !\rra_servo_lower|pwm_count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(12),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[11]~42\,
	combout => \rra_servo_lower|pwm_count[12]~43_combout\,
	cout => \rra_servo_lower|pwm_count[12]~44\);

-- Location: FF_X23_Y23_N7
\rra_servo_lower|pwm_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[12]~43_combout\,
	sclr => \rra_servo_lower|pwm_count~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(12));

-- Location: LCCOMB_X23_Y23_N8
\rra_servo_lower|pwm_count[13]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[13]~45_combout\ = (\rra_servo_lower|pwm_count\(13) & (!\rra_servo_lower|pwm_count[12]~44\)) # (!\rra_servo_lower|pwm_count\(13) & ((\rra_servo_lower|pwm_count[12]~44\) # (GND)))
-- \rra_servo_lower|pwm_count[13]~46\ = CARRY((!\rra_servo_lower|pwm_count[12]~44\) # (!\rra_servo_lower|pwm_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(13),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[12]~44\,
	combout => \rra_servo_lower|pwm_count[13]~45_combout\,
	cout => \rra_servo_lower|pwm_count[13]~46\);

-- Location: FF_X23_Y23_N9
\rra_servo_lower|pwm_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[13]~45_combout\,
	sclr => \rra_servo_lower|pwm_count~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(13));

-- Location: LCCOMB_X23_Y23_N10
\rra_servo_lower|pwm_count[14]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[14]~47_combout\ = (\rra_servo_lower|pwm_count\(14) & (\rra_servo_lower|pwm_count[13]~46\ $ (GND))) # (!\rra_servo_lower|pwm_count\(14) & (!\rra_servo_lower|pwm_count[13]~46\ & VCC))
-- \rra_servo_lower|pwm_count[14]~48\ = CARRY((\rra_servo_lower|pwm_count\(14) & !\rra_servo_lower|pwm_count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(14),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[13]~46\,
	combout => \rra_servo_lower|pwm_count[14]~47_combout\,
	cout => \rra_servo_lower|pwm_count[14]~48\);

-- Location: FF_X23_Y23_N11
\rra_servo_lower|pwm_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[14]~47_combout\,
	sclr => \rra_servo_lower|pwm_count~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(14));

-- Location: LCCOMB_X23_Y23_N12
\rra_servo_lower|pwm_count[15]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[15]~49_combout\ = (\rra_servo_lower|pwm_count\(15) & (!\rra_servo_lower|pwm_count[14]~48\)) # (!\rra_servo_lower|pwm_count\(15) & ((\rra_servo_lower|pwm_count[14]~48\) # (GND)))
-- \rra_servo_lower|pwm_count[15]~50\ = CARRY((!\rra_servo_lower|pwm_count[14]~48\) # (!\rra_servo_lower|pwm_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(15),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[14]~48\,
	combout => \rra_servo_lower|pwm_count[15]~49_combout\,
	cout => \rra_servo_lower|pwm_count[15]~50\);

-- Location: FF_X23_Y23_N13
\rra_servo_lower|pwm_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[15]~49_combout\,
	sclr => \rra_servo_lower|pwm_count~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(15));

-- Location: FF_X23_Y23_N15
\rra_servo_lower|pwm_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[16]~51_combout\,
	sclr => \rra_servo_lower|pwm_count~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(16));

-- Location: LCCOMB_X21_Y24_N0
\rra_servo_lower|Mult0|mult_core|romout[0][3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[0][3]~combout\ = \rra_servo_lower|target\(3) $ (((!\rra_servo_lower|target\(0) & ((\rra_servo_lower|target\(2)) # (\rra_servo_lower|target\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|target\(2),
	datab => \rra_servo_lower|target\(0),
	datac => \rra_servo_lower|target\(3),
	datad => \rra_servo_lower|target\(1),
	combout => \rra_servo_lower|Mult0|mult_core|romout[0][3]~combout\);

-- Location: LCCOMB_X21_Y24_N10
\rra_servo_lower|Mult0|mult_core|romout[0][2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[0][2]~15_combout\ = \rra_servo_lower|target\(2) $ (((\rra_servo_lower|target\(0)) # (\rra_servo_lower|target\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|target\(2),
	datac => \rra_servo_lower|target\(0),
	datad => \rra_servo_lower|target\(1),
	combout => \rra_servo_lower|Mult0|mult_core|romout[0][2]~15_combout\);

-- Location: LCCOMB_X21_Y28_N0
\rra_servo_lower|Mult0|mult_core|romout[0][1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Mult0|mult_core|romout[0][1]~16_combout\ = \rra_servo_lower|target\(0) $ (\rra_servo_lower|target\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_lower|target\(0),
	datad => \rra_servo_lower|target\(1),
	combout => \rra_servo_lower|Mult0|mult_core|romout[0][1]~16_combout\);

-- Location: LCCOMB_X21_Y24_N16
\rra_servo_lower|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan1~1_cout\ = CARRY((!\rra_servo_lower|pwm_count\(0) & \rra_servo_lower|target\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(0),
	datab => \rra_servo_lower|target\(0),
	datad => VCC,
	cout => \rra_servo_lower|LessThan1~1_cout\);

-- Location: LCCOMB_X21_Y24_N18
\rra_servo_lower|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan1~3_cout\ = CARRY((\rra_servo_lower|pwm_count\(1) & ((!\rra_servo_lower|LessThan1~1_cout\) # (!\rra_servo_lower|Mult0|mult_core|romout[0][1]~16_combout\))) # (!\rra_servo_lower|pwm_count\(1) & 
-- (!\rra_servo_lower|Mult0|mult_core|romout[0][1]~16_combout\ & !\rra_servo_lower|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(1),
	datab => \rra_servo_lower|Mult0|mult_core|romout[0][1]~16_combout\,
	datad => VCC,
	cin => \rra_servo_lower|LessThan1~1_cout\,
	cout => \rra_servo_lower|LessThan1~3_cout\);

-- Location: LCCOMB_X21_Y24_N20
\rra_servo_lower|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan1~5_cout\ = CARRY((\rra_servo_lower|Mult0|mult_core|romout[0][2]~15_combout\ & ((!\rra_servo_lower|LessThan1~3_cout\) # (!\rra_servo_lower|pwm_count\(2)))) # (!\rra_servo_lower|Mult0|mult_core|romout[0][2]~15_combout\ & 
-- (!\rra_servo_lower|pwm_count\(2) & !\rra_servo_lower|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Mult0|mult_core|romout[0][2]~15_combout\,
	datab => \rra_servo_lower|pwm_count\(2),
	datad => VCC,
	cin => \rra_servo_lower|LessThan1~3_cout\,
	cout => \rra_servo_lower|LessThan1~5_cout\);

-- Location: LCCOMB_X21_Y24_N22
\rra_servo_lower|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan1~7_cout\ = CARRY((\rra_servo_lower|pwm_count\(3) & ((!\rra_servo_lower|LessThan1~5_cout\) # (!\rra_servo_lower|Mult0|mult_core|romout[0][3]~combout\))) # (!\rra_servo_lower|pwm_count\(3) & 
-- (!\rra_servo_lower|Mult0|mult_core|romout[0][3]~combout\ & !\rra_servo_lower|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(3),
	datab => \rra_servo_lower|Mult0|mult_core|romout[0][3]~combout\,
	datad => VCC,
	cin => \rra_servo_lower|LessThan1~5_cout\,
	cout => \rra_servo_lower|LessThan1~7_cout\);

-- Location: LCCOMB_X21_Y24_N24
\rra_servo_lower|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan1~9_cout\ = CARRY((\rra_servo_lower|Add0~0_combout\ & ((!\rra_servo_lower|LessThan1~7_cout\) # (!\rra_servo_lower|pwm_count\(4)))) # (!\rra_servo_lower|Add0~0_combout\ & (!\rra_servo_lower|pwm_count\(4) & 
-- !\rra_servo_lower|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add0~0_combout\,
	datab => \rra_servo_lower|pwm_count\(4),
	datad => VCC,
	cin => \rra_servo_lower|LessThan1~7_cout\,
	cout => \rra_servo_lower|LessThan1~9_cout\);

-- Location: LCCOMB_X21_Y24_N26
\rra_servo_lower|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan1~11_cout\ = CARRY((\rra_servo_lower|Add0~2_combout\ & (\rra_servo_lower|pwm_count\(5) & !\rra_servo_lower|LessThan1~9_cout\)) # (!\rra_servo_lower|Add0~2_combout\ & ((\rra_servo_lower|pwm_count\(5)) # 
-- (!\rra_servo_lower|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add0~2_combout\,
	datab => \rra_servo_lower|pwm_count\(5),
	datad => VCC,
	cin => \rra_servo_lower|LessThan1~9_cout\,
	cout => \rra_servo_lower|LessThan1~11_cout\);

-- Location: LCCOMB_X21_Y24_N28
\rra_servo_lower|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan1~13_cout\ = CARRY((\rra_servo_lower|pwm_count\(6) & (\rra_servo_lower|Add0~4_combout\ & !\rra_servo_lower|LessThan1~11_cout\)) # (!\rra_servo_lower|pwm_count\(6) & ((\rra_servo_lower|Add0~4_combout\) # 
-- (!\rra_servo_lower|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(6),
	datab => \rra_servo_lower|Add0~4_combout\,
	datad => VCC,
	cin => \rra_servo_lower|LessThan1~11_cout\,
	cout => \rra_servo_lower|LessThan1~13_cout\);

-- Location: LCCOMB_X21_Y24_N30
\rra_servo_lower|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan1~15_cout\ = CARRY((\rra_servo_lower|Add0~6_combout\ & (\rra_servo_lower|pwm_count\(7) & !\rra_servo_lower|LessThan1~13_cout\)) # (!\rra_servo_lower|Add0~6_combout\ & ((\rra_servo_lower|pwm_count\(7)) # 
-- (!\rra_servo_lower|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add0~6_combout\,
	datab => \rra_servo_lower|pwm_count\(7),
	datad => VCC,
	cin => \rra_servo_lower|LessThan1~13_cout\,
	cout => \rra_servo_lower|LessThan1~15_cout\);

-- Location: LCCOMB_X21_Y23_N0
\rra_servo_lower|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan1~17_cout\ = CARRY((\rra_servo_lower|pwm_count\(8) & (\rra_servo_lower|Add0~8_combout\ & !\rra_servo_lower|LessThan1~15_cout\)) # (!\rra_servo_lower|pwm_count\(8) & ((\rra_servo_lower|Add0~8_combout\) # 
-- (!\rra_servo_lower|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(8),
	datab => \rra_servo_lower|Add0~8_combout\,
	datad => VCC,
	cin => \rra_servo_lower|LessThan1~15_cout\,
	cout => \rra_servo_lower|LessThan1~17_cout\);

-- Location: LCCOMB_X21_Y23_N2
\rra_servo_lower|LessThan1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan1~19_cout\ = CARRY((\rra_servo_lower|Add0~10_combout\ & (\rra_servo_lower|pwm_count\(9) & !\rra_servo_lower|LessThan1~17_cout\)) # (!\rra_servo_lower|Add0~10_combout\ & ((\rra_servo_lower|pwm_count\(9)) # 
-- (!\rra_servo_lower|LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add0~10_combout\,
	datab => \rra_servo_lower|pwm_count\(9),
	datad => VCC,
	cin => \rra_servo_lower|LessThan1~17_cout\,
	cout => \rra_servo_lower|LessThan1~19_cout\);

-- Location: LCCOMB_X21_Y23_N4
\rra_servo_lower|LessThan1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan1~21_cout\ = CARRY((\rra_servo_lower|Add0~12_combout\ & ((!\rra_servo_lower|LessThan1~19_cout\) # (!\rra_servo_lower|pwm_count\(10)))) # (!\rra_servo_lower|Add0~12_combout\ & (!\rra_servo_lower|pwm_count\(10) & 
-- !\rra_servo_lower|LessThan1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add0~12_combout\,
	datab => \rra_servo_lower|pwm_count\(10),
	datad => VCC,
	cin => \rra_servo_lower|LessThan1~19_cout\,
	cout => \rra_servo_lower|LessThan1~21_cout\);

-- Location: LCCOMB_X21_Y23_N6
\rra_servo_lower|LessThan1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan1~23_cout\ = CARRY((\rra_servo_lower|pwm_count\(11) & ((!\rra_servo_lower|LessThan1~21_cout\) # (!\rra_servo_lower|Add0~14_combout\))) # (!\rra_servo_lower|pwm_count\(11) & (!\rra_servo_lower|Add0~14_combout\ & 
-- !\rra_servo_lower|LessThan1~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(11),
	datab => \rra_servo_lower|Add0~14_combout\,
	datad => VCC,
	cin => \rra_servo_lower|LessThan1~21_cout\,
	cout => \rra_servo_lower|LessThan1~23_cout\);

-- Location: LCCOMB_X21_Y23_N8
\rra_servo_lower|LessThan1~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan1~25_cout\ = CARRY((\rra_servo_lower|Add0~16_combout\ & ((!\rra_servo_lower|LessThan1~23_cout\) # (!\rra_servo_lower|pwm_count\(12)))) # (!\rra_servo_lower|Add0~16_combout\ & (!\rra_servo_lower|pwm_count\(12) & 
-- !\rra_servo_lower|LessThan1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add0~16_combout\,
	datab => \rra_servo_lower|pwm_count\(12),
	datad => VCC,
	cin => \rra_servo_lower|LessThan1~23_cout\,
	cout => \rra_servo_lower|LessThan1~25_cout\);

-- Location: LCCOMB_X21_Y23_N10
\rra_servo_lower|LessThan1~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan1~27_cout\ = CARRY((\rra_servo_lower|Add0~18_combout\ & (\rra_servo_lower|pwm_count\(13) & !\rra_servo_lower|LessThan1~25_cout\)) # (!\rra_servo_lower|Add0~18_combout\ & ((\rra_servo_lower|pwm_count\(13)) # 
-- (!\rra_servo_lower|LessThan1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add0~18_combout\,
	datab => \rra_servo_lower|pwm_count\(13),
	datad => VCC,
	cin => \rra_servo_lower|LessThan1~25_cout\,
	cout => \rra_servo_lower|LessThan1~27_cout\);

-- Location: LCCOMB_X21_Y23_N12
\rra_servo_lower|LessThan1~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan1~29_cout\ = CARRY((\rra_servo_lower|pwm_count\(14) & (\rra_servo_lower|Add0~20_combout\ & !\rra_servo_lower|LessThan1~27_cout\)) # (!\rra_servo_lower|pwm_count\(14) & ((\rra_servo_lower|Add0~20_combout\) # 
-- (!\rra_servo_lower|LessThan1~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(14),
	datab => \rra_servo_lower|Add0~20_combout\,
	datad => VCC,
	cin => \rra_servo_lower|LessThan1~27_cout\,
	cout => \rra_servo_lower|LessThan1~29_cout\);

-- Location: LCCOMB_X21_Y23_N14
\rra_servo_lower|LessThan1~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan1~31_cout\ = CARRY((\rra_servo_lower|pwm_count\(15) & ((!\rra_servo_lower|LessThan1~29_cout\) # (!\rra_servo_lower|Add0~22_combout\))) # (!\rra_servo_lower|pwm_count\(15) & (!\rra_servo_lower|Add0~22_combout\ & 
-- !\rra_servo_lower|LessThan1~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(15),
	datab => \rra_servo_lower|Add0~22_combout\,
	datad => VCC,
	cin => \rra_servo_lower|LessThan1~29_cout\,
	cout => \rra_servo_lower|LessThan1~31_cout\);

-- Location: LCCOMB_X21_Y23_N16
\rra_servo_lower|LessThan1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan1~32_combout\ = (\rra_servo_lower|Add0~24_combout\ & ((!\rra_servo_lower|pwm_count\(16)) # (!\rra_servo_lower|LessThan1~31_cout\))) # (!\rra_servo_lower|Add0~24_combout\ & (!\rra_servo_lower|LessThan1~31_cout\ & 
-- !\rra_servo_lower|pwm_count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add0~24_combout\,
	datad => \rra_servo_lower|pwm_count\(16),
	cin => \rra_servo_lower|LessThan1~31_cout\,
	combout => \rra_servo_lower|LessThan1~32_combout\);

-- Location: LCCOMB_X23_Y24_N2
\rra_servo_lower|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~0_combout\ = (!\rra_servo_lower|pwm_count\(6) & (!\rra_servo_lower|pwm_count\(5) & (!\rra_servo_lower|pwm_count\(4) & !\rra_servo_lower|pwm_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(6),
	datab => \rra_servo_lower|pwm_count\(5),
	datac => \rra_servo_lower|pwm_count\(4),
	datad => \rra_servo_lower|pwm_count\(7),
	combout => \rra_servo_lower|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y23_N24
\rra_servo_lower|pwm_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out~0_combout\ = (\rra_servo_lower|LessThan0~0_combout\) # (((!\rra_servo_lower|pwm_count\(9)) # (!\rra_servo_lower|pwm_count\(8))) # (!\rra_servo_lower|pwm_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|LessThan0~0_combout\,
	datab => \rra_servo_lower|pwm_count\(10),
	datac => \rra_servo_lower|pwm_count\(8),
	datad => \rra_servo_lower|pwm_count\(9),
	combout => \rra_servo_lower|pwm_out~0_combout\);

-- Location: LCCOMB_X23_Y23_N26
\rra_servo_lower|pwm_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out~1_combout\ = ((\rra_servo_lower|pwm_out~0_combout\ & (!\rra_servo_lower|pwm_count\(11) & !\rra_servo_lower|pwm_count\(12)))) # (!\rra_servo_lower|pwm_count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(13),
	datab => \rra_servo_lower|pwm_out~0_combout\,
	datac => \rra_servo_lower|pwm_count\(11),
	datad => \rra_servo_lower|pwm_count\(12),
	combout => \rra_servo_lower|pwm_out~1_combout\);

-- Location: LCCOMB_X23_Y23_N20
\rra_servo_lower|pwm_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out~2_combout\ = (\rra_servo_lower|pwm_out~1_combout\ & (!\rra_servo_lower|pwm_count\(15) & (!\rra_servo_lower|pwm_count\(16) & !\rra_servo_lower|pwm_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_out~1_combout\,
	datab => \rra_servo_lower|pwm_count\(15),
	datac => \rra_servo_lower|pwm_count\(16),
	datad => \rra_servo_lower|pwm_count\(14),
	combout => \rra_servo_lower|pwm_out~2_combout\);

-- Location: LCCOMB_X21_Y23_N22
\rra_servo_lower|pwm_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out~3_combout\ = (\rst~input_o\ & ((!\rra_servo_lower|pwm_count~18_combout\) # (!\rra_servo_lower|pwm_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(17),
	datab => \rst~input_o\,
	datad => \rra_servo_lower|pwm_count~18_combout\,
	combout => \rra_servo_lower|pwm_out~3_combout\);

-- Location: LCCOMB_X21_Y23_N28
\rra_servo_lower|pwm_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out~4_combout\ = (\rra_servo_lower|pwm_out~3_combout\ & ((\rra_servo_lower|LessThan1~32_combout\) # ((\rra_servo_lower|pwm_out~2_combout\) # (!\rra_servo_lower|pwm_count~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|LessThan1~32_combout\,
	datab => \rra_servo_lower|pwm_out~2_combout\,
	datac => \rra_servo_lower|pwm_out~3_combout\,
	datad => \rra_servo_lower|pwm_count~18_combout\,
	combout => \rra_servo_lower|pwm_out~4_combout\);

-- Location: FF_X21_Y23_N29
\rra_servo_lower|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_out~q\);

-- Location: LCCOMB_X21_Y23_N18
\rra_servo_lower|o_pwm_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|o_pwm_out~0_combout\ = (\rst~input_o\ & \rra_servo_lower|pwm_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \rra_servo_lower|pwm_out~q\,
	combout => \rra_servo_lower|o_pwm_out~0_combout\);

-- Location: FF_X21_Y23_N19
\rra_servo_lower|o_pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_clk_10mhz_10kh|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rra_servo_lower|o_pwm_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|o_pwm_out~q\);

-- Location: IOIBUF_X0_Y25_N15
\speed[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(0),
	o => \speed[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\speed[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(1),
	o => \speed[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\speed[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(2),
	o => \speed[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\speed[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(3),
	o => \speed[3]~input_o\);
END structure;


