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

-- DATE "03/01/2016 21:36:43"

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

ENTITY 	rra IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	l1 : OUT std_logic;
	l2 : OUT std_logic;
	l1_i : OUT std_logic;
	l2_i : OUT std_logic;
	m1 : OUT std_logic;
	m2 : OUT std_logic;
	m1_i : OUT std_logic;
	m2_i : OUT std_logic;
	u1 : OUT std_logic;
	u2 : OUT std_logic;
	u1_i : OUT std_logic;
	u2_i : OUT std_logic;
	w1 : OUT std_logic;
	g1 : OUT std_logic;
	w1_i : OUT std_logic;
	g1_i : OUT std_logic;
	b1 : OUT std_logic;
	b1_i : OUT std_logic;
	i_key_row : IN IEEE.STD_LOGIC_1164.std_ulogic_vector(3 DOWNTO 0);
	o_key_col : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(3 DOWNTO 0);
	leds : OUT std_logic_vector(9 DOWNTO 0);
	segment7_1 : OUT std_logic_vector(6 DOWNTO 0);
	segment7_2 : OUT std_logic_vector(6 DOWNTO 0);
	segment7_3 : OUT std_logic_vector(6 DOWNTO 0);
	segment7_4 : OUT std_logic_vector(6 DOWNTO 0);
	speed : IN IEEE.STD_LOGIC_1164.std_ulogic_vector(3 DOWNTO 0);
	mode : IN IEEE.STD_LOGIC_1164.std_ulogic_vector(1 DOWNTO 0)
	);
END rra;

-- Design Ports Information
-- l1	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1_i	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2_i	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1_i	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2_i	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u1	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u2	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u1_i	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u2_i	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w1	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g1	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w1_i	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g1_i	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1_i	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_col[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_col[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_col[2]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_col[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_1[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_1[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_1[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_1[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_1[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_1[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_1[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_2[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_2[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_2[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_2[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_2[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_2[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_2[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_3[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_3[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_3[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_3[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_3[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_3[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_3[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_4[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_4[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_4[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_4[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_4[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_4[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment7_4[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[1]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_key_row[2]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_key_row[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_key_row[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_key_row[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rra IS
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
SIGNAL ww_l1 : std_logic;
SIGNAL ww_l2 : std_logic;
SIGNAL ww_l1_i : std_logic;
SIGNAL ww_l2_i : std_logic;
SIGNAL ww_m1 : std_logic;
SIGNAL ww_m2 : std_logic;
SIGNAL ww_m1_i : std_logic;
SIGNAL ww_m2_i : std_logic;
SIGNAL ww_u1 : std_logic;
SIGNAL ww_u2 : std_logic;
SIGNAL ww_u1_i : std_logic;
SIGNAL ww_u2_i : std_logic;
SIGNAL ww_w1 : std_logic;
SIGNAL ww_g1 : std_logic;
SIGNAL ww_w1_i : std_logic;
SIGNAL ww_g1_i : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_b1_i : std_logic;
SIGNAL ww_i_key_row : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_key_col : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_segment7_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment7_2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment7_3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment7_4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_speed : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \rra_servo_middle|clk_1khz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_lower|clk_1khz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_base|clk_1mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_upper|clk_1khz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_gripper|clk_1mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_wrist|clk_1mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_middle|clk_1mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_upper|clk_1mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_lower|clk_1mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \mode[0]~input_o\ : std_logic;
SIGNAL \mode[1]~input_o\ : std_logic;
SIGNAL \l1~output_o\ : std_logic;
SIGNAL \l2~output_o\ : std_logic;
SIGNAL \l1_i~output_o\ : std_logic;
SIGNAL \l2_i~output_o\ : std_logic;
SIGNAL \m1~output_o\ : std_logic;
SIGNAL \m2~output_o\ : std_logic;
SIGNAL \m1_i~output_o\ : std_logic;
SIGNAL \m2_i~output_o\ : std_logic;
SIGNAL \u1~output_o\ : std_logic;
SIGNAL \u2~output_o\ : std_logic;
SIGNAL \u1_i~output_o\ : std_logic;
SIGNAL \u2_i~output_o\ : std_logic;
SIGNAL \w1~output_o\ : std_logic;
SIGNAL \g1~output_o\ : std_logic;
SIGNAL \w1_i~output_o\ : std_logic;
SIGNAL \g1_i~output_o\ : std_logic;
SIGNAL \b1~output_o\ : std_logic;
SIGNAL \b1_i~output_o\ : std_logic;
SIGNAL \o_key_col[0]~output_o\ : std_logic;
SIGNAL \o_key_col[1]~output_o\ : std_logic;
SIGNAL \o_key_col[2]~output_o\ : std_logic;
SIGNAL \o_key_col[3]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \leds[8]~output_o\ : std_logic;
SIGNAL \leds[9]~output_o\ : std_logic;
SIGNAL \segment7_1[0]~output_o\ : std_logic;
SIGNAL \segment7_1[1]~output_o\ : std_logic;
SIGNAL \segment7_1[2]~output_o\ : std_logic;
SIGNAL \segment7_1[3]~output_o\ : std_logic;
SIGNAL \segment7_1[4]~output_o\ : std_logic;
SIGNAL \segment7_1[5]~output_o\ : std_logic;
SIGNAL \segment7_1[6]~output_o\ : std_logic;
SIGNAL \segment7_2[0]~output_o\ : std_logic;
SIGNAL \segment7_2[1]~output_o\ : std_logic;
SIGNAL \segment7_2[2]~output_o\ : std_logic;
SIGNAL \segment7_2[3]~output_o\ : std_logic;
SIGNAL \segment7_2[4]~output_o\ : std_logic;
SIGNAL \segment7_2[5]~output_o\ : std_logic;
SIGNAL \segment7_2[6]~output_o\ : std_logic;
SIGNAL \segment7_3[0]~output_o\ : std_logic;
SIGNAL \segment7_3[1]~output_o\ : std_logic;
SIGNAL \segment7_3[2]~output_o\ : std_logic;
SIGNAL \segment7_3[3]~output_o\ : std_logic;
SIGNAL \segment7_3[4]~output_o\ : std_logic;
SIGNAL \segment7_3[5]~output_o\ : std_logic;
SIGNAL \segment7_3[6]~output_o\ : std_logic;
SIGNAL \segment7_4[0]~output_o\ : std_logic;
SIGNAL \segment7_4[1]~output_o\ : std_logic;
SIGNAL \segment7_4[2]~output_o\ : std_logic;
SIGNAL \segment7_4[3]~output_o\ : std_logic;
SIGNAL \segment7_4[4]~output_o\ : std_logic;
SIGNAL \segment7_4[5]~output_o\ : std_logic;
SIGNAL \segment7_4[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[0]~6_combout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan3~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|clk_1khz~1_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[0]~7\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[1]~8_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[1]~9\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[2]~10_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[2]~11\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[3]~12_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[3]~13\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[4]~14_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[4]~15\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[5]~16_combout\ : std_logic;
SIGNAL \rra_servo_lower|clk_1mhz~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|clk_1mhz~feeder_combout\ : std_logic;
SIGNAL \rra_servo_lower|clk_1mhz~q\ : std_logic;
SIGNAL \rra_servo_lower|clk_1mhz~clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[0]~15_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[12]~43\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[13]~44_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[13]~45\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[14]~46_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count~39_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count~40_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count~41_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[0]~16\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[1]~17_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[1]~18\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[2]~19_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[2]~20\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[3]~21_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[3]~22\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[4]~23_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[4]~24\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[5]~25_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[5]~26\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[6]~27_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[6]~28\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[7]~29_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[7]~30\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[8]~31_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[8]~32\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[9]~33_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[9]~34\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[10]~35_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[10]~36\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[11]~37_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[11]~38\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[12]~42_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~1_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[0]~10_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[0]~22_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[0]~11\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[1]~12_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[1]~13\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[2]~14_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[2]~15\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[3]~16_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[3]~17\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[4]~18_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[4]~19\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[5]~20_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[5]~21\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[6]~23_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[6]~24\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[7]~25_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[7]~26\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[8]~27_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[8]~28\ : std_logic;
SIGNAL \rra_servo_base|clk_1khz_count[9]~29_combout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan4~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan4~1_combout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan4~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|clk_1khz~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|clk_1khz~feeder_combout\ : std_logic;
SIGNAL \rra_servo_lower|clk_1khz~q\ : std_logic;
SIGNAL \rra_servo_lower|clk_1khz~clkctrl_outclk\ : std_logic;
SIGNAL \i_key_row[2]~input_o\ : std_logic;
SIGNAL \i_key_row[1]~input_o\ : std_logic;
SIGNAL \i_key_row[3]~input_o\ : std_logic;
SIGNAL \keypad|Mux45~4_combout\ : std_logic;
SIGNAL \keypad|col_count[0]~1_combout\ : std_logic;
SIGNAL \keypad|delay[0]~16_combout\ : std_logic;
SIGNAL \keypad|delay[5]~27\ : std_logic;
SIGNAL \keypad|delay[6]~28_combout\ : std_logic;
SIGNAL \keypad|delay[6]~29\ : std_logic;
SIGNAL \keypad|delay[7]~30_combout\ : std_logic;
SIGNAL \keypad|delay[7]~31\ : std_logic;
SIGNAL \keypad|delay[8]~32_combout\ : std_logic;
SIGNAL \keypad|delay[8]~33\ : std_logic;
SIGNAL \keypad|delay[9]~34_combout\ : std_logic;
SIGNAL \keypad|delay[9]~35\ : std_logic;
SIGNAL \keypad|delay[10]~36_combout\ : std_logic;
SIGNAL \keypad|delay[10]~37\ : std_logic;
SIGNAL \keypad|delay[11]~38_combout\ : std_logic;
SIGNAL \keypad|delay[11]~39\ : std_logic;
SIGNAL \keypad|delay[12]~40_combout\ : std_logic;
SIGNAL \keypad|delay[12]~41\ : std_logic;
SIGNAL \keypad|delay[13]~42_combout\ : std_logic;
SIGNAL \keypad|delay[13]~43\ : std_logic;
SIGNAL \keypad|delay[14]~44_combout\ : std_logic;
SIGNAL \keypad|delay[14]~45\ : std_logic;
SIGNAL \keypad|delay[15]~46_combout\ : std_logic;
SIGNAL \keypad|LessThan0~0_combout\ : std_logic;
SIGNAL \keypad|Equal0~0_combout\ : std_logic;
SIGNAL \keypad|LessThan0~1_combout\ : std_logic;
SIGNAL \keypad|LessThan0~2_combout\ : std_logic;
SIGNAL \keypad|delay[0]~17\ : std_logic;
SIGNAL \keypad|delay[1]~18_combout\ : std_logic;
SIGNAL \keypad|delay[1]~19\ : std_logic;
SIGNAL \keypad|delay[2]~20_combout\ : std_logic;
SIGNAL \keypad|delay[2]~21\ : std_logic;
SIGNAL \keypad|delay[3]~22_combout\ : std_logic;
SIGNAL \keypad|delay[3]~23\ : std_logic;
SIGNAL \keypad|delay[4]~24_combout\ : std_logic;
SIGNAL \keypad|delay[4]~25\ : std_logic;
SIGNAL \keypad|delay[5]~26_combout\ : std_logic;
SIGNAL \keypad|Equal0~1_combout\ : std_logic;
SIGNAL \keypad|Equal0~3_combout\ : std_logic;
SIGNAL \keypad|Equal0~2_combout\ : std_logic;
SIGNAL \keypad|Equal0~4_combout\ : std_logic;
SIGNAL \keypad|col_count[1]~0_combout\ : std_logic;
SIGNAL \keypad|Mux47~4_combout\ : std_logic;
SIGNAL \i_key_row[0]~input_o\ : std_logic;
SIGNAL \keypad|key_next[1]~0_combout\ : std_logic;
SIGNAL \keypad|key_out[1]~feeder_combout\ : std_logic;
SIGNAL \keypad|Mux16~0_combout\ : std_logic;
SIGNAL \keypad|err~q\ : std_logic;
SIGNAL \keypad|key_out[1]~0_combout\ : std_logic;
SIGNAL \keypad|key_out[1]~1_combout\ : std_logic;
SIGNAL \keypad|Mux41~2_combout\ : std_logic;
SIGNAL \keypad|Mux41~3_combout\ : std_logic;
SIGNAL \keypad|key_out[7]~feeder_combout\ : std_logic;
SIGNAL \t_lower_pos~0_combout\ : std_logic;
SIGNAL \speed[3]~input_o\ : std_logic;
SIGNAL \speed[0]~input_o\ : std_logic;
SIGNAL \speed[2]~input_o\ : std_logic;
SIGNAL \speed[1]~input_o\ : std_logic;
SIGNAL \rra_servo_lower|Add0~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add0~1_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add1~1\ : std_logic;
SIGNAL \rra_servo_lower|Add1~3\ : std_logic;
SIGNAL \rra_servo_lower|Add1~5\ : std_logic;
SIGNAL \rra_servo_lower|Add1~7\ : std_logic;
SIGNAL \rra_servo_lower|Add1~8_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add1~6_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add1~4_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add1~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add1~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add0~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add3~1\ : std_logic;
SIGNAL \rra_servo_lower|Add3~3\ : std_logic;
SIGNAL \rra_servo_lower|Add3~5\ : std_logic;
SIGNAL \rra_servo_lower|Add3~7\ : std_logic;
SIGNAL \rra_servo_lower|Add3~9\ : std_logic;
SIGNAL \rra_servo_lower|Add3~11\ : std_logic;
SIGNAL \rra_servo_lower|Add3~13\ : std_logic;
SIGNAL \rra_servo_lower|Add3~15\ : std_logic;
SIGNAL \rra_servo_lower|Add3~16_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[0]~11_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[0]~12\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[1]~13_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[1]~14\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[2]~15_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[2]~16\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[3]~17_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[3]~18\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[4]~19_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[4]~20\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[5]~21_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[5]~22\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[6]~23_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[6]~24\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[7]~25_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[7]~26\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[8]~27_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[8]~28\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[9]~29_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[9]~30\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[10]~31_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add3~14_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval[9]~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add3~12_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval[8]~1_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add3~10_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval[7]~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add3~8_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval[6]~3_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add3~6_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add3~4_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval[4]~4_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add3~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval[3]~5_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add3~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval[2]~6_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval[1]~7_combout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~1_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~3_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~5_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~7_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~9_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~11_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~13_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~15_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~17_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~19_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~20_combout\ : std_logic;
SIGNAL \rra_servo_lower|current[0]~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~3_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out_i~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~4_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~5_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~6_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~q\ : std_logic;
SIGNAL \rra_servo_lower|o_pwm_out~feeder_combout\ : std_logic;
SIGNAL \rra_servo_lower|o_pwm_out~q\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out_i~1_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out_i~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out_i~3_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out_i~4_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out_i~5_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out_i~q\ : std_logic;
SIGNAL \rra_servo_lower|o_pwm_out_i~feeder_combout\ : std_logic;
SIGNAL \rra_servo_lower|o_pwm_out_i~q\ : std_logic;
SIGNAL \rra_servo_middle|clk_1mhz~feeder_combout\ : std_logic;
SIGNAL \rra_servo_middle|clk_1mhz~q\ : std_logic;
SIGNAL \rra_servo_middle|clk_1mhz~clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_middle|clk_1khz~feeder_combout\ : std_logic;
SIGNAL \rra_servo_middle|clk_1khz~q\ : std_logic;
SIGNAL \rra_servo_middle|clk_1khz~clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[0]~11_combout\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[0]~12\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[1]~13_combout\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[1]~14\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[2]~15_combout\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[2]~16\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[3]~17_combout\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[3]~18\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[4]~19_combout\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[4]~20\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[5]~21_combout\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[5]~22\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[6]~23_combout\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[6]~24\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[7]~25_combout\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[7]~26\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[8]~27_combout\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[8]~28\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[9]~29_combout\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[9]~30\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[10]~31_combout\ : std_logic;
SIGNAL \rra_servo_middle|interval[9]~0_combout\ : std_logic;
SIGNAL \rra_servo_middle|interval[8]~1_combout\ : std_logic;
SIGNAL \rra_servo_middle|interval[7]~2_combout\ : std_logic;
SIGNAL \rra_servo_middle|interval[6]~3_combout\ : std_logic;
SIGNAL \rra_servo_middle|interval[4]~4_combout\ : std_logic;
SIGNAL \rra_servo_middle|interval[3]~5_combout\ : std_logic;
SIGNAL \rra_servo_middle|interval[2]~6_combout\ : std_logic;
SIGNAL \rra_servo_middle|interval[1]~7_combout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~1_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~3_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~5_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~7_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~9_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~11_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~13_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~15_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~17_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~19_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~20_combout\ : std_logic;
SIGNAL \keypad|Mux40~2_combout\ : std_logic;
SIGNAL \keypad|Mux46~4_combout\ : std_logic;
SIGNAL \keypad|key_out[2]~feeder_combout\ : std_logic;
SIGNAL \t_middle_pos~0_combout\ : std_logic;
SIGNAL \rra_servo_middle|current[0]~0_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[0]~15_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[3]~22\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[4]~23_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[4]~24\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[5]~25_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[5]~26\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[6]~27_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[6]~28\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[7]~29_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[7]~30\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[8]~31_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[8]~32\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[9]~33_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[9]~34\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[10]~35_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[10]~36\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[11]~37_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[11]~38\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[12]~39_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[12]~40\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[13]~44_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[13]~45\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[14]~46_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count~41_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count~42_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count~43_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[0]~16\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[1]~17_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[1]~18\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[2]~19_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[2]~20\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[3]~21_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_out_i~0_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_out_i~1_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_out~0_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_out_i~3_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_out_i~2_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_out~1_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_out~2_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_out~q\ : std_logic;
SIGNAL \rra_servo_middle|o_pwm_out~feeder_combout\ : std_logic;
SIGNAL \rra_servo_middle|o_pwm_out~q\ : std_logic;
SIGNAL \rra_servo_middle|pwm_out_i~4_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_out_i~5_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_out_i~q\ : std_logic;
SIGNAL \rra_servo_middle|o_pwm_out_i~feeder_combout\ : std_logic;
SIGNAL \rra_servo_middle|o_pwm_out_i~q\ : std_logic;
SIGNAL \rra_servo_upper|clk_1mhz~q\ : std_logic;
SIGNAL \rra_servo_upper|clk_1mhz~clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[0]~15_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[12]~40\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[13]~41_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[13]~42\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[14]~43_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count~45_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count~46_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count~47_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[0]~16\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[1]~17_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[1]~18\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[2]~19_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[2]~20\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[3]~21_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[3]~22\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[4]~23_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[4]~24\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[5]~25_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[5]~26\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[6]~27_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[6]~28\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[7]~29_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[7]~30\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[8]~31_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[8]~32\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[9]~33_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[9]~34\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[10]~35_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[10]~36\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[11]~37_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[11]~38\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[12]~39_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out~2_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out~5_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out~4_combout\ : std_logic;
SIGNAL \rra_servo_upper|clk_1khz~feeder_combout\ : std_logic;
SIGNAL \rra_servo_upper|clk_1khz~q\ : std_logic;
SIGNAL \rra_servo_upper|clk_1khz~clkctrl_outclk\ : std_logic;
SIGNAL \keypad|Mux45~5_combout\ : std_logic;
SIGNAL \keypad|key_out[3]~feeder_combout\ : std_logic;
SIGNAL \keypad|Mux39~2_combout\ : std_logic;
SIGNAL \t_upper_pos~0_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[0]~11_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[0]~12\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[1]~13_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[1]~14\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[2]~15_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[2]~16\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[3]~17_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[3]~18\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[4]~19_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[4]~20\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[5]~21_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[5]~22\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[6]~23_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[6]~24\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[7]~25_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[7]~26\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[8]~27_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[8]~28\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[9]~29_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[9]~30\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[10]~31_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval[9]~0_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval[8]~1_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval[7]~2_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval[6]~3_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval[4]~4_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval[3]~5_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval[2]~6_combout\ : std_logic;
SIGNAL \rra_servo_upper|interval[1]~7_combout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~1_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~3_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~5_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~7_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~9_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~11_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~13_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~15_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~17_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~19_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~20_combout\ : std_logic;
SIGNAL \rra_servo_upper|current[0]~0_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out~6_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out~3_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out~8_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out~7_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out~q\ : std_logic;
SIGNAL \rra_servo_upper|o_pwm_out~q\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out_i~1_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out_i~2_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out_i~0_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out_i~3_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out_i~4_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out_i~5_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out_i~q\ : std_logic;
SIGNAL \rra_servo_upper|o_pwm_out_i~q\ : std_logic;
SIGNAL \rra_servo_wrist|clk_1mhz~feeder_combout\ : std_logic;
SIGNAL \rra_servo_wrist|clk_1mhz~q\ : std_logic;
SIGNAL \rra_servo_wrist|clk_1mhz~clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[0]~15_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[3]~22\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[4]~23_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[4]~24\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[5]~25_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[5]~26\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[6]~27_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[6]~28\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[7]~29_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[7]~30\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[8]~31_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[8]~32\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[9]~33_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[9]~34\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[10]~35_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[10]~36\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[11]~37_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[11]~38\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[12]~39_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[12]~40\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[13]~44_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[13]~45\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[14]~46_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count~41_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count~42_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count~43_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[0]~16\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[1]~17_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[1]~18\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[2]~19_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[2]~20\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[3]~21_combout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan6~1_combout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan6~2_combout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan6~0_combout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan6~3_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_out~q\ : std_logic;
SIGNAL \rra_servo_wrist|o_pwm_out~feeder_combout\ : std_logic;
SIGNAL \rra_servo_wrist|o_pwm_out~q\ : std_logic;
SIGNAL \rra_servo_gripper|clk_1mhz~feeder_combout\ : std_logic;
SIGNAL \rra_servo_gripper|clk_1mhz~q\ : std_logic;
SIGNAL \rra_servo_gripper|clk_1mhz~clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[0]~15_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[10]~36\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[11]~37_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[11]~38\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[12]~39_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[12]~40\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[13]~44_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[13]~45\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[14]~46_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count~41_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count~42_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count~43_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[0]~16\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[1]~17_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[1]~18\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[2]~19_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[2]~20\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[3]~21_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[3]~22\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[4]~23_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[4]~24\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[5]~25_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[5]~26\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[6]~27_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[6]~28\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[7]~29_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[7]~30\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[8]~31_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[8]~32\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[9]~33_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[9]~34\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[10]~35_combout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan6~0_combout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan6~1_combout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan6~2_combout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan6~3_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_out~q\ : std_logic;
SIGNAL \rra_servo_gripper|o_pwm_out~feeder_combout\ : std_logic;
SIGNAL \rra_servo_gripper|o_pwm_out~q\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_out_i~0_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_out_i~1_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_out_i~2_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_out_i~q\ : std_logic;
SIGNAL \rra_servo_wrist|o_pwm_out_i~feeder_combout\ : std_logic;
SIGNAL \rra_servo_wrist|o_pwm_out_i~q\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_out_i~0_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_out_i~1_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_out_i~2_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_out_i~q\ : std_logic;
SIGNAL \rra_servo_gripper|o_pwm_out_i~feeder_combout\ : std_logic;
SIGNAL \rra_servo_gripper|o_pwm_out_i~q\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz~feeder_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz~q\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz~clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[0]~15_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[10]~36\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[11]~37_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[11]~38\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[12]~39_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[12]~40\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[13]~44_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[13]~45\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[14]~46_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count~41_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count~42_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count~43_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[0]~16\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[1]~17_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[1]~18\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[2]~19_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[2]~20\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[3]~21_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[3]~22\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[4]~23_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[4]~24\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[5]~25_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[5]~26\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[6]~27_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[6]~28\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[7]~29_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[7]~30\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[8]~31_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[8]~32\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[9]~33_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[9]~34\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[10]~35_combout\ : std_logic;
SIGNAL \rra_servo_base|LessThan6~0_combout\ : std_logic;
SIGNAL \rra_servo_base|LessThan6~1_combout\ : std_logic;
SIGNAL \rra_servo_base|LessThan6~2_combout\ : std_logic;
SIGNAL \rra_servo_base|LessThan6~3_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_out~q\ : std_logic;
SIGNAL \rra_servo_base|o_pwm_out~feeder_combout\ : std_logic;
SIGNAL \rra_servo_base|o_pwm_out~q\ : std_logic;
SIGNAL \rra_servo_base|pwm_out_i~0_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_out_i~1_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_out_i~2_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_out_i~q\ : std_logic;
SIGNAL \rra_servo_base|o_pwm_out_i~feeder_combout\ : std_logic;
SIGNAL \rra_servo_base|o_pwm_out_i~q\ : std_logic;
SIGNAL \keypad|Mux49~0_combout\ : std_logic;
SIGNAL \keypad|Mux52~0_combout\ : std_logic;
SIGNAL \keypad|Mux49~1_combout\ : std_logic;
SIGNAL \keypad|Mux49~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|o_current[1]~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult3~5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[0]~1\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[1]~3\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[2]~5\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[3]~7\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[4]~8_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[3]~6_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[2]~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[1]~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|add9_result[0]~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|_~1_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|_~2_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[6]~1_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|_~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[9]~3_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[11]~4_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[13]~5_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[16]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[16]~7_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|_~4_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|_~5_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|_~3_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[19]~8_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[21]~9_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[23]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[25]~11_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[27]~12_combout\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[28]~15_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[29]~13_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[29]~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~252_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~253_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[20]~255_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[20]~254_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[19]~439_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[19]~256_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[27]~16_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~258_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~257_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[26]~440_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[26]~261_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[25]~263_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[25]~262_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[24]~265_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[24]~264_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[28]~505_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[28]~259_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[27]~506_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[27]~260_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[33]~442_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[34]~441_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[34]~266_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[33]~267_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[32]~268_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[32]~507_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[31]~270_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[31]~269_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[25]~17_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[30]~272_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[30]~271_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[40]~443_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[40]~273_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[39]~274_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[39]~444_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[38]~445_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[38]~275_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[37]~276_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[37]~277_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[36]~279_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[36]~278_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[46]~446_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[46]~280_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[45]~447_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[45]~281_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[44]~508_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[44]~282_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[43]~284_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[43]~283_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[23]~18_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[42]~285_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[42]~286_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[50]~289_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[50]~450_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[49]~291_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[49]~290_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[48]~293_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[48]~292_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[52]~448_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[52]~287_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[51]~288_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[51]~449_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[57]~452_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[58]~294_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[58]~451_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[57]~295_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[56]~296_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[56]~509_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[55]~298_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[55]~297_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[21]~19_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[54]~299_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[54]~300_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[64]~453_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[64]~301_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[63]~302_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[63]~454_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[62]~303_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[62]~455_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[61]~304_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[61]~305_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[60]~307_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[60]~306_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[69]~457_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[70]~456_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[70]~308_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[69]~309_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[68]~510_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[68]~310_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[67]~312_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[67]~311_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[19]~20_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[66]~314_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[66]~313_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[76]~458_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[76]~315_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[75]~316_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[75]~459_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[74]~460_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[74]~317_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[73]~319_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[73]~318_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[15]~21_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[17]~22_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[72]~320_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[72]~321_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[17]~23_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[78]~328_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[78]~327_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[82]~322_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[82]~461_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[81]~462_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[81]~323_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[80]~511_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[80]~324_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[79]~325_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[79]~326_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[85]~333_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[85]~332_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[84]~334_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[84]~335_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[88]~463_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[88]~329_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[87]~464_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[87]~330_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[86]~465_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[86]~331_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[92]~338_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[92]~512_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[91]~339_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[91]~340_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[15]~24_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[90]~342_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[90]~341_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[94]~466_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[94]~336_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[93]~337_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[93]~467_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_16_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[100]~343_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[100]~468_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[99]~469_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[99]~344_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[98]~470_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[98]~345_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[97]~346_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[97]~347_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[96]~349_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[96]~348_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_17_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_17_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_17_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_17_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[106]~471_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[106]~350_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[105]~351_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[105]~472_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[104]~513_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[104]~352_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[103]~354_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[103]~353_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[13]~25_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[102]~356_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[102]~355_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_18_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_18_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_18_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_18_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[112]~473_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[112]~357_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[111]~358_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[111]~474_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[110]~475_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[110]~359_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[109]~360_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[109]~361_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[108]~362_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[108]~363_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_19_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_19_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_19_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_19_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_19_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[117]~477_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[117]~365_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[116]~366_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[116]~514_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[115]~367_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[115]~368_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[11]~26_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[114]~369_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[114]~370_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_20_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_20_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_20_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_20_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[118]~364_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[118]~476_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_20_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_20_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[124]~371_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[124]~478_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[123]~479_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[123]~372_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[122]~373_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[122]~480_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[121]~374_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[121]~375_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[120]~376_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[120]~377_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_21_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_21_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_21_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_21_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_21_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[129]~482_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[129]~379_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[128]~515_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[128]~380_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[127]~382_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[127]~381_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[9]~27_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[126]~384_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[126]~383_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_22_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_22_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_22_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_22_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_21_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[130]~378_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[130]~481_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_22_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_22_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[136]~385_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[136]~483_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[135]~386_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[135]~484_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[134]~485_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[134]~387_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[133]~389_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[133]~388_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[5]~28_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[7]~29_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[132]~391_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[132]~390_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_23_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_23_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_23_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_23_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_23_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[142]~486_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_23_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[142]~392_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[141]~487_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[141]~393_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[140]~516_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[140]~394_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[139]~396_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[139]~395_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[7]~30_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[138]~397_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[138]~398_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_24_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_24_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_24_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_24_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_24_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_24_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[147]~400_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[147]~489_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[146]~490_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_24_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[146]~401_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[145]~402_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_24_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[145]~403_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[144]~405_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[144]~404_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_25_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_25_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_24_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[148]~399_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[148]~488_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_25_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_25_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[154]~406_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[154]~491_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[153]~492_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[153]~407_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[152]~408_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[152]~517_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[151]~410_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[151]~409_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[5]~31_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[150]~411_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[150]~412_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[159]~494_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[160]~413_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[160]~493_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[159]~414_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[158]~495_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[158]~415_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[157]~417_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[157]~416_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[156]~418_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[156]~419_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[166]~496_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[166]~420_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[165]~421_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[165]~497_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[164]~422_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[164]~518_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[163]~424_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[163]~423_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[3]~32_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[162]~426_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[162]~425_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[171]~428_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[171]~499_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[170]~429_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[170]~500_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[169]~430_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[169]~431_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[168]~433_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[168]~432_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[172]~498_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[172]~427_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[178]~434_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[178]~501_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[177]~502_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[177]~435_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[176]~519_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[176]~436_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[175]~438_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[175]~437_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[174]~503_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[174]~504_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|quotient[0]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|quotient[1]~1_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|quotient[2]~2_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|quotient[3]~3_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|w164w\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \rra_servo_middle|pwm_count\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \rra_servo_middle|interval\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \rra_servo_middle|interval_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \rra_servo_middle|current\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \rra_servo_upper|pwm_count\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \rra_servo_upper|interval\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \rra_servo_upper|interval_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \rra_servo_base|clk_1khz_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \rra_servo_gripper|pwm_count\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \keypad|key_next\ : std_logic_vector(15 DOWNTO 0);
SIGNAL t_upper_pos : std_logic_vector(9 DOWNTO 0);
SIGNAL \rra_servo_base|clk_1mhz_count\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \rra_servo_base|pwm_count\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \keypad|col_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \rra_servo_lower|interval\ : std_logic_vector(10 DOWNTO 0);
SIGNAL t_middle_pos : std_logic_vector(9 DOWNTO 0);
SIGNAL \keypad|key_col\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \keypad|key_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL t_lower_pos : std_logic_vector(9 DOWNTO 0);
SIGNAL \keypad|delay\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rra_servo_upper|current\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \rra_servo_wrist|pwm_count\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \rra_servo_lower|interval_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \rra_servo_lower|pwm_count\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \rra_servo_lower|current\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|ALT_INV_o_current[1]~0_combout\ : std_logic;
SIGNAL \rra_servo_upper|ALT_INV_LessThan0~20_combout\ : std_logic;
SIGNAL \rra_servo_middle|ALT_INV_LessThan0~20_combout\ : std_logic;
SIGNAL \rra_servo_lower|ALT_INV_LessThan0~20_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
l1 <= ww_l1;
l2 <= ww_l2;
l1_i <= ww_l1_i;
l2_i <= ww_l2_i;
m1 <= ww_m1;
m2 <= ww_m2;
m1_i <= ww_m1_i;
m2_i <= ww_m2_i;
u1 <= ww_u1;
u2 <= ww_u2;
u1_i <= ww_u1_i;
u2_i <= ww_u2_i;
w1 <= ww_w1;
g1 <= ww_g1;
w1_i <= ww_w1_i;
g1_i <= ww_g1_i;
b1 <= ww_b1;
b1_i <= ww_b1_i;
ww_i_key_row <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(i_key_row);
o_key_col <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_o_key_col);
leds <= ww_leds;
segment7_1 <= ww_segment7_1;
segment7_2 <= ww_segment7_2;
segment7_3 <= ww_segment7_3;
segment7_4 <= ww_segment7_4;
ww_speed <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(speed);
ww_mode <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(mode);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult1|auto_generated|mac_out4_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult3~DATAOUT11\ & \Mult1|auto_generated|mac_mult3~DATAOUT10\ & \Mult1|auto_generated|mac_mult3~DATAOUT9\ & \Mult1|auto_generated|mac_mult3~DATAOUT8\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT7\ & \Mult1|auto_generated|mac_mult3~DATAOUT6\ & \Mult1|auto_generated|mac_mult3~DATAOUT5\ & \Mult1|auto_generated|mac_mult3~DATAOUT4\ & \Mult1|auto_generated|mac_mult3~DATAOUT3\ & 
\Mult1|auto_generated|mac_mult3~DATAOUT2\ & \Mult1|auto_generated|mac_mult3~DATAOUT1\ & \Mult1|auto_generated|mac_mult3~dataout\ & \Mult1|auto_generated|mac_mult3~5\ & \Mult1|auto_generated|mac_mult3~4\ & \Mult1|auto_generated|mac_mult3~3\ & 
\Mult1|auto_generated|mac_mult3~2\ & \Mult1|auto_generated|mac_mult3~1\ & \Mult1|auto_generated|mac_mult3~0\);

\Mult1|auto_generated|mac_out4~0\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out4~1\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out4~2\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out4~3\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out4~4\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out4~5\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out4~dataout\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out4~DATAOUT1\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out4~DATAOUT2\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out4~DATAOUT3\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_out4~DATAOUT4\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_out4~DATAOUT5\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_out4~DATAOUT6\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_out4~DATAOUT7\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_out4~DATAOUT8\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_out4~DATAOUT9\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_out4~DATAOUT10\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_out4~DATAOUT11\ <= \Mult1|auto_generated|mac_out4_DATAOUT_bus\(17);

\Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult1~DATAOUT25\ & \Mult1|auto_generated|mac_mult1~DATAOUT24\ & \Mult1|auto_generated|mac_mult1~DATAOUT23\ & \Mult1|auto_generated|mac_mult1~DATAOUT22\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT21\ & \Mult1|auto_generated|mac_mult1~DATAOUT20\ & \Mult1|auto_generated|mac_mult1~DATAOUT19\ & \Mult1|auto_generated|mac_mult1~DATAOUT18\ & \Mult1|auto_generated|mac_mult1~DATAOUT17\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT16\ & \Mult1|auto_generated|mac_mult1~DATAOUT15\ & \Mult1|auto_generated|mac_mult1~DATAOUT14\ & \Mult1|auto_generated|mac_mult1~DATAOUT13\ & \Mult1|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT11\ & \Mult1|auto_generated|mac_mult1~DATAOUT10\ & \Mult1|auto_generated|mac_mult1~DATAOUT9\ & \Mult1|auto_generated|mac_mult1~DATAOUT8\ & \Mult1|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT6\ & \Mult1|auto_generated|mac_mult1~DATAOUT5\ & \Mult1|auto_generated|mac_mult1~DATAOUT4\ & \Mult1|auto_generated|mac_mult1~DATAOUT3\ & \Mult1|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT1\ & \Mult1|auto_generated|mac_mult1~dataout\ & \Mult1|auto_generated|mac_mult1~9\ & \Mult1|auto_generated|mac_mult1~8\ & \Mult1|auto_generated|mac_mult1~7\ & \Mult1|auto_generated|mac_mult1~6\ & 
\Mult1|auto_generated|mac_mult1~5\ & \Mult1|auto_generated|mac_mult1~4\ & \Mult1|auto_generated|mac_mult1~3\ & \Mult1|auto_generated|mac_mult1~2\ & \Mult1|auto_generated|mac_mult1~1\ & \Mult1|auto_generated|mac_mult1~0\);

\Mult1|auto_generated|mac_out2~0\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out2~1\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out2~2\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out2~3\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out2~4\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out2~5\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out2~6\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out2~7\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out2~8\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out2~9\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult1|auto_generated|w164w\(0) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult1|auto_generated|w164w\(1) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult1|auto_generated|w164w\(2) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult1|auto_generated|w164w\(3) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult1|auto_generated|w164w\(4) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult1|auto_generated|w164w\(5) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult1|auto_generated|w164w\(6) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult1|auto_generated|w164w\(7) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult1|auto_generated|w164w\(8) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult1|auto_generated|w164w\(9) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult1|auto_generated|w164w\(10) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult1|auto_generated|w164w\(11) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult1|auto_generated|w164w\(12) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult1|auto_generated|w164w\(13) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult1|auto_generated|w164w\(14) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult1|auto_generated|w164w\(15) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult1|auto_generated|w164w\(16) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult1|auto_generated|w164w\(17) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_out2~DATAOUT18\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_out2~DATAOUT19\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_out2~DATAOUT20\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_out2~DATAOUT21\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_out2~DATAOUT22\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_out2~DATAOUT23\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_out2~DATAOUT24\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_out2~DATAOUT25\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_mult3_DATAA_bus\ <= (gnd & vcc & vcc & gnd & gnd & vcc & gnd & gnd & gnd);

\Mult1|auto_generated|mac_mult3_DATAB_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mult1|auto_generated|mac_mult3~0\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult3~1\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult3~2\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult3~3\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult3~4\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult3~5\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult3~dataout\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult3~DATAOUT1\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult3~DATAOUT2\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult3~DATAOUT3\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult3~DATAOUT4\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult3~DATAOUT5\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult3~DATAOUT6\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult3~DATAOUT7\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult3~DATAOUT8\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult3~DATAOUT9\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult3~DATAOUT10\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult3~DATAOUT11\ <= \Mult1|auto_generated|mac_mult3_DATAOUT_bus\(17);

\Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \rra_servo_lower|o_current[1]~0_combout\ & gnd & gnd & \rra_servo_lower|o_current[1]~0_combout\);

\Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Mult1|auto_generated|mac_mult1~0\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult1~1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult1~2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult1~3\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult1~4\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult1~5\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult1~6\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult1~7\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult1~8\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult1~9\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult1~dataout\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_mult1~DATAOUT24\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_mult1~DATAOUT25\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\rra_servo_middle|clk_1khz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_middle|clk_1khz~q\);

\rra_servo_lower|clk_1khz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_lower|clk_1khz~q\);

\rra_servo_base|clk_1mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_base|clk_1mhz~q\);

\rra_servo_upper|clk_1khz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_upper|clk_1khz~q\);

\rra_servo_gripper|clk_1mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_gripper|clk_1mhz~q\);

\rra_servo_wrist|clk_1mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_wrist|clk_1mhz~q\);

\rra_servo_middle|clk_1mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_middle|clk_1mhz~q\);

\rra_servo_upper|clk_1mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_upper|clk_1mhz~q\);

\rra_servo_lower|clk_1mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_lower|clk_1mhz~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\rra_servo_lower|ALT_INV_o_current[1]~0_combout\ <= NOT \rra_servo_lower|o_current[1]~0_combout\;
\rra_servo_upper|ALT_INV_LessThan0~20_combout\ <= NOT \rra_servo_upper|LessThan0~20_combout\;
\rra_servo_middle|ALT_INV_LessThan0~20_combout\ <= NOT \rra_servo_middle|LessThan0~20_combout\;
\rra_servo_lower|ALT_INV_LessThan0~20_combout\ <= NOT \rra_servo_lower|LessThan0~20_combout\;

-- Location: IOOBUF_X7_Y0_N9
\l1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_lower|o_pwm_out~q\,
	devoe => ww_devoe,
	o => \l1~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\l2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_lower|o_pwm_out~q\,
	devoe => ww_devoe,
	o => \l2~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\l1_i~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_lower|o_pwm_out_i~q\,
	devoe => ww_devoe,
	o => \l1_i~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\l2_i~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_lower|o_pwm_out_i~q\,
	devoe => ww_devoe,
	o => \l2_i~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\m1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_middle|o_pwm_out~q\,
	devoe => ww_devoe,
	o => \m1~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\m2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_middle|o_pwm_out~q\,
	devoe => ww_devoe,
	o => \m2~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\m1_i~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_middle|o_pwm_out_i~q\,
	devoe => ww_devoe,
	o => \m1_i~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\m2_i~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_middle|o_pwm_out_i~q\,
	devoe => ww_devoe,
	o => \m2_i~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\u1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_upper|o_pwm_out~q\,
	devoe => ww_devoe,
	o => \u1~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\u2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_upper|o_pwm_out~q\,
	devoe => ww_devoe,
	o => \u2~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\u1_i~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_upper|o_pwm_out_i~q\,
	devoe => ww_devoe,
	o => \u1_i~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\u2_i~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_upper|o_pwm_out_i~q\,
	devoe => ww_devoe,
	o => \u2_i~output_o\);

-- Location: IOOBUF_X9_Y29_N23
\w1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_wrist|o_pwm_out~q\,
	devoe => ww_devoe,
	o => \w1~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\g1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_gripper|o_pwm_out~q\,
	devoe => ww_devoe,
	o => \g1~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\w1_i~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_wrist|o_pwm_out_i~q\,
	devoe => ww_devoe,
	o => \w1_i~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\g1_i~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_gripper|o_pwm_out_i~q\,
	devoe => ww_devoe,
	o => \g1_i~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\b1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_base|o_pwm_out~q\,
	devoe => ww_devoe,
	o => \b1~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\b1_i~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_base|o_pwm_out_i~q\,
	devoe => ww_devoe,
	o => \b1_i~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\o_key_col[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_col\(0),
	devoe => ww_devoe,
	o => \o_key_col[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\o_key_col[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_col\(1),
	devoe => ww_devoe,
	o => \o_key_col[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\o_key_col[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_col\(2),
	devoe => ww_devoe,
	o => \o_key_col[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\o_key_col[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_col\(3),
	devoe => ww_devoe,
	o => \o_key_col[3]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\leds[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(1),
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\leds[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(7),
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\leds[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(2),
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\leds[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(8),
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\leds[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(3),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\leds[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(9),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\leds[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\leds[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\leds[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\leds[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[9]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\segment7_1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segment7_1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\segment7_1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segment7_1[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\segment7_1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segment7_1[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\segment7_1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segment7_1[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\segment7_1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segment7_1[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\segment7_1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segment7_1[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\segment7_1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segment7_1[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\segment7_2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \segment7_2[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\segment7_2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \segment7_2[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\segment7_2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \segment7_2[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\segment7_2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \segment7_2[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\segment7_2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \segment7_2[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\segment7_2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \segment7_2[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\segment7_2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \segment7_2[6]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\segment7_3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_lower|ALT_INV_o_current[1]~0_combout\,
	devoe => ww_devoe,
	o => \segment7_3[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\segment7_3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segment7_3[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\segment7_3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rra_servo_lower|o_current[1]~0_combout\,
	devoe => ww_devoe,
	o => \segment7_3[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\segment7_3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segment7_3[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\segment7_3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segment7_3[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\segment7_3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segment7_3[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\segment7_3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segment7_3[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\segment7_4[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segment7_4[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\segment7_4[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segment7_4[1]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\segment7_4[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segment7_4[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\segment7_4[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segment7_4[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\segment7_4[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segment7_4[4]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\segment7_4[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segment7_4[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\segment7_4[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segment7_4[6]~output_o\);

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

-- Location: CLKCTRL_G12
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y24_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X22_Y16_N18
\rra_servo_base|clk_1mhz_count[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1mhz_count[0]~6_combout\ = \rra_servo_base|clk_1mhz_count\(0) $ (VCC)
-- \rra_servo_base|clk_1mhz_count[0]~7\ = CARRY(\rra_servo_base|clk_1mhz_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|clk_1mhz_count\(0),
	datad => VCC,
	combout => \rra_servo_base|clk_1mhz_count[0]~6_combout\,
	cout => \rra_servo_base|clk_1mhz_count[0]~7\);

-- Location: LCCOMB_X22_Y16_N8
\rra_servo_lower|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan3~0_combout\ = (\rra_servo_base|clk_1mhz_count\(1)) # ((\rra_servo_base|clk_1mhz_count\(3)) # ((\rra_servo_base|clk_1mhz_count\(2)) # (\rra_servo_base|clk_1mhz_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|clk_1mhz_count\(1),
	datab => \rra_servo_base|clk_1mhz_count\(3),
	datac => \rra_servo_base|clk_1mhz_count\(2),
	datad => \rra_servo_base|clk_1mhz_count\(0),
	combout => \rra_servo_lower|LessThan3~0_combout\);

-- Location: LCCOMB_X22_Y16_N4
\rra_servo_lower|clk_1khz~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|clk_1khz~1_combout\ = (\rst~input_o\) # ((\rra_servo_base|clk_1mhz_count\(5) & (\rra_servo_base|clk_1mhz_count\(4) & \rra_servo_lower|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_base|clk_1mhz_count\(5),
	datac => \rra_servo_base|clk_1mhz_count\(4),
	datad => \rra_servo_lower|LessThan3~0_combout\,
	combout => \rra_servo_lower|clk_1khz~1_combout\);

-- Location: FF_X22_Y16_N19
\rra_servo_base|clk_1mhz_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1mhz_count[0]~6_combout\,
	sclr => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1mhz_count\(0));

-- Location: LCCOMB_X22_Y16_N20
\rra_servo_base|clk_1mhz_count[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1mhz_count[1]~8_combout\ = (\rra_servo_base|clk_1mhz_count\(1) & (!\rra_servo_base|clk_1mhz_count[0]~7\)) # (!\rra_servo_base|clk_1mhz_count\(1) & ((\rra_servo_base|clk_1mhz_count[0]~7\) # (GND)))
-- \rra_servo_base|clk_1mhz_count[1]~9\ = CARRY((!\rra_servo_base|clk_1mhz_count[0]~7\) # (!\rra_servo_base|clk_1mhz_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|clk_1mhz_count\(1),
	datad => VCC,
	cin => \rra_servo_base|clk_1mhz_count[0]~7\,
	combout => \rra_servo_base|clk_1mhz_count[1]~8_combout\,
	cout => \rra_servo_base|clk_1mhz_count[1]~9\);

-- Location: FF_X22_Y16_N21
\rra_servo_base|clk_1mhz_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1mhz_count[1]~8_combout\,
	sclr => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1mhz_count\(1));

-- Location: LCCOMB_X22_Y16_N22
\rra_servo_base|clk_1mhz_count[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1mhz_count[2]~10_combout\ = (\rra_servo_base|clk_1mhz_count\(2) & (\rra_servo_base|clk_1mhz_count[1]~9\ $ (GND))) # (!\rra_servo_base|clk_1mhz_count\(2) & (!\rra_servo_base|clk_1mhz_count[1]~9\ & VCC))
-- \rra_servo_base|clk_1mhz_count[2]~11\ = CARRY((\rra_servo_base|clk_1mhz_count\(2) & !\rra_servo_base|clk_1mhz_count[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|clk_1mhz_count\(2),
	datad => VCC,
	cin => \rra_servo_base|clk_1mhz_count[1]~9\,
	combout => \rra_servo_base|clk_1mhz_count[2]~10_combout\,
	cout => \rra_servo_base|clk_1mhz_count[2]~11\);

-- Location: FF_X22_Y16_N23
\rra_servo_base|clk_1mhz_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1mhz_count[2]~10_combout\,
	sclr => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1mhz_count\(2));

-- Location: LCCOMB_X22_Y16_N24
\rra_servo_base|clk_1mhz_count[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1mhz_count[3]~12_combout\ = (\rra_servo_base|clk_1mhz_count\(3) & (!\rra_servo_base|clk_1mhz_count[2]~11\)) # (!\rra_servo_base|clk_1mhz_count\(3) & ((\rra_servo_base|clk_1mhz_count[2]~11\) # (GND)))
-- \rra_servo_base|clk_1mhz_count[3]~13\ = CARRY((!\rra_servo_base|clk_1mhz_count[2]~11\) # (!\rra_servo_base|clk_1mhz_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|clk_1mhz_count\(3),
	datad => VCC,
	cin => \rra_servo_base|clk_1mhz_count[2]~11\,
	combout => \rra_servo_base|clk_1mhz_count[3]~12_combout\,
	cout => \rra_servo_base|clk_1mhz_count[3]~13\);

-- Location: FF_X22_Y16_N25
\rra_servo_base|clk_1mhz_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1mhz_count[3]~12_combout\,
	sclr => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1mhz_count\(3));

-- Location: LCCOMB_X22_Y16_N26
\rra_servo_base|clk_1mhz_count[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1mhz_count[4]~14_combout\ = (\rra_servo_base|clk_1mhz_count\(4) & (\rra_servo_base|clk_1mhz_count[3]~13\ $ (GND))) # (!\rra_servo_base|clk_1mhz_count\(4) & (!\rra_servo_base|clk_1mhz_count[3]~13\ & VCC))
-- \rra_servo_base|clk_1mhz_count[4]~15\ = CARRY((\rra_servo_base|clk_1mhz_count\(4) & !\rra_servo_base|clk_1mhz_count[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|clk_1mhz_count\(4),
	datad => VCC,
	cin => \rra_servo_base|clk_1mhz_count[3]~13\,
	combout => \rra_servo_base|clk_1mhz_count[4]~14_combout\,
	cout => \rra_servo_base|clk_1mhz_count[4]~15\);

-- Location: FF_X22_Y16_N27
\rra_servo_base|clk_1mhz_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1mhz_count[4]~14_combout\,
	sclr => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1mhz_count\(4));

-- Location: LCCOMB_X22_Y16_N28
\rra_servo_base|clk_1mhz_count[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1mhz_count[5]~16_combout\ = \rra_servo_base|clk_1mhz_count[4]~15\ $ (\rra_servo_base|clk_1mhz_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_base|clk_1mhz_count\(5),
	cin => \rra_servo_base|clk_1mhz_count[4]~15\,
	combout => \rra_servo_base|clk_1mhz_count[5]~16_combout\);

-- Location: FF_X22_Y16_N29
\rra_servo_base|clk_1mhz_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1mhz_count[5]~16_combout\,
	sclr => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1mhz_count\(5));

-- Location: LCCOMB_X22_Y16_N10
\rra_servo_lower|clk_1mhz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|clk_1mhz~0_combout\ = (!\rst~input_o\ & (\rra_servo_base|clk_1mhz_count\(5) & (\rra_servo_base|clk_1mhz_count\(4) & \rra_servo_lower|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_base|clk_1mhz_count\(5),
	datac => \rra_servo_base|clk_1mhz_count\(4),
	datad => \rra_servo_lower|LessThan3~0_combout\,
	combout => \rra_servo_lower|clk_1mhz~0_combout\);

-- Location: LCCOMB_X22_Y16_N12
\rra_servo_lower|clk_1mhz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|clk_1mhz~feeder_combout\ = \rra_servo_lower|clk_1mhz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|clk_1mhz~0_combout\,
	combout => \rra_servo_lower|clk_1mhz~feeder_combout\);

-- Location: FF_X22_Y16_N13
\rra_servo_lower|clk_1mhz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_lower|clk_1mhz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|clk_1mhz~q\);

-- Location: CLKCTRL_G18
\rra_servo_lower|clk_1mhz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_lower|clk_1mhz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y14_N0
\rra_servo_lower|pwm_count[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[0]~15_combout\ = \rra_servo_lower|pwm_count\(0) $ (VCC)
-- \rra_servo_lower|pwm_count[0]~16\ = CARRY(\rra_servo_lower|pwm_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(0),
	datad => VCC,
	combout => \rra_servo_lower|pwm_count[0]~15_combout\,
	cout => \rra_servo_lower|pwm_count[0]~16\);

-- Location: LCCOMB_X22_Y14_N24
\rra_servo_lower|pwm_count[12]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[12]~42_combout\ = (\rra_servo_lower|pwm_count\(12) & (\rra_servo_lower|pwm_count[11]~38\ $ (GND))) # (!\rra_servo_lower|pwm_count\(12) & (!\rra_servo_lower|pwm_count[11]~38\ & VCC))
-- \rra_servo_lower|pwm_count[12]~43\ = CARRY((\rra_servo_lower|pwm_count\(12) & !\rra_servo_lower|pwm_count[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(12),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[11]~38\,
	combout => \rra_servo_lower|pwm_count[12]~42_combout\,
	cout => \rra_servo_lower|pwm_count[12]~43\);

-- Location: LCCOMB_X22_Y14_N26
\rra_servo_lower|pwm_count[13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[13]~44_combout\ = (\rra_servo_lower|pwm_count\(13) & (!\rra_servo_lower|pwm_count[12]~43\)) # (!\rra_servo_lower|pwm_count\(13) & ((\rra_servo_lower|pwm_count[12]~43\) # (GND)))
-- \rra_servo_lower|pwm_count[13]~45\ = CARRY((!\rra_servo_lower|pwm_count[12]~43\) # (!\rra_servo_lower|pwm_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(13),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[12]~43\,
	combout => \rra_servo_lower|pwm_count[13]~44_combout\,
	cout => \rra_servo_lower|pwm_count[13]~45\);

-- Location: FF_X22_Y14_N27
\rra_servo_lower|pwm_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[13]~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|pwm_count~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(13));

-- Location: LCCOMB_X22_Y14_N28
\rra_servo_lower|pwm_count[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[14]~46_combout\ = \rra_servo_lower|pwm_count[13]~45\ $ (!\rra_servo_lower|pwm_count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|pwm_count\(14),
	cin => \rra_servo_lower|pwm_count[13]~45\,
	combout => \rra_servo_lower|pwm_count[14]~46_combout\);

-- Location: FF_X22_Y14_N29
\rra_servo_lower|pwm_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[14]~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|pwm_count~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(14));

-- Location: LCCOMB_X23_Y14_N26
\rra_servo_lower|pwm_count~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count~39_combout\ = (!\rra_servo_lower|pwm_count\(5) & (!\rra_servo_lower|pwm_count\(8) & (!\rra_servo_lower|pwm_count\(7) & !\rra_servo_lower|pwm_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(5),
	datab => \rra_servo_lower|pwm_count\(8),
	datac => \rra_servo_lower|pwm_count\(7),
	datad => \rra_servo_lower|pwm_count\(6),
	combout => \rra_servo_lower|pwm_count~39_combout\);

-- Location: LCCOMB_X23_Y14_N28
\rra_servo_lower|pwm_count~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count~40_combout\ = (((\rra_servo_lower|pwm_count~39_combout\) # (!\rra_servo_lower|pwm_count\(11))) # (!\rra_servo_lower|pwm_count\(9))) # (!\rra_servo_lower|pwm_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(10),
	datab => \rra_servo_lower|pwm_count\(9),
	datac => \rra_servo_lower|pwm_count~39_combout\,
	datad => \rra_servo_lower|pwm_count\(11),
	combout => \rra_servo_lower|pwm_count~40_combout\);

-- Location: LCCOMB_X23_Y14_N14
\rra_servo_lower|pwm_count~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count~41_combout\ = (\rra_servo_lower|pwm_count\(14) & ((\rra_servo_lower|pwm_count\(13)) # ((\rra_servo_lower|pwm_count\(12)) # (!\rra_servo_lower|pwm_count~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(13),
	datab => \rra_servo_lower|pwm_count\(14),
	datac => \rra_servo_lower|pwm_count\(12),
	datad => \rra_servo_lower|pwm_count~40_combout\,
	combout => \rra_servo_lower|pwm_count~41_combout\);

-- Location: FF_X22_Y14_N1
\rra_servo_lower|pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[0]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|pwm_count~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(0));

-- Location: LCCOMB_X22_Y14_N2
\rra_servo_lower|pwm_count[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[1]~17_combout\ = (\rra_servo_lower|pwm_count\(1) & (!\rra_servo_lower|pwm_count[0]~16\)) # (!\rra_servo_lower|pwm_count\(1) & ((\rra_servo_lower|pwm_count[0]~16\) # (GND)))
-- \rra_servo_lower|pwm_count[1]~18\ = CARRY((!\rra_servo_lower|pwm_count[0]~16\) # (!\rra_servo_lower|pwm_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(1),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[0]~16\,
	combout => \rra_servo_lower|pwm_count[1]~17_combout\,
	cout => \rra_servo_lower|pwm_count[1]~18\);

-- Location: FF_X22_Y14_N3
\rra_servo_lower|pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[1]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|pwm_count~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(1));

-- Location: LCCOMB_X22_Y14_N4
\rra_servo_lower|pwm_count[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[2]~19_combout\ = (\rra_servo_lower|pwm_count\(2) & (\rra_servo_lower|pwm_count[1]~18\ $ (GND))) # (!\rra_servo_lower|pwm_count\(2) & (!\rra_servo_lower|pwm_count[1]~18\ & VCC))
-- \rra_servo_lower|pwm_count[2]~20\ = CARRY((\rra_servo_lower|pwm_count\(2) & !\rra_servo_lower|pwm_count[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(2),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[1]~18\,
	combout => \rra_servo_lower|pwm_count[2]~19_combout\,
	cout => \rra_servo_lower|pwm_count[2]~20\);

-- Location: FF_X22_Y14_N5
\rra_servo_lower|pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[2]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|pwm_count~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(2));

-- Location: LCCOMB_X22_Y14_N6
\rra_servo_lower|pwm_count[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[3]~21_combout\ = (\rra_servo_lower|pwm_count\(3) & (!\rra_servo_lower|pwm_count[2]~20\)) # (!\rra_servo_lower|pwm_count\(3) & ((\rra_servo_lower|pwm_count[2]~20\) # (GND)))
-- \rra_servo_lower|pwm_count[3]~22\ = CARRY((!\rra_servo_lower|pwm_count[2]~20\) # (!\rra_servo_lower|pwm_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(3),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[2]~20\,
	combout => \rra_servo_lower|pwm_count[3]~21_combout\,
	cout => \rra_servo_lower|pwm_count[3]~22\);

-- Location: FF_X22_Y14_N7
\rra_servo_lower|pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[3]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|pwm_count~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(3));

-- Location: LCCOMB_X22_Y14_N8
\rra_servo_lower|pwm_count[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[4]~23_combout\ = (\rra_servo_lower|pwm_count\(4) & (\rra_servo_lower|pwm_count[3]~22\ $ (GND))) # (!\rra_servo_lower|pwm_count\(4) & (!\rra_servo_lower|pwm_count[3]~22\ & VCC))
-- \rra_servo_lower|pwm_count[4]~24\ = CARRY((\rra_servo_lower|pwm_count\(4) & !\rra_servo_lower|pwm_count[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(4),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[3]~22\,
	combout => \rra_servo_lower|pwm_count[4]~23_combout\,
	cout => \rra_servo_lower|pwm_count[4]~24\);

-- Location: FF_X22_Y14_N9
\rra_servo_lower|pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[4]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|pwm_count~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(4));

-- Location: LCCOMB_X22_Y14_N10
\rra_servo_lower|pwm_count[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[5]~25_combout\ = (\rra_servo_lower|pwm_count\(5) & (!\rra_servo_lower|pwm_count[4]~24\)) # (!\rra_servo_lower|pwm_count\(5) & ((\rra_servo_lower|pwm_count[4]~24\) # (GND)))
-- \rra_servo_lower|pwm_count[5]~26\ = CARRY((!\rra_servo_lower|pwm_count[4]~24\) # (!\rra_servo_lower|pwm_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(5),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[4]~24\,
	combout => \rra_servo_lower|pwm_count[5]~25_combout\,
	cout => \rra_servo_lower|pwm_count[5]~26\);

-- Location: FF_X22_Y14_N11
\rra_servo_lower|pwm_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[5]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|pwm_count~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(5));

-- Location: LCCOMB_X22_Y14_N12
\rra_servo_lower|pwm_count[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[6]~27_combout\ = (\rra_servo_lower|pwm_count\(6) & (\rra_servo_lower|pwm_count[5]~26\ $ (GND))) # (!\rra_servo_lower|pwm_count\(6) & (!\rra_servo_lower|pwm_count[5]~26\ & VCC))
-- \rra_servo_lower|pwm_count[6]~28\ = CARRY((\rra_servo_lower|pwm_count\(6) & !\rra_servo_lower|pwm_count[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(6),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[5]~26\,
	combout => \rra_servo_lower|pwm_count[6]~27_combout\,
	cout => \rra_servo_lower|pwm_count[6]~28\);

-- Location: FF_X22_Y14_N13
\rra_servo_lower|pwm_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[6]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|pwm_count~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(6));

-- Location: LCCOMB_X22_Y14_N14
\rra_servo_lower|pwm_count[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[7]~29_combout\ = (\rra_servo_lower|pwm_count\(7) & (!\rra_servo_lower|pwm_count[6]~28\)) # (!\rra_servo_lower|pwm_count\(7) & ((\rra_servo_lower|pwm_count[6]~28\) # (GND)))
-- \rra_servo_lower|pwm_count[7]~30\ = CARRY((!\rra_servo_lower|pwm_count[6]~28\) # (!\rra_servo_lower|pwm_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(7),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[6]~28\,
	combout => \rra_servo_lower|pwm_count[7]~29_combout\,
	cout => \rra_servo_lower|pwm_count[7]~30\);

-- Location: FF_X22_Y14_N15
\rra_servo_lower|pwm_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[7]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|pwm_count~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(7));

-- Location: LCCOMB_X22_Y14_N16
\rra_servo_lower|pwm_count[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[8]~31_combout\ = (\rra_servo_lower|pwm_count\(8) & (\rra_servo_lower|pwm_count[7]~30\ $ (GND))) # (!\rra_servo_lower|pwm_count\(8) & (!\rra_servo_lower|pwm_count[7]~30\ & VCC))
-- \rra_servo_lower|pwm_count[8]~32\ = CARRY((\rra_servo_lower|pwm_count\(8) & !\rra_servo_lower|pwm_count[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(8),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[7]~30\,
	combout => \rra_servo_lower|pwm_count[8]~31_combout\,
	cout => \rra_servo_lower|pwm_count[8]~32\);

-- Location: FF_X23_Y14_N5
\rra_servo_lower|pwm_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	asdata => \rra_servo_lower|pwm_count[8]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|pwm_count~41_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(8));

-- Location: LCCOMB_X22_Y14_N18
\rra_servo_lower|pwm_count[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[9]~33_combout\ = (\rra_servo_lower|pwm_count\(9) & (!\rra_servo_lower|pwm_count[8]~32\)) # (!\rra_servo_lower|pwm_count\(9) & ((\rra_servo_lower|pwm_count[8]~32\) # (GND)))
-- \rra_servo_lower|pwm_count[9]~34\ = CARRY((!\rra_servo_lower|pwm_count[8]~32\) # (!\rra_servo_lower|pwm_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(9),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[8]~32\,
	combout => \rra_servo_lower|pwm_count[9]~33_combout\,
	cout => \rra_servo_lower|pwm_count[9]~34\);

-- Location: FF_X22_Y14_N19
\rra_servo_lower|pwm_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[9]~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|pwm_count~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(9));

-- Location: LCCOMB_X22_Y14_N20
\rra_servo_lower|pwm_count[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[10]~35_combout\ = (\rra_servo_lower|pwm_count\(10) & (\rra_servo_lower|pwm_count[9]~34\ $ (GND))) # (!\rra_servo_lower|pwm_count\(10) & (!\rra_servo_lower|pwm_count[9]~34\ & VCC))
-- \rra_servo_lower|pwm_count[10]~36\ = CARRY((\rra_servo_lower|pwm_count\(10) & !\rra_servo_lower|pwm_count[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(10),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[9]~34\,
	combout => \rra_servo_lower|pwm_count[10]~35_combout\,
	cout => \rra_servo_lower|pwm_count[10]~36\);

-- Location: FF_X22_Y14_N21
\rra_servo_lower|pwm_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[10]~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|pwm_count~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(10));

-- Location: LCCOMB_X22_Y14_N22
\rra_servo_lower|pwm_count[11]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[11]~37_combout\ = (\rra_servo_lower|pwm_count\(11) & (!\rra_servo_lower|pwm_count[10]~36\)) # (!\rra_servo_lower|pwm_count\(11) & ((\rra_servo_lower|pwm_count[10]~36\) # (GND)))
-- \rra_servo_lower|pwm_count[11]~38\ = CARRY((!\rra_servo_lower|pwm_count[10]~36\) # (!\rra_servo_lower|pwm_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(11),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[10]~36\,
	combout => \rra_servo_lower|pwm_count[11]~37_combout\,
	cout => \rra_servo_lower|pwm_count[11]~38\);

-- Location: FF_X22_Y14_N23
\rra_servo_lower|pwm_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[11]~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|pwm_count~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(11));

-- Location: FF_X22_Y14_N25
\rra_servo_lower|pwm_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[12]~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|pwm_count~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(12));

-- Location: LCCOMB_X23_Y14_N4
\rra_servo_lower|pwm_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out~0_combout\ = (!\rra_servo_lower|pwm_count\(12) & (!\rra_servo_lower|pwm_count\(14) & !\rra_servo_lower|pwm_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(12),
	datab => \rra_servo_lower|pwm_count\(14),
	datad => \rra_servo_lower|pwm_count\(13),
	combout => \rra_servo_lower|pwm_out~0_combout\);

-- Location: LCCOMB_X23_Y14_N12
\rra_servo_lower|pwm_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out~1_combout\ = (((!\rra_servo_lower|pwm_count\(9)) # (!\rra_servo_lower|pwm_count\(7))) # (!\rra_servo_lower|pwm_count\(8))) # (!\rra_servo_lower|pwm_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(6),
	datab => \rra_servo_lower|pwm_count\(8),
	datac => \rra_servo_lower|pwm_count\(7),
	datad => \rra_servo_lower|pwm_count\(9),
	combout => \rra_servo_lower|pwm_out~1_combout\);

-- Location: LCCOMB_X23_Y16_N12
\rra_servo_base|clk_1khz_count[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1khz_count[0]~10_combout\ = \rra_servo_base|clk_1khz_count\(0) $ (VCC)
-- \rra_servo_base|clk_1khz_count[0]~11\ = CARRY(\rra_servo_base|clk_1khz_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|clk_1khz_count\(0),
	datad => VCC,
	combout => \rra_servo_base|clk_1khz_count[0]~10_combout\,
	cout => \rra_servo_base|clk_1khz_count[0]~11\);

-- Location: LCCOMB_X23_Y16_N10
\rra_servo_base|clk_1khz_count[0]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1khz_count[0]~22_combout\ = (\rst~input_o\) # (!\rra_servo_lower|LessThan4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \rra_servo_lower|LessThan4~2_combout\,
	combout => \rra_servo_base|clk_1khz_count[0]~22_combout\);

-- Location: FF_X23_Y16_N13
\rra_servo_base|clk_1khz_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1khz_count[0]~10_combout\,
	sclr => \rra_servo_base|clk_1khz_count[0]~22_combout\,
	ena => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1khz_count\(0));

-- Location: LCCOMB_X23_Y16_N14
\rra_servo_base|clk_1khz_count[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1khz_count[1]~12_combout\ = (\rra_servo_base|clk_1khz_count\(1) & (!\rra_servo_base|clk_1khz_count[0]~11\)) # (!\rra_servo_base|clk_1khz_count\(1) & ((\rra_servo_base|clk_1khz_count[0]~11\) # (GND)))
-- \rra_servo_base|clk_1khz_count[1]~13\ = CARRY((!\rra_servo_base|clk_1khz_count[0]~11\) # (!\rra_servo_base|clk_1khz_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|clk_1khz_count\(1),
	datad => VCC,
	cin => \rra_servo_base|clk_1khz_count[0]~11\,
	combout => \rra_servo_base|clk_1khz_count[1]~12_combout\,
	cout => \rra_servo_base|clk_1khz_count[1]~13\);

-- Location: FF_X23_Y16_N15
\rra_servo_base|clk_1khz_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1khz_count[1]~12_combout\,
	sclr => \rra_servo_base|clk_1khz_count[0]~22_combout\,
	ena => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1khz_count\(1));

-- Location: LCCOMB_X23_Y16_N16
\rra_servo_base|clk_1khz_count[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1khz_count[2]~14_combout\ = (\rra_servo_base|clk_1khz_count\(2) & (\rra_servo_base|clk_1khz_count[1]~13\ $ (GND))) # (!\rra_servo_base|clk_1khz_count\(2) & (!\rra_servo_base|clk_1khz_count[1]~13\ & VCC))
-- \rra_servo_base|clk_1khz_count[2]~15\ = CARRY((\rra_servo_base|clk_1khz_count\(2) & !\rra_servo_base|clk_1khz_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|clk_1khz_count\(2),
	datad => VCC,
	cin => \rra_servo_base|clk_1khz_count[1]~13\,
	combout => \rra_servo_base|clk_1khz_count[2]~14_combout\,
	cout => \rra_servo_base|clk_1khz_count[2]~15\);

-- Location: FF_X23_Y16_N17
\rra_servo_base|clk_1khz_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1khz_count[2]~14_combout\,
	sclr => \rra_servo_base|clk_1khz_count[0]~22_combout\,
	ena => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1khz_count\(2));

-- Location: LCCOMB_X23_Y16_N18
\rra_servo_base|clk_1khz_count[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1khz_count[3]~16_combout\ = (\rra_servo_base|clk_1khz_count\(3) & (!\rra_servo_base|clk_1khz_count[2]~15\)) # (!\rra_servo_base|clk_1khz_count\(3) & ((\rra_servo_base|clk_1khz_count[2]~15\) # (GND)))
-- \rra_servo_base|clk_1khz_count[3]~17\ = CARRY((!\rra_servo_base|clk_1khz_count[2]~15\) # (!\rra_servo_base|clk_1khz_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|clk_1khz_count\(3),
	datad => VCC,
	cin => \rra_servo_base|clk_1khz_count[2]~15\,
	combout => \rra_servo_base|clk_1khz_count[3]~16_combout\,
	cout => \rra_servo_base|clk_1khz_count[3]~17\);

-- Location: FF_X23_Y16_N19
\rra_servo_base|clk_1khz_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1khz_count[3]~16_combout\,
	sclr => \rra_servo_base|clk_1khz_count[0]~22_combout\,
	ena => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1khz_count\(3));

-- Location: LCCOMB_X23_Y16_N20
\rra_servo_base|clk_1khz_count[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1khz_count[4]~18_combout\ = (\rra_servo_base|clk_1khz_count\(4) & (\rra_servo_base|clk_1khz_count[3]~17\ $ (GND))) # (!\rra_servo_base|clk_1khz_count\(4) & (!\rra_servo_base|clk_1khz_count[3]~17\ & VCC))
-- \rra_servo_base|clk_1khz_count[4]~19\ = CARRY((\rra_servo_base|clk_1khz_count\(4) & !\rra_servo_base|clk_1khz_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|clk_1khz_count\(4),
	datad => VCC,
	cin => \rra_servo_base|clk_1khz_count[3]~17\,
	combout => \rra_servo_base|clk_1khz_count[4]~18_combout\,
	cout => \rra_servo_base|clk_1khz_count[4]~19\);

-- Location: FF_X23_Y16_N21
\rra_servo_base|clk_1khz_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1khz_count[4]~18_combout\,
	sclr => \rra_servo_base|clk_1khz_count[0]~22_combout\,
	ena => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1khz_count\(4));

-- Location: LCCOMB_X23_Y16_N22
\rra_servo_base|clk_1khz_count[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1khz_count[5]~20_combout\ = (\rra_servo_base|clk_1khz_count\(5) & (!\rra_servo_base|clk_1khz_count[4]~19\)) # (!\rra_servo_base|clk_1khz_count\(5) & ((\rra_servo_base|clk_1khz_count[4]~19\) # (GND)))
-- \rra_servo_base|clk_1khz_count[5]~21\ = CARRY((!\rra_servo_base|clk_1khz_count[4]~19\) # (!\rra_servo_base|clk_1khz_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|clk_1khz_count\(5),
	datad => VCC,
	cin => \rra_servo_base|clk_1khz_count[4]~19\,
	combout => \rra_servo_base|clk_1khz_count[5]~20_combout\,
	cout => \rra_servo_base|clk_1khz_count[5]~21\);

-- Location: FF_X23_Y16_N23
\rra_servo_base|clk_1khz_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1khz_count[5]~20_combout\,
	sclr => \rra_servo_base|clk_1khz_count[0]~22_combout\,
	ena => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1khz_count\(5));

-- Location: LCCOMB_X23_Y16_N24
\rra_servo_base|clk_1khz_count[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1khz_count[6]~23_combout\ = (\rra_servo_base|clk_1khz_count\(6) & (\rra_servo_base|clk_1khz_count[5]~21\ $ (GND))) # (!\rra_servo_base|clk_1khz_count\(6) & (!\rra_servo_base|clk_1khz_count[5]~21\ & VCC))
-- \rra_servo_base|clk_1khz_count[6]~24\ = CARRY((\rra_servo_base|clk_1khz_count\(6) & !\rra_servo_base|clk_1khz_count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|clk_1khz_count\(6),
	datad => VCC,
	cin => \rra_servo_base|clk_1khz_count[5]~21\,
	combout => \rra_servo_base|clk_1khz_count[6]~23_combout\,
	cout => \rra_servo_base|clk_1khz_count[6]~24\);

-- Location: FF_X23_Y16_N25
\rra_servo_base|clk_1khz_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1khz_count[6]~23_combout\,
	sclr => \rra_servo_base|clk_1khz_count[0]~22_combout\,
	ena => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1khz_count\(6));

-- Location: LCCOMB_X23_Y16_N26
\rra_servo_base|clk_1khz_count[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1khz_count[7]~25_combout\ = (\rra_servo_base|clk_1khz_count\(7) & (!\rra_servo_base|clk_1khz_count[6]~24\)) # (!\rra_servo_base|clk_1khz_count\(7) & ((\rra_servo_base|clk_1khz_count[6]~24\) # (GND)))
-- \rra_servo_base|clk_1khz_count[7]~26\ = CARRY((!\rra_servo_base|clk_1khz_count[6]~24\) # (!\rra_servo_base|clk_1khz_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|clk_1khz_count\(7),
	datad => VCC,
	cin => \rra_servo_base|clk_1khz_count[6]~24\,
	combout => \rra_servo_base|clk_1khz_count[7]~25_combout\,
	cout => \rra_servo_base|clk_1khz_count[7]~26\);

-- Location: FF_X23_Y16_N27
\rra_servo_base|clk_1khz_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1khz_count[7]~25_combout\,
	sclr => \rra_servo_base|clk_1khz_count[0]~22_combout\,
	ena => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1khz_count\(7));

-- Location: LCCOMB_X23_Y16_N28
\rra_servo_base|clk_1khz_count[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1khz_count[8]~27_combout\ = (\rra_servo_base|clk_1khz_count\(8) & (\rra_servo_base|clk_1khz_count[7]~26\ $ (GND))) # (!\rra_servo_base|clk_1khz_count\(8) & (!\rra_servo_base|clk_1khz_count[7]~26\ & VCC))
-- \rra_servo_base|clk_1khz_count[8]~28\ = CARRY((\rra_servo_base|clk_1khz_count\(8) & !\rra_servo_base|clk_1khz_count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|clk_1khz_count\(8),
	datad => VCC,
	cin => \rra_servo_base|clk_1khz_count[7]~26\,
	combout => \rra_servo_base|clk_1khz_count[8]~27_combout\,
	cout => \rra_servo_base|clk_1khz_count[8]~28\);

-- Location: FF_X23_Y16_N29
\rra_servo_base|clk_1khz_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1khz_count[8]~27_combout\,
	sclr => \rra_servo_base|clk_1khz_count[0]~22_combout\,
	ena => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1khz_count\(8));

-- Location: LCCOMB_X23_Y16_N30
\rra_servo_base|clk_1khz_count[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1khz_count[9]~29_combout\ = \rra_servo_base|clk_1khz_count\(9) $ (\rra_servo_base|clk_1khz_count[8]~28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|clk_1khz_count\(9),
	cin => \rra_servo_base|clk_1khz_count[8]~28\,
	combout => \rra_servo_base|clk_1khz_count[9]~29_combout\);

-- Location: FF_X23_Y16_N31
\rra_servo_base|clk_1khz_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1khz_count[9]~29_combout\,
	sclr => \rra_servo_base|clk_1khz_count[0]~22_combout\,
	ena => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1khz_count\(9));

-- Location: LCCOMB_X23_Y16_N8
\rra_servo_lower|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan4~0_combout\ = (((!\rra_servo_base|clk_1khz_count\(8)) # (!\rra_servo_base|clk_1khz_count\(7))) # (!\rra_servo_base|clk_1khz_count\(6))) # (!\rra_servo_base|clk_1khz_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|clk_1khz_count\(5),
	datab => \rra_servo_base|clk_1khz_count\(6),
	datac => \rra_servo_base|clk_1khz_count\(7),
	datad => \rra_servo_base|clk_1khz_count\(8),
	combout => \rra_servo_lower|LessThan4~0_combout\);

-- Location: LCCOMB_X23_Y16_N2
\rra_servo_lower|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan4~1_combout\ = (!\rra_servo_base|clk_1khz_count\(3) & (((!\rra_servo_base|clk_1khz_count\(1)) # (!\rra_servo_base|clk_1khz_count\(2))) # (!\rra_servo_base|clk_1khz_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|clk_1khz_count\(0),
	datab => \rra_servo_base|clk_1khz_count\(2),
	datac => \rra_servo_base|clk_1khz_count\(1),
	datad => \rra_servo_base|clk_1khz_count\(3),
	combout => \rra_servo_lower|LessThan4~1_combout\);

-- Location: LCCOMB_X23_Y16_N4
\rra_servo_lower|LessThan4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan4~2_combout\ = ((\rra_servo_lower|LessThan4~0_combout\) # ((!\rra_servo_base|clk_1khz_count\(4) & \rra_servo_lower|LessThan4~1_combout\))) # (!\rra_servo_base|clk_1khz_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|clk_1khz_count\(9),
	datab => \rra_servo_base|clk_1khz_count\(4),
	datac => \rra_servo_lower|LessThan4~0_combout\,
	datad => \rra_servo_lower|LessThan4~1_combout\,
	combout => \rra_servo_lower|LessThan4~2_combout\);

-- Location: LCCOMB_X22_Y16_N2
\rra_servo_lower|clk_1khz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|clk_1khz~0_combout\ = (!\rst~input_o\ & !\rra_servo_lower|LessThan4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \rra_servo_lower|LessThan4~2_combout\,
	combout => \rra_servo_lower|clk_1khz~0_combout\);

-- Location: LCCOMB_X22_Y16_N0
\rra_servo_lower|clk_1khz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|clk_1khz~feeder_combout\ = \rra_servo_lower|clk_1khz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|clk_1khz~0_combout\,
	combout => \rra_servo_lower|clk_1khz~feeder_combout\);

-- Location: FF_X22_Y16_N1
\rra_servo_lower|clk_1khz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_lower|clk_1khz~feeder_combout\,
	ena => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|clk_1khz~q\);

-- Location: CLKCTRL_G11
\rra_servo_lower|clk_1khz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_lower|clk_1khz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_lower|clk_1khz~clkctrl_outclk\);

-- Location: IOIBUF_X30_Y0_N8
\i_key_row[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_key_row(2),
	o => \i_key_row[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\i_key_row[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_key_row(1),
	o => \i_key_row[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\i_key_row[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_key_row(3),
	o => \i_key_row[3]~input_o\);

-- Location: LCCOMB_X8_Y3_N4
\keypad|Mux45~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux45~4_combout\ = (!\i_key_row[2]~input_o\ & (!\i_key_row[1]~input_o\ & !\i_key_row[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_row[2]~input_o\,
	datac => \i_key_row[1]~input_o\,
	datad => \i_key_row[3]~input_o\,
	combout => \keypad|Mux45~4_combout\);

-- Location: LCCOMB_X7_Y3_N4
\keypad|col_count[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|col_count[0]~1_combout\ = !\keypad|col_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad|col_count\(0),
	combout => \keypad|col_count[0]~1_combout\);

-- Location: LCCOMB_X6_Y3_N0
\keypad|delay[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|delay[0]~16_combout\ = \keypad|delay\(0) $ (VCC)
-- \keypad|delay[0]~17\ = CARRY(\keypad|delay\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad|delay\(0),
	datad => VCC,
	combout => \keypad|delay[0]~16_combout\,
	cout => \keypad|delay[0]~17\);

-- Location: LCCOMB_X6_Y3_N10
\keypad|delay[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|delay[5]~26_combout\ = (\keypad|delay\(5) & (!\keypad|delay[4]~25\)) # (!\keypad|delay\(5) & ((\keypad|delay[4]~25\) # (GND)))
-- \keypad|delay[5]~27\ = CARRY((!\keypad|delay[4]~25\) # (!\keypad|delay\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|delay\(5),
	datad => VCC,
	cin => \keypad|delay[4]~25\,
	combout => \keypad|delay[5]~26_combout\,
	cout => \keypad|delay[5]~27\);

-- Location: LCCOMB_X6_Y3_N12
\keypad|delay[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|delay[6]~28_combout\ = (\keypad|delay\(6) & (\keypad|delay[5]~27\ $ (GND))) # (!\keypad|delay\(6) & (!\keypad|delay[5]~27\ & VCC))
-- \keypad|delay[6]~29\ = CARRY((\keypad|delay\(6) & !\keypad|delay[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|delay\(6),
	datad => VCC,
	cin => \keypad|delay[5]~27\,
	combout => \keypad|delay[6]~28_combout\,
	cout => \keypad|delay[6]~29\);

-- Location: FF_X6_Y3_N13
\keypad|delay[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|delay[6]~28_combout\,
	sclr => \keypad|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|delay\(6));

-- Location: LCCOMB_X6_Y3_N14
\keypad|delay[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|delay[7]~30_combout\ = (\keypad|delay\(7) & (!\keypad|delay[6]~29\)) # (!\keypad|delay\(7) & ((\keypad|delay[6]~29\) # (GND)))
-- \keypad|delay[7]~31\ = CARRY((!\keypad|delay[6]~29\) # (!\keypad|delay\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad|delay\(7),
	datad => VCC,
	cin => \keypad|delay[6]~29\,
	combout => \keypad|delay[7]~30_combout\,
	cout => \keypad|delay[7]~31\);

-- Location: FF_X6_Y3_N15
\keypad|delay[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|delay[7]~30_combout\,
	sclr => \keypad|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|delay\(7));

-- Location: LCCOMB_X6_Y3_N16
\keypad|delay[8]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|delay[8]~32_combout\ = (\keypad|delay\(8) & (\keypad|delay[7]~31\ $ (GND))) # (!\keypad|delay\(8) & (!\keypad|delay[7]~31\ & VCC))
-- \keypad|delay[8]~33\ = CARRY((\keypad|delay\(8) & !\keypad|delay[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad|delay\(8),
	datad => VCC,
	cin => \keypad|delay[7]~31\,
	combout => \keypad|delay[8]~32_combout\,
	cout => \keypad|delay[8]~33\);

-- Location: FF_X6_Y3_N17
\keypad|delay[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|delay[8]~32_combout\,
	sclr => \keypad|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|delay\(8));

-- Location: LCCOMB_X6_Y3_N18
\keypad|delay[9]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|delay[9]~34_combout\ = (\keypad|delay\(9) & (!\keypad|delay[8]~33\)) # (!\keypad|delay\(9) & ((\keypad|delay[8]~33\) # (GND)))
-- \keypad|delay[9]~35\ = CARRY((!\keypad|delay[8]~33\) # (!\keypad|delay\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad|delay\(9),
	datad => VCC,
	cin => \keypad|delay[8]~33\,
	combout => \keypad|delay[9]~34_combout\,
	cout => \keypad|delay[9]~35\);

-- Location: FF_X6_Y3_N19
\keypad|delay[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|delay[9]~34_combout\,
	sclr => \keypad|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|delay\(9));

-- Location: LCCOMB_X6_Y3_N20
\keypad|delay[10]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|delay[10]~36_combout\ = (\keypad|delay\(10) & (\keypad|delay[9]~35\ $ (GND))) # (!\keypad|delay\(10) & (!\keypad|delay[9]~35\ & VCC))
-- \keypad|delay[10]~37\ = CARRY((\keypad|delay\(10) & !\keypad|delay[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad|delay\(10),
	datad => VCC,
	cin => \keypad|delay[9]~35\,
	combout => \keypad|delay[10]~36_combout\,
	cout => \keypad|delay[10]~37\);

-- Location: FF_X6_Y3_N21
\keypad|delay[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|delay[10]~36_combout\,
	sclr => \keypad|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|delay\(10));

-- Location: LCCOMB_X6_Y3_N22
\keypad|delay[11]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|delay[11]~38_combout\ = (\keypad|delay\(11) & (!\keypad|delay[10]~37\)) # (!\keypad|delay\(11) & ((\keypad|delay[10]~37\) # (GND)))
-- \keypad|delay[11]~39\ = CARRY((!\keypad|delay[10]~37\) # (!\keypad|delay\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|delay\(11),
	datad => VCC,
	cin => \keypad|delay[10]~37\,
	combout => \keypad|delay[11]~38_combout\,
	cout => \keypad|delay[11]~39\);

-- Location: FF_X6_Y3_N23
\keypad|delay[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|delay[11]~38_combout\,
	sclr => \keypad|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|delay\(11));

-- Location: LCCOMB_X6_Y3_N24
\keypad|delay[12]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|delay[12]~40_combout\ = (\keypad|delay\(12) & (\keypad|delay[11]~39\ $ (GND))) # (!\keypad|delay\(12) & (!\keypad|delay[11]~39\ & VCC))
-- \keypad|delay[12]~41\ = CARRY((\keypad|delay\(12) & !\keypad|delay[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad|delay\(12),
	datad => VCC,
	cin => \keypad|delay[11]~39\,
	combout => \keypad|delay[12]~40_combout\,
	cout => \keypad|delay[12]~41\);

-- Location: FF_X6_Y3_N25
\keypad|delay[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|delay[12]~40_combout\,
	sclr => \keypad|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|delay\(12));

-- Location: LCCOMB_X6_Y3_N26
\keypad|delay[13]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|delay[13]~42_combout\ = (\keypad|delay\(13) & (!\keypad|delay[12]~41\)) # (!\keypad|delay\(13) & ((\keypad|delay[12]~41\) # (GND)))
-- \keypad|delay[13]~43\ = CARRY((!\keypad|delay[12]~41\) # (!\keypad|delay\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|delay\(13),
	datad => VCC,
	cin => \keypad|delay[12]~41\,
	combout => \keypad|delay[13]~42_combout\,
	cout => \keypad|delay[13]~43\);

-- Location: FF_X6_Y3_N27
\keypad|delay[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|delay[13]~42_combout\,
	sclr => \keypad|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|delay\(13));

-- Location: LCCOMB_X6_Y3_N28
\keypad|delay[14]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|delay[14]~44_combout\ = (\keypad|delay\(14) & (\keypad|delay[13]~43\ $ (GND))) # (!\keypad|delay\(14) & (!\keypad|delay[13]~43\ & VCC))
-- \keypad|delay[14]~45\ = CARRY((\keypad|delay\(14) & !\keypad|delay[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad|delay\(14),
	datad => VCC,
	cin => \keypad|delay[13]~43\,
	combout => \keypad|delay[14]~44_combout\,
	cout => \keypad|delay[14]~45\);

-- Location: FF_X6_Y3_N29
\keypad|delay[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|delay[14]~44_combout\,
	sclr => \keypad|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|delay\(14));

-- Location: LCCOMB_X6_Y3_N30
\keypad|delay[15]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|delay[15]~46_combout\ = \keypad|delay\(15) $ (\keypad|delay[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|delay\(15),
	cin => \keypad|delay[14]~45\,
	combout => \keypad|delay[15]~46_combout\);

-- Location: FF_X6_Y3_N31
\keypad|delay[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|delay[15]~46_combout\,
	sclr => \keypad|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|delay\(15));

-- Location: LCCOMB_X7_Y3_N26
\keypad|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|LessThan0~0_combout\ = (!\keypad|delay\(7) & (((!\keypad|delay\(5) & !\keypad|delay\(4))) # (!\keypad|delay\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|delay\(5),
	datab => \keypad|delay\(4),
	datac => \keypad|delay\(6),
	datad => \keypad|delay\(7),
	combout => \keypad|LessThan0~0_combout\);

-- Location: LCCOMB_X7_Y3_N28
\keypad|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Equal0~0_combout\ = (!\keypad|delay\(13) & (!\keypad|delay\(11) & (!\keypad|delay\(10) & !\keypad|delay\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|delay\(13),
	datab => \keypad|delay\(11),
	datac => \keypad|delay\(10),
	datad => \keypad|delay\(12),
	combout => \keypad|Equal0~0_combout\);

-- Location: LCCOMB_X7_Y3_N12
\keypad|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|LessThan0~1_combout\ = (\keypad|Equal0~0_combout\ & (((\keypad|LessThan0~0_combout\) # (!\keypad|delay\(9))) # (!\keypad|delay\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|delay\(8),
	datab => \keypad|delay\(9),
	datac => \keypad|LessThan0~0_combout\,
	datad => \keypad|Equal0~0_combout\,
	combout => \keypad|LessThan0~1_combout\);

-- Location: LCCOMB_X7_Y3_N18
\keypad|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|LessThan0~2_combout\ = (\keypad|delay\(14) & (\keypad|delay\(15) & !\keypad|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad|delay\(14),
	datac => \keypad|delay\(15),
	datad => \keypad|LessThan0~1_combout\,
	combout => \keypad|LessThan0~2_combout\);

-- Location: FF_X6_Y3_N1
\keypad|delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|delay[0]~16_combout\,
	sclr => \keypad|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|delay\(0));

-- Location: LCCOMB_X6_Y3_N2
\keypad|delay[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|delay[1]~18_combout\ = (\keypad|delay\(1) & (!\keypad|delay[0]~17\)) # (!\keypad|delay\(1) & ((\keypad|delay[0]~17\) # (GND)))
-- \keypad|delay[1]~19\ = CARRY((!\keypad|delay[0]~17\) # (!\keypad|delay\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad|delay\(1),
	datad => VCC,
	cin => \keypad|delay[0]~17\,
	combout => \keypad|delay[1]~18_combout\,
	cout => \keypad|delay[1]~19\);

-- Location: FF_X6_Y3_N3
\keypad|delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|delay[1]~18_combout\,
	sclr => \keypad|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|delay\(1));

-- Location: LCCOMB_X6_Y3_N4
\keypad|delay[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|delay[2]~20_combout\ = (\keypad|delay\(2) & (\keypad|delay[1]~19\ $ (GND))) # (!\keypad|delay\(2) & (!\keypad|delay[1]~19\ & VCC))
-- \keypad|delay[2]~21\ = CARRY((\keypad|delay\(2) & !\keypad|delay[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad|delay\(2),
	datad => VCC,
	cin => \keypad|delay[1]~19\,
	combout => \keypad|delay[2]~20_combout\,
	cout => \keypad|delay[2]~21\);

-- Location: FF_X6_Y3_N5
\keypad|delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|delay[2]~20_combout\,
	sclr => \keypad|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|delay\(2));

-- Location: LCCOMB_X6_Y3_N6
\keypad|delay[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|delay[3]~22_combout\ = (\keypad|delay\(3) & (!\keypad|delay[2]~21\)) # (!\keypad|delay\(3) & ((\keypad|delay[2]~21\) # (GND)))
-- \keypad|delay[3]~23\ = CARRY((!\keypad|delay[2]~21\) # (!\keypad|delay\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|delay\(3),
	datad => VCC,
	cin => \keypad|delay[2]~21\,
	combout => \keypad|delay[3]~22_combout\,
	cout => \keypad|delay[3]~23\);

-- Location: FF_X6_Y3_N7
\keypad|delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|delay[3]~22_combout\,
	sclr => \keypad|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|delay\(3));

-- Location: LCCOMB_X6_Y3_N8
\keypad|delay[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|delay[4]~24_combout\ = (\keypad|delay\(4) & (\keypad|delay[3]~23\ $ (GND))) # (!\keypad|delay\(4) & (!\keypad|delay[3]~23\ & VCC))
-- \keypad|delay[4]~25\ = CARRY((\keypad|delay\(4) & !\keypad|delay[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad|delay\(4),
	datad => VCC,
	cin => \keypad|delay[3]~23\,
	combout => \keypad|delay[4]~24_combout\,
	cout => \keypad|delay[4]~25\);

-- Location: FF_X6_Y3_N9
\keypad|delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|delay[4]~24_combout\,
	sclr => \keypad|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|delay\(4));

-- Location: FF_X6_Y3_N11
\keypad|delay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|delay[5]~26_combout\,
	sclr => \keypad|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|delay\(5));

-- Location: LCCOMB_X7_Y3_N30
\keypad|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Equal0~1_combout\ = (!\keypad|delay\(5) & (!\keypad|delay\(4) & (!\keypad|delay\(0) & !\keypad|delay\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|delay\(5),
	datab => \keypad|delay\(4),
	datac => \keypad|delay\(0),
	datad => \keypad|delay\(1),
	combout => \keypad|Equal0~1_combout\);

-- Location: LCCOMB_X7_Y3_N22
\keypad|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Equal0~3_combout\ = (!\keypad|delay\(8) & (!\keypad|delay\(9) & (!\keypad|delay\(14) & !\keypad|delay\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|delay\(8),
	datab => \keypad|delay\(9),
	datac => \keypad|delay\(14),
	datad => \keypad|delay\(15),
	combout => \keypad|Equal0~3_combout\);

-- Location: LCCOMB_X7_Y3_N24
\keypad|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Equal0~2_combout\ = (!\keypad|delay\(7) & (!\keypad|delay\(3) & (!\keypad|delay\(2) & !\keypad|delay\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|delay\(7),
	datab => \keypad|delay\(3),
	datac => \keypad|delay\(2),
	datad => \keypad|delay\(6),
	combout => \keypad|Equal0~2_combout\);

-- Location: LCCOMB_X7_Y3_N8
\keypad|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Equal0~4_combout\ = (\keypad|Equal0~1_combout\ & (\keypad|Equal0~0_combout\ & (\keypad|Equal0~3_combout\ & \keypad|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|Equal0~1_combout\,
	datab => \keypad|Equal0~0_combout\,
	datac => \keypad|Equal0~3_combout\,
	datad => \keypad|Equal0~2_combout\,
	combout => \keypad|Equal0~4_combout\);

-- Location: FF_X7_Y3_N5
\keypad|col_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|col_count[0]~1_combout\,
	ena => \keypad|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|col_count\(0));

-- Location: LCCOMB_X7_Y3_N14
\keypad|col_count[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|col_count[1]~0_combout\ = \keypad|col_count\(1) $ (((\keypad|Equal0~4_combout\ & \keypad|col_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad|Equal0~4_combout\,
	datac => \keypad|col_count\(1),
	datad => \keypad|col_count\(0),
	combout => \keypad|col_count[1]~0_combout\);

-- Location: FF_X7_Y3_N15
\keypad|col_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|col_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|col_count\(1));

-- Location: LCCOMB_X8_Y3_N20
\keypad|Mux47~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux47~4_combout\ = (\keypad|Mux45~4_combout\ & (!\keypad|col_count\(0) & !\keypad|col_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad|Mux45~4_combout\,
	datac => \keypad|col_count\(0),
	datad => \keypad|col_count\(1),
	combout => \keypad|Mux47~4_combout\);

-- Location: IOIBUF_X30_Y0_N1
\i_key_row[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_key_row(0),
	o => \i_key_row[0]~input_o\);

-- Location: LCCOMB_X8_Y3_N22
\keypad|key_next[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_next[1]~0_combout\ = (\keypad|Equal0~4_combout\ & ((\i_key_row[0]~input_o\) # (!\keypad|Mux45~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad|Mux45~4_combout\,
	datac => \i_key_row[0]~input_o\,
	datad => \keypad|Equal0~4_combout\,
	combout => \keypad|key_next[1]~0_combout\);

-- Location: FF_X8_Y3_N21
\keypad|key_next[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux47~4_combout\,
	ena => \keypad|key_next[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(1));

-- Location: LCCOMB_X8_Y3_N0
\keypad|key_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_out[1]~feeder_combout\ = \keypad|key_next\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad|key_next\(1),
	combout => \keypad|key_out[1]~feeder_combout\);

-- Location: LCCOMB_X8_Y3_N12
\keypad|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux16~0_combout\ = (\i_key_row[2]~input_o\ & ((\i_key_row[0]~input_o\) # ((\i_key_row[1]~input_o\) # (\i_key_row[3]~input_o\)))) # (!\i_key_row[2]~input_o\ & ((\i_key_row[0]~input_o\ & ((\i_key_row[1]~input_o\) # (\i_key_row[3]~input_o\))) # 
-- (!\i_key_row[0]~input_o\ & (\i_key_row[1]~input_o\ & \i_key_row[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_row[2]~input_o\,
	datab => \i_key_row[0]~input_o\,
	datac => \i_key_row[1]~input_o\,
	datad => \i_key_row[3]~input_o\,
	combout => \keypad|Mux16~0_combout\);

-- Location: FF_X7_Y3_N11
\keypad|err\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \keypad|Mux16~0_combout\,
	sload => VCC,
	ena => \keypad|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|err~q\);

-- Location: LCCOMB_X7_Y3_N10
\keypad|key_out[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_out[1]~0_combout\ = (!\keypad|err~q\ & \keypad|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad|err~q\,
	datad => \keypad|Equal0~2_combout\,
	combout => \keypad|key_out[1]~0_combout\);

-- Location: LCCOMB_X7_Y3_N16
\keypad|key_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_out[1]~1_combout\ = (\keypad|Equal0~1_combout\ & (\keypad|Equal0~0_combout\ & (\keypad|Equal0~3_combout\ & \keypad|key_out[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|Equal0~1_combout\,
	datab => \keypad|Equal0~0_combout\,
	datac => \keypad|Equal0~3_combout\,
	datad => \keypad|key_out[1]~0_combout\,
	combout => \keypad|key_out[1]~1_combout\);

-- Location: FF_X8_Y3_N1
\keypad|key_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[1]~feeder_combout\,
	ena => \keypad|key_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(1));

-- Location: LCCOMB_X8_Y3_N10
\keypad|Mux41~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux41~2_combout\ = (\i_key_row[2]~input_o\ & (!\i_key_row[0]~input_o\ & (!\i_key_row[1]~input_o\ & !\i_key_row[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_row[2]~input_o\,
	datab => \i_key_row[0]~input_o\,
	datac => \i_key_row[1]~input_o\,
	datad => \i_key_row[3]~input_o\,
	combout => \keypad|Mux41~2_combout\);

-- Location: LCCOMB_X8_Y3_N18
\keypad|Mux41~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux41~3_combout\ = (!\keypad|col_count\(1) & (!\keypad|col_count\(0) & \keypad|Mux41~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|col_count\(1),
	datac => \keypad|col_count\(0),
	datad => \keypad|Mux41~2_combout\,
	combout => \keypad|Mux41~3_combout\);

-- Location: FF_X8_Y3_N19
\keypad|key_next[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux41~3_combout\,
	ena => \keypad|key_next[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(7));

-- Location: LCCOMB_X8_Y3_N14
\keypad|key_out[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_out[7]~feeder_combout\ = \keypad|key_next\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad|key_next\(7),
	combout => \keypad|key_out[7]~feeder_combout\);

-- Location: FF_X8_Y3_N15
\keypad|key_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[7]~feeder_combout\,
	ena => \keypad|key_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(7));

-- Location: LCCOMB_X20_Y14_N0
\t_lower_pos~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \t_lower_pos~0_combout\ = (!\keypad|key_out\(7) & ((\keypad|key_out\(1)) # (t_lower_pos(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad|key_out\(1),
	datac => t_lower_pos(9),
	datad => \keypad|key_out\(7),
	combout => \t_lower_pos~0_combout\);

-- Location: FF_X20_Y14_N1
\t_lower_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t_lower_pos~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t_lower_pos(9));

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

-- Location: LCCOMB_X26_Y25_N0
\rra_servo_lower|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~0_combout\ = (\speed[0]~input_o\) # ((\speed[2]~input_o\) # (\speed[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[0]~input_o\,
	datac => \speed[2]~input_o\,
	datad => \speed[1]~input_o\,
	combout => \rra_servo_lower|Add0~0_combout\);

-- Location: LCCOMB_X26_Y25_N2
\rra_servo_lower|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~1_combout\ = (\speed[0]~input_o\) # ((\speed[3]~input_o\) # ((\speed[2]~input_o\) # (\speed[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[0]~input_o\,
	datab => \speed[3]~input_o\,
	datac => \speed[2]~input_o\,
	datad => \speed[1]~input_o\,
	combout => \rra_servo_lower|Add0~1_combout\);

-- Location: LCCOMB_X26_Y25_N22
\rra_servo_lower|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add1~0_combout\ = (\speed[0]~input_o\ & (\rra_servo_lower|Add0~1_combout\ $ (VCC))) # (!\speed[0]~input_o\ & (\rra_servo_lower|Add0~1_combout\ & VCC))
-- \rra_servo_lower|Add1~1\ = CARRY((\speed[0]~input_o\ & \rra_servo_lower|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[0]~input_o\,
	datab => \rra_servo_lower|Add0~1_combout\,
	datad => VCC,
	combout => \rra_servo_lower|Add1~0_combout\,
	cout => \rra_servo_lower|Add1~1\);

-- Location: LCCOMB_X26_Y25_N24
\rra_servo_lower|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add1~2_combout\ = (\speed[1]~input_o\ & ((\rra_servo_lower|Add0~1_combout\ & (\rra_servo_lower|Add1~1\ & VCC)) # (!\rra_servo_lower|Add0~1_combout\ & (!\rra_servo_lower|Add1~1\)))) # (!\speed[1]~input_o\ & 
-- ((\rra_servo_lower|Add0~1_combout\ & (!\rra_servo_lower|Add1~1\)) # (!\rra_servo_lower|Add0~1_combout\ & ((\rra_servo_lower|Add1~1\) # (GND)))))
-- \rra_servo_lower|Add1~3\ = CARRY((\speed[1]~input_o\ & (!\rra_servo_lower|Add0~1_combout\ & !\rra_servo_lower|Add1~1\)) # (!\speed[1]~input_o\ & ((!\rra_servo_lower|Add1~1\) # (!\rra_servo_lower|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed[1]~input_o\,
	datab => \rra_servo_lower|Add0~1_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add1~1\,
	combout => \rra_servo_lower|Add1~2_combout\,
	cout => \rra_servo_lower|Add1~3\);

-- Location: LCCOMB_X26_Y25_N26
\rra_servo_lower|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add1~4_combout\ = ((\rra_servo_lower|Add0~1_combout\ $ (\speed[2]~input_o\ $ (!\rra_servo_lower|Add1~3\)))) # (GND)
-- \rra_servo_lower|Add1~5\ = CARRY((\rra_servo_lower|Add0~1_combout\ & ((\speed[2]~input_o\) # (!\rra_servo_lower|Add1~3\))) # (!\rra_servo_lower|Add0~1_combout\ & (\speed[2]~input_o\ & !\rra_servo_lower|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add0~1_combout\,
	datab => \speed[2]~input_o\,
	datad => VCC,
	cin => \rra_servo_lower|Add1~3\,
	combout => \rra_servo_lower|Add1~4_combout\,
	cout => \rra_servo_lower|Add1~5\);

-- Location: LCCOMB_X26_Y25_N28
\rra_servo_lower|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add1~6_combout\ = (\speed[3]~input_o\ & ((\rra_servo_lower|Add0~1_combout\ & (\rra_servo_lower|Add1~5\ & VCC)) # (!\rra_servo_lower|Add0~1_combout\ & (!\rra_servo_lower|Add1~5\)))) # (!\speed[3]~input_o\ & 
-- ((\rra_servo_lower|Add0~1_combout\ & (!\rra_servo_lower|Add1~5\)) # (!\rra_servo_lower|Add0~1_combout\ & ((\rra_servo_lower|Add1~5\) # (GND)))))
-- \rra_servo_lower|Add1~7\ = CARRY((\speed[3]~input_o\ & (!\rra_servo_lower|Add0~1_combout\ & !\rra_servo_lower|Add1~5\)) # (!\speed[3]~input_o\ & ((!\rra_servo_lower|Add1~5\) # (!\rra_servo_lower|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed[3]~input_o\,
	datab => \rra_servo_lower|Add0~1_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add1~5\,
	combout => \rra_servo_lower|Add1~6_combout\,
	cout => \rra_servo_lower|Add1~7\);

-- Location: LCCOMB_X26_Y25_N30
\rra_servo_lower|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add1~8_combout\ = \rra_servo_lower|Add1~7\ $ (((!\speed[3]~input_o\ & !\rra_servo_lower|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \speed[3]~input_o\,
	datad => \rra_servo_lower|Add0~0_combout\,
	cin => \rra_servo_lower|Add1~7\,
	combout => \rra_servo_lower|Add1~8_combout\);

-- Location: LCCOMB_X22_Y25_N12
\rra_servo_lower|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~2_combout\ = (\speed[1]~input_o\) # (\speed[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \speed[1]~input_o\,
	datad => \speed[0]~input_o\,
	combout => \rra_servo_lower|Add0~2_combout\);

-- Location: LCCOMB_X26_Y25_N4
\rra_servo_lower|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add3~0_combout\ = \speed[0]~input_o\ $ (\speed[1]~input_o\ $ (VCC))
-- \rra_servo_lower|Add3~1\ = CARRY(\speed[0]~input_o\ $ (\speed[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[0]~input_o\,
	datab => \speed[1]~input_o\,
	datad => VCC,
	combout => \rra_servo_lower|Add3~0_combout\,
	cout => \rra_servo_lower|Add3~1\);

-- Location: LCCOMB_X26_Y25_N6
\rra_servo_lower|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add3~2_combout\ = (\rra_servo_lower|Add3~1\ & ((\rra_servo_lower|Add0~2_combout\ $ (\speed[2]~input_o\)))) # (!\rra_servo_lower|Add3~1\ & (\rra_servo_lower|Add0~2_combout\ $ ((!\speed[2]~input_o\))))
-- \rra_servo_lower|Add3~3\ = CARRY((!\rra_servo_lower|Add3~1\ & (\rra_servo_lower|Add0~2_combout\ $ (!\speed[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add0~2_combout\,
	datab => \speed[2]~input_o\,
	datad => VCC,
	cin => \rra_servo_lower|Add3~1\,
	combout => \rra_servo_lower|Add3~2_combout\,
	cout => \rra_servo_lower|Add3~3\);

-- Location: LCCOMB_X26_Y25_N8
\rra_servo_lower|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add3~4_combout\ = (\rra_servo_lower|Add3~3\ & (\speed[3]~input_o\ $ (\rra_servo_lower|Add0~0_combout\ $ (VCC)))) # (!\rra_servo_lower|Add3~3\ & ((\speed[3]~input_o\ $ (\rra_servo_lower|Add0~0_combout\)) # (GND)))
-- \rra_servo_lower|Add3~5\ = CARRY((\speed[3]~input_o\ $ (\rra_servo_lower|Add0~0_combout\)) # (!\rra_servo_lower|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed[3]~input_o\,
	datab => \rra_servo_lower|Add0~0_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add3~3\,
	combout => \rra_servo_lower|Add3~4_combout\,
	cout => \rra_servo_lower|Add3~5\);

-- Location: LCCOMB_X26_Y25_N10
\rra_servo_lower|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add3~6_combout\ = (\rra_servo_lower|Add3~5\ & (((\speed[3]~input_o\) # (\rra_servo_lower|Add0~0_combout\)))) # (!\rra_servo_lower|Add3~5\ & (!\speed[3]~input_o\ & (!\rra_servo_lower|Add0~0_combout\)))
-- \rra_servo_lower|Add3~7\ = CARRY((!\speed[3]~input_o\ & (!\rra_servo_lower|Add0~0_combout\ & !\rra_servo_lower|Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed[3]~input_o\,
	datab => \rra_servo_lower|Add0~0_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add3~5\,
	combout => \rra_servo_lower|Add3~6_combout\,
	cout => \rra_servo_lower|Add3~7\);

-- Location: LCCOMB_X26_Y25_N12
\rra_servo_lower|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add3~8_combout\ = (\rra_servo_lower|Add1~0_combout\ & (\rra_servo_lower|Add3~7\ $ (GND))) # (!\rra_servo_lower|Add1~0_combout\ & (!\rra_servo_lower|Add3~7\ & VCC))
-- \rra_servo_lower|Add3~9\ = CARRY((\rra_servo_lower|Add1~0_combout\ & !\rra_servo_lower|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add1~0_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add3~7\,
	combout => \rra_servo_lower|Add3~8_combout\,
	cout => \rra_servo_lower|Add3~9\);

-- Location: LCCOMB_X26_Y25_N14
\rra_servo_lower|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add3~10_combout\ = (\rra_servo_lower|Add1~2_combout\ & (!\rra_servo_lower|Add3~9\)) # (!\rra_servo_lower|Add1~2_combout\ & ((\rra_servo_lower|Add3~9\) # (GND)))
-- \rra_servo_lower|Add3~11\ = CARRY((!\rra_servo_lower|Add3~9\) # (!\rra_servo_lower|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|Add1~2_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add3~9\,
	combout => \rra_servo_lower|Add3~10_combout\,
	cout => \rra_servo_lower|Add3~11\);

-- Location: LCCOMB_X26_Y25_N16
\rra_servo_lower|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add3~12_combout\ = (\rra_servo_lower|Add1~4_combout\ & (\rra_servo_lower|Add3~11\ $ (GND))) # (!\rra_servo_lower|Add1~4_combout\ & (!\rra_servo_lower|Add3~11\ & VCC))
-- \rra_servo_lower|Add3~13\ = CARRY((\rra_servo_lower|Add1~4_combout\ & !\rra_servo_lower|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add1~4_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add3~11\,
	combout => \rra_servo_lower|Add3~12_combout\,
	cout => \rra_servo_lower|Add3~13\);

-- Location: LCCOMB_X26_Y25_N18
\rra_servo_lower|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add3~14_combout\ = (\rra_servo_lower|Add1~6_combout\ & (!\rra_servo_lower|Add3~13\)) # (!\rra_servo_lower|Add1~6_combout\ & ((\rra_servo_lower|Add3~13\) # (GND)))
-- \rra_servo_lower|Add3~15\ = CARRY((!\rra_servo_lower|Add3~13\) # (!\rra_servo_lower|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|Add1~6_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add3~13\,
	combout => \rra_servo_lower|Add3~14_combout\,
	cout => \rra_servo_lower|Add3~15\);

-- Location: LCCOMB_X26_Y25_N20
\rra_servo_lower|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add3~16_combout\ = \rra_servo_lower|Add1~8_combout\ $ (!\rra_servo_lower|Add3~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add1~8_combout\,
	cin => \rra_servo_lower|Add3~15\,
	combout => \rra_servo_lower|Add3~16_combout\);

-- Location: FF_X26_Y27_N29
\rra_servo_lower|interval[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_lower|Add3~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval\(10));

-- Location: LCCOMB_X27_Y27_N2
\rra_servo_lower|interval_count[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count[0]~11_combout\ = \rra_servo_lower|interval_count\(0) $ (VCC)
-- \rra_servo_lower|interval_count[0]~12\ = CARRY(\rra_servo_lower|interval_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|interval_count\(0),
	datad => VCC,
	combout => \rra_servo_lower|interval_count[0]~11_combout\,
	cout => \rra_servo_lower|interval_count[0]~12\);

-- Location: FF_X27_Y27_N3
\rra_servo_lower|interval_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_lower|interval_count[0]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval_count\(0));

-- Location: LCCOMB_X27_Y27_N4
\rra_servo_lower|interval_count[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count[1]~13_combout\ = (\rra_servo_lower|interval_count\(1) & (!\rra_servo_lower|interval_count[0]~12\)) # (!\rra_servo_lower|interval_count\(1) & ((\rra_servo_lower|interval_count[0]~12\) # (GND)))
-- \rra_servo_lower|interval_count[1]~14\ = CARRY((!\rra_servo_lower|interval_count[0]~12\) # (!\rra_servo_lower|interval_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|interval_count\(1),
	datad => VCC,
	cin => \rra_servo_lower|interval_count[0]~12\,
	combout => \rra_servo_lower|interval_count[1]~13_combout\,
	cout => \rra_servo_lower|interval_count[1]~14\);

-- Location: FF_X27_Y27_N5
\rra_servo_lower|interval_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_lower|interval_count[1]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval_count\(1));

-- Location: LCCOMB_X27_Y27_N6
\rra_servo_lower|interval_count[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count[2]~15_combout\ = (\rra_servo_lower|interval_count\(2) & (\rra_servo_lower|interval_count[1]~14\ $ (GND))) # (!\rra_servo_lower|interval_count\(2) & (!\rra_servo_lower|interval_count[1]~14\ & VCC))
-- \rra_servo_lower|interval_count[2]~16\ = CARRY((\rra_servo_lower|interval_count\(2) & !\rra_servo_lower|interval_count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(2),
	datad => VCC,
	cin => \rra_servo_lower|interval_count[1]~14\,
	combout => \rra_servo_lower|interval_count[2]~15_combout\,
	cout => \rra_servo_lower|interval_count[2]~16\);

-- Location: FF_X27_Y27_N7
\rra_servo_lower|interval_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_lower|interval_count[2]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval_count\(2));

-- Location: LCCOMB_X27_Y27_N8
\rra_servo_lower|interval_count[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count[3]~17_combout\ = (\rra_servo_lower|interval_count\(3) & (!\rra_servo_lower|interval_count[2]~16\)) # (!\rra_servo_lower|interval_count\(3) & ((\rra_servo_lower|interval_count[2]~16\) # (GND)))
-- \rra_servo_lower|interval_count[3]~18\ = CARRY((!\rra_servo_lower|interval_count[2]~16\) # (!\rra_servo_lower|interval_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|interval_count\(3),
	datad => VCC,
	cin => \rra_servo_lower|interval_count[2]~16\,
	combout => \rra_servo_lower|interval_count[3]~17_combout\,
	cout => \rra_servo_lower|interval_count[3]~18\);

-- Location: FF_X27_Y27_N9
\rra_servo_lower|interval_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_lower|interval_count[3]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval_count\(3));

-- Location: LCCOMB_X27_Y27_N10
\rra_servo_lower|interval_count[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count[4]~19_combout\ = (\rra_servo_lower|interval_count\(4) & (\rra_servo_lower|interval_count[3]~18\ $ (GND))) # (!\rra_servo_lower|interval_count\(4) & (!\rra_servo_lower|interval_count[3]~18\ & VCC))
-- \rra_servo_lower|interval_count[4]~20\ = CARRY((\rra_servo_lower|interval_count\(4) & !\rra_servo_lower|interval_count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(4),
	datad => VCC,
	cin => \rra_servo_lower|interval_count[3]~18\,
	combout => \rra_servo_lower|interval_count[4]~19_combout\,
	cout => \rra_servo_lower|interval_count[4]~20\);

-- Location: FF_X27_Y27_N11
\rra_servo_lower|interval_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_lower|interval_count[4]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval_count\(4));

-- Location: LCCOMB_X27_Y27_N12
\rra_servo_lower|interval_count[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count[5]~21_combout\ = (\rra_servo_lower|interval_count\(5) & (!\rra_servo_lower|interval_count[4]~20\)) # (!\rra_servo_lower|interval_count\(5) & ((\rra_servo_lower|interval_count[4]~20\) # (GND)))
-- \rra_servo_lower|interval_count[5]~22\ = CARRY((!\rra_servo_lower|interval_count[4]~20\) # (!\rra_servo_lower|interval_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(5),
	datad => VCC,
	cin => \rra_servo_lower|interval_count[4]~20\,
	combout => \rra_servo_lower|interval_count[5]~21_combout\,
	cout => \rra_servo_lower|interval_count[5]~22\);

-- Location: FF_X27_Y27_N13
\rra_servo_lower|interval_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_lower|interval_count[5]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval_count\(5));

-- Location: LCCOMB_X27_Y27_N14
\rra_servo_lower|interval_count[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count[6]~23_combout\ = (\rra_servo_lower|interval_count\(6) & (\rra_servo_lower|interval_count[5]~22\ $ (GND))) # (!\rra_servo_lower|interval_count\(6) & (!\rra_servo_lower|interval_count[5]~22\ & VCC))
-- \rra_servo_lower|interval_count[6]~24\ = CARRY((\rra_servo_lower|interval_count\(6) & !\rra_servo_lower|interval_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|interval_count\(6),
	datad => VCC,
	cin => \rra_servo_lower|interval_count[5]~22\,
	combout => \rra_servo_lower|interval_count[6]~23_combout\,
	cout => \rra_servo_lower|interval_count[6]~24\);

-- Location: FF_X27_Y27_N15
\rra_servo_lower|interval_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_lower|interval_count[6]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval_count\(6));

-- Location: LCCOMB_X27_Y27_N16
\rra_servo_lower|interval_count[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count[7]~25_combout\ = (\rra_servo_lower|interval_count\(7) & (!\rra_servo_lower|interval_count[6]~24\)) # (!\rra_servo_lower|interval_count\(7) & ((\rra_servo_lower|interval_count[6]~24\) # (GND)))
-- \rra_servo_lower|interval_count[7]~26\ = CARRY((!\rra_servo_lower|interval_count[6]~24\) # (!\rra_servo_lower|interval_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|interval_count\(7),
	datad => VCC,
	cin => \rra_servo_lower|interval_count[6]~24\,
	combout => \rra_servo_lower|interval_count[7]~25_combout\,
	cout => \rra_servo_lower|interval_count[7]~26\);

-- Location: FF_X27_Y27_N17
\rra_servo_lower|interval_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_lower|interval_count[7]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval_count\(7));

-- Location: LCCOMB_X27_Y27_N18
\rra_servo_lower|interval_count[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count[8]~27_combout\ = (\rra_servo_lower|interval_count\(8) & (\rra_servo_lower|interval_count[7]~26\ $ (GND))) # (!\rra_servo_lower|interval_count\(8) & (!\rra_servo_lower|interval_count[7]~26\ & VCC))
-- \rra_servo_lower|interval_count[8]~28\ = CARRY((\rra_servo_lower|interval_count\(8) & !\rra_servo_lower|interval_count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|interval_count\(8),
	datad => VCC,
	cin => \rra_servo_lower|interval_count[7]~26\,
	combout => \rra_servo_lower|interval_count[8]~27_combout\,
	cout => \rra_servo_lower|interval_count[8]~28\);

-- Location: FF_X27_Y27_N19
\rra_servo_lower|interval_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_lower|interval_count[8]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval_count\(8));

-- Location: LCCOMB_X27_Y27_N20
\rra_servo_lower|interval_count[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count[9]~29_combout\ = (\rra_servo_lower|interval_count\(9) & (!\rra_servo_lower|interval_count[8]~28\)) # (!\rra_servo_lower|interval_count\(9) & ((\rra_servo_lower|interval_count[8]~28\) # (GND)))
-- \rra_servo_lower|interval_count[9]~30\ = CARRY((!\rra_servo_lower|interval_count[8]~28\) # (!\rra_servo_lower|interval_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|interval_count\(9),
	datad => VCC,
	cin => \rra_servo_lower|interval_count[8]~28\,
	combout => \rra_servo_lower|interval_count[9]~29_combout\,
	cout => \rra_servo_lower|interval_count[9]~30\);

-- Location: FF_X27_Y27_N21
\rra_servo_lower|interval_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_lower|interval_count[9]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval_count\(9));

-- Location: LCCOMB_X27_Y27_N22
\rra_servo_lower|interval_count[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count[10]~31_combout\ = \rra_servo_lower|interval_count\(10) $ (!\rra_servo_lower|interval_count[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(10),
	cin => \rra_servo_lower|interval_count[9]~30\,
	combout => \rra_servo_lower|interval_count[10]~31_combout\);

-- Location: FF_X27_Y27_N23
\rra_servo_lower|interval_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_lower|interval_count[10]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_lower|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval_count\(10));

-- Location: LCCOMB_X27_Y27_N0
\rra_servo_lower|interval[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval[9]~0_combout\ = !\rra_servo_lower|Add3~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_lower|Add3~14_combout\,
	combout => \rra_servo_lower|interval[9]~0_combout\);

-- Location: FF_X26_Y27_N27
\rra_servo_lower|interval[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_lower|interval[9]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval\(9));

-- Location: LCCOMB_X26_Y27_N4
\rra_servo_lower|interval[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval[8]~1_combout\ = !\rra_servo_lower|Add3~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|Add3~12_combout\,
	combout => \rra_servo_lower|interval[8]~1_combout\);

-- Location: FF_X26_Y27_N25
\rra_servo_lower|interval[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_lower|interval[8]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval\(8));

-- Location: LCCOMB_X26_Y27_N2
\rra_servo_lower|interval[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval[7]~2_combout\ = !\rra_servo_lower|Add3~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|Add3~10_combout\,
	combout => \rra_servo_lower|interval[7]~2_combout\);

-- Location: FF_X26_Y27_N23
\rra_servo_lower|interval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_lower|interval[7]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval\(7));

-- Location: LCCOMB_X26_Y27_N0
\rra_servo_lower|interval[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval[6]~3_combout\ = !\rra_servo_lower|Add3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|Add3~8_combout\,
	combout => \rra_servo_lower|interval[6]~3_combout\);

-- Location: FF_X26_Y27_N21
\rra_servo_lower|interval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_lower|interval[6]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval\(6));

-- Location: FF_X26_Y27_N19
\rra_servo_lower|interval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_lower|Add3~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval\(5));

-- Location: LCCOMB_X26_Y27_N6
\rra_servo_lower|interval[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval[4]~4_combout\ = !\rra_servo_lower|Add3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|Add3~4_combout\,
	combout => \rra_servo_lower|interval[4]~4_combout\);

-- Location: FF_X26_Y27_N17
\rra_servo_lower|interval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_lower|interval[4]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval\(4));

-- Location: LCCOMB_X26_Y24_N28
\rra_servo_lower|interval[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval[3]~5_combout\ = !\rra_servo_lower|Add3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|Add3~2_combout\,
	combout => \rra_servo_lower|interval[3]~5_combout\);

-- Location: FF_X26_Y27_N15
\rra_servo_lower|interval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_lower|interval[3]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval\(3));

-- Location: LCCOMB_X26_Y27_N30
\rra_servo_lower|interval[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval[2]~6_combout\ = !\rra_servo_lower|Add3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|Add3~0_combout\,
	combout => \rra_servo_lower|interval[2]~6_combout\);

-- Location: FF_X26_Y27_N13
\rra_servo_lower|interval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_lower|interval[2]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval\(2));

-- Location: LCCOMB_X22_Y25_N2
\rra_servo_lower|interval[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval[1]~7_combout\ = !\speed[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \speed[0]~input_o\,
	combout => \rra_servo_lower|interval[1]~7_combout\);

-- Location: FF_X26_Y27_N11
\rra_servo_lower|interval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_lower|interval[1]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|interval\(1));

-- Location: LCCOMB_X26_Y27_N8
\rra_servo_lower|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~1_cout\ = CARRY(!\rra_servo_lower|interval_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(0),
	datad => VCC,
	cout => \rra_servo_lower|LessThan0~1_cout\);

-- Location: LCCOMB_X26_Y27_N10
\rra_servo_lower|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~3_cout\ = CARRY((\rra_servo_lower|interval_count\(1) & ((\rra_servo_lower|interval\(1)) # (!\rra_servo_lower|LessThan0~1_cout\))) # (!\rra_servo_lower|interval_count\(1) & (\rra_servo_lower|interval\(1) & 
-- !\rra_servo_lower|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(1),
	datab => \rra_servo_lower|interval\(1),
	datad => VCC,
	cin => \rra_servo_lower|LessThan0~1_cout\,
	cout => \rra_servo_lower|LessThan0~3_cout\);

-- Location: LCCOMB_X26_Y27_N12
\rra_servo_lower|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~5_cout\ = CARRY((\rra_servo_lower|interval_count\(2) & (!\rra_servo_lower|interval\(2) & !\rra_servo_lower|LessThan0~3_cout\)) # (!\rra_servo_lower|interval_count\(2) & ((!\rra_servo_lower|LessThan0~3_cout\) # 
-- (!\rra_servo_lower|interval\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(2),
	datab => \rra_servo_lower|interval\(2),
	datad => VCC,
	cin => \rra_servo_lower|LessThan0~3_cout\,
	cout => \rra_servo_lower|LessThan0~5_cout\);

-- Location: LCCOMB_X26_Y27_N14
\rra_servo_lower|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~7_cout\ = CARRY((\rra_servo_lower|interval\(3) & ((\rra_servo_lower|interval_count\(3)) # (!\rra_servo_lower|LessThan0~5_cout\))) # (!\rra_servo_lower|interval\(3) & (\rra_servo_lower|interval_count\(3) & 
-- !\rra_servo_lower|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval\(3),
	datab => \rra_servo_lower|interval_count\(3),
	datad => VCC,
	cin => \rra_servo_lower|LessThan0~5_cout\,
	cout => \rra_servo_lower|LessThan0~7_cout\);

-- Location: LCCOMB_X26_Y27_N16
\rra_servo_lower|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~9_cout\ = CARRY((\rra_servo_lower|interval_count\(4) & (!\rra_servo_lower|interval\(4) & !\rra_servo_lower|LessThan0~7_cout\)) # (!\rra_servo_lower|interval_count\(4) & ((!\rra_servo_lower|LessThan0~7_cout\) # 
-- (!\rra_servo_lower|interval\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(4),
	datab => \rra_servo_lower|interval\(4),
	datad => VCC,
	cin => \rra_servo_lower|LessThan0~7_cout\,
	cout => \rra_servo_lower|LessThan0~9_cout\);

-- Location: LCCOMB_X26_Y27_N18
\rra_servo_lower|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~11_cout\ = CARRY((\rra_servo_lower|interval\(5) & (\rra_servo_lower|interval_count\(5) & !\rra_servo_lower|LessThan0~9_cout\)) # (!\rra_servo_lower|interval\(5) & ((\rra_servo_lower|interval_count\(5)) # 
-- (!\rra_servo_lower|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval\(5),
	datab => \rra_servo_lower|interval_count\(5),
	datad => VCC,
	cin => \rra_servo_lower|LessThan0~9_cout\,
	cout => \rra_servo_lower|LessThan0~11_cout\);

-- Location: LCCOMB_X26_Y27_N20
\rra_servo_lower|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~13_cout\ = CARRY((\rra_servo_lower|interval_count\(6) & (!\rra_servo_lower|interval\(6) & !\rra_servo_lower|LessThan0~11_cout\)) # (!\rra_servo_lower|interval_count\(6) & ((!\rra_servo_lower|LessThan0~11_cout\) # 
-- (!\rra_servo_lower|interval\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(6),
	datab => \rra_servo_lower|interval\(6),
	datad => VCC,
	cin => \rra_servo_lower|LessThan0~11_cout\,
	cout => \rra_servo_lower|LessThan0~13_cout\);

-- Location: LCCOMB_X26_Y27_N22
\rra_servo_lower|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~15_cout\ = CARRY((\rra_servo_lower|interval\(7) & ((\rra_servo_lower|interval_count\(7)) # (!\rra_servo_lower|LessThan0~13_cout\))) # (!\rra_servo_lower|interval\(7) & (\rra_servo_lower|interval_count\(7) & 
-- !\rra_servo_lower|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval\(7),
	datab => \rra_servo_lower|interval_count\(7),
	datad => VCC,
	cin => \rra_servo_lower|LessThan0~13_cout\,
	cout => \rra_servo_lower|LessThan0~15_cout\);

-- Location: LCCOMB_X26_Y27_N24
\rra_servo_lower|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~17_cout\ = CARRY((\rra_servo_lower|interval\(8) & (!\rra_servo_lower|interval_count\(8) & !\rra_servo_lower|LessThan0~15_cout\)) # (!\rra_servo_lower|interval\(8) & ((!\rra_servo_lower|LessThan0~15_cout\) # 
-- (!\rra_servo_lower|interval_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval\(8),
	datab => \rra_servo_lower|interval_count\(8),
	datad => VCC,
	cin => \rra_servo_lower|LessThan0~15_cout\,
	cout => \rra_servo_lower|LessThan0~17_cout\);

-- Location: LCCOMB_X26_Y27_N26
\rra_servo_lower|LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~19_cout\ = CARRY((\rra_servo_lower|interval\(9) & ((\rra_servo_lower|interval_count\(9)) # (!\rra_servo_lower|LessThan0~17_cout\))) # (!\rra_servo_lower|interval\(9) & (\rra_servo_lower|interval_count\(9) & 
-- !\rra_servo_lower|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval\(9),
	datab => \rra_servo_lower|interval_count\(9),
	datad => VCC,
	cin => \rra_servo_lower|LessThan0~17_cout\,
	cout => \rra_servo_lower|LessThan0~19_cout\);

-- Location: LCCOMB_X26_Y27_N28
\rra_servo_lower|LessThan0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~20_combout\ = (\rra_servo_lower|interval\(10) & ((!\rra_servo_lower|interval_count\(10)) # (!\rra_servo_lower|LessThan0~19_cout\))) # (!\rra_servo_lower|interval\(10) & (!\rra_servo_lower|LessThan0~19_cout\ & 
-- !\rra_servo_lower|interval_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|interval\(10),
	datad => \rra_servo_lower|interval_count\(10),
	cin => \rra_servo_lower|LessThan0~19_cout\,
	combout => \rra_servo_lower|LessThan0~20_combout\);

-- Location: LCCOMB_X23_Y14_N2
\rra_servo_lower|current[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|current[0]~0_combout\ = (\rra_servo_lower|LessThan0~20_combout\ & ((\rra_servo_lower|current\(0)))) # (!\rra_servo_lower|LessThan0~20_combout\ & (t_lower_pos(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t_lower_pos(9),
	datac => \rra_servo_lower|current\(0),
	datad => \rra_servo_lower|LessThan0~20_combout\,
	combout => \rra_servo_lower|current[0]~0_combout\);

-- Location: FF_X23_Y14_N3
\rra_servo_lower|current[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_lower|current[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|current\(0));

-- Location: LCCOMB_X23_Y14_N16
\rra_servo_lower|pwm_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out~3_combout\ = (\rra_servo_lower|pwm_count\(3)) # (\rra_servo_lower|pwm_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_lower|pwm_count\(3),
	datad => \rra_servo_lower|pwm_count\(4),
	combout => \rra_servo_lower|pwm_out~3_combout\);

-- Location: LCCOMB_X22_Y14_N30
\rra_servo_lower|pwm_out_i~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out_i~0_combout\ = (!\rra_servo_lower|pwm_count\(4) & !\rra_servo_lower|pwm_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_lower|pwm_count\(4),
	datad => \rra_servo_lower|pwm_count\(3),
	combout => \rra_servo_lower|pwm_out_i~0_combout\);

-- Location: LCCOMB_X23_Y14_N18
\rra_servo_lower|pwm_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out~2_combout\ = (\rra_servo_lower|pwm_out_i~0_combout\ & (((!\rra_servo_lower|pwm_count\(0)) # (!\rra_servo_lower|pwm_count\(2))) # (!\rra_servo_lower|pwm_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(1),
	datab => \rra_servo_lower|pwm_count\(2),
	datac => \rra_servo_lower|pwm_count\(0),
	datad => \rra_servo_lower|pwm_out_i~0_combout\,
	combout => \rra_servo_lower|pwm_out~2_combout\);

-- Location: LCCOMB_X23_Y14_N6
\rra_servo_lower|pwm_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out~4_combout\ = (\rra_servo_lower|pwm_count\(5) & (\rra_servo_lower|pwm_out~3_combout\ & (!\rra_servo_lower|pwm_count\(10)))) # (!\rra_servo_lower|pwm_count\(5) & (((\rra_servo_lower|pwm_count\(10) & 
-- \rra_servo_lower|pwm_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(5),
	datab => \rra_servo_lower|pwm_out~3_combout\,
	datac => \rra_servo_lower|pwm_count\(10),
	datad => \rra_servo_lower|pwm_out~2_combout\,
	combout => \rra_servo_lower|pwm_out~4_combout\);

-- Location: LCCOMB_X23_Y14_N0
\rra_servo_lower|pwm_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out~5_combout\ = (\rra_servo_lower|pwm_out~1_combout\ & (\rra_servo_lower|pwm_count\(10) & (!\rra_servo_lower|current\(0)))) # (!\rra_servo_lower|pwm_out~1_combout\ & ((\rra_servo_lower|pwm_out~4_combout\ & 
-- ((!\rra_servo_lower|current\(0)))) # (!\rra_servo_lower|pwm_out~4_combout\ & (\rra_servo_lower|pwm_count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(10),
	datab => \rra_servo_lower|pwm_out~1_combout\,
	datac => \rra_servo_lower|current\(0),
	datad => \rra_servo_lower|pwm_out~4_combout\,
	combout => \rra_servo_lower|pwm_out~5_combout\);

-- Location: LCCOMB_X23_Y14_N20
\rra_servo_lower|pwm_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out~6_combout\ = (\rra_servo_lower|pwm_out~0_combout\ & (!\rra_servo_lower|pwm_count\(11) & !\rra_servo_lower|pwm_out~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_out~0_combout\,
	datab => \rra_servo_lower|pwm_count\(11),
	datad => \rra_servo_lower|pwm_out~5_combout\,
	combout => \rra_servo_lower|pwm_out~6_combout\);

-- Location: FF_X23_Y14_N21
\rra_servo_lower|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_out~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_out~q\);

-- Location: LCCOMB_X20_Y14_N20
\rra_servo_lower|o_pwm_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|o_pwm_out~feeder_combout\ = \rra_servo_lower|pwm_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|pwm_out~q\,
	combout => \rra_servo_lower|o_pwm_out~feeder_combout\);

-- Location: FF_X20_Y14_N21
\rra_servo_lower|o_pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_lower|o_pwm_out~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|o_pwm_out~q\);

-- Location: LCCOMB_X23_Y14_N30
\rra_servo_lower|pwm_out_i~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out_i~1_combout\ = (!\rra_servo_lower|pwm_count\(6) & (!\rra_servo_lower|pwm_count\(8) & (!\rra_servo_lower|pwm_count\(7) & !\rra_servo_lower|pwm_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(6),
	datab => \rra_servo_lower|pwm_count\(8),
	datac => \rra_servo_lower|pwm_count\(7),
	datad => \rra_servo_lower|pwm_count\(9),
	combout => \rra_servo_lower|pwm_out_i~1_combout\);

-- Location: LCCOMB_X23_Y14_N8
\rra_servo_lower|pwm_out_i~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out_i~2_combout\ = (\rra_servo_lower|pwm_count\(2) & (\rra_servo_lower|pwm_count\(1) & ((\rra_servo_lower|pwm_count\(0)) # (\rra_servo_lower|pwm_count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(0),
	datab => \rra_servo_lower|pwm_count\(11),
	datac => \rra_servo_lower|pwm_count\(2),
	datad => \rra_servo_lower|pwm_count\(1),
	combout => \rra_servo_lower|pwm_out_i~2_combout\);

-- Location: LCCOMB_X23_Y14_N10
\rra_servo_lower|pwm_out_i~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out_i~3_combout\ = (\rra_servo_lower|pwm_count\(5) & (\rra_servo_lower|current\(0) & ((\rra_servo_lower|pwm_out_i~2_combout\) # (!\rra_servo_lower|pwm_out_i~0_combout\)))) # (!\rra_servo_lower|pwm_count\(5) & 
-- (\rra_servo_lower|pwm_out_i~0_combout\ & (!\rra_servo_lower|pwm_out_i~2_combout\ & !\rra_servo_lower|current\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(5),
	datab => \rra_servo_lower|pwm_out_i~0_combout\,
	datac => \rra_servo_lower|pwm_out_i~2_combout\,
	datad => \rra_servo_lower|current\(0),
	combout => \rra_servo_lower|pwm_out_i~3_combout\);

-- Location: LCCOMB_X23_Y14_N24
\rra_servo_lower|pwm_out_i~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out_i~4_combout\ = (\rra_servo_lower|pwm_out_i~1_combout\ & (\rra_servo_lower|pwm_out_i~3_combout\ & (\rra_servo_lower|pwm_count\(11) $ (\rra_servo_lower|current\(0))))) # (!\rra_servo_lower|pwm_out_i~1_combout\ & 
-- (!\rra_servo_lower|pwm_count\(11) & (\rra_servo_lower|current\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_out_i~1_combout\,
	datab => \rra_servo_lower|pwm_count\(11),
	datac => \rra_servo_lower|current\(0),
	datad => \rra_servo_lower|pwm_out_i~3_combout\,
	combout => \rra_servo_lower|pwm_out_i~4_combout\);

-- Location: LCCOMB_X23_Y14_N22
\rra_servo_lower|pwm_out_i~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out_i~5_combout\ = (\rra_servo_lower|pwm_out~0_combout\ & ((\rra_servo_lower|pwm_out_i~4_combout\ & ((!\rra_servo_lower|pwm_count\(10)))) # (!\rra_servo_lower|pwm_out_i~4_combout\ & (!\rra_servo_lower|pwm_count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_out~0_combout\,
	datab => \rra_servo_lower|pwm_count\(11),
	datac => \rra_servo_lower|pwm_count\(10),
	datad => \rra_servo_lower|pwm_out_i~4_combout\,
	combout => \rra_servo_lower|pwm_out_i~5_combout\);

-- Location: FF_X23_Y14_N23
\rra_servo_lower|pwm_out_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_out_i~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_out_i~q\);

-- Location: LCCOMB_X20_Y14_N2
\rra_servo_lower|o_pwm_out_i~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|o_pwm_out_i~feeder_combout\ = \rra_servo_lower|pwm_out_i~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|pwm_out_i~q\,
	combout => \rra_servo_lower|o_pwm_out_i~feeder_combout\);

-- Location: FF_X20_Y14_N3
\rra_servo_lower|o_pwm_out_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_lower|o_pwm_out_i~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|o_pwm_out_i~q\);

-- Location: LCCOMB_X22_Y16_N30
\rra_servo_middle|clk_1mhz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|clk_1mhz~feeder_combout\ = \rra_servo_lower|clk_1mhz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|clk_1mhz~0_combout\,
	combout => \rra_servo_middle|clk_1mhz~feeder_combout\);

-- Location: FF_X22_Y16_N31
\rra_servo_middle|clk_1mhz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_middle|clk_1mhz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|clk_1mhz~q\);

-- Location: CLKCTRL_G13
\rra_servo_middle|clk_1mhz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_middle|clk_1mhz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y16_N14
\rra_servo_middle|clk_1khz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|clk_1khz~feeder_combout\ = \rra_servo_lower|clk_1khz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|clk_1khz~0_combout\,
	combout => \rra_servo_middle|clk_1khz~feeder_combout\);

-- Location: FF_X22_Y16_N15
\rra_servo_middle|clk_1khz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_middle|clk_1khz~feeder_combout\,
	ena => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|clk_1khz~q\);

-- Location: CLKCTRL_G17
\rra_servo_middle|clk_1khz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_middle|clk_1khz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_middle|clk_1khz~clkctrl_outclk\);

-- Location: FF_X23_Y21_N29
\rra_servo_middle|interval[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_lower|Add3~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval\(10));

-- Location: LCCOMB_X22_Y21_N0
\rra_servo_middle|interval_count[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count[0]~11_combout\ = \rra_servo_middle|interval_count\(0) $ (VCC)
-- \rra_servo_middle|interval_count[0]~12\ = CARRY(\rra_servo_middle|interval_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|interval_count\(0),
	datad => VCC,
	combout => \rra_servo_middle|interval_count[0]~11_combout\,
	cout => \rra_servo_middle|interval_count[0]~12\);

-- Location: FF_X22_Y21_N1
\rra_servo_middle|interval_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_middle|interval_count[0]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval_count\(0));

-- Location: LCCOMB_X22_Y21_N2
\rra_servo_middle|interval_count[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count[1]~13_combout\ = (\rra_servo_middle|interval_count\(1) & (!\rra_servo_middle|interval_count[0]~12\)) # (!\rra_servo_middle|interval_count\(1) & ((\rra_servo_middle|interval_count[0]~12\) # (GND)))
-- \rra_servo_middle|interval_count[1]~14\ = CARRY((!\rra_servo_middle|interval_count[0]~12\) # (!\rra_servo_middle|interval_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|interval_count\(1),
	datad => VCC,
	cin => \rra_servo_middle|interval_count[0]~12\,
	combout => \rra_servo_middle|interval_count[1]~13_combout\,
	cout => \rra_servo_middle|interval_count[1]~14\);

-- Location: FF_X22_Y21_N3
\rra_servo_middle|interval_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_middle|interval_count[1]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval_count\(1));

-- Location: LCCOMB_X22_Y21_N4
\rra_servo_middle|interval_count[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count[2]~15_combout\ = (\rra_servo_middle|interval_count\(2) & (\rra_servo_middle|interval_count[1]~14\ $ (GND))) # (!\rra_servo_middle|interval_count\(2) & (!\rra_servo_middle|interval_count[1]~14\ & VCC))
-- \rra_servo_middle|interval_count[2]~16\ = CARRY((\rra_servo_middle|interval_count\(2) & !\rra_servo_middle|interval_count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|interval_count\(2),
	datad => VCC,
	cin => \rra_servo_middle|interval_count[1]~14\,
	combout => \rra_servo_middle|interval_count[2]~15_combout\,
	cout => \rra_servo_middle|interval_count[2]~16\);

-- Location: FF_X22_Y21_N5
\rra_servo_middle|interval_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_middle|interval_count[2]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval_count\(2));

-- Location: LCCOMB_X22_Y21_N6
\rra_servo_middle|interval_count[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count[3]~17_combout\ = (\rra_servo_middle|interval_count\(3) & (!\rra_servo_middle|interval_count[2]~16\)) # (!\rra_servo_middle|interval_count\(3) & ((\rra_servo_middle|interval_count[2]~16\) # (GND)))
-- \rra_servo_middle|interval_count[3]~18\ = CARRY((!\rra_servo_middle|interval_count[2]~16\) # (!\rra_servo_middle|interval_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count\(3),
	datad => VCC,
	cin => \rra_servo_middle|interval_count[2]~16\,
	combout => \rra_servo_middle|interval_count[3]~17_combout\,
	cout => \rra_servo_middle|interval_count[3]~18\);

-- Location: FF_X22_Y21_N7
\rra_servo_middle|interval_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_middle|interval_count[3]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval_count\(3));

-- Location: LCCOMB_X22_Y21_N8
\rra_servo_middle|interval_count[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count[4]~19_combout\ = (\rra_servo_middle|interval_count\(4) & (\rra_servo_middle|interval_count[3]~18\ $ (GND))) # (!\rra_servo_middle|interval_count\(4) & (!\rra_servo_middle|interval_count[3]~18\ & VCC))
-- \rra_servo_middle|interval_count[4]~20\ = CARRY((\rra_servo_middle|interval_count\(4) & !\rra_servo_middle|interval_count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|interval_count\(4),
	datad => VCC,
	cin => \rra_servo_middle|interval_count[3]~18\,
	combout => \rra_servo_middle|interval_count[4]~19_combout\,
	cout => \rra_servo_middle|interval_count[4]~20\);

-- Location: FF_X22_Y21_N9
\rra_servo_middle|interval_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_middle|interval_count[4]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval_count\(4));

-- Location: LCCOMB_X22_Y21_N10
\rra_servo_middle|interval_count[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count[5]~21_combout\ = (\rra_servo_middle|interval_count\(5) & (!\rra_servo_middle|interval_count[4]~20\)) # (!\rra_servo_middle|interval_count\(5) & ((\rra_servo_middle|interval_count[4]~20\) # (GND)))
-- \rra_servo_middle|interval_count[5]~22\ = CARRY((!\rra_servo_middle|interval_count[4]~20\) # (!\rra_servo_middle|interval_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count\(5),
	datad => VCC,
	cin => \rra_servo_middle|interval_count[4]~20\,
	combout => \rra_servo_middle|interval_count[5]~21_combout\,
	cout => \rra_servo_middle|interval_count[5]~22\);

-- Location: FF_X22_Y21_N11
\rra_servo_middle|interval_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_middle|interval_count[5]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval_count\(5));

-- Location: LCCOMB_X22_Y21_N12
\rra_servo_middle|interval_count[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count[6]~23_combout\ = (\rra_servo_middle|interval_count\(6) & (\rra_servo_middle|interval_count[5]~22\ $ (GND))) # (!\rra_servo_middle|interval_count\(6) & (!\rra_servo_middle|interval_count[5]~22\ & VCC))
-- \rra_servo_middle|interval_count[6]~24\ = CARRY((\rra_servo_middle|interval_count\(6) & !\rra_servo_middle|interval_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count\(6),
	datad => VCC,
	cin => \rra_servo_middle|interval_count[5]~22\,
	combout => \rra_servo_middle|interval_count[6]~23_combout\,
	cout => \rra_servo_middle|interval_count[6]~24\);

-- Location: FF_X22_Y21_N13
\rra_servo_middle|interval_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_middle|interval_count[6]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval_count\(6));

-- Location: LCCOMB_X22_Y21_N14
\rra_servo_middle|interval_count[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count[7]~25_combout\ = (\rra_servo_middle|interval_count\(7) & (!\rra_servo_middle|interval_count[6]~24\)) # (!\rra_servo_middle|interval_count\(7) & ((\rra_servo_middle|interval_count[6]~24\) # (GND)))
-- \rra_servo_middle|interval_count[7]~26\ = CARRY((!\rra_servo_middle|interval_count[6]~24\) # (!\rra_servo_middle|interval_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|interval_count\(7),
	datad => VCC,
	cin => \rra_servo_middle|interval_count[6]~24\,
	combout => \rra_servo_middle|interval_count[7]~25_combout\,
	cout => \rra_servo_middle|interval_count[7]~26\);

-- Location: FF_X22_Y21_N15
\rra_servo_middle|interval_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_middle|interval_count[7]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval_count\(7));

-- Location: LCCOMB_X22_Y21_N16
\rra_servo_middle|interval_count[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count[8]~27_combout\ = (\rra_servo_middle|interval_count\(8) & (\rra_servo_middle|interval_count[7]~26\ $ (GND))) # (!\rra_servo_middle|interval_count\(8) & (!\rra_servo_middle|interval_count[7]~26\ & VCC))
-- \rra_servo_middle|interval_count[8]~28\ = CARRY((\rra_servo_middle|interval_count\(8) & !\rra_servo_middle|interval_count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|interval_count\(8),
	datad => VCC,
	cin => \rra_servo_middle|interval_count[7]~26\,
	combout => \rra_servo_middle|interval_count[8]~27_combout\,
	cout => \rra_servo_middle|interval_count[8]~28\);

-- Location: FF_X22_Y21_N17
\rra_servo_middle|interval_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_middle|interval_count[8]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval_count\(8));

-- Location: LCCOMB_X22_Y21_N18
\rra_servo_middle|interval_count[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count[9]~29_combout\ = (\rra_servo_middle|interval_count\(9) & (!\rra_servo_middle|interval_count[8]~28\)) # (!\rra_servo_middle|interval_count\(9) & ((\rra_servo_middle|interval_count[8]~28\) # (GND)))
-- \rra_servo_middle|interval_count[9]~30\ = CARRY((!\rra_servo_middle|interval_count[8]~28\) # (!\rra_servo_middle|interval_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|interval_count\(9),
	datad => VCC,
	cin => \rra_servo_middle|interval_count[8]~28\,
	combout => \rra_servo_middle|interval_count[9]~29_combout\,
	cout => \rra_servo_middle|interval_count[9]~30\);

-- Location: FF_X22_Y21_N19
\rra_servo_middle|interval_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_middle|interval_count[9]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval_count\(9));

-- Location: LCCOMB_X22_Y21_N20
\rra_servo_middle|interval_count[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count[10]~31_combout\ = \rra_servo_middle|interval_count[9]~30\ $ (!\rra_servo_middle|interval_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_middle|interval_count\(10),
	cin => \rra_servo_middle|interval_count[9]~30\,
	combout => \rra_servo_middle|interval_count[10]~31_combout\);

-- Location: FF_X22_Y21_N21
\rra_servo_middle|interval_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_middle|interval_count[10]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval_count\(10));

-- Location: LCCOMB_X23_Y21_N4
\rra_servo_middle|interval[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval[9]~0_combout\ = !\rra_servo_lower|Add3~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_lower|Add3~14_combout\,
	combout => \rra_servo_middle|interval[9]~0_combout\);

-- Location: FF_X23_Y21_N27
\rra_servo_middle|interval[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_middle|interval[9]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval\(9));

-- Location: LCCOMB_X28_Y21_N16
\rra_servo_middle|interval[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval[8]~1_combout\ = !\rra_servo_lower|Add3~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_lower|Add3~12_combout\,
	combout => \rra_servo_middle|interval[8]~1_combout\);

-- Location: FF_X23_Y21_N25
\rra_servo_middle|interval[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_middle|interval[8]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval\(8));

-- Location: LCCOMB_X23_Y21_N2
\rra_servo_middle|interval[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval[7]~2_combout\ = !\rra_servo_lower|Add3~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|Add3~10_combout\,
	combout => \rra_servo_middle|interval[7]~2_combout\);

-- Location: FF_X23_Y21_N23
\rra_servo_middle|interval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_middle|interval[7]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval\(7));

-- Location: LCCOMB_X22_Y21_N26
\rra_servo_middle|interval[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval[6]~3_combout\ = !\rra_servo_lower|Add3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|Add3~8_combout\,
	combout => \rra_servo_middle|interval[6]~3_combout\);

-- Location: FF_X23_Y21_N21
\rra_servo_middle|interval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_middle|interval[6]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval\(6));

-- Location: FF_X23_Y21_N19
\rra_servo_middle|interval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_lower|Add3~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval\(5));

-- Location: LCCOMB_X23_Y21_N0
\rra_servo_middle|interval[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval[4]~4_combout\ = !\rra_servo_lower|Add3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_lower|Add3~4_combout\,
	combout => \rra_servo_middle|interval[4]~4_combout\);

-- Location: FF_X23_Y21_N17
\rra_servo_middle|interval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_middle|interval[4]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval\(4));

-- Location: LCCOMB_X24_Y21_N12
\rra_servo_middle|interval[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval[3]~5_combout\ = !\rra_servo_lower|Add3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_lower|Add3~2_combout\,
	combout => \rra_servo_middle|interval[3]~5_combout\);

-- Location: FF_X23_Y21_N15
\rra_servo_middle|interval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_middle|interval[3]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval\(3));

-- Location: LCCOMB_X23_Y21_N30
\rra_servo_middle|interval[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval[2]~6_combout\ = !\rra_servo_lower|Add3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|Add3~0_combout\,
	combout => \rra_servo_middle|interval[2]~6_combout\);

-- Location: FF_X23_Y21_N13
\rra_servo_middle|interval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_middle|interval[2]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval\(2));

-- Location: LCCOMB_X22_Y25_N20
\rra_servo_middle|interval[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval[1]~7_combout\ = !\speed[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \speed[0]~input_o\,
	combout => \rra_servo_middle|interval[1]~7_combout\);

-- Location: FF_X23_Y21_N11
\rra_servo_middle|interval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_middle|interval[1]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|interval\(1));

-- Location: LCCOMB_X23_Y21_N8
\rra_servo_middle|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~1_cout\ = CARRY(!\rra_servo_middle|interval_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count\(0),
	datad => VCC,
	cout => \rra_servo_middle|LessThan0~1_cout\);

-- Location: LCCOMB_X23_Y21_N10
\rra_servo_middle|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~3_cout\ = CARRY((\rra_servo_middle|interval_count\(1) & ((\rra_servo_middle|interval\(1)) # (!\rra_servo_middle|LessThan0~1_cout\))) # (!\rra_servo_middle|interval_count\(1) & (\rra_servo_middle|interval\(1) & 
-- !\rra_servo_middle|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count\(1),
	datab => \rra_servo_middle|interval\(1),
	datad => VCC,
	cin => \rra_servo_middle|LessThan0~1_cout\,
	cout => \rra_servo_middle|LessThan0~3_cout\);

-- Location: LCCOMB_X23_Y21_N12
\rra_servo_middle|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~5_cout\ = CARRY((\rra_servo_middle|interval\(2) & (!\rra_servo_middle|interval_count\(2) & !\rra_servo_middle|LessThan0~3_cout\)) # (!\rra_servo_middle|interval\(2) & ((!\rra_servo_middle|LessThan0~3_cout\) # 
-- (!\rra_servo_middle|interval_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval\(2),
	datab => \rra_servo_middle|interval_count\(2),
	datad => VCC,
	cin => \rra_servo_middle|LessThan0~3_cout\,
	cout => \rra_servo_middle|LessThan0~5_cout\);

-- Location: LCCOMB_X23_Y21_N14
\rra_servo_middle|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~7_cout\ = CARRY((\rra_servo_middle|interval\(3) & ((\rra_servo_middle|interval_count\(3)) # (!\rra_servo_middle|LessThan0~5_cout\))) # (!\rra_servo_middle|interval\(3) & (\rra_servo_middle|interval_count\(3) & 
-- !\rra_servo_middle|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval\(3),
	datab => \rra_servo_middle|interval_count\(3),
	datad => VCC,
	cin => \rra_servo_middle|LessThan0~5_cout\,
	cout => \rra_servo_middle|LessThan0~7_cout\);

-- Location: LCCOMB_X23_Y21_N16
\rra_servo_middle|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~9_cout\ = CARRY((\rra_servo_middle|interval_count\(4) & (!\rra_servo_middle|interval\(4) & !\rra_servo_middle|LessThan0~7_cout\)) # (!\rra_servo_middle|interval_count\(4) & ((!\rra_servo_middle|LessThan0~7_cout\) # 
-- (!\rra_servo_middle|interval\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count\(4),
	datab => \rra_servo_middle|interval\(4),
	datad => VCC,
	cin => \rra_servo_middle|LessThan0~7_cout\,
	cout => \rra_servo_middle|LessThan0~9_cout\);

-- Location: LCCOMB_X23_Y21_N18
\rra_servo_middle|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~11_cout\ = CARRY((\rra_servo_middle|interval_count\(5) & ((!\rra_servo_middle|LessThan0~9_cout\) # (!\rra_servo_middle|interval\(5)))) # (!\rra_servo_middle|interval_count\(5) & (!\rra_servo_middle|interval\(5) & 
-- !\rra_servo_middle|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count\(5),
	datab => \rra_servo_middle|interval\(5),
	datad => VCC,
	cin => \rra_servo_middle|LessThan0~9_cout\,
	cout => \rra_servo_middle|LessThan0~11_cout\);

-- Location: LCCOMB_X23_Y21_N20
\rra_servo_middle|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~13_cout\ = CARRY((\rra_servo_middle|interval_count\(6) & (!\rra_servo_middle|interval\(6) & !\rra_servo_middle|LessThan0~11_cout\)) # (!\rra_servo_middle|interval_count\(6) & ((!\rra_servo_middle|LessThan0~11_cout\) # 
-- (!\rra_servo_middle|interval\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count\(6),
	datab => \rra_servo_middle|interval\(6),
	datad => VCC,
	cin => \rra_servo_middle|LessThan0~11_cout\,
	cout => \rra_servo_middle|LessThan0~13_cout\);

-- Location: LCCOMB_X23_Y21_N22
\rra_servo_middle|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~15_cout\ = CARRY((\rra_servo_middle|interval_count\(7) & ((\rra_servo_middle|interval\(7)) # (!\rra_servo_middle|LessThan0~13_cout\))) # (!\rra_servo_middle|interval_count\(7) & (\rra_servo_middle|interval\(7) & 
-- !\rra_servo_middle|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count\(7),
	datab => \rra_servo_middle|interval\(7),
	datad => VCC,
	cin => \rra_servo_middle|LessThan0~13_cout\,
	cout => \rra_servo_middle|LessThan0~15_cout\);

-- Location: LCCOMB_X23_Y21_N24
\rra_servo_middle|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~17_cout\ = CARRY((\rra_servo_middle|interval_count\(8) & (!\rra_servo_middle|interval\(8) & !\rra_servo_middle|LessThan0~15_cout\)) # (!\rra_servo_middle|interval_count\(8) & ((!\rra_servo_middle|LessThan0~15_cout\) # 
-- (!\rra_servo_middle|interval\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count\(8),
	datab => \rra_servo_middle|interval\(8),
	datad => VCC,
	cin => \rra_servo_middle|LessThan0~15_cout\,
	cout => \rra_servo_middle|LessThan0~17_cout\);

-- Location: LCCOMB_X23_Y21_N26
\rra_servo_middle|LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~19_cout\ = CARRY((\rra_servo_middle|interval\(9) & ((\rra_servo_middle|interval_count\(9)) # (!\rra_servo_middle|LessThan0~17_cout\))) # (!\rra_servo_middle|interval\(9) & (\rra_servo_middle|interval_count\(9) & 
-- !\rra_servo_middle|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval\(9),
	datab => \rra_servo_middle|interval_count\(9),
	datad => VCC,
	cin => \rra_servo_middle|LessThan0~17_cout\,
	cout => \rra_servo_middle|LessThan0~19_cout\);

-- Location: LCCOMB_X23_Y21_N28
\rra_servo_middle|LessThan0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~20_combout\ = (\rra_servo_middle|interval\(10) & ((!\rra_servo_middle|interval_count\(10)) # (!\rra_servo_middle|LessThan0~19_cout\))) # (!\rra_servo_middle|interval\(10) & (!\rra_servo_middle|LessThan0~19_cout\ & 
-- !\rra_servo_middle|interval_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|interval\(10),
	datad => \rra_servo_middle|interval_count\(10),
	cin => \rra_servo_middle|LessThan0~19_cout\,
	combout => \rra_servo_middle|LessThan0~20_combout\);

-- Location: LCCOMB_X8_Y3_N30
\keypad|Mux40~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux40~2_combout\ = (!\keypad|col_count\(1) & (\keypad|col_count\(0) & \keypad|Mux41~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|col_count\(1),
	datac => \keypad|col_count\(0),
	datad => \keypad|Mux41~2_combout\,
	combout => \keypad|Mux40~2_combout\);

-- Location: FF_X8_Y3_N31
\keypad|key_next[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux40~2_combout\,
	ena => \keypad|key_next[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(8));

-- Location: FF_X8_Y3_N3
\keypad|key_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \keypad|key_next\(8),
	sload => VCC,
	ena => \keypad|key_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(8));

-- Location: LCCOMB_X8_Y3_N16
\keypad|Mux46~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux46~4_combout\ = (\keypad|Mux45~4_combout\ & (\keypad|col_count\(0) & !\keypad|col_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad|Mux45~4_combout\,
	datac => \keypad|col_count\(0),
	datad => \keypad|col_count\(1),
	combout => \keypad|Mux46~4_combout\);

-- Location: FF_X8_Y3_N17
\keypad|key_next[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux46~4_combout\,
	ena => \keypad|key_next[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(2));

-- Location: LCCOMB_X8_Y3_N8
\keypad|key_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_out[2]~feeder_combout\ = \keypad|key_next\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad|key_next\(2),
	combout => \keypad|key_out[2]~feeder_combout\);

-- Location: FF_X8_Y3_N9
\keypad|key_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[2]~feeder_combout\,
	ena => \keypad|key_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(2));

-- Location: LCCOMB_X15_Y21_N12
\t_middle_pos~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \t_middle_pos~0_combout\ = (!\keypad|key_out\(8) & ((t_middle_pos(9)) # (\keypad|key_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|key_out\(8),
	datac => t_middle_pos(9),
	datad => \keypad|key_out\(2),
	combout => \t_middle_pos~0_combout\);

-- Location: FF_X15_Y21_N13
\t_middle_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t_middle_pos~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t_middle_pos(9));

-- Location: LCCOMB_X20_Y21_N10
\rra_servo_middle|current[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|current[0]~0_combout\ = (\rra_servo_middle|LessThan0~20_combout\ & (\rra_servo_middle|current\(0))) # (!\rra_servo_middle|LessThan0~20_combout\ & ((t_middle_pos(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|LessThan0~20_combout\,
	datac => \rra_servo_middle|current\(0),
	datad => t_middle_pos(9),
	combout => \rra_servo_middle|current[0]~0_combout\);

-- Location: FF_X20_Y21_N11
\rra_servo_middle|current[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_middle|current[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|current\(0));

-- Location: LCCOMB_X19_Y21_N0
\rra_servo_middle|pwm_count[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[0]~15_combout\ = \rra_servo_middle|pwm_count\(0) $ (VCC)
-- \rra_servo_middle|pwm_count[0]~16\ = CARRY(\rra_servo_middle|pwm_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|pwm_count\(0),
	datad => VCC,
	combout => \rra_servo_middle|pwm_count[0]~15_combout\,
	cout => \rra_servo_middle|pwm_count[0]~16\);

-- Location: LCCOMB_X19_Y21_N6
\rra_servo_middle|pwm_count[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[3]~21_combout\ = (\rra_servo_middle|pwm_count\(3) & (!\rra_servo_middle|pwm_count[2]~20\)) # (!\rra_servo_middle|pwm_count\(3) & ((\rra_servo_middle|pwm_count[2]~20\) # (GND)))
-- \rra_servo_middle|pwm_count[3]~22\ = CARRY((!\rra_servo_middle|pwm_count[2]~20\) # (!\rra_servo_middle|pwm_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(3),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[2]~20\,
	combout => \rra_servo_middle|pwm_count[3]~21_combout\,
	cout => \rra_servo_middle|pwm_count[3]~22\);

-- Location: LCCOMB_X19_Y21_N8
\rra_servo_middle|pwm_count[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[4]~23_combout\ = (\rra_servo_middle|pwm_count\(4) & (\rra_servo_middle|pwm_count[3]~22\ $ (GND))) # (!\rra_servo_middle|pwm_count\(4) & (!\rra_servo_middle|pwm_count[3]~22\ & VCC))
-- \rra_servo_middle|pwm_count[4]~24\ = CARRY((\rra_servo_middle|pwm_count\(4) & !\rra_servo_middle|pwm_count[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|pwm_count\(4),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[3]~22\,
	combout => \rra_servo_middle|pwm_count[4]~23_combout\,
	cout => \rra_servo_middle|pwm_count[4]~24\);

-- Location: FF_X19_Y21_N9
\rra_servo_middle|pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[4]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(4));

-- Location: LCCOMB_X19_Y21_N10
\rra_servo_middle|pwm_count[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[5]~25_combout\ = (\rra_servo_middle|pwm_count\(5) & (!\rra_servo_middle|pwm_count[4]~24\)) # (!\rra_servo_middle|pwm_count\(5) & ((\rra_servo_middle|pwm_count[4]~24\) # (GND)))
-- \rra_servo_middle|pwm_count[5]~26\ = CARRY((!\rra_servo_middle|pwm_count[4]~24\) # (!\rra_servo_middle|pwm_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(5),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[4]~24\,
	combout => \rra_servo_middle|pwm_count[5]~25_combout\,
	cout => \rra_servo_middle|pwm_count[5]~26\);

-- Location: FF_X19_Y21_N11
\rra_servo_middle|pwm_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[5]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(5));

-- Location: LCCOMB_X19_Y21_N12
\rra_servo_middle|pwm_count[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[6]~27_combout\ = (\rra_servo_middle|pwm_count\(6) & (\rra_servo_middle|pwm_count[5]~26\ $ (GND))) # (!\rra_servo_middle|pwm_count\(6) & (!\rra_servo_middle|pwm_count[5]~26\ & VCC))
-- \rra_servo_middle|pwm_count[6]~28\ = CARRY((\rra_servo_middle|pwm_count\(6) & !\rra_servo_middle|pwm_count[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(6),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[5]~26\,
	combout => \rra_servo_middle|pwm_count[6]~27_combout\,
	cout => \rra_servo_middle|pwm_count[6]~28\);

-- Location: FF_X19_Y21_N13
\rra_servo_middle|pwm_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[6]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(6));

-- Location: LCCOMB_X19_Y21_N14
\rra_servo_middle|pwm_count[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[7]~29_combout\ = (\rra_servo_middle|pwm_count\(7) & (!\rra_servo_middle|pwm_count[6]~28\)) # (!\rra_servo_middle|pwm_count\(7) & ((\rra_servo_middle|pwm_count[6]~28\) # (GND)))
-- \rra_servo_middle|pwm_count[7]~30\ = CARRY((!\rra_servo_middle|pwm_count[6]~28\) # (!\rra_servo_middle|pwm_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|pwm_count\(7),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[6]~28\,
	combout => \rra_servo_middle|pwm_count[7]~29_combout\,
	cout => \rra_servo_middle|pwm_count[7]~30\);

-- Location: FF_X19_Y21_N15
\rra_servo_middle|pwm_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[7]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(7));

-- Location: LCCOMB_X19_Y21_N16
\rra_servo_middle|pwm_count[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[8]~31_combout\ = (\rra_servo_middle|pwm_count\(8) & (\rra_servo_middle|pwm_count[7]~30\ $ (GND))) # (!\rra_servo_middle|pwm_count\(8) & (!\rra_servo_middle|pwm_count[7]~30\ & VCC))
-- \rra_servo_middle|pwm_count[8]~32\ = CARRY((\rra_servo_middle|pwm_count\(8) & !\rra_servo_middle|pwm_count[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|pwm_count\(8),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[7]~30\,
	combout => \rra_servo_middle|pwm_count[8]~31_combout\,
	cout => \rra_servo_middle|pwm_count[8]~32\);

-- Location: FF_X19_Y21_N17
\rra_servo_middle|pwm_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[8]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(8));

-- Location: LCCOMB_X19_Y21_N18
\rra_servo_middle|pwm_count[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[9]~33_combout\ = (\rra_servo_middle|pwm_count\(9) & (!\rra_servo_middle|pwm_count[8]~32\)) # (!\rra_servo_middle|pwm_count\(9) & ((\rra_servo_middle|pwm_count[8]~32\) # (GND)))
-- \rra_servo_middle|pwm_count[9]~34\ = CARRY((!\rra_servo_middle|pwm_count[8]~32\) # (!\rra_servo_middle|pwm_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|pwm_count\(9),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[8]~32\,
	combout => \rra_servo_middle|pwm_count[9]~33_combout\,
	cout => \rra_servo_middle|pwm_count[9]~34\);

-- Location: FF_X19_Y21_N19
\rra_servo_middle|pwm_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[9]~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(9));

-- Location: LCCOMB_X19_Y21_N20
\rra_servo_middle|pwm_count[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[10]~35_combout\ = (\rra_servo_middle|pwm_count\(10) & (\rra_servo_middle|pwm_count[9]~34\ $ (GND))) # (!\rra_servo_middle|pwm_count\(10) & (!\rra_servo_middle|pwm_count[9]~34\ & VCC))
-- \rra_servo_middle|pwm_count[10]~36\ = CARRY((\rra_servo_middle|pwm_count\(10) & !\rra_servo_middle|pwm_count[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|pwm_count\(10),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[9]~34\,
	combout => \rra_servo_middle|pwm_count[10]~35_combout\,
	cout => \rra_servo_middle|pwm_count[10]~36\);

-- Location: FF_X19_Y21_N21
\rra_servo_middle|pwm_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[10]~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(10));

-- Location: LCCOMB_X19_Y21_N22
\rra_servo_middle|pwm_count[11]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[11]~37_combout\ = (\rra_servo_middle|pwm_count\(11) & (!\rra_servo_middle|pwm_count[10]~36\)) # (!\rra_servo_middle|pwm_count\(11) & ((\rra_servo_middle|pwm_count[10]~36\) # (GND)))
-- \rra_servo_middle|pwm_count[11]~38\ = CARRY((!\rra_servo_middle|pwm_count[10]~36\) # (!\rra_servo_middle|pwm_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(11),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[10]~36\,
	combout => \rra_servo_middle|pwm_count[11]~37_combout\,
	cout => \rra_servo_middle|pwm_count[11]~38\);

-- Location: FF_X19_Y21_N23
\rra_servo_middle|pwm_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[11]~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(11));

-- Location: LCCOMB_X19_Y21_N24
\rra_servo_middle|pwm_count[12]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[12]~39_combout\ = (\rra_servo_middle|pwm_count\(12) & (\rra_servo_middle|pwm_count[11]~38\ $ (GND))) # (!\rra_servo_middle|pwm_count\(12) & (!\rra_servo_middle|pwm_count[11]~38\ & VCC))
-- \rra_servo_middle|pwm_count[12]~40\ = CARRY((\rra_servo_middle|pwm_count\(12) & !\rra_servo_middle|pwm_count[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|pwm_count\(12),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[11]~38\,
	combout => \rra_servo_middle|pwm_count[12]~39_combout\,
	cout => \rra_servo_middle|pwm_count[12]~40\);

-- Location: FF_X19_Y21_N25
\rra_servo_middle|pwm_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[12]~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(12));

-- Location: LCCOMB_X19_Y21_N26
\rra_servo_middle|pwm_count[13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[13]~44_combout\ = (\rra_servo_middle|pwm_count\(13) & (!\rra_servo_middle|pwm_count[12]~40\)) # (!\rra_servo_middle|pwm_count\(13) & ((\rra_servo_middle|pwm_count[12]~40\) # (GND)))
-- \rra_servo_middle|pwm_count[13]~45\ = CARRY((!\rra_servo_middle|pwm_count[12]~40\) # (!\rra_servo_middle|pwm_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(13),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[12]~40\,
	combout => \rra_servo_middle|pwm_count[13]~44_combout\,
	cout => \rra_servo_middle|pwm_count[13]~45\);

-- Location: FF_X19_Y21_N27
\rra_servo_middle|pwm_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[13]~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(13));

-- Location: LCCOMB_X19_Y21_N28
\rra_servo_middle|pwm_count[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[14]~46_combout\ = \rra_servo_middle|pwm_count[13]~45\ $ (!\rra_servo_middle|pwm_count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_middle|pwm_count\(14),
	cin => \rra_servo_middle|pwm_count[13]~45\,
	combout => \rra_servo_middle|pwm_count[14]~46_combout\);

-- Location: FF_X19_Y21_N29
\rra_servo_middle|pwm_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[14]~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(14));

-- Location: LCCOMB_X20_Y21_N24
\rra_servo_middle|pwm_count~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count~41_combout\ = (!\rra_servo_middle|pwm_count\(7) & (!\rra_servo_middle|pwm_count\(5) & (!\rra_servo_middle|pwm_count\(8) & !\rra_servo_middle|pwm_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(7),
	datab => \rra_servo_middle|pwm_count\(5),
	datac => \rra_servo_middle|pwm_count\(8),
	datad => \rra_servo_middle|pwm_count\(6),
	combout => \rra_servo_middle|pwm_count~41_combout\);

-- Location: LCCOMB_X20_Y21_N22
\rra_servo_middle|pwm_count~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count~42_combout\ = (((\rra_servo_middle|pwm_count~41_combout\) # (!\rra_servo_middle|pwm_count\(9))) # (!\rra_servo_middle|pwm_count\(11))) # (!\rra_servo_middle|pwm_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(10),
	datab => \rra_servo_middle|pwm_count\(11),
	datac => \rra_servo_middle|pwm_count\(9),
	datad => \rra_servo_middle|pwm_count~41_combout\,
	combout => \rra_servo_middle|pwm_count~42_combout\);

-- Location: LCCOMB_X19_Y21_N30
\rra_servo_middle|pwm_count~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count~43_combout\ = (\rra_servo_middle|pwm_count\(14) & ((\rra_servo_middle|pwm_count\(12)) # ((\rra_servo_middle|pwm_count\(13)) # (!\rra_servo_middle|pwm_count~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(12),
	datab => \rra_servo_middle|pwm_count\(14),
	datac => \rra_servo_middle|pwm_count\(13),
	datad => \rra_servo_middle|pwm_count~42_combout\,
	combout => \rra_servo_middle|pwm_count~43_combout\);

-- Location: FF_X19_Y21_N1
\rra_servo_middle|pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[0]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(0));

-- Location: LCCOMB_X19_Y21_N2
\rra_servo_middle|pwm_count[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[1]~17_combout\ = (\rra_servo_middle|pwm_count\(1) & (!\rra_servo_middle|pwm_count[0]~16\)) # (!\rra_servo_middle|pwm_count\(1) & ((\rra_servo_middle|pwm_count[0]~16\) # (GND)))
-- \rra_servo_middle|pwm_count[1]~18\ = CARRY((!\rra_servo_middle|pwm_count[0]~16\) # (!\rra_servo_middle|pwm_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|pwm_count\(1),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[0]~16\,
	combout => \rra_servo_middle|pwm_count[1]~17_combout\,
	cout => \rra_servo_middle|pwm_count[1]~18\);

-- Location: FF_X19_Y21_N3
\rra_servo_middle|pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[1]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(1));

-- Location: LCCOMB_X19_Y21_N4
\rra_servo_middle|pwm_count[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[2]~19_combout\ = (\rra_servo_middle|pwm_count\(2) & (\rra_servo_middle|pwm_count[1]~18\ $ (GND))) # (!\rra_servo_middle|pwm_count\(2) & (!\rra_servo_middle|pwm_count[1]~18\ & VCC))
-- \rra_servo_middle|pwm_count[2]~20\ = CARRY((\rra_servo_middle|pwm_count\(2) & !\rra_servo_middle|pwm_count[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|pwm_count\(2),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[1]~18\,
	combout => \rra_servo_middle|pwm_count[2]~19_combout\,
	cout => \rra_servo_middle|pwm_count[2]~20\);

-- Location: FF_X19_Y21_N5
\rra_servo_middle|pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[2]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(2));

-- Location: FF_X19_Y21_N7
\rra_servo_middle|pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[3]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_middle|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(3));

-- Location: LCCOMB_X20_Y21_N2
\rra_servo_middle|pwm_out_i~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_out_i~0_combout\ = (!\rra_servo_middle|pwm_count\(5) & (((!\rra_servo_middle|pwm_count\(0)) # (!\rra_servo_middle|pwm_count\(2))) # (!\rra_servo_middle|pwm_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(1),
	datab => \rra_servo_middle|pwm_count\(2),
	datac => \rra_servo_middle|pwm_count\(0),
	datad => \rra_servo_middle|pwm_count\(5),
	combout => \rra_servo_middle|pwm_out_i~0_combout\);

-- Location: LCCOMB_X20_Y21_N20
\rra_servo_middle|pwm_out_i~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_out_i~1_combout\ = (!\rra_servo_middle|pwm_count\(3) & (!\rra_servo_middle|pwm_count\(4) & \rra_servo_middle|pwm_out_i~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(3),
	datab => \rra_servo_middle|pwm_count\(4),
	datad => \rra_servo_middle|pwm_out_i~0_combout\,
	combout => \rra_servo_middle|pwm_out_i~1_combout\);

-- Location: LCCOMB_X20_Y21_N8
\rra_servo_middle|pwm_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_out~0_combout\ = (!\rra_servo_middle|pwm_count\(12) & (!\rra_servo_middle|pwm_count\(14) & (!\rra_servo_middle|pwm_count\(13) & !\rra_servo_middle|pwm_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(12),
	datab => \rra_servo_middle|pwm_count\(14),
	datac => \rra_servo_middle|pwm_count\(13),
	datad => \rra_servo_middle|pwm_count\(11),
	combout => \rra_servo_middle|pwm_out~0_combout\);

-- Location: LCCOMB_X20_Y21_N26
\rra_servo_middle|pwm_out_i~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_out_i~3_combout\ = (\rra_servo_middle|pwm_count\(5) & ((\rra_servo_middle|pwm_count\(4)) # (\rra_servo_middle|pwm_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(5),
	datac => \rra_servo_middle|pwm_count\(4),
	datad => \rra_servo_middle|pwm_count\(3),
	combout => \rra_servo_middle|pwm_out_i~3_combout\);

-- Location: LCCOMB_X20_Y21_N4
\rra_servo_middle|pwm_out_i~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_out_i~2_combout\ = (((!\rra_servo_middle|pwm_count\(6)) # (!\rra_servo_middle|pwm_count\(8))) # (!\rra_servo_middle|pwm_count\(9))) # (!\rra_servo_middle|pwm_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(7),
	datab => \rra_servo_middle|pwm_count\(9),
	datac => \rra_servo_middle|pwm_count\(8),
	datad => \rra_servo_middle|pwm_count\(6),
	combout => \rra_servo_middle|pwm_out_i~2_combout\);

-- Location: LCCOMB_X20_Y21_N12
\rra_servo_middle|pwm_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_out~1_combout\ = (\rra_servo_middle|pwm_count\(10) & (((!\rra_servo_middle|current\(0)) # (!\rra_servo_middle|pwm_out_i~2_combout\)))) # (!\rra_servo_middle|pwm_count\(10) & (\rra_servo_middle|pwm_out_i~3_combout\ & 
-- (!\rra_servo_middle|pwm_out_i~2_combout\ & !\rra_servo_middle|current\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_out_i~3_combout\,
	datab => \rra_servo_middle|pwm_count\(10),
	datac => \rra_servo_middle|pwm_out_i~2_combout\,
	datad => \rra_servo_middle|current\(0),
	combout => \rra_servo_middle|pwm_out~1_combout\);

-- Location: LCCOMB_X20_Y21_N28
\rra_servo_middle|pwm_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_out~2_combout\ = (\rra_servo_middle|pwm_out~0_combout\ & (((\rra_servo_middle|current\(0) & \rra_servo_middle|pwm_out_i~1_combout\)) # (!\rra_servo_middle|pwm_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|current\(0),
	datab => \rra_servo_middle|pwm_out_i~1_combout\,
	datac => \rra_servo_middle|pwm_out~0_combout\,
	datad => \rra_servo_middle|pwm_out~1_combout\,
	combout => \rra_servo_middle|pwm_out~2_combout\);

-- Location: FF_X20_Y21_N29
\rra_servo_middle|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_out~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_out~q\);

-- Location: LCCOMB_X21_Y21_N12
\rra_servo_middle|o_pwm_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|o_pwm_out~feeder_combout\ = \rra_servo_middle|pwm_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_middle|pwm_out~q\,
	combout => \rra_servo_middle|o_pwm_out~feeder_combout\);

-- Location: FF_X21_Y21_N13
\rra_servo_middle|o_pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_middle|o_pwm_out~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|o_pwm_out~q\);

-- Location: LCCOMB_X20_Y21_N6
\rra_servo_middle|pwm_out_i~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_out_i~4_combout\ = (\rra_servo_middle|pwm_count\(10) & (((\rra_servo_middle|current\(0)) # (!\rra_servo_middle|pwm_out_i~2_combout\)))) # (!\rra_servo_middle|pwm_count\(10) & (\rra_servo_middle|pwm_out_i~3_combout\ & 
-- (!\rra_servo_middle|pwm_out_i~2_combout\ & \rra_servo_middle|current\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_out_i~3_combout\,
	datab => \rra_servo_middle|pwm_count\(10),
	datac => \rra_servo_middle|pwm_out_i~2_combout\,
	datad => \rra_servo_middle|current\(0),
	combout => \rra_servo_middle|pwm_out_i~4_combout\);

-- Location: LCCOMB_X20_Y21_N18
\rra_servo_middle|pwm_out_i~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_out_i~5_combout\ = (\rra_servo_middle|pwm_out~0_combout\ & (((!\rra_servo_middle|current\(0) & \rra_servo_middle|pwm_out_i~1_combout\)) # (!\rra_servo_middle|pwm_out_i~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|current\(0),
	datab => \rra_servo_middle|pwm_out_i~1_combout\,
	datac => \rra_servo_middle|pwm_out~0_combout\,
	datad => \rra_servo_middle|pwm_out_i~4_combout\,
	combout => \rra_servo_middle|pwm_out_i~5_combout\);

-- Location: FF_X20_Y21_N19
\rra_servo_middle|pwm_out_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_out_i~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_out_i~q\);

-- Location: LCCOMB_X21_Y21_N30
\rra_servo_middle|o_pwm_out_i~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|o_pwm_out_i~feeder_combout\ = \rra_servo_middle|pwm_out_i~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_middle|pwm_out_i~q\,
	combout => \rra_servo_middle|o_pwm_out_i~feeder_combout\);

-- Location: FF_X21_Y21_N31
\rra_servo_middle|o_pwm_out_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_middle|o_pwm_out_i~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|o_pwm_out_i~q\);

-- Location: FF_X22_Y16_N11
\rra_servo_upper|clk_1mhz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_lower|clk_1mhz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|clk_1mhz~q\);

-- Location: CLKCTRL_G10
\rra_servo_upper|clk_1mhz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_upper|clk_1mhz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y20_N0
\rra_servo_upper|pwm_count[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[0]~15_combout\ = \rra_servo_upper|pwm_count\(0) $ (VCC)
-- \rra_servo_upper|pwm_count[0]~16\ = CARRY(\rra_servo_upper|pwm_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(0),
	datad => VCC,
	combout => \rra_servo_upper|pwm_count[0]~15_combout\,
	cout => \rra_servo_upper|pwm_count[0]~16\);

-- Location: LCCOMB_X32_Y20_N24
\rra_servo_upper|pwm_count[12]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[12]~39_combout\ = (\rra_servo_upper|pwm_count\(12) & (\rra_servo_upper|pwm_count[11]~38\ $ (GND))) # (!\rra_servo_upper|pwm_count\(12) & (!\rra_servo_upper|pwm_count[11]~38\ & VCC))
-- \rra_servo_upper|pwm_count[12]~40\ = CARRY((\rra_servo_upper|pwm_count\(12) & !\rra_servo_upper|pwm_count[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(12),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[11]~38\,
	combout => \rra_servo_upper|pwm_count[12]~39_combout\,
	cout => \rra_servo_upper|pwm_count[12]~40\);

-- Location: LCCOMB_X32_Y20_N26
\rra_servo_upper|pwm_count[13]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[13]~41_combout\ = (\rra_servo_upper|pwm_count\(13) & (!\rra_servo_upper|pwm_count[12]~40\)) # (!\rra_servo_upper|pwm_count\(13) & ((\rra_servo_upper|pwm_count[12]~40\) # (GND)))
-- \rra_servo_upper|pwm_count[13]~42\ = CARRY((!\rra_servo_upper|pwm_count[12]~40\) # (!\rra_servo_upper|pwm_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(13),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[12]~40\,
	combout => \rra_servo_upper|pwm_count[13]~41_combout\,
	cout => \rra_servo_upper|pwm_count[13]~42\);

-- Location: FF_X32_Y20_N27
\rra_servo_upper|pwm_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[13]~41_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|pwm_count~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(13));

-- Location: LCCOMB_X32_Y20_N28
\rra_servo_upper|pwm_count[14]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[14]~43_combout\ = \rra_servo_upper|pwm_count[13]~42\ $ (!\rra_servo_upper|pwm_count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_upper|pwm_count\(14),
	cin => \rra_servo_upper|pwm_count[13]~42\,
	combout => \rra_servo_upper|pwm_count[14]~43_combout\);

-- Location: FF_X32_Y20_N29
\rra_servo_upper|pwm_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[14]~43_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|pwm_count~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(14));

-- Location: LCCOMB_X32_Y20_N30
\rra_servo_upper|pwm_count~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count~45_combout\ = (!\rra_servo_upper|pwm_count\(5) & (!\rra_servo_upper|pwm_count\(8) & (!\rra_servo_upper|pwm_count\(7) & !\rra_servo_upper|pwm_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(5),
	datab => \rra_servo_upper|pwm_count\(8),
	datac => \rra_servo_upper|pwm_count\(7),
	datad => \rra_servo_upper|pwm_count\(6),
	combout => \rra_servo_upper|pwm_count~45_combout\);

-- Location: LCCOMB_X31_Y20_N24
\rra_servo_upper|pwm_count~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count~46_combout\ = (((\rra_servo_upper|pwm_count~45_combout\) # (!\rra_servo_upper|pwm_count\(10))) # (!\rra_servo_upper|pwm_count\(11))) # (!\rra_servo_upper|pwm_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(9),
	datab => \rra_servo_upper|pwm_count\(11),
	datac => \rra_servo_upper|pwm_count~45_combout\,
	datad => \rra_servo_upper|pwm_count\(10),
	combout => \rra_servo_upper|pwm_count~46_combout\);

-- Location: LCCOMB_X31_Y20_N6
\rra_servo_upper|pwm_count~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count~47_combout\ = (\rra_servo_upper|pwm_count\(14) & ((\rra_servo_upper|pwm_count\(13)) # ((\rra_servo_upper|pwm_count\(12)) # (!\rra_servo_upper|pwm_count~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(13),
	datab => \rra_servo_upper|pwm_count\(14),
	datac => \rra_servo_upper|pwm_count\(12),
	datad => \rra_servo_upper|pwm_count~46_combout\,
	combout => \rra_servo_upper|pwm_count~47_combout\);

-- Location: FF_X32_Y20_N1
\rra_servo_upper|pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[0]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|pwm_count~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(0));

-- Location: LCCOMB_X32_Y20_N2
\rra_servo_upper|pwm_count[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[1]~17_combout\ = (\rra_servo_upper|pwm_count\(1) & (!\rra_servo_upper|pwm_count[0]~16\)) # (!\rra_servo_upper|pwm_count\(1) & ((\rra_servo_upper|pwm_count[0]~16\) # (GND)))
-- \rra_servo_upper|pwm_count[1]~18\ = CARRY((!\rra_servo_upper|pwm_count[0]~16\) # (!\rra_servo_upper|pwm_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(1),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[0]~16\,
	combout => \rra_servo_upper|pwm_count[1]~17_combout\,
	cout => \rra_servo_upper|pwm_count[1]~18\);

-- Location: FF_X32_Y20_N3
\rra_servo_upper|pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[1]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|pwm_count~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(1));

-- Location: LCCOMB_X32_Y20_N4
\rra_servo_upper|pwm_count[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[2]~19_combout\ = (\rra_servo_upper|pwm_count\(2) & (\rra_servo_upper|pwm_count[1]~18\ $ (GND))) # (!\rra_servo_upper|pwm_count\(2) & (!\rra_servo_upper|pwm_count[1]~18\ & VCC))
-- \rra_servo_upper|pwm_count[2]~20\ = CARRY((\rra_servo_upper|pwm_count\(2) & !\rra_servo_upper|pwm_count[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(2),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[1]~18\,
	combout => \rra_servo_upper|pwm_count[2]~19_combout\,
	cout => \rra_servo_upper|pwm_count[2]~20\);

-- Location: FF_X32_Y20_N5
\rra_servo_upper|pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[2]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|pwm_count~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(2));

-- Location: LCCOMB_X32_Y20_N6
\rra_servo_upper|pwm_count[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[3]~21_combout\ = (\rra_servo_upper|pwm_count\(3) & (!\rra_servo_upper|pwm_count[2]~20\)) # (!\rra_servo_upper|pwm_count\(3) & ((\rra_servo_upper|pwm_count[2]~20\) # (GND)))
-- \rra_servo_upper|pwm_count[3]~22\ = CARRY((!\rra_servo_upper|pwm_count[2]~20\) # (!\rra_servo_upper|pwm_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(3),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[2]~20\,
	combout => \rra_servo_upper|pwm_count[3]~21_combout\,
	cout => \rra_servo_upper|pwm_count[3]~22\);

-- Location: FF_X32_Y20_N7
\rra_servo_upper|pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[3]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|pwm_count~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(3));

-- Location: LCCOMB_X32_Y20_N8
\rra_servo_upper|pwm_count[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[4]~23_combout\ = (\rra_servo_upper|pwm_count\(4) & (\rra_servo_upper|pwm_count[3]~22\ $ (GND))) # (!\rra_servo_upper|pwm_count\(4) & (!\rra_servo_upper|pwm_count[3]~22\ & VCC))
-- \rra_servo_upper|pwm_count[4]~24\ = CARRY((\rra_servo_upper|pwm_count\(4) & !\rra_servo_upper|pwm_count[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(4),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[3]~22\,
	combout => \rra_servo_upper|pwm_count[4]~23_combout\,
	cout => \rra_servo_upper|pwm_count[4]~24\);

-- Location: FF_X32_Y20_N9
\rra_servo_upper|pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[4]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|pwm_count~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(4));

-- Location: LCCOMB_X32_Y20_N10
\rra_servo_upper|pwm_count[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[5]~25_combout\ = (\rra_servo_upper|pwm_count\(5) & (!\rra_servo_upper|pwm_count[4]~24\)) # (!\rra_servo_upper|pwm_count\(5) & ((\rra_servo_upper|pwm_count[4]~24\) # (GND)))
-- \rra_servo_upper|pwm_count[5]~26\ = CARRY((!\rra_servo_upper|pwm_count[4]~24\) # (!\rra_servo_upper|pwm_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(5),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[4]~24\,
	combout => \rra_servo_upper|pwm_count[5]~25_combout\,
	cout => \rra_servo_upper|pwm_count[5]~26\);

-- Location: FF_X32_Y20_N11
\rra_servo_upper|pwm_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[5]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|pwm_count~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(5));

-- Location: LCCOMB_X32_Y20_N12
\rra_servo_upper|pwm_count[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[6]~27_combout\ = (\rra_servo_upper|pwm_count\(6) & (\rra_servo_upper|pwm_count[5]~26\ $ (GND))) # (!\rra_servo_upper|pwm_count\(6) & (!\rra_servo_upper|pwm_count[5]~26\ & VCC))
-- \rra_servo_upper|pwm_count[6]~28\ = CARRY((\rra_servo_upper|pwm_count\(6) & !\rra_servo_upper|pwm_count[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(6),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[5]~26\,
	combout => \rra_servo_upper|pwm_count[6]~27_combout\,
	cout => \rra_servo_upper|pwm_count[6]~28\);

-- Location: FF_X32_Y20_N13
\rra_servo_upper|pwm_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[6]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|pwm_count~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(6));

-- Location: LCCOMB_X32_Y20_N14
\rra_servo_upper|pwm_count[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[7]~29_combout\ = (\rra_servo_upper|pwm_count\(7) & (!\rra_servo_upper|pwm_count[6]~28\)) # (!\rra_servo_upper|pwm_count\(7) & ((\rra_servo_upper|pwm_count[6]~28\) # (GND)))
-- \rra_servo_upper|pwm_count[7]~30\ = CARRY((!\rra_servo_upper|pwm_count[6]~28\) # (!\rra_servo_upper|pwm_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(7),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[6]~28\,
	combout => \rra_servo_upper|pwm_count[7]~29_combout\,
	cout => \rra_servo_upper|pwm_count[7]~30\);

-- Location: FF_X32_Y20_N15
\rra_servo_upper|pwm_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[7]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|pwm_count~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(7));

-- Location: LCCOMB_X32_Y20_N16
\rra_servo_upper|pwm_count[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[8]~31_combout\ = (\rra_servo_upper|pwm_count\(8) & (\rra_servo_upper|pwm_count[7]~30\ $ (GND))) # (!\rra_servo_upper|pwm_count\(8) & (!\rra_servo_upper|pwm_count[7]~30\ & VCC))
-- \rra_servo_upper|pwm_count[8]~32\ = CARRY((\rra_servo_upper|pwm_count\(8) & !\rra_servo_upper|pwm_count[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(8),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[7]~30\,
	combout => \rra_servo_upper|pwm_count[8]~31_combout\,
	cout => \rra_servo_upper|pwm_count[8]~32\);

-- Location: FF_X32_Y20_N17
\rra_servo_upper|pwm_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[8]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|pwm_count~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(8));

-- Location: LCCOMB_X32_Y20_N18
\rra_servo_upper|pwm_count[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[9]~33_combout\ = (\rra_servo_upper|pwm_count\(9) & (!\rra_servo_upper|pwm_count[8]~32\)) # (!\rra_servo_upper|pwm_count\(9) & ((\rra_servo_upper|pwm_count[8]~32\) # (GND)))
-- \rra_servo_upper|pwm_count[9]~34\ = CARRY((!\rra_servo_upper|pwm_count[8]~32\) # (!\rra_servo_upper|pwm_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(9),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[8]~32\,
	combout => \rra_servo_upper|pwm_count[9]~33_combout\,
	cout => \rra_servo_upper|pwm_count[9]~34\);

-- Location: FF_X32_Y20_N19
\rra_servo_upper|pwm_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[9]~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|pwm_count~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(9));

-- Location: LCCOMB_X32_Y20_N20
\rra_servo_upper|pwm_count[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[10]~35_combout\ = (\rra_servo_upper|pwm_count\(10) & (\rra_servo_upper|pwm_count[9]~34\ $ (GND))) # (!\rra_servo_upper|pwm_count\(10) & (!\rra_servo_upper|pwm_count[9]~34\ & VCC))
-- \rra_servo_upper|pwm_count[10]~36\ = CARRY((\rra_servo_upper|pwm_count\(10) & !\rra_servo_upper|pwm_count[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(10),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[9]~34\,
	combout => \rra_servo_upper|pwm_count[10]~35_combout\,
	cout => \rra_servo_upper|pwm_count[10]~36\);

-- Location: FF_X32_Y20_N21
\rra_servo_upper|pwm_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[10]~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|pwm_count~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(10));

-- Location: LCCOMB_X32_Y20_N22
\rra_servo_upper|pwm_count[11]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[11]~37_combout\ = (\rra_servo_upper|pwm_count\(11) & (!\rra_servo_upper|pwm_count[10]~36\)) # (!\rra_servo_upper|pwm_count\(11) & ((\rra_servo_upper|pwm_count[10]~36\) # (GND)))
-- \rra_servo_upper|pwm_count[11]~38\ = CARRY((!\rra_servo_upper|pwm_count[10]~36\) # (!\rra_servo_upper|pwm_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(11),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[10]~36\,
	combout => \rra_servo_upper|pwm_count[11]~37_combout\,
	cout => \rra_servo_upper|pwm_count[11]~38\);

-- Location: FF_X32_Y20_N23
\rra_servo_upper|pwm_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[11]~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|pwm_count~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(11));

-- Location: FF_X32_Y20_N25
\rra_servo_upper|pwm_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[12]~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|pwm_count~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(12));

-- Location: LCCOMB_X31_Y20_N12
\rra_servo_upper|pwm_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_out~2_combout\ = (!\rra_servo_upper|pwm_count\(12) & (!\rra_servo_upper|pwm_count\(14) & !\rra_servo_upper|pwm_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(12),
	datab => \rra_servo_upper|pwm_count\(14),
	datad => \rra_servo_upper|pwm_count\(13),
	combout => \rra_servo_upper|pwm_out~2_combout\);

-- Location: LCCOMB_X31_Y20_N16
\rra_servo_upper|pwm_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_out~5_combout\ = (\rra_servo_upper|pwm_count\(9) & (\rra_servo_upper|pwm_count\(6) & (\rra_servo_upper|pwm_count\(7) & \rra_servo_upper|pwm_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(9),
	datab => \rra_servo_upper|pwm_count\(6),
	datac => \rra_servo_upper|pwm_count\(7),
	datad => \rra_servo_upper|pwm_count\(8),
	combout => \rra_servo_upper|pwm_out~5_combout\);

-- Location: LCCOMB_X31_Y20_N14
\rra_servo_upper|pwm_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_out~4_combout\ = (\rra_servo_upper|pwm_count\(5) & ((\rra_servo_upper|pwm_count\(4)) # (\rra_servo_upper|pwm_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(4),
	datac => \rra_servo_upper|pwm_count\(5),
	datad => \rra_servo_upper|pwm_count\(3),
	combout => \rra_servo_upper|pwm_out~4_combout\);

-- Location: LCCOMB_X22_Y16_N6
\rra_servo_upper|clk_1khz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|clk_1khz~feeder_combout\ = \rra_servo_lower|clk_1khz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|clk_1khz~0_combout\,
	combout => \rra_servo_upper|clk_1khz~feeder_combout\);

-- Location: FF_X22_Y16_N7
\rra_servo_upper|clk_1khz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_upper|clk_1khz~feeder_combout\,
	ena => \rra_servo_lower|clk_1khz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|clk_1khz~q\);

-- Location: CLKCTRL_G14
\rra_servo_upper|clk_1khz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_upper|clk_1khz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_upper|clk_1khz~clkctrl_outclk\);

-- Location: LCCOMB_X8_Y3_N24
\keypad|Mux45~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux45~5_combout\ = (\keypad|Mux45~4_combout\ & (!\keypad|col_count\(0) & \keypad|col_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad|Mux45~4_combout\,
	datac => \keypad|col_count\(0),
	datad => \keypad|col_count\(1),
	combout => \keypad|Mux45~5_combout\);

-- Location: FF_X8_Y3_N25
\keypad|key_next[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux45~5_combout\,
	ena => \keypad|key_next[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(3));

-- Location: LCCOMB_X8_Y3_N28
\keypad|key_out[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_out[3]~feeder_combout\ = \keypad|key_next\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad|key_next\(3),
	combout => \keypad|key_out[3]~feeder_combout\);

-- Location: FF_X8_Y3_N29
\keypad|key_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[3]~feeder_combout\,
	ena => \keypad|key_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(3));

-- Location: LCCOMB_X8_Y3_N26
\keypad|Mux39~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux39~2_combout\ = (\keypad|col_count\(1) & (!\keypad|col_count\(0) & \keypad|Mux41~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|col_count\(1),
	datac => \keypad|col_count\(0),
	datad => \keypad|Mux41~2_combout\,
	combout => \keypad|Mux39~2_combout\);

-- Location: FF_X8_Y3_N27
\keypad|key_next[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux39~2_combout\,
	ena => \keypad|key_next[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(9));

-- Location: FF_X8_Y3_N7
\keypad|key_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \keypad|key_next\(9),
	sload => VCC,
	ena => \keypad|key_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(9));

-- Location: LCCOMB_X31_Y17_N2
\t_upper_pos~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \t_upper_pos~0_combout\ = (!\keypad|key_out\(9) & ((\keypad|key_out\(3)) # (t_upper_pos(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|key_out\(3),
	datac => t_upper_pos(9),
	datad => \keypad|key_out\(9),
	combout => \t_upper_pos~0_combout\);

-- Location: FF_X31_Y17_N3
\t_upper_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t_upper_pos~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t_upper_pos(9));

-- Location: FF_X31_Y17_N27
\rra_servo_upper|interval[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_lower|Add3~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval\(10));

-- Location: LCCOMB_X32_Y17_N8
\rra_servo_upper|interval_count[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count[0]~11_combout\ = \rra_servo_upper|interval_count\(0) $ (VCC)
-- \rra_servo_upper|interval_count[0]~12\ = CARRY(\rra_servo_upper|interval_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|interval_count\(0),
	datad => VCC,
	combout => \rra_servo_upper|interval_count[0]~11_combout\,
	cout => \rra_servo_upper|interval_count[0]~12\);

-- Location: FF_X32_Y17_N9
\rra_servo_upper|interval_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_upper|interval_count[0]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval_count\(0));

-- Location: LCCOMB_X32_Y17_N10
\rra_servo_upper|interval_count[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count[1]~13_combout\ = (\rra_servo_upper|interval_count\(1) & (!\rra_servo_upper|interval_count[0]~12\)) # (!\rra_servo_upper|interval_count\(1) & ((\rra_servo_upper|interval_count[0]~12\) # (GND)))
-- \rra_servo_upper|interval_count[1]~14\ = CARRY((!\rra_servo_upper|interval_count[0]~12\) # (!\rra_servo_upper|interval_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval_count\(1),
	datad => VCC,
	cin => \rra_servo_upper|interval_count[0]~12\,
	combout => \rra_servo_upper|interval_count[1]~13_combout\,
	cout => \rra_servo_upper|interval_count[1]~14\);

-- Location: FF_X32_Y17_N11
\rra_servo_upper|interval_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_upper|interval_count[1]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval_count\(1));

-- Location: LCCOMB_X32_Y17_N12
\rra_servo_upper|interval_count[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count[2]~15_combout\ = (\rra_servo_upper|interval_count\(2) & (\rra_servo_upper|interval_count[1]~14\ $ (GND))) # (!\rra_servo_upper|interval_count\(2) & (!\rra_servo_upper|interval_count[1]~14\ & VCC))
-- \rra_servo_upper|interval_count[2]~16\ = CARRY((\rra_servo_upper|interval_count\(2) & !\rra_servo_upper|interval_count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval_count\(2),
	datad => VCC,
	cin => \rra_servo_upper|interval_count[1]~14\,
	combout => \rra_servo_upper|interval_count[2]~15_combout\,
	cout => \rra_servo_upper|interval_count[2]~16\);

-- Location: FF_X32_Y17_N13
\rra_servo_upper|interval_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_upper|interval_count[2]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval_count\(2));

-- Location: LCCOMB_X32_Y17_N14
\rra_servo_upper|interval_count[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count[3]~17_combout\ = (\rra_servo_upper|interval_count\(3) & (!\rra_servo_upper|interval_count[2]~16\)) # (!\rra_servo_upper|interval_count\(3) & ((\rra_servo_upper|interval_count[2]~16\) # (GND)))
-- \rra_servo_upper|interval_count[3]~18\ = CARRY((!\rra_servo_upper|interval_count[2]~16\) # (!\rra_servo_upper|interval_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|interval_count\(3),
	datad => VCC,
	cin => \rra_servo_upper|interval_count[2]~16\,
	combout => \rra_servo_upper|interval_count[3]~17_combout\,
	cout => \rra_servo_upper|interval_count[3]~18\);

-- Location: FF_X32_Y17_N15
\rra_servo_upper|interval_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_upper|interval_count[3]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval_count\(3));

-- Location: LCCOMB_X32_Y17_N16
\rra_servo_upper|interval_count[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count[4]~19_combout\ = (\rra_servo_upper|interval_count\(4) & (\rra_servo_upper|interval_count[3]~18\ $ (GND))) # (!\rra_servo_upper|interval_count\(4) & (!\rra_servo_upper|interval_count[3]~18\ & VCC))
-- \rra_servo_upper|interval_count[4]~20\ = CARRY((\rra_servo_upper|interval_count\(4) & !\rra_servo_upper|interval_count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|interval_count\(4),
	datad => VCC,
	cin => \rra_servo_upper|interval_count[3]~18\,
	combout => \rra_servo_upper|interval_count[4]~19_combout\,
	cout => \rra_servo_upper|interval_count[4]~20\);

-- Location: FF_X32_Y17_N17
\rra_servo_upper|interval_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_upper|interval_count[4]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval_count\(4));

-- Location: LCCOMB_X32_Y17_N18
\rra_servo_upper|interval_count[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count[5]~21_combout\ = (\rra_servo_upper|interval_count\(5) & (!\rra_servo_upper|interval_count[4]~20\)) # (!\rra_servo_upper|interval_count\(5) & ((\rra_servo_upper|interval_count[4]~20\) # (GND)))
-- \rra_servo_upper|interval_count[5]~22\ = CARRY((!\rra_servo_upper|interval_count[4]~20\) # (!\rra_servo_upper|interval_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|interval_count\(5),
	datad => VCC,
	cin => \rra_servo_upper|interval_count[4]~20\,
	combout => \rra_servo_upper|interval_count[5]~21_combout\,
	cout => \rra_servo_upper|interval_count[5]~22\);

-- Location: FF_X32_Y17_N19
\rra_servo_upper|interval_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_upper|interval_count[5]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval_count\(5));

-- Location: LCCOMB_X32_Y17_N20
\rra_servo_upper|interval_count[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count[6]~23_combout\ = (\rra_servo_upper|interval_count\(6) & (\rra_servo_upper|interval_count[5]~22\ $ (GND))) # (!\rra_servo_upper|interval_count\(6) & (!\rra_servo_upper|interval_count[5]~22\ & VCC))
-- \rra_servo_upper|interval_count[6]~24\ = CARRY((\rra_servo_upper|interval_count\(6) & !\rra_servo_upper|interval_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|interval_count\(6),
	datad => VCC,
	cin => \rra_servo_upper|interval_count[5]~22\,
	combout => \rra_servo_upper|interval_count[6]~23_combout\,
	cout => \rra_servo_upper|interval_count[6]~24\);

-- Location: FF_X32_Y17_N21
\rra_servo_upper|interval_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_upper|interval_count[6]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval_count\(6));

-- Location: LCCOMB_X32_Y17_N22
\rra_servo_upper|interval_count[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count[7]~25_combout\ = (\rra_servo_upper|interval_count\(7) & (!\rra_servo_upper|interval_count[6]~24\)) # (!\rra_servo_upper|interval_count\(7) & ((\rra_servo_upper|interval_count[6]~24\) # (GND)))
-- \rra_servo_upper|interval_count[7]~26\ = CARRY((!\rra_servo_upper|interval_count[6]~24\) # (!\rra_servo_upper|interval_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval_count\(7),
	datad => VCC,
	cin => \rra_servo_upper|interval_count[6]~24\,
	combout => \rra_servo_upper|interval_count[7]~25_combout\,
	cout => \rra_servo_upper|interval_count[7]~26\);

-- Location: FF_X32_Y17_N23
\rra_servo_upper|interval_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_upper|interval_count[7]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval_count\(7));

-- Location: LCCOMB_X32_Y17_N24
\rra_servo_upper|interval_count[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count[8]~27_combout\ = (\rra_servo_upper|interval_count\(8) & (\rra_servo_upper|interval_count[7]~26\ $ (GND))) # (!\rra_servo_upper|interval_count\(8) & (!\rra_servo_upper|interval_count[7]~26\ & VCC))
-- \rra_servo_upper|interval_count[8]~28\ = CARRY((\rra_servo_upper|interval_count\(8) & !\rra_servo_upper|interval_count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|interval_count\(8),
	datad => VCC,
	cin => \rra_servo_upper|interval_count[7]~26\,
	combout => \rra_servo_upper|interval_count[8]~27_combout\,
	cout => \rra_servo_upper|interval_count[8]~28\);

-- Location: FF_X32_Y17_N25
\rra_servo_upper|interval_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_upper|interval_count[8]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval_count\(8));

-- Location: LCCOMB_X32_Y17_N26
\rra_servo_upper|interval_count[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count[9]~29_combout\ = (\rra_servo_upper|interval_count\(9) & (!\rra_servo_upper|interval_count[8]~28\)) # (!\rra_servo_upper|interval_count\(9) & ((\rra_servo_upper|interval_count[8]~28\) # (GND)))
-- \rra_servo_upper|interval_count[9]~30\ = CARRY((!\rra_servo_upper|interval_count[8]~28\) # (!\rra_servo_upper|interval_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval_count\(9),
	datad => VCC,
	cin => \rra_servo_upper|interval_count[8]~28\,
	combout => \rra_servo_upper|interval_count[9]~29_combout\,
	cout => \rra_servo_upper|interval_count[9]~30\);

-- Location: FF_X32_Y17_N27
\rra_servo_upper|interval_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_upper|interval_count[9]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval_count\(9));

-- Location: LCCOMB_X32_Y17_N28
\rra_servo_upper|interval_count[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count[10]~31_combout\ = \rra_servo_upper|interval_count[9]~30\ $ (!\rra_servo_upper|interval_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_upper|interval_count\(10),
	cin => \rra_servo_upper|interval_count[9]~30\,
	combout => \rra_servo_upper|interval_count[10]~31_combout\);

-- Location: FF_X32_Y17_N29
\rra_servo_upper|interval_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_upper|interval_count[10]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_upper|ALT_INV_LessThan0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval_count\(10));

-- Location: LCCOMB_X31_Y17_N28
\rra_servo_upper|interval[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval[9]~0_combout\ = !\rra_servo_lower|Add3~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|Add3~14_combout\,
	combout => \rra_servo_upper|interval[9]~0_combout\);

-- Location: FF_X31_Y17_N25
\rra_servo_upper|interval[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_upper|interval[9]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval\(9));

-- Location: LCCOMB_X28_Y21_N6
\rra_servo_upper|interval[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval[8]~1_combout\ = !\rra_servo_lower|Add3~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_lower|Add3~12_combout\,
	combout => \rra_servo_upper|interval[8]~1_combout\);

-- Location: FF_X31_Y17_N23
\rra_servo_upper|interval[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_upper|interval[8]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval\(8));

-- Location: LCCOMB_X23_Y21_N6
\rra_servo_upper|interval[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval[7]~2_combout\ = !\rra_servo_lower|Add3~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|Add3~10_combout\,
	combout => \rra_servo_upper|interval[7]~2_combout\);

-- Location: FF_X31_Y17_N21
\rra_servo_upper|interval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_upper|interval[7]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval\(7));

-- Location: LCCOMB_X31_Y17_N4
\rra_servo_upper|interval[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval[6]~3_combout\ = !\rra_servo_lower|Add3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|Add3~8_combout\,
	combout => \rra_servo_upper|interval[6]~3_combout\);

-- Location: FF_X31_Y17_N19
\rra_servo_upper|interval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_upper|interval[6]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval\(6));

-- Location: FF_X31_Y17_N17
\rra_servo_upper|interval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_lower|Add3~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval\(5));

-- Location: LCCOMB_X29_Y21_N0
\rra_servo_upper|interval[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval[4]~4_combout\ = !\rra_servo_lower|Add3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|Add3~4_combout\,
	combout => \rra_servo_upper|interval[4]~4_combout\);

-- Location: FF_X31_Y17_N15
\rra_servo_upper|interval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_upper|interval[4]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval\(4));

-- Location: LCCOMB_X30_Y21_N0
\rra_servo_upper|interval[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval[3]~5_combout\ = !\rra_servo_lower|Add3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|Add3~2_combout\,
	combout => \rra_servo_upper|interval[3]~5_combout\);

-- Location: FF_X31_Y17_N13
\rra_servo_upper|interval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_upper|interval[3]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval\(3));

-- Location: LCCOMB_X31_Y17_N30
\rra_servo_upper|interval[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval[2]~6_combout\ = !\rra_servo_lower|Add3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|Add3~0_combout\,
	combout => \rra_servo_upper|interval[2]~6_combout\);

-- Location: FF_X31_Y17_N11
\rra_servo_upper|interval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_upper|interval[2]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval\(2));

-- Location: LCCOMB_X22_Y25_N14
\rra_servo_upper|interval[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval[1]~7_combout\ = !\speed[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \speed[0]~input_o\,
	combout => \rra_servo_upper|interval[1]~7_combout\);

-- Location: FF_X31_Y17_N9
\rra_servo_upper|interval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	asdata => \rra_servo_upper|interval[1]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|interval\(1));

-- Location: LCCOMB_X31_Y17_N6
\rra_servo_upper|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~1_cout\ = CARRY(!\rra_servo_upper|interval_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|interval_count\(0),
	datad => VCC,
	cout => \rra_servo_upper|LessThan0~1_cout\);

-- Location: LCCOMB_X31_Y17_N8
\rra_servo_upper|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~3_cout\ = CARRY((\rra_servo_upper|interval\(1) & ((\rra_servo_upper|interval_count\(1)) # (!\rra_servo_upper|LessThan0~1_cout\))) # (!\rra_servo_upper|interval\(1) & (\rra_servo_upper|interval_count\(1) & 
-- !\rra_servo_upper|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval\(1),
	datab => \rra_servo_upper|interval_count\(1),
	datad => VCC,
	cin => \rra_servo_upper|LessThan0~1_cout\,
	cout => \rra_servo_upper|LessThan0~3_cout\);

-- Location: LCCOMB_X31_Y17_N10
\rra_servo_upper|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~5_cout\ = CARRY((\rra_servo_upper|interval\(2) & (!\rra_servo_upper|interval_count\(2) & !\rra_servo_upper|LessThan0~3_cout\)) # (!\rra_servo_upper|interval\(2) & ((!\rra_servo_upper|LessThan0~3_cout\) # 
-- (!\rra_servo_upper|interval_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval\(2),
	datab => \rra_servo_upper|interval_count\(2),
	datad => VCC,
	cin => \rra_servo_upper|LessThan0~3_cout\,
	cout => \rra_servo_upper|LessThan0~5_cout\);

-- Location: LCCOMB_X31_Y17_N12
\rra_servo_upper|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~7_cout\ = CARRY((\rra_servo_upper|interval\(3) & ((\rra_servo_upper|interval_count\(3)) # (!\rra_servo_upper|LessThan0~5_cout\))) # (!\rra_servo_upper|interval\(3) & (\rra_servo_upper|interval_count\(3) & 
-- !\rra_servo_upper|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval\(3),
	datab => \rra_servo_upper|interval_count\(3),
	datad => VCC,
	cin => \rra_servo_upper|LessThan0~5_cout\,
	cout => \rra_servo_upper|LessThan0~7_cout\);

-- Location: LCCOMB_X31_Y17_N14
\rra_servo_upper|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~9_cout\ = CARRY((\rra_servo_upper|interval_count\(4) & (!\rra_servo_upper|interval\(4) & !\rra_servo_upper|LessThan0~7_cout\)) # (!\rra_servo_upper|interval_count\(4) & ((!\rra_servo_upper|LessThan0~7_cout\) # 
-- (!\rra_servo_upper|interval\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval_count\(4),
	datab => \rra_servo_upper|interval\(4),
	datad => VCC,
	cin => \rra_servo_upper|LessThan0~7_cout\,
	cout => \rra_servo_upper|LessThan0~9_cout\);

-- Location: LCCOMB_X31_Y17_N16
\rra_servo_upper|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~11_cout\ = CARRY((\rra_servo_upper|interval\(5) & (\rra_servo_upper|interval_count\(5) & !\rra_servo_upper|LessThan0~9_cout\)) # (!\rra_servo_upper|interval\(5) & ((\rra_servo_upper|interval_count\(5)) # 
-- (!\rra_servo_upper|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval\(5),
	datab => \rra_servo_upper|interval_count\(5),
	datad => VCC,
	cin => \rra_servo_upper|LessThan0~9_cout\,
	cout => \rra_servo_upper|LessThan0~11_cout\);

-- Location: LCCOMB_X31_Y17_N18
\rra_servo_upper|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~13_cout\ = CARRY((\rra_servo_upper|interval_count\(6) & (!\rra_servo_upper|interval\(6) & !\rra_servo_upper|LessThan0~11_cout\)) # (!\rra_servo_upper|interval_count\(6) & ((!\rra_servo_upper|LessThan0~11_cout\) # 
-- (!\rra_servo_upper|interval\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval_count\(6),
	datab => \rra_servo_upper|interval\(6),
	datad => VCC,
	cin => \rra_servo_upper|LessThan0~11_cout\,
	cout => \rra_servo_upper|LessThan0~13_cout\);

-- Location: LCCOMB_X31_Y17_N20
\rra_servo_upper|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~15_cout\ = CARRY((\rra_servo_upper|interval\(7) & ((\rra_servo_upper|interval_count\(7)) # (!\rra_servo_upper|LessThan0~13_cout\))) # (!\rra_servo_upper|interval\(7) & (\rra_servo_upper|interval_count\(7) & 
-- !\rra_servo_upper|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval\(7),
	datab => \rra_servo_upper|interval_count\(7),
	datad => VCC,
	cin => \rra_servo_upper|LessThan0~13_cout\,
	cout => \rra_servo_upper|LessThan0~15_cout\);

-- Location: LCCOMB_X31_Y17_N22
\rra_servo_upper|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~17_cout\ = CARRY((\rra_servo_upper|interval\(8) & (!\rra_servo_upper|interval_count\(8) & !\rra_servo_upper|LessThan0~15_cout\)) # (!\rra_servo_upper|interval\(8) & ((!\rra_servo_upper|LessThan0~15_cout\) # 
-- (!\rra_servo_upper|interval_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval\(8),
	datab => \rra_servo_upper|interval_count\(8),
	datad => VCC,
	cin => \rra_servo_upper|LessThan0~15_cout\,
	cout => \rra_servo_upper|LessThan0~17_cout\);

-- Location: LCCOMB_X31_Y17_N24
\rra_servo_upper|LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~19_cout\ = CARRY((\rra_servo_upper|interval_count\(9) & ((\rra_servo_upper|interval\(9)) # (!\rra_servo_upper|LessThan0~17_cout\))) # (!\rra_servo_upper|interval_count\(9) & (\rra_servo_upper|interval\(9) & 
-- !\rra_servo_upper|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval_count\(9),
	datab => \rra_servo_upper|interval\(9),
	datad => VCC,
	cin => \rra_servo_upper|LessThan0~17_cout\,
	cout => \rra_servo_upper|LessThan0~19_cout\);

-- Location: LCCOMB_X31_Y17_N26
\rra_servo_upper|LessThan0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~20_combout\ = (\rra_servo_upper|interval\(10) & ((!\rra_servo_upper|interval_count\(10)) # (!\rra_servo_upper|LessThan0~19_cout\))) # (!\rra_servo_upper|interval\(10) & (!\rra_servo_upper|LessThan0~19_cout\ & 
-- !\rra_servo_upper|interval_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval\(10),
	datad => \rra_servo_upper|interval_count\(10),
	cin => \rra_servo_upper|LessThan0~19_cout\,
	combout => \rra_servo_upper|LessThan0~20_combout\);

-- Location: LCCOMB_X31_Y17_N0
\rra_servo_upper|current[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|current[0]~0_combout\ = (\rra_servo_upper|LessThan0~20_combout\ & ((\rra_servo_upper|current\(0)))) # (!\rra_servo_upper|LessThan0~20_combout\ & (t_upper_pos(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => t_upper_pos(9),
	datac => \rra_servo_upper|current\(0),
	datad => \rra_servo_upper|LessThan0~20_combout\,
	combout => \rra_servo_upper|current[0]~0_combout\);

-- Location: FF_X31_Y17_N1
\rra_servo_upper|current[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1khz~clkctrl_outclk\,
	d => \rra_servo_upper|current[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|current\(0));

-- Location: LCCOMB_X31_Y20_N26
\rra_servo_upper|pwm_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_out~6_combout\ = (\rra_servo_upper|pwm_count\(10) & (!\rra_servo_upper|pwm_out~5_combout\ & ((\rra_servo_upper|current\(0))))) # (!\rra_servo_upper|pwm_count\(10) & (((\rra_servo_upper|current\(0)) # 
-- (!\rra_servo_upper|pwm_out~4_combout\)) # (!\rra_servo_upper|pwm_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(10),
	datab => \rra_servo_upper|pwm_out~5_combout\,
	datac => \rra_servo_upper|pwm_out~4_combout\,
	datad => \rra_servo_upper|current\(0),
	combout => \rra_servo_upper|pwm_out~6_combout\);

-- Location: LCCOMB_X31_Y20_N20
\rra_servo_upper|pwm_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_out~3_combout\ = (\rra_servo_upper|current\(0) & (((!\rra_servo_upper|pwm_count\(0)) # (!\rra_servo_upper|pwm_count\(1))) # (!\rra_servo_upper|pwm_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(2),
	datab => \rra_servo_upper|pwm_count\(1),
	datac => \rra_servo_upper|pwm_count\(0),
	datad => \rra_servo_upper|current\(0),
	combout => \rra_servo_upper|pwm_out~3_combout\);

-- Location: LCCOMB_X31_Y20_N28
\rra_servo_upper|pwm_out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_out~8_combout\ = (!\rra_servo_upper|pwm_count\(3) & (!\rra_servo_upper|pwm_count\(4) & (!\rra_servo_upper|pwm_count\(5) & \rra_servo_upper|pwm_out~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(3),
	datab => \rra_servo_upper|pwm_count\(4),
	datac => \rra_servo_upper|pwm_count\(5),
	datad => \rra_servo_upper|pwm_out~3_combout\,
	combout => \rra_servo_upper|pwm_out~8_combout\);

-- Location: LCCOMB_X31_Y20_N8
\rra_servo_upper|pwm_out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_out~7_combout\ = (\rra_servo_upper|pwm_out~2_combout\ & (!\rra_servo_upper|pwm_count\(11) & ((\rra_servo_upper|pwm_out~6_combout\) # (\rra_servo_upper|pwm_out~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_out~2_combout\,
	datab => \rra_servo_upper|pwm_count\(11),
	datac => \rra_servo_upper|pwm_out~6_combout\,
	datad => \rra_servo_upper|pwm_out~8_combout\,
	combout => \rra_servo_upper|pwm_out~7_combout\);

-- Location: FF_X31_Y20_N9
\rra_servo_upper|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_out~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_out~q\);

-- Location: FF_X31_Y20_N13
\rra_servo_upper|o_pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rra_servo_upper|pwm_out~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|o_pwm_out~q\);

-- Location: LCCOMB_X31_Y20_N4
\rra_servo_upper|pwm_out_i~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_out_i~1_combout\ = (!\rra_servo_upper|pwm_count\(9) & (!\rra_servo_upper|pwm_count\(6) & (!\rra_servo_upper|pwm_count\(7) & !\rra_servo_upper|pwm_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(9),
	datab => \rra_servo_upper|pwm_count\(6),
	datac => \rra_servo_upper|pwm_count\(7),
	datad => \rra_servo_upper|pwm_count\(8),
	combout => \rra_servo_upper|pwm_out_i~1_combout\);

-- Location: LCCOMB_X31_Y20_N22
\rra_servo_upper|pwm_out_i~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_out_i~2_combout\ = (\rra_servo_upper|pwm_count\(2) & (\rra_servo_upper|pwm_count\(1) & ((\rra_servo_upper|pwm_count\(0)) # (\rra_servo_upper|pwm_count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(2),
	datab => \rra_servo_upper|pwm_count\(0),
	datac => \rra_servo_upper|pwm_count\(1),
	datad => \rra_servo_upper|pwm_count\(11),
	combout => \rra_servo_upper|pwm_out_i~2_combout\);

-- Location: LCCOMB_X31_Y20_N18
\rra_servo_upper|pwm_out_i~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_out_i~0_combout\ = (!\rra_servo_upper|pwm_count\(4) & !\rra_servo_upper|pwm_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(4),
	datad => \rra_servo_upper|pwm_count\(3),
	combout => \rra_servo_upper|pwm_out_i~0_combout\);

-- Location: LCCOMB_X31_Y20_N0
\rra_servo_upper|pwm_out_i~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_out_i~3_combout\ = (\rra_servo_upper|pwm_count\(10) & (\rra_servo_upper|pwm_count\(5) & ((\rra_servo_upper|pwm_out_i~2_combout\) # (!\rra_servo_upper|pwm_out_i~0_combout\)))) # (!\rra_servo_upper|pwm_count\(10) & 
-- (!\rra_servo_upper|pwm_count\(5) & (!\rra_servo_upper|pwm_out_i~2_combout\ & \rra_servo_upper|pwm_out_i~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(10),
	datab => \rra_servo_upper|pwm_count\(5),
	datac => \rra_servo_upper|pwm_out_i~2_combout\,
	datad => \rra_servo_upper|pwm_out_i~0_combout\,
	combout => \rra_servo_upper|pwm_out_i~3_combout\);

-- Location: LCCOMB_X31_Y20_N10
\rra_servo_upper|pwm_out_i~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_out_i~4_combout\ = (\rra_servo_upper|pwm_out_i~1_combout\ & (\rra_servo_upper|pwm_out_i~3_combout\ & (\rra_servo_upper|pwm_count\(10) $ (\rra_servo_upper|pwm_count\(11))))) # (!\rra_servo_upper|pwm_out_i~1_combout\ & 
-- (\rra_servo_upper|pwm_count\(10) & (!\rra_servo_upper|pwm_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(10),
	datab => \rra_servo_upper|pwm_count\(11),
	datac => \rra_servo_upper|pwm_out_i~1_combout\,
	datad => \rra_servo_upper|pwm_out_i~3_combout\,
	combout => \rra_servo_upper|pwm_out_i~4_combout\);

-- Location: LCCOMB_X31_Y20_N30
\rra_servo_upper|pwm_out_i~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_out_i~5_combout\ = (\rra_servo_upper|pwm_out~2_combout\ & ((\rra_servo_upper|pwm_out_i~4_combout\ & ((!\rra_servo_upper|current\(0)))) # (!\rra_servo_upper|pwm_out_i~4_combout\ & (!\rra_servo_upper|pwm_count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_out~2_combout\,
	datab => \rra_servo_upper|pwm_count\(11),
	datac => \rra_servo_upper|current\(0),
	datad => \rra_servo_upper|pwm_out_i~4_combout\,
	combout => \rra_servo_upper|pwm_out_i~5_combout\);

-- Location: FF_X31_Y20_N31
\rra_servo_upper|pwm_out_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_out_i~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_out_i~q\);

-- Location: FF_X31_Y20_N19
\rra_servo_upper|o_pwm_out_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rra_servo_upper|pwm_out_i~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|o_pwm_out_i~q\);

-- Location: LCCOMB_X21_Y16_N10
\rra_servo_wrist|clk_1mhz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|clk_1mhz~feeder_combout\ = \rra_servo_lower|clk_1mhz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|clk_1mhz~0_combout\,
	combout => \rra_servo_wrist|clk_1mhz~feeder_combout\);

-- Location: FF_X21_Y16_N11
\rra_servo_wrist|clk_1mhz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_wrist|clk_1mhz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|clk_1mhz~q\);

-- Location: CLKCTRL_G15
\rra_servo_wrist|clk_1mhz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_wrist|clk_1mhz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y24_N2
\rra_servo_wrist|pwm_count[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[0]~15_combout\ = \rra_servo_wrist|pwm_count\(0) $ (VCC)
-- \rra_servo_wrist|pwm_count[0]~16\ = CARRY(\rra_servo_wrist|pwm_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(0),
	datad => VCC,
	combout => \rra_servo_wrist|pwm_count[0]~15_combout\,
	cout => \rra_servo_wrist|pwm_count[0]~16\);

-- Location: LCCOMB_X10_Y24_N8
\rra_servo_wrist|pwm_count[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[3]~21_combout\ = (\rra_servo_wrist|pwm_count\(3) & (!\rra_servo_wrist|pwm_count[2]~20\)) # (!\rra_servo_wrist|pwm_count\(3) & ((\rra_servo_wrist|pwm_count[2]~20\) # (GND)))
-- \rra_servo_wrist|pwm_count[3]~22\ = CARRY((!\rra_servo_wrist|pwm_count[2]~20\) # (!\rra_servo_wrist|pwm_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(3),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[2]~20\,
	combout => \rra_servo_wrist|pwm_count[3]~21_combout\,
	cout => \rra_servo_wrist|pwm_count[3]~22\);

-- Location: LCCOMB_X10_Y24_N10
\rra_servo_wrist|pwm_count[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[4]~23_combout\ = (\rra_servo_wrist|pwm_count\(4) & (\rra_servo_wrist|pwm_count[3]~22\ $ (GND))) # (!\rra_servo_wrist|pwm_count\(4) & (!\rra_servo_wrist|pwm_count[3]~22\ & VCC))
-- \rra_servo_wrist|pwm_count[4]~24\ = CARRY((\rra_servo_wrist|pwm_count\(4) & !\rra_servo_wrist|pwm_count[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(4),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[3]~22\,
	combout => \rra_servo_wrist|pwm_count[4]~23_combout\,
	cout => \rra_servo_wrist|pwm_count[4]~24\);

-- Location: FF_X10_Y24_N11
\rra_servo_wrist|pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[4]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_wrist|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(4));

-- Location: LCCOMB_X10_Y24_N12
\rra_servo_wrist|pwm_count[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[5]~25_combout\ = (\rra_servo_wrist|pwm_count\(5) & (!\rra_servo_wrist|pwm_count[4]~24\)) # (!\rra_servo_wrist|pwm_count\(5) & ((\rra_servo_wrist|pwm_count[4]~24\) # (GND)))
-- \rra_servo_wrist|pwm_count[5]~26\ = CARRY((!\rra_servo_wrist|pwm_count[4]~24\) # (!\rra_servo_wrist|pwm_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(5),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[4]~24\,
	combout => \rra_servo_wrist|pwm_count[5]~25_combout\,
	cout => \rra_servo_wrist|pwm_count[5]~26\);

-- Location: FF_X10_Y24_N13
\rra_servo_wrist|pwm_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[5]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_wrist|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(5));

-- Location: LCCOMB_X10_Y24_N14
\rra_servo_wrist|pwm_count[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[6]~27_combout\ = (\rra_servo_wrist|pwm_count\(6) & (\rra_servo_wrist|pwm_count[5]~26\ $ (GND))) # (!\rra_servo_wrist|pwm_count\(6) & (!\rra_servo_wrist|pwm_count[5]~26\ & VCC))
-- \rra_servo_wrist|pwm_count[6]~28\ = CARRY((\rra_servo_wrist|pwm_count\(6) & !\rra_servo_wrist|pwm_count[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(6),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[5]~26\,
	combout => \rra_servo_wrist|pwm_count[6]~27_combout\,
	cout => \rra_servo_wrist|pwm_count[6]~28\);

-- Location: FF_X10_Y24_N15
\rra_servo_wrist|pwm_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[6]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_wrist|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(6));

-- Location: LCCOMB_X10_Y24_N16
\rra_servo_wrist|pwm_count[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[7]~29_combout\ = (\rra_servo_wrist|pwm_count\(7) & (!\rra_servo_wrist|pwm_count[6]~28\)) # (!\rra_servo_wrist|pwm_count\(7) & ((\rra_servo_wrist|pwm_count[6]~28\) # (GND)))
-- \rra_servo_wrist|pwm_count[7]~30\ = CARRY((!\rra_servo_wrist|pwm_count[6]~28\) # (!\rra_servo_wrist|pwm_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(7),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[6]~28\,
	combout => \rra_servo_wrist|pwm_count[7]~29_combout\,
	cout => \rra_servo_wrist|pwm_count[7]~30\);

-- Location: FF_X10_Y24_N17
\rra_servo_wrist|pwm_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[7]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_wrist|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(7));

-- Location: LCCOMB_X10_Y24_N18
\rra_servo_wrist|pwm_count[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[8]~31_combout\ = (\rra_servo_wrist|pwm_count\(8) & (\rra_servo_wrist|pwm_count[7]~30\ $ (GND))) # (!\rra_servo_wrist|pwm_count\(8) & (!\rra_servo_wrist|pwm_count[7]~30\ & VCC))
-- \rra_servo_wrist|pwm_count[8]~32\ = CARRY((\rra_servo_wrist|pwm_count\(8) & !\rra_servo_wrist|pwm_count[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(8),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[7]~30\,
	combout => \rra_servo_wrist|pwm_count[8]~31_combout\,
	cout => \rra_servo_wrist|pwm_count[8]~32\);

-- Location: FF_X10_Y24_N19
\rra_servo_wrist|pwm_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[8]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_wrist|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(8));

-- Location: LCCOMB_X10_Y24_N20
\rra_servo_wrist|pwm_count[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[9]~33_combout\ = (\rra_servo_wrist|pwm_count\(9) & (!\rra_servo_wrist|pwm_count[8]~32\)) # (!\rra_servo_wrist|pwm_count\(9) & ((\rra_servo_wrist|pwm_count[8]~32\) # (GND)))
-- \rra_servo_wrist|pwm_count[9]~34\ = CARRY((!\rra_servo_wrist|pwm_count[8]~32\) # (!\rra_servo_wrist|pwm_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(9),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[8]~32\,
	combout => \rra_servo_wrist|pwm_count[9]~33_combout\,
	cout => \rra_servo_wrist|pwm_count[9]~34\);

-- Location: FF_X10_Y24_N21
\rra_servo_wrist|pwm_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[9]~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_wrist|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(9));

-- Location: LCCOMB_X10_Y24_N22
\rra_servo_wrist|pwm_count[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[10]~35_combout\ = (\rra_servo_wrist|pwm_count\(10) & (\rra_servo_wrist|pwm_count[9]~34\ $ (GND))) # (!\rra_servo_wrist|pwm_count\(10) & (!\rra_servo_wrist|pwm_count[9]~34\ & VCC))
-- \rra_servo_wrist|pwm_count[10]~36\ = CARRY((\rra_servo_wrist|pwm_count\(10) & !\rra_servo_wrist|pwm_count[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(10),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[9]~34\,
	combout => \rra_servo_wrist|pwm_count[10]~35_combout\,
	cout => \rra_servo_wrist|pwm_count[10]~36\);

-- Location: FF_X10_Y24_N23
\rra_servo_wrist|pwm_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[10]~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_wrist|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(10));

-- Location: LCCOMB_X10_Y24_N24
\rra_servo_wrist|pwm_count[11]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[11]~37_combout\ = (\rra_servo_wrist|pwm_count\(11) & (!\rra_servo_wrist|pwm_count[10]~36\)) # (!\rra_servo_wrist|pwm_count\(11) & ((\rra_servo_wrist|pwm_count[10]~36\) # (GND)))
-- \rra_servo_wrist|pwm_count[11]~38\ = CARRY((!\rra_servo_wrist|pwm_count[10]~36\) # (!\rra_servo_wrist|pwm_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(11),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[10]~36\,
	combout => \rra_servo_wrist|pwm_count[11]~37_combout\,
	cout => \rra_servo_wrist|pwm_count[11]~38\);

-- Location: FF_X10_Y24_N25
\rra_servo_wrist|pwm_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[11]~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_wrist|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(11));

-- Location: LCCOMB_X10_Y24_N26
\rra_servo_wrist|pwm_count[12]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[12]~39_combout\ = (\rra_servo_wrist|pwm_count\(12) & (\rra_servo_wrist|pwm_count[11]~38\ $ (GND))) # (!\rra_servo_wrist|pwm_count\(12) & (!\rra_servo_wrist|pwm_count[11]~38\ & VCC))
-- \rra_servo_wrist|pwm_count[12]~40\ = CARRY((\rra_servo_wrist|pwm_count\(12) & !\rra_servo_wrist|pwm_count[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(12),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[11]~38\,
	combout => \rra_servo_wrist|pwm_count[12]~39_combout\,
	cout => \rra_servo_wrist|pwm_count[12]~40\);

-- Location: FF_X10_Y24_N27
\rra_servo_wrist|pwm_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[12]~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_wrist|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(12));

-- Location: LCCOMB_X10_Y24_N28
\rra_servo_wrist|pwm_count[13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[13]~44_combout\ = (\rra_servo_wrist|pwm_count\(13) & (!\rra_servo_wrist|pwm_count[12]~40\)) # (!\rra_servo_wrist|pwm_count\(13) & ((\rra_servo_wrist|pwm_count[12]~40\) # (GND)))
-- \rra_servo_wrist|pwm_count[13]~45\ = CARRY((!\rra_servo_wrist|pwm_count[12]~40\) # (!\rra_servo_wrist|pwm_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(13),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[12]~40\,
	combout => \rra_servo_wrist|pwm_count[13]~44_combout\,
	cout => \rra_servo_wrist|pwm_count[13]~45\);

-- Location: FF_X10_Y24_N29
\rra_servo_wrist|pwm_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[13]~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_wrist|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(13));

-- Location: LCCOMB_X10_Y24_N30
\rra_servo_wrist|pwm_count[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[14]~46_combout\ = \rra_servo_wrist|pwm_count\(14) $ (!\rra_servo_wrist|pwm_count[13]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(14),
	cin => \rra_servo_wrist|pwm_count[13]~45\,
	combout => \rra_servo_wrist|pwm_count[14]~46_combout\);

-- Location: FF_X10_Y24_N31
\rra_servo_wrist|pwm_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[14]~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_wrist|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(14));

-- Location: LCCOMB_X9_Y24_N18
\rra_servo_wrist|pwm_count~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count~41_combout\ = (!\rra_servo_wrist|pwm_count\(8) & (!\rra_servo_wrist|pwm_count\(7) & (!\rra_servo_wrist|pwm_count\(5) & !\rra_servo_wrist|pwm_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(8),
	datab => \rra_servo_wrist|pwm_count\(7),
	datac => \rra_servo_wrist|pwm_count\(5),
	datad => \rra_servo_wrist|pwm_count\(6),
	combout => \rra_servo_wrist|pwm_count~41_combout\);

-- Location: LCCOMB_X9_Y24_N12
\rra_servo_wrist|pwm_count~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count~42_combout\ = (((\rra_servo_wrist|pwm_count~41_combout\) # (!\rra_servo_wrist|pwm_count\(9))) # (!\rra_servo_wrist|pwm_count\(10))) # (!\rra_servo_wrist|pwm_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(11),
	datab => \rra_servo_wrist|pwm_count\(10),
	datac => \rra_servo_wrist|pwm_count\(9),
	datad => \rra_servo_wrist|pwm_count~41_combout\,
	combout => \rra_servo_wrist|pwm_count~42_combout\);

-- Location: LCCOMB_X10_Y24_N0
\rra_servo_wrist|pwm_count~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count~43_combout\ = (\rra_servo_wrist|pwm_count\(14) & ((\rra_servo_wrist|pwm_count\(13)) # ((\rra_servo_wrist|pwm_count\(12)) # (!\rra_servo_wrist|pwm_count~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(14),
	datab => \rra_servo_wrist|pwm_count\(13),
	datac => \rra_servo_wrist|pwm_count\(12),
	datad => \rra_servo_wrist|pwm_count~42_combout\,
	combout => \rra_servo_wrist|pwm_count~43_combout\);

-- Location: FF_X10_Y24_N3
\rra_servo_wrist|pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[0]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_wrist|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(0));

-- Location: LCCOMB_X10_Y24_N4
\rra_servo_wrist|pwm_count[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[1]~17_combout\ = (\rra_servo_wrist|pwm_count\(1) & (!\rra_servo_wrist|pwm_count[0]~16\)) # (!\rra_servo_wrist|pwm_count\(1) & ((\rra_servo_wrist|pwm_count[0]~16\) # (GND)))
-- \rra_servo_wrist|pwm_count[1]~18\ = CARRY((!\rra_servo_wrist|pwm_count[0]~16\) # (!\rra_servo_wrist|pwm_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(1),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[0]~16\,
	combout => \rra_servo_wrist|pwm_count[1]~17_combout\,
	cout => \rra_servo_wrist|pwm_count[1]~18\);

-- Location: FF_X10_Y24_N5
\rra_servo_wrist|pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[1]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_wrist|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(1));

-- Location: LCCOMB_X10_Y24_N6
\rra_servo_wrist|pwm_count[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[2]~19_combout\ = (\rra_servo_wrist|pwm_count\(2) & (\rra_servo_wrist|pwm_count[1]~18\ $ (GND))) # (!\rra_servo_wrist|pwm_count\(2) & (!\rra_servo_wrist|pwm_count[1]~18\ & VCC))
-- \rra_servo_wrist|pwm_count[2]~20\ = CARRY((\rra_servo_wrist|pwm_count\(2) & !\rra_servo_wrist|pwm_count[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(2),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[1]~18\,
	combout => \rra_servo_wrist|pwm_count[2]~19_combout\,
	cout => \rra_servo_wrist|pwm_count[2]~20\);

-- Location: FF_X10_Y24_N7
\rra_servo_wrist|pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[2]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_wrist|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(2));

-- Location: FF_X10_Y24_N9
\rra_servo_wrist|pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[3]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_wrist|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(3));

-- Location: LCCOMB_X9_Y24_N22
\rra_servo_wrist|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan6~1_combout\ = ((!\rra_servo_wrist|pwm_count\(3) & !\rra_servo_wrist|pwm_count\(4))) # (!\rra_servo_wrist|pwm_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(3),
	datac => \rra_servo_wrist|pwm_count\(5),
	datad => \rra_servo_wrist|pwm_count\(4),
	combout => \rra_servo_wrist|LessThan6~1_combout\);

-- Location: LCCOMB_X9_Y24_N20
\rra_servo_wrist|LessThan6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan6~2_combout\ = (\rra_servo_wrist|pwm_count\(9) & (\rra_servo_wrist|pwm_count\(7) & (\rra_servo_wrist|pwm_count\(6) & \rra_servo_wrist|pwm_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(9),
	datab => \rra_servo_wrist|pwm_count\(7),
	datac => \rra_servo_wrist|pwm_count\(6),
	datad => \rra_servo_wrist|pwm_count\(8),
	combout => \rra_servo_wrist|LessThan6~2_combout\);

-- Location: LCCOMB_X9_Y24_N24
\rra_servo_wrist|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan6~0_combout\ = (!\rra_servo_wrist|pwm_count\(11) & (!\rra_servo_wrist|pwm_count\(13) & (!\rra_servo_wrist|pwm_count\(14) & !\rra_servo_wrist|pwm_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(11),
	datab => \rra_servo_wrist|pwm_count\(13),
	datac => \rra_servo_wrist|pwm_count\(14),
	datad => \rra_servo_wrist|pwm_count\(12),
	combout => \rra_servo_wrist|LessThan6~0_combout\);

-- Location: LCCOMB_X9_Y24_N28
\rra_servo_wrist|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan6~3_combout\ = (!\rra_servo_wrist|pwm_count\(10) & (\rra_servo_wrist|LessThan6~0_combout\ & ((\rra_servo_wrist|LessThan6~1_combout\) # (!\rra_servo_wrist|LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|LessThan6~1_combout\,
	datab => \rra_servo_wrist|LessThan6~2_combout\,
	datac => \rra_servo_wrist|pwm_count\(10),
	datad => \rra_servo_wrist|LessThan6~0_combout\,
	combout => \rra_servo_wrist|LessThan6~3_combout\);

-- Location: FF_X9_Y24_N29
\rra_servo_wrist|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|LessThan6~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_out~q\);

-- Location: LCCOMB_X9_Y24_N0
\rra_servo_wrist|o_pwm_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|o_pwm_out~feeder_combout\ = \rra_servo_wrist|pwm_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_wrist|pwm_out~q\,
	combout => \rra_servo_wrist|o_pwm_out~feeder_combout\);

-- Location: FF_X9_Y24_N1
\rra_servo_wrist|o_pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_wrist|o_pwm_out~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|o_pwm_out~q\);

-- Location: LCCOMB_X22_Y16_N16
\rra_servo_gripper|clk_1mhz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|clk_1mhz~feeder_combout\ = \rra_servo_lower|clk_1mhz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|clk_1mhz~0_combout\,
	combout => \rra_servo_gripper|clk_1mhz~feeder_combout\);

-- Location: FF_X22_Y16_N17
\rra_servo_gripper|clk_1mhz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_gripper|clk_1mhz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|clk_1mhz~q\);

-- Location: CLKCTRL_G19
\rra_servo_gripper|clk_1mhz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_gripper|clk_1mhz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y28_N0
\rra_servo_gripper|pwm_count[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[0]~15_combout\ = \rra_servo_gripper|pwm_count\(0) $ (VCC)
-- \rra_servo_gripper|pwm_count[0]~16\ = CARRY(\rra_servo_gripper|pwm_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|pwm_count\(0),
	datad => VCC,
	combout => \rra_servo_gripper|pwm_count[0]~15_combout\,
	cout => \rra_servo_gripper|pwm_count[0]~16\);

-- Location: LCCOMB_X27_Y28_N20
\rra_servo_gripper|pwm_count[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[10]~35_combout\ = (\rra_servo_gripper|pwm_count\(10) & (\rra_servo_gripper|pwm_count[9]~34\ $ (GND))) # (!\rra_servo_gripper|pwm_count\(10) & (!\rra_servo_gripper|pwm_count[9]~34\ & VCC))
-- \rra_servo_gripper|pwm_count[10]~36\ = CARRY((\rra_servo_gripper|pwm_count\(10) & !\rra_servo_gripper|pwm_count[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|pwm_count\(10),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[9]~34\,
	combout => \rra_servo_gripper|pwm_count[10]~35_combout\,
	cout => \rra_servo_gripper|pwm_count[10]~36\);

-- Location: LCCOMB_X27_Y28_N22
\rra_servo_gripper|pwm_count[11]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[11]~37_combout\ = (\rra_servo_gripper|pwm_count\(11) & (!\rra_servo_gripper|pwm_count[10]~36\)) # (!\rra_servo_gripper|pwm_count\(11) & ((\rra_servo_gripper|pwm_count[10]~36\) # (GND)))
-- \rra_servo_gripper|pwm_count[11]~38\ = CARRY((!\rra_servo_gripper|pwm_count[10]~36\) # (!\rra_servo_gripper|pwm_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(11),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[10]~36\,
	combout => \rra_servo_gripper|pwm_count[11]~37_combout\,
	cout => \rra_servo_gripper|pwm_count[11]~38\);

-- Location: FF_X27_Y28_N23
\rra_servo_gripper|pwm_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[11]~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_gripper|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(11));

-- Location: LCCOMB_X27_Y28_N24
\rra_servo_gripper|pwm_count[12]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[12]~39_combout\ = (\rra_servo_gripper|pwm_count\(12) & (\rra_servo_gripper|pwm_count[11]~38\ $ (GND))) # (!\rra_servo_gripper|pwm_count\(12) & (!\rra_servo_gripper|pwm_count[11]~38\ & VCC))
-- \rra_servo_gripper|pwm_count[12]~40\ = CARRY((\rra_servo_gripper|pwm_count\(12) & !\rra_servo_gripper|pwm_count[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|pwm_count\(12),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[11]~38\,
	combout => \rra_servo_gripper|pwm_count[12]~39_combout\,
	cout => \rra_servo_gripper|pwm_count[12]~40\);

-- Location: FF_X27_Y28_N25
\rra_servo_gripper|pwm_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[12]~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_gripper|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(12));

-- Location: LCCOMB_X27_Y28_N26
\rra_servo_gripper|pwm_count[13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[13]~44_combout\ = (\rra_servo_gripper|pwm_count\(13) & (!\rra_servo_gripper|pwm_count[12]~40\)) # (!\rra_servo_gripper|pwm_count\(13) & ((\rra_servo_gripper|pwm_count[12]~40\) # (GND)))
-- \rra_servo_gripper|pwm_count[13]~45\ = CARRY((!\rra_servo_gripper|pwm_count[12]~40\) # (!\rra_servo_gripper|pwm_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(13),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[12]~40\,
	combout => \rra_servo_gripper|pwm_count[13]~44_combout\,
	cout => \rra_servo_gripper|pwm_count[13]~45\);

-- Location: FF_X27_Y28_N27
\rra_servo_gripper|pwm_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[13]~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_gripper|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(13));

-- Location: LCCOMB_X27_Y28_N28
\rra_servo_gripper|pwm_count[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[14]~46_combout\ = \rra_servo_gripper|pwm_count[13]~45\ $ (!\rra_servo_gripper|pwm_count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_gripper|pwm_count\(14),
	cin => \rra_servo_gripper|pwm_count[13]~45\,
	combout => \rra_servo_gripper|pwm_count[14]~46_combout\);

-- Location: FF_X27_Y28_N29
\rra_servo_gripper|pwm_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[14]~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_gripper|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(14));

-- Location: LCCOMB_X26_Y28_N18
\rra_servo_gripper|pwm_count~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count~41_combout\ = (!\rra_servo_gripper|pwm_count\(8) & (!\rra_servo_gripper|pwm_count\(6) & (!\rra_servo_gripper|pwm_count\(5) & !\rra_servo_gripper|pwm_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(8),
	datab => \rra_servo_gripper|pwm_count\(6),
	datac => \rra_servo_gripper|pwm_count\(5),
	datad => \rra_servo_gripper|pwm_count\(7),
	combout => \rra_servo_gripper|pwm_count~41_combout\);

-- Location: LCCOMB_X26_Y28_N8
\rra_servo_gripper|pwm_count~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count~42_combout\ = (((\rra_servo_gripper|pwm_count~41_combout\) # (!\rra_servo_gripper|pwm_count\(10))) # (!\rra_servo_gripper|pwm_count\(11))) # (!\rra_servo_gripper|pwm_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(9),
	datab => \rra_servo_gripper|pwm_count\(11),
	datac => \rra_servo_gripper|pwm_count\(10),
	datad => \rra_servo_gripper|pwm_count~41_combout\,
	combout => \rra_servo_gripper|pwm_count~42_combout\);

-- Location: LCCOMB_X27_Y28_N30
\rra_servo_gripper|pwm_count~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count~43_combout\ = (\rra_servo_gripper|pwm_count\(14) & ((\rra_servo_gripper|pwm_count\(12)) # ((\rra_servo_gripper|pwm_count\(13)) # (!\rra_servo_gripper|pwm_count~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(14),
	datab => \rra_servo_gripper|pwm_count\(12),
	datac => \rra_servo_gripper|pwm_count\(13),
	datad => \rra_servo_gripper|pwm_count~42_combout\,
	combout => \rra_servo_gripper|pwm_count~43_combout\);

-- Location: FF_X27_Y28_N1
\rra_servo_gripper|pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[0]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_gripper|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(0));

-- Location: LCCOMB_X27_Y28_N2
\rra_servo_gripper|pwm_count[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[1]~17_combout\ = (\rra_servo_gripper|pwm_count\(1) & (!\rra_servo_gripper|pwm_count[0]~16\)) # (!\rra_servo_gripper|pwm_count\(1) & ((\rra_servo_gripper|pwm_count[0]~16\) # (GND)))
-- \rra_servo_gripper|pwm_count[1]~18\ = CARRY((!\rra_servo_gripper|pwm_count[0]~16\) # (!\rra_servo_gripper|pwm_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|pwm_count\(1),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[0]~16\,
	combout => \rra_servo_gripper|pwm_count[1]~17_combout\,
	cout => \rra_servo_gripper|pwm_count[1]~18\);

-- Location: FF_X27_Y28_N3
\rra_servo_gripper|pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[1]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_gripper|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(1));

-- Location: LCCOMB_X27_Y28_N4
\rra_servo_gripper|pwm_count[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[2]~19_combout\ = (\rra_servo_gripper|pwm_count\(2) & (\rra_servo_gripper|pwm_count[1]~18\ $ (GND))) # (!\rra_servo_gripper|pwm_count\(2) & (!\rra_servo_gripper|pwm_count[1]~18\ & VCC))
-- \rra_servo_gripper|pwm_count[2]~20\ = CARRY((\rra_servo_gripper|pwm_count\(2) & !\rra_servo_gripper|pwm_count[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|pwm_count\(2),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[1]~18\,
	combout => \rra_servo_gripper|pwm_count[2]~19_combout\,
	cout => \rra_servo_gripper|pwm_count[2]~20\);

-- Location: FF_X27_Y28_N5
\rra_servo_gripper|pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[2]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_gripper|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(2));

-- Location: LCCOMB_X27_Y28_N6
\rra_servo_gripper|pwm_count[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[3]~21_combout\ = (\rra_servo_gripper|pwm_count\(3) & (!\rra_servo_gripper|pwm_count[2]~20\)) # (!\rra_servo_gripper|pwm_count\(3) & ((\rra_servo_gripper|pwm_count[2]~20\) # (GND)))
-- \rra_servo_gripper|pwm_count[3]~22\ = CARRY((!\rra_servo_gripper|pwm_count[2]~20\) # (!\rra_servo_gripper|pwm_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(3),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[2]~20\,
	combout => \rra_servo_gripper|pwm_count[3]~21_combout\,
	cout => \rra_servo_gripper|pwm_count[3]~22\);

-- Location: FF_X27_Y28_N7
\rra_servo_gripper|pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[3]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_gripper|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(3));

-- Location: LCCOMB_X27_Y28_N8
\rra_servo_gripper|pwm_count[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[4]~23_combout\ = (\rra_servo_gripper|pwm_count\(4) & (\rra_servo_gripper|pwm_count[3]~22\ $ (GND))) # (!\rra_servo_gripper|pwm_count\(4) & (!\rra_servo_gripper|pwm_count[3]~22\ & VCC))
-- \rra_servo_gripper|pwm_count[4]~24\ = CARRY((\rra_servo_gripper|pwm_count\(4) & !\rra_servo_gripper|pwm_count[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|pwm_count\(4),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[3]~22\,
	combout => \rra_servo_gripper|pwm_count[4]~23_combout\,
	cout => \rra_servo_gripper|pwm_count[4]~24\);

-- Location: FF_X27_Y28_N9
\rra_servo_gripper|pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[4]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_gripper|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(4));

-- Location: LCCOMB_X27_Y28_N10
\rra_servo_gripper|pwm_count[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[5]~25_combout\ = (\rra_servo_gripper|pwm_count\(5) & (!\rra_servo_gripper|pwm_count[4]~24\)) # (!\rra_servo_gripper|pwm_count\(5) & ((\rra_servo_gripper|pwm_count[4]~24\) # (GND)))
-- \rra_servo_gripper|pwm_count[5]~26\ = CARRY((!\rra_servo_gripper|pwm_count[4]~24\) # (!\rra_servo_gripper|pwm_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(5),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[4]~24\,
	combout => \rra_servo_gripper|pwm_count[5]~25_combout\,
	cout => \rra_servo_gripper|pwm_count[5]~26\);

-- Location: FF_X27_Y28_N11
\rra_servo_gripper|pwm_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[5]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_gripper|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(5));

-- Location: LCCOMB_X27_Y28_N12
\rra_servo_gripper|pwm_count[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[6]~27_combout\ = (\rra_servo_gripper|pwm_count\(6) & (\rra_servo_gripper|pwm_count[5]~26\ $ (GND))) # (!\rra_servo_gripper|pwm_count\(6) & (!\rra_servo_gripper|pwm_count[5]~26\ & VCC))
-- \rra_servo_gripper|pwm_count[6]~28\ = CARRY((\rra_servo_gripper|pwm_count\(6) & !\rra_servo_gripper|pwm_count[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(6),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[5]~26\,
	combout => \rra_servo_gripper|pwm_count[6]~27_combout\,
	cout => \rra_servo_gripper|pwm_count[6]~28\);

-- Location: FF_X27_Y28_N13
\rra_servo_gripper|pwm_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[6]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_gripper|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(6));

-- Location: LCCOMB_X27_Y28_N14
\rra_servo_gripper|pwm_count[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[7]~29_combout\ = (\rra_servo_gripper|pwm_count\(7) & (!\rra_servo_gripper|pwm_count[6]~28\)) # (!\rra_servo_gripper|pwm_count\(7) & ((\rra_servo_gripper|pwm_count[6]~28\) # (GND)))
-- \rra_servo_gripper|pwm_count[7]~30\ = CARRY((!\rra_servo_gripper|pwm_count[6]~28\) # (!\rra_servo_gripper|pwm_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|pwm_count\(7),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[6]~28\,
	combout => \rra_servo_gripper|pwm_count[7]~29_combout\,
	cout => \rra_servo_gripper|pwm_count[7]~30\);

-- Location: FF_X27_Y28_N15
\rra_servo_gripper|pwm_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[7]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_gripper|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(7));

-- Location: LCCOMB_X27_Y28_N16
\rra_servo_gripper|pwm_count[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[8]~31_combout\ = (\rra_servo_gripper|pwm_count\(8) & (\rra_servo_gripper|pwm_count[7]~30\ $ (GND))) # (!\rra_servo_gripper|pwm_count\(8) & (!\rra_servo_gripper|pwm_count[7]~30\ & VCC))
-- \rra_servo_gripper|pwm_count[8]~32\ = CARRY((\rra_servo_gripper|pwm_count\(8) & !\rra_servo_gripper|pwm_count[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|pwm_count\(8),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[7]~30\,
	combout => \rra_servo_gripper|pwm_count[8]~31_combout\,
	cout => \rra_servo_gripper|pwm_count[8]~32\);

-- Location: FF_X27_Y28_N17
\rra_servo_gripper|pwm_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[8]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_gripper|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(8));

-- Location: LCCOMB_X27_Y28_N18
\rra_servo_gripper|pwm_count[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[9]~33_combout\ = (\rra_servo_gripper|pwm_count\(9) & (!\rra_servo_gripper|pwm_count[8]~32\)) # (!\rra_servo_gripper|pwm_count\(9) & ((\rra_servo_gripper|pwm_count[8]~32\) # (GND)))
-- \rra_servo_gripper|pwm_count[9]~34\ = CARRY((!\rra_servo_gripper|pwm_count[8]~32\) # (!\rra_servo_gripper|pwm_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|pwm_count\(9),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[8]~32\,
	combout => \rra_servo_gripper|pwm_count[9]~33_combout\,
	cout => \rra_servo_gripper|pwm_count[9]~34\);

-- Location: FF_X27_Y28_N19
\rra_servo_gripper|pwm_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[9]~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_gripper|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(9));

-- Location: FF_X27_Y28_N21
\rra_servo_gripper|pwm_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[10]~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_gripper|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(10));

-- Location: LCCOMB_X26_Y28_N4
\rra_servo_gripper|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan6~0_combout\ = (!\rra_servo_gripper|pwm_count\(12) & (!\rra_servo_gripper|pwm_count\(14) & (!\rra_servo_gripper|pwm_count\(13) & !\rra_servo_gripper|pwm_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(12),
	datab => \rra_servo_gripper|pwm_count\(14),
	datac => \rra_servo_gripper|pwm_count\(13),
	datad => \rra_servo_gripper|pwm_count\(11),
	combout => \rra_servo_gripper|LessThan6~0_combout\);

-- Location: LCCOMB_X26_Y28_N22
\rra_servo_gripper|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan6~1_combout\ = ((!\rra_servo_gripper|pwm_count\(4) & !\rra_servo_gripper|pwm_count\(3))) # (!\rra_servo_gripper|pwm_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|pwm_count\(5),
	datac => \rra_servo_gripper|pwm_count\(4),
	datad => \rra_servo_gripper|pwm_count\(3),
	combout => \rra_servo_gripper|LessThan6~1_combout\);

-- Location: LCCOMB_X26_Y28_N28
\rra_servo_gripper|LessThan6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan6~2_combout\ = (\rra_servo_gripper|pwm_count\(6) & (\rra_servo_gripper|pwm_count\(8) & (\rra_servo_gripper|pwm_count\(7) & \rra_servo_gripper|pwm_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(6),
	datab => \rra_servo_gripper|pwm_count\(8),
	datac => \rra_servo_gripper|pwm_count\(7),
	datad => \rra_servo_gripper|pwm_count\(9),
	combout => \rra_servo_gripper|LessThan6~2_combout\);

-- Location: LCCOMB_X26_Y28_N20
\rra_servo_gripper|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan6~3_combout\ = (!\rra_servo_gripper|pwm_count\(10) & (\rra_servo_gripper|LessThan6~0_combout\ & ((\rra_servo_gripper|LessThan6~1_combout\) # (!\rra_servo_gripper|LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(10),
	datab => \rra_servo_gripper|LessThan6~0_combout\,
	datac => \rra_servo_gripper|LessThan6~1_combout\,
	datad => \rra_servo_gripper|LessThan6~2_combout\,
	combout => \rra_servo_gripper|LessThan6~3_combout\);

-- Location: FF_X26_Y28_N21
\rra_servo_gripper|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|LessThan6~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_out~q\);

-- Location: LCCOMB_X26_Y28_N12
\rra_servo_gripper|o_pwm_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|o_pwm_out~feeder_combout\ = \rra_servo_gripper|pwm_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_gripper|pwm_out~q\,
	combout => \rra_servo_gripper|o_pwm_out~feeder_combout\);

-- Location: FF_X26_Y28_N13
\rra_servo_gripper|o_pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_gripper|o_pwm_out~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|o_pwm_out~q\);

-- Location: LCCOMB_X9_Y24_N6
\rra_servo_wrist|pwm_out_i~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_out_i~0_combout\ = (!\rra_servo_wrist|pwm_count\(5) & (((!\rra_servo_wrist|pwm_count\(2)) # (!\rra_servo_wrist|pwm_count\(0))) # (!\rra_servo_wrist|pwm_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(1),
	datab => \rra_servo_wrist|pwm_count\(5),
	datac => \rra_servo_wrist|pwm_count\(0),
	datad => \rra_servo_wrist|pwm_count\(2),
	combout => \rra_servo_wrist|pwm_out_i~0_combout\);

-- Location: LCCOMB_X9_Y24_N4
\rra_servo_wrist|pwm_out_i~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_out_i~1_combout\ = (!\rra_servo_wrist|pwm_count\(3) & (!\rra_servo_wrist|pwm_count\(4) & \rra_servo_wrist|pwm_out_i~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(3),
	datac => \rra_servo_wrist|pwm_count\(4),
	datad => \rra_servo_wrist|pwm_out_i~0_combout\,
	combout => \rra_servo_wrist|pwm_out_i~1_combout\);

-- Location: LCCOMB_X9_Y24_N10
\rra_servo_wrist|pwm_out_i~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_out_i~2_combout\ = (\rra_servo_wrist|LessThan6~0_combout\ & (((\rra_servo_wrist|pwm_out_i~1_combout\) # (!\rra_servo_wrist|LessThan6~2_combout\)) # (!\rra_servo_wrist|pwm_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(10),
	datab => \rra_servo_wrist|LessThan6~2_combout\,
	datac => \rra_servo_wrist|pwm_out_i~1_combout\,
	datad => \rra_servo_wrist|LessThan6~0_combout\,
	combout => \rra_servo_wrist|pwm_out_i~2_combout\);

-- Location: FF_X9_Y24_N11
\rra_servo_wrist|pwm_out_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_out_i~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_out_i~q\);

-- Location: LCCOMB_X9_Y24_N26
\rra_servo_wrist|o_pwm_out_i~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|o_pwm_out_i~feeder_combout\ = \rra_servo_wrist|pwm_out_i~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_wrist|pwm_out_i~q\,
	combout => \rra_servo_wrist|o_pwm_out_i~feeder_combout\);

-- Location: FF_X9_Y24_N27
\rra_servo_wrist|o_pwm_out_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_wrist|o_pwm_out_i~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|o_pwm_out_i~q\);

-- Location: LCCOMB_X26_Y28_N6
\rra_servo_gripper|pwm_out_i~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_out_i~0_combout\ = (!\rra_servo_gripper|pwm_count\(5) & (((!\rra_servo_gripper|pwm_count\(2)) # (!\rra_servo_gripper|pwm_count\(0))) # (!\rra_servo_gripper|pwm_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(1),
	datab => \rra_servo_gripper|pwm_count\(5),
	datac => \rra_servo_gripper|pwm_count\(0),
	datad => \rra_servo_gripper|pwm_count\(2),
	combout => \rra_servo_gripper|pwm_out_i~0_combout\);

-- Location: LCCOMB_X26_Y28_N24
\rra_servo_gripper|pwm_out_i~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_out_i~1_combout\ = (!\rra_servo_gripper|pwm_count\(3) & (!\rra_servo_gripper|pwm_count\(4) & \rra_servo_gripper|pwm_out_i~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(3),
	datac => \rra_servo_gripper|pwm_count\(4),
	datad => \rra_servo_gripper|pwm_out_i~0_combout\,
	combout => \rra_servo_gripper|pwm_out_i~1_combout\);

-- Location: LCCOMB_X26_Y28_N10
\rra_servo_gripper|pwm_out_i~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_out_i~2_combout\ = (\rra_servo_gripper|LessThan6~0_combout\ & (((\rra_servo_gripper|pwm_out_i~1_combout\) # (!\rra_servo_gripper|LessThan6~2_combout\)) # (!\rra_servo_gripper|pwm_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(10),
	datab => \rra_servo_gripper|LessThan6~2_combout\,
	datac => \rra_servo_gripper|LessThan6~0_combout\,
	datad => \rra_servo_gripper|pwm_out_i~1_combout\,
	combout => \rra_servo_gripper|pwm_out_i~2_combout\);

-- Location: FF_X26_Y28_N11
\rra_servo_gripper|pwm_out_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_out_i~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_out_i~q\);

-- Location: LCCOMB_X26_Y28_N2
\rra_servo_gripper|o_pwm_out_i~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|o_pwm_out_i~feeder_combout\ = \rra_servo_gripper|pwm_out_i~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_gripper|pwm_out_i~q\,
	combout => \rra_servo_gripper|o_pwm_out_i~feeder_combout\);

-- Location: FF_X26_Y28_N3
\rra_servo_gripper|o_pwm_out_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_gripper|o_pwm_out_i~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|o_pwm_out_i~q\);

-- Location: LCCOMB_X21_Y16_N4
\rra_servo_base|clk_1mhz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1mhz~feeder_combout\ = \rra_servo_lower|clk_1mhz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|clk_1mhz~0_combout\,
	combout => \rra_servo_base|clk_1mhz~feeder_combout\);

-- Location: FF_X21_Y16_N5
\rra_servo_base|clk_1mhz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1mhz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1mhz~q\);

-- Location: CLKCTRL_G16
\rra_servo_base|clk_1mhz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_base|clk_1mhz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_base|clk_1mhz~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y21_N0
\rra_servo_base|pwm_count[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[0]~15_combout\ = \rra_servo_base|pwm_count\(0) $ (VCC)
-- \rra_servo_base|pwm_count[0]~16\ = CARRY(\rra_servo_base|pwm_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|pwm_count\(0),
	datad => VCC,
	combout => \rra_servo_base|pwm_count[0]~15_combout\,
	cout => \rra_servo_base|pwm_count[0]~16\);

-- Location: LCCOMB_X2_Y21_N20
\rra_servo_base|pwm_count[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[10]~35_combout\ = (\rra_servo_base|pwm_count\(10) & (\rra_servo_base|pwm_count[9]~34\ $ (GND))) # (!\rra_servo_base|pwm_count\(10) & (!\rra_servo_base|pwm_count[9]~34\ & VCC))
-- \rra_servo_base|pwm_count[10]~36\ = CARRY((\rra_servo_base|pwm_count\(10) & !\rra_servo_base|pwm_count[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|pwm_count\(10),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[9]~34\,
	combout => \rra_servo_base|pwm_count[10]~35_combout\,
	cout => \rra_servo_base|pwm_count[10]~36\);

-- Location: LCCOMB_X2_Y21_N22
\rra_servo_base|pwm_count[11]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[11]~37_combout\ = (\rra_servo_base|pwm_count\(11) & (!\rra_servo_base|pwm_count[10]~36\)) # (!\rra_servo_base|pwm_count\(11) & ((\rra_servo_base|pwm_count[10]~36\) # (GND)))
-- \rra_servo_base|pwm_count[11]~38\ = CARRY((!\rra_servo_base|pwm_count[10]~36\) # (!\rra_servo_base|pwm_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(11),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[10]~36\,
	combout => \rra_servo_base|pwm_count[11]~37_combout\,
	cout => \rra_servo_base|pwm_count[11]~38\);

-- Location: FF_X2_Y21_N23
\rra_servo_base|pwm_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[11]~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_base|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(11));

-- Location: LCCOMB_X2_Y21_N24
\rra_servo_base|pwm_count[12]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[12]~39_combout\ = (\rra_servo_base|pwm_count\(12) & (\rra_servo_base|pwm_count[11]~38\ $ (GND))) # (!\rra_servo_base|pwm_count\(12) & (!\rra_servo_base|pwm_count[11]~38\ & VCC))
-- \rra_servo_base|pwm_count[12]~40\ = CARRY((\rra_servo_base|pwm_count\(12) & !\rra_servo_base|pwm_count[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|pwm_count\(12),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[11]~38\,
	combout => \rra_servo_base|pwm_count[12]~39_combout\,
	cout => \rra_servo_base|pwm_count[12]~40\);

-- Location: FF_X2_Y21_N25
\rra_servo_base|pwm_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[12]~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_base|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(12));

-- Location: LCCOMB_X2_Y21_N26
\rra_servo_base|pwm_count[13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[13]~44_combout\ = (\rra_servo_base|pwm_count\(13) & (!\rra_servo_base|pwm_count[12]~40\)) # (!\rra_servo_base|pwm_count\(13) & ((\rra_servo_base|pwm_count[12]~40\) # (GND)))
-- \rra_servo_base|pwm_count[13]~45\ = CARRY((!\rra_servo_base|pwm_count[12]~40\) # (!\rra_servo_base|pwm_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(13),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[12]~40\,
	combout => \rra_servo_base|pwm_count[13]~44_combout\,
	cout => \rra_servo_base|pwm_count[13]~45\);

-- Location: FF_X2_Y21_N27
\rra_servo_base|pwm_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[13]~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_base|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(13));

-- Location: LCCOMB_X2_Y21_N28
\rra_servo_base|pwm_count[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[14]~46_combout\ = \rra_servo_base|pwm_count[13]~45\ $ (!\rra_servo_base|pwm_count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_base|pwm_count\(14),
	cin => \rra_servo_base|pwm_count[13]~45\,
	combout => \rra_servo_base|pwm_count[14]~46_combout\);

-- Location: FF_X2_Y21_N29
\rra_servo_base|pwm_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[14]~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_base|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(14));

-- Location: LCCOMB_X1_Y21_N10
\rra_servo_base|pwm_count~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count~41_combout\ = (!\rra_servo_base|pwm_count\(8) & (!\rra_servo_base|pwm_count\(5) & (!\rra_servo_base|pwm_count\(6) & !\rra_servo_base|pwm_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(8),
	datab => \rra_servo_base|pwm_count\(5),
	datac => \rra_servo_base|pwm_count\(6),
	datad => \rra_servo_base|pwm_count\(7),
	combout => \rra_servo_base|pwm_count~41_combout\);

-- Location: LCCOMB_X1_Y21_N28
\rra_servo_base|pwm_count~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count~42_combout\ = (((\rra_servo_base|pwm_count~41_combout\) # (!\rra_servo_base|pwm_count\(10))) # (!\rra_servo_base|pwm_count\(9))) # (!\rra_servo_base|pwm_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(11),
	datab => \rra_servo_base|pwm_count\(9),
	datac => \rra_servo_base|pwm_count\(10),
	datad => \rra_servo_base|pwm_count~41_combout\,
	combout => \rra_servo_base|pwm_count~42_combout\);

-- Location: LCCOMB_X2_Y21_N30
\rra_servo_base|pwm_count~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count~43_combout\ = (\rra_servo_base|pwm_count\(14) & ((\rra_servo_base|pwm_count\(12)) # ((\rra_servo_base|pwm_count\(13)) # (!\rra_servo_base|pwm_count~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(14),
	datab => \rra_servo_base|pwm_count\(12),
	datac => \rra_servo_base|pwm_count\(13),
	datad => \rra_servo_base|pwm_count~42_combout\,
	combout => \rra_servo_base|pwm_count~43_combout\);

-- Location: FF_X2_Y21_N1
\rra_servo_base|pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[0]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_base|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(0));

-- Location: LCCOMB_X2_Y21_N2
\rra_servo_base|pwm_count[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[1]~17_combout\ = (\rra_servo_base|pwm_count\(1) & (!\rra_servo_base|pwm_count[0]~16\)) # (!\rra_servo_base|pwm_count\(1) & ((\rra_servo_base|pwm_count[0]~16\) # (GND)))
-- \rra_servo_base|pwm_count[1]~18\ = CARRY((!\rra_servo_base|pwm_count[0]~16\) # (!\rra_servo_base|pwm_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|pwm_count\(1),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[0]~16\,
	combout => \rra_servo_base|pwm_count[1]~17_combout\,
	cout => \rra_servo_base|pwm_count[1]~18\);

-- Location: FF_X2_Y21_N3
\rra_servo_base|pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[1]~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_base|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(1));

-- Location: LCCOMB_X2_Y21_N4
\rra_servo_base|pwm_count[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[2]~19_combout\ = (\rra_servo_base|pwm_count\(2) & (\rra_servo_base|pwm_count[1]~18\ $ (GND))) # (!\rra_servo_base|pwm_count\(2) & (!\rra_servo_base|pwm_count[1]~18\ & VCC))
-- \rra_servo_base|pwm_count[2]~20\ = CARRY((\rra_servo_base|pwm_count\(2) & !\rra_servo_base|pwm_count[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|pwm_count\(2),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[1]~18\,
	combout => \rra_servo_base|pwm_count[2]~19_combout\,
	cout => \rra_servo_base|pwm_count[2]~20\);

-- Location: FF_X2_Y21_N5
\rra_servo_base|pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[2]~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_base|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(2));

-- Location: LCCOMB_X2_Y21_N6
\rra_servo_base|pwm_count[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[3]~21_combout\ = (\rra_servo_base|pwm_count\(3) & (!\rra_servo_base|pwm_count[2]~20\)) # (!\rra_servo_base|pwm_count\(3) & ((\rra_servo_base|pwm_count[2]~20\) # (GND)))
-- \rra_servo_base|pwm_count[3]~22\ = CARRY((!\rra_servo_base|pwm_count[2]~20\) # (!\rra_servo_base|pwm_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(3),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[2]~20\,
	combout => \rra_servo_base|pwm_count[3]~21_combout\,
	cout => \rra_servo_base|pwm_count[3]~22\);

-- Location: FF_X2_Y21_N7
\rra_servo_base|pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[3]~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_base|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(3));

-- Location: LCCOMB_X2_Y21_N8
\rra_servo_base|pwm_count[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[4]~23_combout\ = (\rra_servo_base|pwm_count\(4) & (\rra_servo_base|pwm_count[3]~22\ $ (GND))) # (!\rra_servo_base|pwm_count\(4) & (!\rra_servo_base|pwm_count[3]~22\ & VCC))
-- \rra_servo_base|pwm_count[4]~24\ = CARRY((\rra_servo_base|pwm_count\(4) & !\rra_servo_base|pwm_count[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|pwm_count\(4),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[3]~22\,
	combout => \rra_servo_base|pwm_count[4]~23_combout\,
	cout => \rra_servo_base|pwm_count[4]~24\);

-- Location: FF_X2_Y21_N9
\rra_servo_base|pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[4]~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_base|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(4));

-- Location: LCCOMB_X2_Y21_N10
\rra_servo_base|pwm_count[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[5]~25_combout\ = (\rra_servo_base|pwm_count\(5) & (!\rra_servo_base|pwm_count[4]~24\)) # (!\rra_servo_base|pwm_count\(5) & ((\rra_servo_base|pwm_count[4]~24\) # (GND)))
-- \rra_servo_base|pwm_count[5]~26\ = CARRY((!\rra_servo_base|pwm_count[4]~24\) # (!\rra_servo_base|pwm_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(5),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[4]~24\,
	combout => \rra_servo_base|pwm_count[5]~25_combout\,
	cout => \rra_servo_base|pwm_count[5]~26\);

-- Location: FF_X2_Y21_N11
\rra_servo_base|pwm_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[5]~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_base|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(5));

-- Location: LCCOMB_X2_Y21_N12
\rra_servo_base|pwm_count[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[6]~27_combout\ = (\rra_servo_base|pwm_count\(6) & (\rra_servo_base|pwm_count[5]~26\ $ (GND))) # (!\rra_servo_base|pwm_count\(6) & (!\rra_servo_base|pwm_count[5]~26\ & VCC))
-- \rra_servo_base|pwm_count[6]~28\ = CARRY((\rra_servo_base|pwm_count\(6) & !\rra_servo_base|pwm_count[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(6),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[5]~26\,
	combout => \rra_servo_base|pwm_count[6]~27_combout\,
	cout => \rra_servo_base|pwm_count[6]~28\);

-- Location: FF_X2_Y21_N13
\rra_servo_base|pwm_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[6]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_base|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(6));

-- Location: LCCOMB_X2_Y21_N14
\rra_servo_base|pwm_count[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[7]~29_combout\ = (\rra_servo_base|pwm_count\(7) & (!\rra_servo_base|pwm_count[6]~28\)) # (!\rra_servo_base|pwm_count\(7) & ((\rra_servo_base|pwm_count[6]~28\) # (GND)))
-- \rra_servo_base|pwm_count[7]~30\ = CARRY((!\rra_servo_base|pwm_count[6]~28\) # (!\rra_servo_base|pwm_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|pwm_count\(7),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[6]~28\,
	combout => \rra_servo_base|pwm_count[7]~29_combout\,
	cout => \rra_servo_base|pwm_count[7]~30\);

-- Location: FF_X2_Y21_N15
\rra_servo_base|pwm_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[7]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_base|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(7));

-- Location: LCCOMB_X2_Y21_N16
\rra_servo_base|pwm_count[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[8]~31_combout\ = (\rra_servo_base|pwm_count\(8) & (\rra_servo_base|pwm_count[7]~30\ $ (GND))) # (!\rra_servo_base|pwm_count\(8) & (!\rra_servo_base|pwm_count[7]~30\ & VCC))
-- \rra_servo_base|pwm_count[8]~32\ = CARRY((\rra_servo_base|pwm_count\(8) & !\rra_servo_base|pwm_count[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|pwm_count\(8),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[7]~30\,
	combout => \rra_servo_base|pwm_count[8]~31_combout\,
	cout => \rra_servo_base|pwm_count[8]~32\);

-- Location: FF_X2_Y21_N17
\rra_servo_base|pwm_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[8]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_base|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(8));

-- Location: LCCOMB_X2_Y21_N18
\rra_servo_base|pwm_count[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[9]~33_combout\ = (\rra_servo_base|pwm_count\(9) & (!\rra_servo_base|pwm_count[8]~32\)) # (!\rra_servo_base|pwm_count\(9) & ((\rra_servo_base|pwm_count[8]~32\) # (GND)))
-- \rra_servo_base|pwm_count[9]~34\ = CARRY((!\rra_servo_base|pwm_count[8]~32\) # (!\rra_servo_base|pwm_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|pwm_count\(9),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[8]~32\,
	combout => \rra_servo_base|pwm_count[9]~33_combout\,
	cout => \rra_servo_base|pwm_count[9]~34\);

-- Location: FF_X2_Y21_N19
\rra_servo_base|pwm_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[9]~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_base|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(9));

-- Location: FF_X2_Y21_N21
\rra_servo_base|pwm_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[10]~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \rra_servo_base|pwm_count~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(10));

-- Location: LCCOMB_X1_Y21_N0
\rra_servo_base|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan6~0_combout\ = (!\rra_servo_base|pwm_count\(13) & (!\rra_servo_base|pwm_count\(14) & (!\rra_servo_base|pwm_count\(12) & !\rra_servo_base|pwm_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(13),
	datab => \rra_servo_base|pwm_count\(14),
	datac => \rra_servo_base|pwm_count\(12),
	datad => \rra_servo_base|pwm_count\(11),
	combout => \rra_servo_base|LessThan6~0_combout\);

-- Location: LCCOMB_X1_Y21_N22
\rra_servo_base|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan6~1_combout\ = ((!\rra_servo_base|pwm_count\(4) & !\rra_servo_base|pwm_count\(3))) # (!\rra_servo_base|pwm_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|pwm_count\(5),
	datac => \rra_servo_base|pwm_count\(4),
	datad => \rra_servo_base|pwm_count\(3),
	combout => \rra_servo_base|LessThan6~1_combout\);

-- Location: LCCOMB_X1_Y21_N12
\rra_servo_base|LessThan6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan6~2_combout\ = (\rra_servo_base|pwm_count\(7) & (\rra_servo_base|pwm_count\(8) & (\rra_servo_base|pwm_count\(6) & \rra_servo_base|pwm_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(7),
	datab => \rra_servo_base|pwm_count\(8),
	datac => \rra_servo_base|pwm_count\(6),
	datad => \rra_servo_base|pwm_count\(9),
	combout => \rra_servo_base|LessThan6~2_combout\);

-- Location: LCCOMB_X1_Y21_N20
\rra_servo_base|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan6~3_combout\ = (!\rra_servo_base|pwm_count\(10) & (\rra_servo_base|LessThan6~0_combout\ & ((\rra_servo_base|LessThan6~1_combout\) # (!\rra_servo_base|LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(10),
	datab => \rra_servo_base|LessThan6~0_combout\,
	datac => \rra_servo_base|LessThan6~1_combout\,
	datad => \rra_servo_base|LessThan6~2_combout\,
	combout => \rra_servo_base|LessThan6~3_combout\);

-- Location: FF_X1_Y21_N21
\rra_servo_base|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|LessThan6~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_out~q\);

-- Location: LCCOMB_X1_Y21_N16
\rra_servo_base|o_pwm_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|o_pwm_out~feeder_combout\ = \rra_servo_base|pwm_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_base|pwm_out~q\,
	combout => \rra_servo_base|o_pwm_out~feeder_combout\);

-- Location: FF_X1_Y21_N17
\rra_servo_base|o_pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|o_pwm_out~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|o_pwm_out~q\);

-- Location: LCCOMB_X1_Y21_N2
\rra_servo_base|pwm_out_i~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_out_i~0_combout\ = (!\rra_servo_base|pwm_count\(5) & (((!\rra_servo_base|pwm_count\(2)) # (!\rra_servo_base|pwm_count\(0))) # (!\rra_servo_base|pwm_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(1),
	datab => \rra_servo_base|pwm_count\(5),
	datac => \rra_servo_base|pwm_count\(0),
	datad => \rra_servo_base|pwm_count\(2),
	combout => \rra_servo_base|pwm_out_i~0_combout\);

-- Location: LCCOMB_X1_Y21_N24
\rra_servo_base|pwm_out_i~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_out_i~1_combout\ = (!\rra_servo_base|pwm_count\(3) & (!\rra_servo_base|pwm_count\(4) & \rra_servo_base|pwm_out_i~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(3),
	datac => \rra_servo_base|pwm_count\(4),
	datad => \rra_servo_base|pwm_out_i~0_combout\,
	combout => \rra_servo_base|pwm_out_i~1_combout\);

-- Location: LCCOMB_X1_Y21_N18
\rra_servo_base|pwm_out_i~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_out_i~2_combout\ = (\rra_servo_base|LessThan6~0_combout\ & (((\rra_servo_base|pwm_out_i~1_combout\) # (!\rra_servo_base|pwm_count\(10))) # (!\rra_servo_base|LessThan6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|LessThan6~2_combout\,
	datab => \rra_servo_base|LessThan6~0_combout\,
	datac => \rra_servo_base|pwm_count\(10),
	datad => \rra_servo_base|pwm_out_i~1_combout\,
	combout => \rra_servo_base|pwm_out_i~2_combout\);

-- Location: FF_X1_Y21_N19
\rra_servo_base|pwm_out_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_out_i~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_out_i~q\);

-- Location: LCCOMB_X1_Y21_N14
\rra_servo_base|o_pwm_out_i~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|o_pwm_out_i~feeder_combout\ = \rra_servo_base|pwm_out_i~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_base|pwm_out_i~q\,
	combout => \rra_servo_base|o_pwm_out_i~feeder_combout\);

-- Location: FF_X1_Y21_N15
\rra_servo_base|o_pwm_out_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|o_pwm_out_i~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|o_pwm_out_i~q\);

-- Location: LCCOMB_X7_Y3_N20
\keypad|Mux49~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux49~0_combout\ = (\keypad|col_count\(1) & \keypad|col_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad|col_count\(1),
	datad => \keypad|col_count\(0),
	combout => \keypad|Mux49~0_combout\);

-- Location: FF_X7_Y3_N21
\keypad|key_col[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux49~0_combout\,
	ena => \keypad|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_col\(0));

-- Location: LCCOMB_X7_Y3_N2
\keypad|Mux52~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux52~0_combout\ = (!\keypad|col_count\(1) & !\keypad|col_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad|col_count\(1),
	datad => \keypad|col_count\(0),
	combout => \keypad|Mux52~0_combout\);

-- Location: FF_X7_Y3_N3
\keypad|key_col[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux52~0_combout\,
	ena => \keypad|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_col\(1));

-- Location: LCCOMB_X7_Y3_N0
\keypad|Mux49~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux49~1_combout\ = (!\keypad|col_count\(1) & \keypad|col_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad|col_count\(1),
	datad => \keypad|col_count\(0),
	combout => \keypad|Mux49~1_combout\);

-- Location: FF_X7_Y3_N1
\keypad|key_col[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux49~1_combout\,
	ena => \keypad|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_col\(2));

-- Location: LCCOMB_X7_Y3_N6
\keypad|Mux49~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux49~2_combout\ = (\keypad|col_count\(1) & !\keypad|col_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad|col_count\(1),
	datad => \keypad|col_count\(0),
	combout => \keypad|Mux49~2_combout\);

-- Location: FF_X7_Y3_N7
\keypad|key_col[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux49~2_combout\,
	ena => \keypad|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_col\(3));

-- Location: LCCOMB_X24_Y26_N16
\rra_servo_lower|o_current[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|o_current[1]~0_combout\ = (!\rst~input_o\ & \rra_servo_lower|current\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \rra_servo_lower|current\(0),
	combout => \rra_servo_lower|o_current[1]~0_combout\);

-- Location: DSPMULT_X34_Y21_N0
\Mult1|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X34_Y21_N2
\Mult1|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X30_Y21_N4
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Mult1|auto_generated|w164w\(2) & (\rra_servo_lower|o_current[1]~0_combout\ $ (VCC))) # (!\Mult1|auto_generated|w164w\(2) & ((\rra_servo_lower|o_current[1]~0_combout\) # (GND)))
-- \Add1~1\ = CARRY((\rra_servo_lower|o_current[1]~0_combout\) # (!\Mult1|auto_generated|w164w\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w164w\(2),
	datab => \rra_servo_lower|o_current[1]~0_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: DSPMULT_X34_Y20_N0
\Mult1|auto_generated|mac_mult3\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Mult1|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X34_Y20_N2
\Mult1|auto_generated|mac_out4\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X35_Y20_N16
\Mult1|auto_generated|add9_result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[0]~0_combout\ = \Mult1|auto_generated|mac_out4~DATAOUT7\ $ (VCC)
-- \Mult1|auto_generated|add9_result[0]~1\ = CARRY(\Mult1|auto_generated|mac_out4~DATAOUT7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out4~DATAOUT7\,
	datad => VCC,
	combout => \Mult1|auto_generated|add9_result[0]~0_combout\,
	cout => \Mult1|auto_generated|add9_result[0]~1\);

-- Location: LCCOMB_X35_Y20_N18
\Mult1|auto_generated|add9_result[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[1]~2_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT8\ & (!\Mult1|auto_generated|add9_result[0]~1\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT8\ & ((\Mult1|auto_generated|add9_result[0]~1\) # (GND)))
-- \Mult1|auto_generated|add9_result[1]~3\ = CARRY((!\Mult1|auto_generated|add9_result[0]~1\) # (!\Mult1|auto_generated|mac_out4~DATAOUT8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[0]~1\,
	combout => \Mult1|auto_generated|add9_result[1]~2_combout\,
	cout => \Mult1|auto_generated|add9_result[1]~3\);

-- Location: LCCOMB_X35_Y20_N20
\Mult1|auto_generated|add9_result[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[2]~4_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT9\ & (\Mult1|auto_generated|add9_result[1]~3\ $ (GND))) # (!\Mult1|auto_generated|mac_out4~DATAOUT9\ & (!\Mult1|auto_generated|add9_result[1]~3\ & VCC))
-- \Mult1|auto_generated|add9_result[2]~5\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT9\ & !\Mult1|auto_generated|add9_result[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out4~DATAOUT9\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[1]~3\,
	combout => \Mult1|auto_generated|add9_result[2]~4_combout\,
	cout => \Mult1|auto_generated|add9_result[2]~5\);

-- Location: LCCOMB_X35_Y20_N22
\Mult1|auto_generated|add9_result[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[3]~6_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT10\ & (!\Mult1|auto_generated|add9_result[2]~5\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT10\ & ((\Mult1|auto_generated|add9_result[2]~5\) # (GND)))
-- \Mult1|auto_generated|add9_result[3]~7\ = CARRY((!\Mult1|auto_generated|add9_result[2]~5\) # (!\Mult1|auto_generated|mac_out4~DATAOUT10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT10\,
	datad => VCC,
	cin => \Mult1|auto_generated|add9_result[2]~5\,
	combout => \Mult1|auto_generated|add9_result[3]~6_combout\,
	cout => \Mult1|auto_generated|add9_result[3]~7\);

-- Location: LCCOMB_X35_Y20_N24
\Mult1|auto_generated|add9_result[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|add9_result[4]~8_combout\ = !\Mult1|auto_generated|add9_result[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult1|auto_generated|add9_result[3]~7\,
	combout => \Mult1|auto_generated|add9_result[4]~8_combout\);

-- Location: LCCOMB_X33_Y20_N4
\Mult1|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~0_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT18\ & (\Mult1|auto_generated|mac_out4~dataout\ $ (VCC))) # (!\Mult1|auto_generated|mac_out2~DATAOUT18\ & (\Mult1|auto_generated|mac_out4~dataout\ & VCC))
-- \Mult1|auto_generated|op_1~1\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT18\ & \Mult1|auto_generated|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT18\,
	datab => \Mult1|auto_generated|mac_out4~dataout\,
	datad => VCC,
	combout => \Mult1|auto_generated|op_1~0_combout\,
	cout => \Mult1|auto_generated|op_1~1\);

-- Location: LCCOMB_X33_Y20_N6
\Mult1|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~2_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT1\ & ((\Mult1|auto_generated|mac_out2~DATAOUT19\ & (\Mult1|auto_generated|op_1~1\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT19\ & (!\Mult1|auto_generated|op_1~1\)))) # 
-- (!\Mult1|auto_generated|mac_out4~DATAOUT1\ & ((\Mult1|auto_generated|mac_out2~DATAOUT19\ & (!\Mult1|auto_generated|op_1~1\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\Mult1|auto_generated|op_1~1\) # (GND)))))
-- \Mult1|auto_generated|op_1~3\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT1\ & (!\Mult1|auto_generated|mac_out2~DATAOUT19\ & !\Mult1|auto_generated|op_1~1\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT1\ & ((!\Mult1|auto_generated|op_1~1\) # 
-- (!\Mult1|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT1\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~1\,
	combout => \Mult1|auto_generated|op_1~2_combout\,
	cout => \Mult1|auto_generated|op_1~3\);

-- Location: LCCOMB_X33_Y20_N8
\Mult1|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~4_combout\ = ((\Mult1|auto_generated|mac_out2~DATAOUT20\ $ (\Mult1|auto_generated|mac_out4~DATAOUT2\ $ (!\Mult1|auto_generated|op_1~3\)))) # (GND)
-- \Mult1|auto_generated|op_1~5\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT20\ & ((\Mult1|auto_generated|mac_out4~DATAOUT2\) # (!\Mult1|auto_generated|op_1~3\))) # (!\Mult1|auto_generated|mac_out2~DATAOUT20\ & (\Mult1|auto_generated|mac_out4~DATAOUT2\ & 
-- !\Mult1|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT20\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT2\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~3\,
	combout => \Mult1|auto_generated|op_1~4_combout\,
	cout => \Mult1|auto_generated|op_1~5\);

-- Location: LCCOMB_X33_Y20_N10
\Mult1|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~6_combout\ = (\Mult1|auto_generated|mac_out4~DATAOUT3\ & ((\Mult1|auto_generated|mac_out2~DATAOUT21\ & (\Mult1|auto_generated|op_1~5\ & VCC)) # (!\Mult1|auto_generated|mac_out2~DATAOUT21\ & (!\Mult1|auto_generated|op_1~5\)))) # 
-- (!\Mult1|auto_generated|mac_out4~DATAOUT3\ & ((\Mult1|auto_generated|mac_out2~DATAOUT21\ & (!\Mult1|auto_generated|op_1~5\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\Mult1|auto_generated|op_1~5\) # (GND)))))
-- \Mult1|auto_generated|op_1~7\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT3\ & (!\Mult1|auto_generated|mac_out2~DATAOUT21\ & !\Mult1|auto_generated|op_1~5\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT3\ & ((!\Mult1|auto_generated|op_1~5\) # 
-- (!\Mult1|auto_generated|mac_out2~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT3\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~5\,
	combout => \Mult1|auto_generated|op_1~6_combout\,
	cout => \Mult1|auto_generated|op_1~7\);

-- Location: LCCOMB_X33_Y20_N12
\Mult1|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~8_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT4\ $ (\Mult1|auto_generated|mac_out2~DATAOUT22\ $ (!\Mult1|auto_generated|op_1~7\)))) # (GND)
-- \Mult1|auto_generated|op_1~9\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT4\ & ((\Mult1|auto_generated|mac_out2~DATAOUT22\) # (!\Mult1|auto_generated|op_1~7\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT4\ & (\Mult1|auto_generated|mac_out2~DATAOUT22\ & 
-- !\Mult1|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT4\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~7\,
	combout => \Mult1|auto_generated|op_1~8_combout\,
	cout => \Mult1|auto_generated|op_1~9\);

-- Location: LCCOMB_X33_Y20_N14
\Mult1|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~10_combout\ = (\Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Mult1|auto_generated|mac_out4~DATAOUT5\ & (\Mult1|auto_generated|op_1~9\ & VCC)) # (!\Mult1|auto_generated|mac_out4~DATAOUT5\ & (!\Mult1|auto_generated|op_1~9\)))) # 
-- (!\Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\Mult1|auto_generated|mac_out4~DATAOUT5\ & (!\Mult1|auto_generated|op_1~9\)) # (!\Mult1|auto_generated|mac_out4~DATAOUT5\ & ((\Mult1|auto_generated|op_1~9\) # (GND)))))
-- \Mult1|auto_generated|op_1~11\ = CARRY((\Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\Mult1|auto_generated|mac_out4~DATAOUT5\ & !\Mult1|auto_generated|op_1~9\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT23\ & ((!\Mult1|auto_generated|op_1~9\) # 
-- (!\Mult1|auto_generated|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT23\,
	datab => \Mult1|auto_generated|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~9\,
	combout => \Mult1|auto_generated|op_1~10_combout\,
	cout => \Mult1|auto_generated|op_1~11\);

-- Location: LCCOMB_X33_Y20_N16
\Mult1|auto_generated|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~12_combout\ = ((\Mult1|auto_generated|mac_out4~DATAOUT6\ $ (\Mult1|auto_generated|mac_out2~DATAOUT24\ $ (!\Mult1|auto_generated|op_1~11\)))) # (GND)
-- \Mult1|auto_generated|op_1~13\ = CARRY((\Mult1|auto_generated|mac_out4~DATAOUT6\ & ((\Mult1|auto_generated|mac_out2~DATAOUT24\) # (!\Mult1|auto_generated|op_1~11\))) # (!\Mult1|auto_generated|mac_out4~DATAOUT6\ & (\Mult1|auto_generated|mac_out2~DATAOUT24\ 
-- & !\Mult1|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out4~DATAOUT6\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~11\,
	combout => \Mult1|auto_generated|op_1~12_combout\,
	cout => \Mult1|auto_generated|op_1~13\);

-- Location: LCCOMB_X33_Y20_N18
\Mult1|auto_generated|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~14_combout\ = (\Mult1|auto_generated|add9_result[0]~0_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT25\ & (!\Mult1|auto_generated|op_1~13\)) # (!\Mult1|auto_generated|mac_out2~DATAOUT25\ & (\Mult1|auto_generated|op_1~13\ & 
-- VCC)))) # (!\Mult1|auto_generated|add9_result[0]~0_combout\ & ((\Mult1|auto_generated|mac_out2~DATAOUT25\ & ((\Mult1|auto_generated|op_1~13\) # (GND))) # (!\Mult1|auto_generated|mac_out2~DATAOUT25\ & (!\Mult1|auto_generated|op_1~13\))))
-- \Mult1|auto_generated|op_1~15\ = CARRY((\Mult1|auto_generated|add9_result[0]~0_combout\ & (\Mult1|auto_generated|mac_out2~DATAOUT25\ & !\Mult1|auto_generated|op_1~13\)) # (!\Mult1|auto_generated|add9_result[0]~0_combout\ & 
-- ((\Mult1|auto_generated|mac_out2~DATAOUT25\) # (!\Mult1|auto_generated|op_1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[0]~0_combout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~13\,
	combout => \Mult1|auto_generated|op_1~14_combout\,
	cout => \Mult1|auto_generated|op_1~15\);

-- Location: LCCOMB_X33_Y20_N20
\Mult1|auto_generated|op_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~16_combout\ = (\Mult1|auto_generated|add9_result[1]~2_combout\ & ((GND) # (!\Mult1|auto_generated|op_1~15\))) # (!\Mult1|auto_generated|add9_result[1]~2_combout\ & (\Mult1|auto_generated|op_1~15\ $ (GND)))
-- \Mult1|auto_generated|op_1~17\ = CARRY((\Mult1|auto_generated|add9_result[1]~2_combout\) # (!\Mult1|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[1]~2_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~15\,
	combout => \Mult1|auto_generated|op_1~16_combout\,
	cout => \Mult1|auto_generated|op_1~17\);

-- Location: LCCOMB_X33_Y20_N22
\Mult1|auto_generated|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~18_combout\ = (\Mult1|auto_generated|add9_result[2]~4_combout\ & (\Mult1|auto_generated|op_1~17\ & VCC)) # (!\Mult1|auto_generated|add9_result[2]~4_combout\ & (!\Mult1|auto_generated|op_1~17\))
-- \Mult1|auto_generated|op_1~19\ = CARRY((!\Mult1|auto_generated|add9_result[2]~4_combout\ & !\Mult1|auto_generated|op_1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[2]~4_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~17\,
	combout => \Mult1|auto_generated|op_1~18_combout\,
	cout => \Mult1|auto_generated|op_1~19\);

-- Location: LCCOMB_X33_Y20_N24
\Mult1|auto_generated|op_1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~20_combout\ = (\Mult1|auto_generated|add9_result[3]~6_combout\ & ((GND) # (!\Mult1|auto_generated|op_1~19\))) # (!\Mult1|auto_generated|add9_result[3]~6_combout\ & (\Mult1|auto_generated|op_1~19\ $ (GND)))
-- \Mult1|auto_generated|op_1~21\ = CARRY((\Mult1|auto_generated|add9_result[3]~6_combout\) # (!\Mult1|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|add9_result[3]~6_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~19\,
	combout => \Mult1|auto_generated|op_1~20_combout\,
	cout => \Mult1|auto_generated|op_1~21\);

-- Location: LCCOMB_X33_Y20_N26
\Mult1|auto_generated|op_1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~22_combout\ = \Mult1|auto_generated|mac_out4~DATAOUT11\ $ (\Mult1|auto_generated|op_1~21\ $ (!\Mult1|auto_generated|add9_result[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out4~DATAOUT11\,
	datad => \Mult1|auto_generated|add9_result[4]~8_combout\,
	cin => \Mult1|auto_generated|op_1~21\,
	combout => \Mult1|auto_generated|op_1~22_combout\);

-- Location: LCCOMB_X30_Y21_N6
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Mult1|auto_generated|w164w\(3) & ((\rra_servo_lower|o_current[1]~0_combout\ & (!\Add1~1\)) # (!\rra_servo_lower|o_current[1]~0_combout\ & ((\Add1~1\) # (GND))))) # (!\Mult1|auto_generated|w164w\(3) & 
-- ((\rra_servo_lower|o_current[1]~0_combout\ & (\Add1~1\ & VCC)) # (!\rra_servo_lower|o_current[1]~0_combout\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\Mult1|auto_generated|w164w\(3) & ((!\Add1~1\) # (!\rra_servo_lower|o_current[1]~0_combout\))) # (!\Mult1|auto_generated|w164w\(3) & (!\rra_servo_lower|o_current[1]~0_combout\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w164w\(3),
	datab => \rra_servo_lower|o_current[1]~0_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X30_Y21_N8
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Mult1|auto_generated|w164w\(4) $ (\rra_servo_lower|o_current[1]~0_combout\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Mult1|auto_generated|w164w\(4) & (\rra_servo_lower|o_current[1]~0_combout\ & !\Add1~3\)) # (!\Mult1|auto_generated|w164w\(4) & ((\rra_servo_lower|o_current[1]~0_combout\) # (!\Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w164w\(4),
	datab => \rra_servo_lower|o_current[1]~0_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X30_Y21_N10
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Mult1|auto_generated|w164w\(5) & ((\Add1~5\) # (GND))) # (!\Mult1|auto_generated|w164w\(5) & (!\Add1~5\))
-- \Add1~7\ = CARRY((\Mult1|auto_generated|w164w\(5)) # (!\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w164w\(5),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X30_Y21_N12
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\Mult1|auto_generated|w164w\(6) $ (\rra_servo_lower|o_current[1]~0_combout\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\Mult1|auto_generated|w164w\(6) & (\rra_servo_lower|o_current[1]~0_combout\ & !\Add1~7\)) # (!\Mult1|auto_generated|w164w\(6) & ((\rra_servo_lower|o_current[1]~0_combout\) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w164w\(6),
	datab => \rra_servo_lower|o_current[1]~0_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X30_Y21_N14
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\rra_servo_lower|o_current[1]~0_combout\ & ((\Mult1|auto_generated|w164w\(7) & (!\Add1~9\)) # (!\Mult1|auto_generated|w164w\(7) & (\Add1~9\ & VCC)))) # (!\rra_servo_lower|o_current[1]~0_combout\ & ((\Mult1|auto_generated|w164w\(7) & 
-- ((\Add1~9\) # (GND))) # (!\Mult1|auto_generated|w164w\(7) & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\rra_servo_lower|o_current[1]~0_combout\ & (\Mult1|auto_generated|w164w\(7) & !\Add1~9\)) # (!\rra_servo_lower|o_current[1]~0_combout\ & ((\Mult1|auto_generated|w164w\(7)) # (!\Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|o_current[1]~0_combout\,
	datab => \Mult1|auto_generated|w164w\(7),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X30_Y21_N16
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Mult1|auto_generated|w164w\(8) $ (\rra_servo_lower|o_current[1]~0_combout\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\Mult1|auto_generated|w164w\(8) & (\rra_servo_lower|o_current[1]~0_combout\ & !\Add1~11\)) # (!\Mult1|auto_generated|w164w\(8) & ((\rra_servo_lower|o_current[1]~0_combout\) # (!\Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w164w\(8),
	datab => \rra_servo_lower|o_current[1]~0_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X30_Y21_N18
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Mult1|auto_generated|w164w\(9) & ((\rra_servo_lower|o_current[1]~0_combout\ & (!\Add1~13\)) # (!\rra_servo_lower|o_current[1]~0_combout\ & ((\Add1~13\) # (GND))))) # (!\Mult1|auto_generated|w164w\(9) & 
-- ((\rra_servo_lower|o_current[1]~0_combout\ & (\Add1~13\ & VCC)) # (!\rra_servo_lower|o_current[1]~0_combout\ & (!\Add1~13\))))
-- \Add1~15\ = CARRY((\Mult1|auto_generated|w164w\(9) & ((!\Add1~13\) # (!\rra_servo_lower|o_current[1]~0_combout\))) # (!\Mult1|auto_generated|w164w\(9) & (!\rra_servo_lower|o_current[1]~0_combout\ & !\Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w164w\(9),
	datab => \rra_servo_lower|o_current[1]~0_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X30_Y21_N20
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\Mult1|auto_generated|w164w\(10) & (!\Add1~15\ & VCC)) # (!\Mult1|auto_generated|w164w\(10) & (\Add1~15\ $ (GND)))
-- \Add1~17\ = CARRY((!\Mult1|auto_generated|w164w\(10) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|w164w\(10),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X30_Y21_N22
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\Mult1|auto_generated|w164w\(11) & ((\Add1~17\) # (GND))) # (!\Mult1|auto_generated|w164w\(11) & (!\Add1~17\))
-- \Add1~19\ = CARRY((\Mult1|auto_generated|w164w\(11)) # (!\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w164w\(11),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X30_Y21_N24
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\Mult1|auto_generated|w164w\(12) & (!\Add1~19\ & VCC)) # (!\Mult1|auto_generated|w164w\(12) & (\Add1~19\ $ (GND)))
-- \Add1~21\ = CARRY((!\Mult1|auto_generated|w164w\(12) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|w164w\(12),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X30_Y21_N26
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\Mult1|auto_generated|w164w\(13) & ((\Add1~21\) # (GND))) # (!\Mult1|auto_generated|w164w\(13) & (!\Add1~21\))
-- \Add1~23\ = CARRY((\Mult1|auto_generated|w164w\(13)) # (!\Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|w164w\(13),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X30_Y21_N28
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\Mult1|auto_generated|w164w\(14) & (!\Add1~23\ & VCC)) # (!\Mult1|auto_generated|w164w\(14) & (\Add1~23\ $ (GND)))
-- \Add1~25\ = CARRY((!\Mult1|auto_generated|w164w\(14) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|w164w\(14),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X30_Y21_N30
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\Mult1|auto_generated|w164w\(15) & ((\Add1~25\) # (GND))) # (!\Mult1|auto_generated|w164w\(15) & (!\Add1~25\))
-- \Add1~27\ = CARRY((\Mult1|auto_generated|w164w\(15)) # (!\Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|w164w\(15),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X30_Y20_N0
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\Mult1|auto_generated|w164w\(16) & (!\Add1~27\ & VCC)) # (!\Mult1|auto_generated|w164w\(16) & (\Add1~27\ $ (GND)))
-- \Add1~29\ = CARRY((!\Mult1|auto_generated|w164w\(16) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|w164w\(16),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X30_Y20_N2
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\Mult1|auto_generated|w164w\(17) & ((\Add1~29\) # (GND))) # (!\Mult1|auto_generated|w164w\(17) & (!\Add1~29\))
-- \Add1~31\ = CARRY((\Mult1|auto_generated|w164w\(17)) # (!\Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|w164w\(17),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X30_Y20_N4
\Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\Mult1|auto_generated|op_1~0_combout\ & (!\Add1~31\ & VCC)) # (!\Mult1|auto_generated|op_1~0_combout\ & (\Add1~31\ $ (GND)))
-- \Add1~33\ = CARRY((!\Mult1|auto_generated|op_1~0_combout\ & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X30_Y20_N6
\Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\Mult1|auto_generated|op_1~2_combout\ & ((\Add1~33\) # (GND))) # (!\Mult1|auto_generated|op_1~2_combout\ & (!\Add1~33\))
-- \Add1~35\ = CARRY((\Mult1|auto_generated|op_1~2_combout\) # (!\Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X30_Y20_N8
\Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (\Mult1|auto_generated|op_1~4_combout\ & (!\Add1~35\ & VCC)) # (!\Mult1|auto_generated|op_1~4_combout\ & (\Add1~35\ $ (GND)))
-- \Add1~37\ = CARRY((!\Mult1|auto_generated|op_1~4_combout\ & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X30_Y20_N10
\Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\Mult1|auto_generated|op_1~6_combout\ & ((\Add1~37\) # (GND))) # (!\Mult1|auto_generated|op_1~6_combout\ & (!\Add1~37\))
-- \Add1~39\ = CARRY((\Mult1|auto_generated|op_1~6_combout\) # (!\Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X30_Y20_N12
\Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (\Mult1|auto_generated|op_1~8_combout\ & (!\Add1~39\ & VCC)) # (!\Mult1|auto_generated|op_1~8_combout\ & (\Add1~39\ $ (GND)))
-- \Add1~41\ = CARRY((!\Mult1|auto_generated|op_1~8_combout\ & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X30_Y20_N14
\Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\Mult1|auto_generated|op_1~10_combout\ & ((\Add1~41\) # (GND))) # (!\Mult1|auto_generated|op_1~10_combout\ & (!\Add1~41\))
-- \Add1~43\ = CARRY((\Mult1|auto_generated|op_1~10_combout\) # (!\Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X30_Y20_N16
\Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\Mult1|auto_generated|op_1~12_combout\ & (!\Add1~43\ & VCC)) # (!\Mult1|auto_generated|op_1~12_combout\ & (\Add1~43\ $ (GND)))
-- \Add1~45\ = CARRY((!\Mult1|auto_generated|op_1~12_combout\ & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X30_Y20_N18
\Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\Mult1|auto_generated|op_1~14_combout\ & ((\Add1~45\) # (GND))) # (!\Mult1|auto_generated|op_1~14_combout\ & (!\Add1~45\))
-- \Add1~47\ = CARRY((\Mult1|auto_generated|op_1~14_combout\) # (!\Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X30_Y20_N20
\Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (\Mult1|auto_generated|op_1~16_combout\ & (!\Add1~47\ & VCC)) # (!\Mult1|auto_generated|op_1~16_combout\ & (\Add1~47\ $ (GND)))
-- \Add1~49\ = CARRY((!\Mult1|auto_generated|op_1~16_combout\ & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X30_Y20_N22
\Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\Mult1|auto_generated|op_1~18_combout\ & ((\Add1~49\) # (GND))) # (!\Mult1|auto_generated|op_1~18_combout\ & (!\Add1~49\))
-- \Add1~51\ = CARRY((\Mult1|auto_generated|op_1~18_combout\) # (!\Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X30_Y20_N24
\Add1~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (\Mult1|auto_generated|op_1~20_combout\ & (!\Add1~51\ & VCC)) # (!\Mult1|auto_generated|op_1~20_combout\ & (\Add1~51\ $ (GND)))
-- \Add1~53\ = CARRY((!\Mult1|auto_generated|op_1~20_combout\ & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X30_Y20_N26
\Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\Mult1|auto_generated|op_1~22_combout\ & ((\Add1~53\) # (GND))) # (!\Mult1|auto_generated|op_1~22_combout\ & (!\Add1~53\))
-- \Add1~55\ = CARRY((\Mult1|auto_generated|op_1~22_combout\) # (!\Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X30_Y20_N28
\Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = \Add1~55\ $ (\Mult1|auto_generated|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult1|auto_generated|op_1~22_combout\,
	cin => \Add1~55\,
	combout => \Add1~56_combout\);

-- Location: LCCOMB_X24_Y21_N30
\Div2|auto_generated|divider|my_abs_num|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|_~1_combout\ = \Add1~56_combout\ $ (\Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~56_combout\,
	datad => \Add1~12_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|_~1_combout\);

-- Location: LCCOMB_X24_Y21_N20
\Div2|auto_generated|divider|my_abs_num|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|_~2_combout\ = \Add1~56_combout\ $ (\Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~56_combout\,
	datac => \Add1~14_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|_~2_combout\);

-- Location: LCCOMB_X24_Y21_N4
\Div2|auto_generated|divider|my_abs_num|cs2a[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[6]~1_combout\ = (\Add1~4_combout\ & (\Add1~6_combout\ & \Add1~8_combout\)) # (!\Add1~4_combout\ & ((\Add1~6_combout\) # (\Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~6_combout\,
	datad => \Add1~8_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[6]~1_combout\);

-- Location: LCCOMB_X24_Y28_N0
\Div2|auto_generated|divider|my_abs_num|cs2a[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\ = (\Add1~56_combout\ & (!\Add1~2_combout\ & (!\rra_servo_lower|o_current[1]~0_combout\ & !\Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Add1~2_combout\,
	datac => \rra_servo_lower|o_current[1]~0_combout\,
	datad => \Add1~0_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\);

-- Location: LCCOMB_X24_Y21_N14
\Div2|auto_generated|divider|my_abs_num|cs2a[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\ & ((\Add1~4_combout\ & (!\Add1~56_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[6]~1_combout\)) # (!\Add1~4_combout\ & 
-- (\Add1~56_combout\ & !\Div2|auto_generated|divider|my_abs_num|cs2a[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~56_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[6]~1_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\);

-- Location: LCCOMB_X24_Y21_N24
\Div2|auto_generated|divider|my_abs_num|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|_~0_combout\ = \Add1~56_combout\ $ (\Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~56_combout\,
	datac => \Add1~10_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|_~0_combout\);

-- Location: LCCOMB_X24_Y21_N26
\Div2|auto_generated|divider|my_abs_num|cs2a[9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[9]~3_combout\ = (\Div2|auto_generated|divider|my_abs_num|_~1_combout\ & (\Div2|auto_generated|divider|my_abs_num|_~2_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ & 
-- \Div2|auto_generated|divider|my_abs_num|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|_~1_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|_~2_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|_~0_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[9]~3_combout\);

-- Location: LCCOMB_X28_Y23_N0
\Div2|auto_generated|divider|my_abs_num|cs2a[11]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[11]~4_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[9]~3_combout\ & ((\Add1~56_combout\ & (!\Add1~18_combout\ & !\Add1~16_combout\)) # (!\Add1~56_combout\ & (\Add1~18_combout\ & \Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Add1~18_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[9]~3_combout\,
	datad => \Add1~16_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[11]~4_combout\);

-- Location: LCCOMB_X30_Y24_N28
\Div2|auto_generated|divider|my_abs_num|cs2a[13]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[13]~5_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[11]~4_combout\ & ((\Add1~22_combout\ & (!\Add1~56_combout\ & \Add1~20_combout\)) # (!\Add1~22_combout\ & (\Add1~56_combout\ & 
-- !\Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \Add1~56_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[11]~4_combout\,
	datad => \Add1~20_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[13]~5_combout\);

-- Location: LCCOMB_X31_Y24_N8
\Div2|auto_generated|divider|my_abs_num|cs2a[16]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[16]~6_combout\ = (\Add1~28_combout\ & ((\Add1~26_combout\) # (!\Add1~24_combout\))) # (!\Add1~28_combout\ & (\Add1~26_combout\ & !\Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datac => \Add1~26_combout\,
	datad => \Add1~24_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[16]~6_combout\);

-- Location: LCCOMB_X31_Y24_N26
\Div2|auto_generated|divider|my_abs_num|cs2a[16]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[16]~7_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[13]~5_combout\ & ((\Add1~24_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[16]~6_combout\ & !\Add1~56_combout\)) # (!\Add1~24_combout\ & 
-- (!\Div2|auto_generated|divider|my_abs_num|cs2a[16]~6_combout\ & \Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[13]~5_combout\,
	datab => \Add1~24_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[16]~6_combout\,
	datad => \Add1~56_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[16]~7_combout\);

-- Location: LCCOMB_X31_Y24_N20
\Div2|auto_generated|divider|my_abs_num|_~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|_~4_combout\ = \Add1~56_combout\ $ (\Add1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~56_combout\,
	datad => \Add1~32_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|_~4_combout\);

-- Location: LCCOMB_X31_Y24_N22
\Div2|auto_generated|divider|my_abs_num|_~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|_~5_combout\ = \Add1~34_combout\ $ (\Add1~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~34_combout\,
	datad => \Add1~56_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|_~5_combout\);

-- Location: LCCOMB_X32_Y24_N24
\Div2|auto_generated|divider|my_abs_num|_~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|_~3_combout\ = \Add1~30_combout\ $ (\Add1~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~30_combout\,
	datac => \Add1~56_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|_~3_combout\);

-- Location: LCCOMB_X31_Y24_N28
\Div2|auto_generated|divider|my_abs_num|cs2a[19]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[19]~8_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[16]~7_combout\ & (\Div2|auto_generated|divider|my_abs_num|_~4_combout\ & (\Div2|auto_generated|divider|my_abs_num|_~5_combout\ & 
-- \Div2|auto_generated|divider|my_abs_num|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[16]~7_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|_~4_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|_~5_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|_~3_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[19]~8_combout\);

-- Location: LCCOMB_X32_Y23_N0
\Div2|auto_generated|divider|my_abs_num|cs2a[21]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[21]~9_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[19]~8_combout\ & ((\Add1~56_combout\ & (!\Add1~36_combout\ & !\Add1~38_combout\)) # (!\Add1~56_combout\ & (\Add1~36_combout\ & 
-- \Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Add1~36_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[19]~8_combout\,
	datad => \Add1~38_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[21]~9_combout\);

-- Location: LCCOMB_X30_Y22_N12
\Div2|auto_generated|divider|my_abs_num|cs2a[23]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[23]~10_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[21]~9_combout\ & ((\Add1~40_combout\ & (!\Add1~56_combout\ & \Add1~42_combout\)) # (!\Add1~40_combout\ & (\Add1~56_combout\ & 
-- !\Add1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~42_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[21]~9_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[23]~10_combout\);

-- Location: LCCOMB_X30_Y22_N6
\Div2|auto_generated|divider|my_abs_num|cs2a[25]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[25]~11_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[23]~10_combout\ & ((\Add1~46_combout\ & (!\Add1~56_combout\ & \Add1~44_combout\)) # (!\Add1~46_combout\ & (\Add1~56_combout\ & 
-- !\Add1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~44_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[23]~10_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[25]~11_combout\);

-- Location: LCCOMB_X29_Y20_N28
\Div2|auto_generated|divider|my_abs_num|cs2a[27]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[27]~12_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[25]~11_combout\ & ((\Add1~56_combout\ & (!\Add1~50_combout\ & !\Add1~48_combout\)) # (!\Add1~56_combout\ & (\Add1~50_combout\ & 
-- \Add1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Add1~50_combout\,
	datac => \Add1~48_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[25]~11_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[27]~12_combout\);

-- Location: LCCOMB_X27_Y20_N0
\Div2|auto_generated|divider|my_abs_num|cs2a[28]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[28]~15_combout\ = \Add1~56_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[27]~12_combout\ $ (\Add1~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~56_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[27]~12_combout\,
	datad => \Add1~52_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[28]~15_combout\);

-- Location: LCCOMB_X27_Y20_N2
\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \Div2|auto_generated|divider|my_abs_num|cs2a[28]~15_combout\ $ (VCC)
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\Div2|auto_generated|divider|my_abs_num|cs2a[28]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[28]~15_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X27_Y20_N24
\Div2|auto_generated|divider|my_abs_num|cs2a[29]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[29]~13_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[27]~12_combout\ & ((\Add1~54_combout\ & (!\Add1~56_combout\ & \Add1~52_combout\)) # (!\Add1~54_combout\ & (\Add1~56_combout\ & 
-- !\Add1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~54_combout\,
	datab => \Add1~56_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[27]~12_combout\,
	datad => \Add1~52_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[29]~13_combout\);

-- Location: LCCOMB_X27_Y20_N22
\Div2|auto_generated|divider|my_abs_num|cs2a[29]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[29]~14_combout\ = \Add1~54_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs2a[27]~12_combout\ & ((\Add1~52_combout\))) # (!\Div2|auto_generated|divider|my_abs_num|cs2a[27]~12_combout\ & 
-- (\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~54_combout\,
	datab => \Add1~56_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[27]~12_combout\,
	datad => \Add1~52_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[29]~14_combout\);

-- Location: LCCOMB_X27_Y20_N4
\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[29]~14_combout\ & (\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\Div2|auto_generated|divider|my_abs_num|cs2a[29]~14_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|my_abs_num|cs2a[29]~14_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[29]~14_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X27_Y20_N6
\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[29]~13_combout\ & (\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\Div2|auto_generated|divider|my_abs_num|cs2a[29]~13_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\Div2|auto_generated|divider|my_abs_num|cs2a[29]~13_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[29]~13_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X27_Y20_N8
\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X27_Y20_N26
\Div2|auto_generated|divider|divider|StageOut[21]~252\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~252_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[29]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[29]~13_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~252_combout\);

-- Location: LCCOMB_X27_Y20_N20
\Div2|auto_generated|divider|divider|StageOut[21]~253\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~253_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~253_combout\);

-- Location: LCCOMB_X27_Y20_N10
\Div2|auto_generated|divider|divider|StageOut[20]~255\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[20]~255_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[20]~255_combout\);

-- Location: LCCOMB_X28_Y20_N20
\Div2|auto_generated|divider|divider|StageOut[20]~254\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[20]~254_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[29]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[29]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[20]~254_combout\);

-- Location: LCCOMB_X27_Y20_N16
\Div2|auto_generated|divider|divider|StageOut[19]~439\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[19]~439_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[27]~12_combout\ $ (\Add1~56_combout\ $ (\Add1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[27]~12_combout\,
	datab => \Add1~56_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Add1~52_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[19]~439_combout\);

-- Location: LCCOMB_X28_Y20_N30
\Div2|auto_generated|divider|divider|StageOut[19]~256\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[19]~256_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[19]~256_combout\);

-- Location: LCCOMB_X29_Y20_N30
\Div2|auto_generated|divider|my_abs_num|cs2a[27]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[27]~16_combout\ = \Add1~50_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs2a[25]~11_combout\ & ((\Add1~48_combout\))) # (!\Div2|auto_generated|divider|my_abs_num|cs2a[25]~11_combout\ & 
-- (\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Add1~50_combout\,
	datac => \Add1~48_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[25]~11_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[27]~16_combout\);

-- Location: LCCOMB_X28_Y20_N26
\Div2|auto_generated|divider|divider|StageOut[18]~258\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~258_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[27]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[27]~16_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~258_combout\);

-- Location: LCCOMB_X28_Y20_N8
\Div2|auto_generated|divider|divider|StageOut[18]~257\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~257_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[27]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[27]~16_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~257_combout\);

-- Location: LCCOMB_X28_Y20_N10
\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[18]~258_combout\) # (\Div2|auto_generated|divider|divider|StageOut[18]~257_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[18]~258_combout\) # (\Div2|auto_generated|divider|divider|StageOut[18]~257_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[18]~258_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[18]~257_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X28_Y20_N12
\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[19]~439_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[19]~256_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[19]~439_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[19]~256_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[19]~439_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[19]~256_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[19]~439_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[19]~256_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X28_Y20_N14
\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[20]~255_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[20]~254_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[20]~255_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[20]~254_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[20]~255_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[20]~254_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[20]~255_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[20]~254_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X28_Y20_N16
\Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[21]~252_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[21]~253_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[21]~252_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[21]~253_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[21]~252_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[21]~253_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[21]~252_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[21]~253_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X28_Y20_N18
\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X28_Y20_N0
\Div2|auto_generated|divider|divider|StageOut[26]~440\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[26]~440_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[19]~439_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[19]~439_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[26]~440_combout\);

-- Location: LCCOMB_X28_Y20_N4
\Div2|auto_generated|divider|divider|StageOut[26]~261\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[26]~261_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[26]~261_combout\);

-- Location: LCCOMB_X29_Y20_N26
\Div2|auto_generated|divider|divider|StageOut[25]~263\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[25]~263_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[25]~263_combout\);

-- Location: LCCOMB_X29_Y20_N24
\Div2|auto_generated|divider|divider|StageOut[25]~262\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[25]~262_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[27]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[27]~16_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[25]~262_combout\);

-- Location: LCCOMB_X29_Y20_N22
\Div2|auto_generated|divider|divider|StageOut[24]~265\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[24]~265_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Add1~56_combout\ $ (\Add1~48_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[25]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Add1~48_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[25]~11_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[24]~265_combout\);

-- Location: LCCOMB_X29_Y20_N4
\Div2|auto_generated|divider|divider|StageOut[24]~264\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[24]~264_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Add1~56_combout\ $ (\Add1~48_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[25]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Add1~48_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[25]~11_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[24]~264_combout\);

-- Location: LCCOMB_X29_Y20_N6
\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[24]~265_combout\) # (\Div2|auto_generated|divider|divider|StageOut[24]~264_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[24]~265_combout\) # (\Div2|auto_generated|divider|divider|StageOut[24]~264_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[24]~265_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[24]~264_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X29_Y20_N8
\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[25]~263_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[25]~262_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[25]~263_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[25]~262_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[25]~263_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[25]~262_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[25]~263_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[25]~262_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X29_Y20_N10
\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[26]~440_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[26]~261_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[26]~440_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[26]~261_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[26]~440_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[26]~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[26]~440_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[26]~261_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X28_Y20_N2
\Div2|auto_generated|divider|divider|StageOut[28]~505\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[28]~505_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Div2|auto_generated|divider|my_abs_num|cs2a[29]~13_combout\)) # (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[29]~13_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[28]~505_combout\);

-- Location: LCCOMB_X29_Y20_N20
\Div2|auto_generated|divider|divider|StageOut[28]~259\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[28]~259_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[28]~259_combout\);

-- Location: LCCOMB_X28_Y20_N24
\Div2|auto_generated|divider|divider|StageOut[27]~506\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[27]~506_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Div2|auto_generated|divider|my_abs_num|cs2a[29]~14_combout\)) # (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[29]~14_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[27]~506_combout\);

-- Location: LCCOMB_X29_Y20_N2
\Div2|auto_generated|divider|divider|StageOut[27]~260\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[27]~260_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[27]~260_combout\);

-- Location: LCCOMB_X29_Y20_N12
\Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[27]~506_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[27]~260_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[27]~506_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[27]~260_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[27]~506_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[27]~260_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[27]~506_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[27]~260_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X29_Y20_N14
\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[28]~505_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[28]~259_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[28]~505_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[28]~259_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X29_Y20_N16
\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X28_Y20_N28
\Div2|auto_generated|divider|divider|StageOut[33]~442\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[33]~442_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[26]~440_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[26]~440_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[33]~442_combout\);

-- Location: LCCOMB_X28_Y20_N6
\Div2|auto_generated|divider|divider|StageOut[34]~441\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[34]~441_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[27]~506_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[27]~506_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[34]~441_combout\);

-- Location: LCCOMB_X28_Y22_N28
\Div2|auto_generated|divider|divider|StageOut[34]~266\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[34]~266_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[34]~266_combout\);

-- Location: LCCOMB_X28_Y22_N26
\Div2|auto_generated|divider|divider|StageOut[33]~267\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[33]~267_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[33]~267_combout\);

-- Location: LCCOMB_X28_Y22_N12
\Div2|auto_generated|divider|divider|StageOut[32]~268\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[32]~268_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[32]~268_combout\);

-- Location: LCCOMB_X28_Y20_N22
\Div2|auto_generated|divider|divider|StageOut[32]~507\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[32]~507_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Div2|auto_generated|divider|my_abs_num|cs2a[27]~16_combout\))) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[27]~16_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[32]~507_combout\);

-- Location: LCCOMB_X28_Y22_N10
\Div2|auto_generated|divider|divider|StageOut[31]~270\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[31]~270_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[31]~270_combout\);

-- Location: LCCOMB_X29_Y20_N0
\Div2|auto_generated|divider|divider|StageOut[31]~269\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[31]~269_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Add1~56_combout\ $ (\Add1~48_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[25]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~48_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[25]~11_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[31]~269_combout\);

-- Location: LCCOMB_X30_Y22_N28
\Div2|auto_generated|divider|my_abs_num|cs2a[25]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[25]~17_combout\ = \Add1~46_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs2a[23]~10_combout\ & ((\Add1~44_combout\))) # (!\Div2|auto_generated|divider|my_abs_num|cs2a[23]~10_combout\ & 
-- (\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~44_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[23]~10_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[25]~17_combout\);

-- Location: LCCOMB_X28_Y22_N30
\Div2|auto_generated|divider|divider|StageOut[30]~272\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[30]~272_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[25]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[25]~17_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[30]~272_combout\);

-- Location: LCCOMB_X28_Y22_N4
\Div2|auto_generated|divider|divider|StageOut[30]~271\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[30]~271_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[25]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[25]~17_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[30]~271_combout\);

-- Location: LCCOMB_X28_Y22_N14
\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[30]~272_combout\) # (\Div2|auto_generated|divider|divider|StageOut[30]~271_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[30]~272_combout\) # (\Div2|auto_generated|divider|divider|StageOut[30]~271_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[30]~272_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[30]~271_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X28_Y22_N16
\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[31]~270_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[31]~269_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[31]~270_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[31]~269_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[31]~270_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[31]~269_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[31]~270_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[31]~269_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X28_Y22_N18
\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[32]~268_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[32]~507_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[32]~268_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[32]~507_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[32]~268_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[32]~507_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[32]~268_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[32]~507_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X28_Y22_N20
\Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[33]~267_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[33]~442_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[33]~267_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[33]~442_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[33]~267_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[33]~442_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[33]~267_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[33]~442_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X28_Y22_N22
\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[34]~441_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[34]~266_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[34]~441_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[34]~266_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X28_Y22_N24
\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\);

-- Location: LCCOMB_X28_Y22_N0
\Div2|auto_generated|divider|divider|StageOut[40]~443\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[40]~443_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[33]~442_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[33]~442_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[40]~443_combout\);

-- Location: LCCOMB_X29_Y22_N4
\Div2|auto_generated|divider|divider|StageOut[40]~273\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[40]~273_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[40]~273_combout\);

-- Location: LCCOMB_X29_Y22_N6
\Div2|auto_generated|divider|divider|StageOut[39]~274\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[39]~274_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[39]~274_combout\);

-- Location: LCCOMB_X28_Y22_N6
\Div2|auto_generated|divider|divider|StageOut[39]~444\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[39]~444_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[32]~507_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[32]~507_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[39]~444_combout\);

-- Location: LCCOMB_X28_Y22_N8
\Div2|auto_generated|divider|divider|StageOut[38]~445\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[38]~445_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[31]~269_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[31]~269_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[38]~445_combout\);

-- Location: LCCOMB_X29_Y22_N8
\Div2|auto_generated|divider|divider|StageOut[38]~275\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[38]~275_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[38]~275_combout\);

-- Location: LCCOMB_X29_Y22_N30
\Div2|auto_generated|divider|divider|StageOut[37]~276\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[37]~276_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[25]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[25]~17_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[37]~276_combout\);

-- Location: LCCOMB_X29_Y22_N28
\Div2|auto_generated|divider|divider|StageOut[37]~277\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[37]~277_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[37]~277_combout\);

-- Location: LCCOMB_X30_Y22_N20
\Div2|auto_generated|divider|divider|StageOut[36]~279\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[36]~279_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (\Add1~56_combout\ $ (\Add1~44_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[23]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~44_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[23]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[36]~279_combout\);

-- Location: LCCOMB_X30_Y22_N14
\Div2|auto_generated|divider|divider|StageOut[36]~278\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[36]~278_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (\Add1~56_combout\ $ (\Add1~44_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[23]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~44_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[23]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[36]~278_combout\);

-- Location: LCCOMB_X29_Y22_N16
\Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[36]~279_combout\) # (\Div2|auto_generated|divider|divider|StageOut[36]~278_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[36]~279_combout\) # (\Div2|auto_generated|divider|divider|StageOut[36]~278_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[36]~279_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[36]~278_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X29_Y22_N18
\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[37]~276_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[37]~277_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[37]~276_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[37]~277_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[37]~276_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[37]~277_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[37]~276_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[37]~277_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X29_Y22_N20
\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[38]~445_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[38]~275_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[38]~445_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[38]~275_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[38]~445_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[38]~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[38]~445_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[38]~275_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X29_Y22_N22
\Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[39]~274_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[39]~444_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[39]~274_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[39]~444_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[39]~274_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[39]~444_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[39]~274_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[39]~444_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X29_Y22_N24
\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[40]~443_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[40]~273_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[40]~443_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[40]~273_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X29_Y22_N26
\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\);

-- Location: LCCOMB_X29_Y22_N10
\Div2|auto_generated|divider|divider|StageOut[46]~446\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[46]~446_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[39]~444_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[39]~444_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[46]~446_combout\);

-- Location: LCCOMB_X30_Y22_N22
\Div2|auto_generated|divider|divider|StageOut[46]~280\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[46]~280_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[46]~280_combout\);

-- Location: LCCOMB_X29_Y22_N12
\Div2|auto_generated|divider|divider|StageOut[45]~447\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[45]~447_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[38]~445_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[38]~445_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[45]~447_combout\);

-- Location: LCCOMB_X31_Y22_N28
\Div2|auto_generated|divider|divider|StageOut[45]~281\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[45]~281_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[45]~281_combout\);

-- Location: LCCOMB_X29_Y22_N14
\Div2|auto_generated|divider|divider|StageOut[44]~508\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[44]~508_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & 
-- ((\Div2|auto_generated|divider|my_abs_num|cs2a[25]~17_combout\))) # (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[25]~17_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[44]~508_combout\);

-- Location: LCCOMB_X31_Y22_N2
\Div2|auto_generated|divider|divider|StageOut[44]~282\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[44]~282_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[44]~282_combout\);

-- Location: LCCOMB_X31_Y22_N24
\Div2|auto_generated|divider|divider|StageOut[43]~284\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[43]~284_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[43]~284_combout\);

-- Location: LCCOMB_X30_Y22_N24
\Div2|auto_generated|divider|divider|StageOut[43]~283\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[43]~283_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\Add1~56_combout\ $ (\Add1~44_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[23]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~44_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[23]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[43]~283_combout\);

-- Location: LCCOMB_X30_Y22_N18
\Div2|auto_generated|divider|my_abs_num|cs2a[23]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[23]~18_combout\ = \Add1~42_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs2a[21]~9_combout\ & (\Add1~40_combout\)) # (!\Div2|auto_generated|divider|my_abs_num|cs2a[21]~9_combout\ & 
-- ((\Add1~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~42_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[21]~9_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[23]~18_combout\);

-- Location: LCCOMB_X31_Y22_N30
\Div2|auto_generated|divider|divider|StageOut[42]~285\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[42]~285_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[23]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[23]~18_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[42]~285_combout\);

-- Location: LCCOMB_X31_Y22_N20
\Div2|auto_generated|divider|divider|StageOut[42]~286\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[42]~286_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[23]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[23]~18_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[42]~286_combout\);

-- Location: LCCOMB_X31_Y22_N6
\Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[42]~285_combout\) # (\Div2|auto_generated|divider|divider|StageOut[42]~286_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[42]~285_combout\) # (\Div2|auto_generated|divider|divider|StageOut[42]~286_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[42]~285_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[42]~286_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X31_Y22_N8
\Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[43]~284_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[43]~283_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[43]~284_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[43]~283_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[43]~284_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[43]~283_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[43]~284_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[43]~283_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X31_Y22_N10
\Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[44]~508_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[44]~282_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[44]~508_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[44]~282_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[44]~508_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[44]~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[44]~508_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[44]~282_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X31_Y22_N12
\Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[45]~447_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[45]~281_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[45]~447_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[45]~281_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[45]~447_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[45]~281_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[45]~447_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[45]~281_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X31_Y22_N14
\Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[46]~446_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[46]~280_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[46]~446_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[46]~280_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\);

-- Location: LCCOMB_X31_Y22_N16
\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\);

-- Location: LCCOMB_X32_Y22_N26
\Div2|auto_generated|divider|divider|StageOut[50]~289\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[50]~289_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[50]~289_combout\);

-- Location: LCCOMB_X31_Y22_N4
\Div2|auto_generated|divider|divider|StageOut[50]~450\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[50]~450_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[43]~283_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[43]~283_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[50]~450_combout\);

-- Location: LCCOMB_X32_Y22_N30
\Div2|auto_generated|divider|divider|StageOut[49]~291\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[49]~291_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[49]~291_combout\);

-- Location: LCCOMB_X32_Y22_N20
\Div2|auto_generated|divider|divider|StageOut[49]~290\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[49]~290_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[23]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[23]~18_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[49]~290_combout\);

-- Location: LCCOMB_X30_Y22_N26
\Div2|auto_generated|divider|divider|StageOut[48]~293\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[48]~293_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & (\Add1~40_combout\ $ (\Add1~56_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[21]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datac => \Add1~56_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[21]~9_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[48]~293_combout\);

-- Location: LCCOMB_X30_Y22_N0
\Div2|auto_generated|divider|divider|StageOut[48]~292\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[48]~292_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & (\Add1~40_combout\ $ (\Add1~56_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[21]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datac => \Add1~56_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[21]~9_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[48]~292_combout\);

-- Location: LCCOMB_X32_Y22_N4
\Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[48]~293_combout\) # (\Div2|auto_generated|divider|divider|StageOut[48]~292_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[48]~293_combout\) # (\Div2|auto_generated|divider|divider|StageOut[48]~292_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[48]~293_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[48]~292_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X32_Y22_N6
\Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[49]~291_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[49]~290_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[49]~291_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[49]~290_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[49]~291_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[49]~290_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[49]~291_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[49]~290_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X32_Y22_N8
\Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[50]~289_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[50]~450_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[50]~289_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[50]~450_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[50]~289_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[50]~450_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[50]~289_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[50]~450_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X31_Y22_N0
\Div2|auto_generated|divider|divider|StageOut[52]~448\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[52]~448_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[45]~447_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[45]~447_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[52]~448_combout\);

-- Location: LCCOMB_X31_Y22_N18
\Div2|auto_generated|divider|divider|StageOut[52]~287\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[52]~287_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[52]~287_combout\);

-- Location: LCCOMB_X32_Y22_N28
\Div2|auto_generated|divider|divider|StageOut[51]~288\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[51]~288_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[51]~288_combout\);

-- Location: LCCOMB_X31_Y22_N22
\Div2|auto_generated|divider|divider|StageOut[51]~449\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[51]~449_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[44]~508_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[44]~508_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[51]~449_combout\);

-- Location: LCCOMB_X32_Y22_N10
\Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[51]~288_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[51]~449_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[51]~288_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[51]~449_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[51]~288_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[51]~449_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[51]~288_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[51]~449_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7\);

-- Location: LCCOMB_X32_Y22_N12
\Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[52]~448_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[52]~287_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[52]~448_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[52]~287_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\);

-- Location: LCCOMB_X32_Y22_N14
\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\);

-- Location: LCCOMB_X32_Y22_N24
\Div2|auto_generated|divider|divider|StageOut[57]~452\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[57]~452_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[50]~450_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[50]~450_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[57]~452_combout\);

-- Location: LCCOMB_X32_Y22_N0
\Div2|auto_generated|divider|divider|StageOut[58]~294\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[58]~294_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[58]~294_combout\);

-- Location: LCCOMB_X32_Y22_N22
\Div2|auto_generated|divider|divider|StageOut[58]~451\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[58]~451_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[51]~449_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[51]~449_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[58]~451_combout\);

-- Location: LCCOMB_X33_Y23_N24
\Div2|auto_generated|divider|divider|StageOut[57]~295\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[57]~295_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[57]~295_combout\);

-- Location: LCCOMB_X33_Y23_N26
\Div2|auto_generated|divider|divider|StageOut[56]~296\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[56]~296_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[56]~296_combout\);

-- Location: LCCOMB_X32_Y22_N18
\Div2|auto_generated|divider|divider|StageOut[56]~509\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[56]~509_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & 
-- ((\Div2|auto_generated|divider|my_abs_num|cs2a[23]~18_combout\))) # (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[23]~18_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[56]~509_combout\);

-- Location: LCCOMB_X33_Y23_N0
\Div2|auto_generated|divider|divider|StageOut[55]~298\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[55]~298_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[55]~298_combout\);

-- Location: LCCOMB_X30_Y22_N16
\Div2|auto_generated|divider|divider|StageOut[55]~297\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[55]~297_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (\Add1~40_combout\ $ (\Add1~56_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[21]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datac => \Add1~56_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[21]~9_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[55]~297_combout\);

-- Location: LCCOMB_X32_Y23_N18
\Div2|auto_generated|divider|my_abs_num|cs2a[21]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[21]~19_combout\ = \Add1~38_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs2a[19]~8_combout\ & ((\Add1~36_combout\))) # (!\Div2|auto_generated|divider|my_abs_num|cs2a[19]~8_combout\ & 
-- (\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Add1~36_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[19]~8_combout\,
	datad => \Add1~38_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[21]~19_combout\);

-- Location: LCCOMB_X33_Y23_N22
\Div2|auto_generated|divider|divider|StageOut[54]~299\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[54]~299_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[21]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[21]~19_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[54]~299_combout\);

-- Location: LCCOMB_X33_Y23_N16
\Div2|auto_generated|divider|divider|StageOut[54]~300\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[54]~300_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[21]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[21]~19_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[54]~300_combout\);

-- Location: LCCOMB_X33_Y23_N2
\Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[54]~299_combout\) # (\Div2|auto_generated|divider|divider|StageOut[54]~300_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[54]~299_combout\) # (\Div2|auto_generated|divider|divider|StageOut[54]~300_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[54]~299_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[54]~300_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X33_Y23_N4
\Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[55]~298_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[55]~297_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[55]~298_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[55]~297_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[55]~298_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[55]~297_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[55]~298_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[55]~297_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X33_Y23_N6
\Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[56]~296_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[56]~509_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[56]~296_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[56]~509_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[56]~296_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[56]~509_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[56]~296_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[56]~509_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X33_Y23_N8
\Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[57]~452_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[57]~295_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[57]~452_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[57]~295_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[57]~452_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[57]~295_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[57]~452_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[57]~295_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~7\);

-- Location: LCCOMB_X33_Y23_N10
\Div2|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[58]~294_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[58]~451_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[58]~294_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[58]~451_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\);

-- Location: LCCOMB_X33_Y23_N12
\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\);

-- Location: LCCOMB_X33_Y23_N30
\Div2|auto_generated|divider|divider|StageOut[64]~453\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[64]~453_combout\ = (\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[57]~452_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[57]~452_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[64]~453_combout\);

-- Location: LCCOMB_X33_Y23_N14
\Div2|auto_generated|divider|divider|StageOut[64]~301\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[64]~301_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[64]~301_combout\);

-- Location: LCCOMB_X32_Y23_N12
\Div2|auto_generated|divider|divider|StageOut[63]~302\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[63]~302_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[63]~302_combout\);

-- Location: LCCOMB_X33_Y23_N28
\Div2|auto_generated|divider|divider|StageOut[63]~454\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[63]~454_combout\ = (\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[56]~509_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[56]~509_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[63]~454_combout\);

-- Location: LCCOMB_X33_Y23_N20
\Div2|auto_generated|divider|divider|StageOut[62]~303\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[62]~303_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[62]~303_combout\);

-- Location: LCCOMB_X33_Y23_N18
\Div2|auto_generated|divider|divider|StageOut[62]~455\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[62]~455_combout\ = (\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[55]~297_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[55]~297_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[62]~455_combout\);

-- Location: LCCOMB_X32_Y23_N10
\Div2|auto_generated|divider|divider|StageOut[61]~304\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[61]~304_combout\ = (\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[21]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[21]~19_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[61]~304_combout\);

-- Location: LCCOMB_X31_Y23_N4
\Div2|auto_generated|divider|divider|StageOut[61]~305\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[61]~305_combout\ = (\Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[61]~305_combout\);

-- Location: LCCOMB_X32_Y23_N6
\Div2|auto_generated|divider|divider|StageOut[60]~307\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[60]~307_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[19]~8_combout\ $ (\Add1~36_combout\ $ (\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[19]~8_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \Add1~36_combout\,
	datad => \Add1~56_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[60]~307_combout\);

-- Location: LCCOMB_X32_Y23_N8
\Div2|auto_generated|divider|divider|StageOut[60]~306\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[60]~306_combout\ = (\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[19]~8_combout\ $ (\Add1~36_combout\ $ (\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[19]~8_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \Add1~36_combout\,
	datad => \Add1~56_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[60]~306_combout\);

-- Location: LCCOMB_X32_Y23_N20
\Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[60]~307_combout\) # (\Div2|auto_generated|divider|divider|StageOut[60]~306_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[60]~307_combout\) # (\Div2|auto_generated|divider|divider|StageOut[60]~306_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[60]~307_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[60]~306_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X32_Y23_N22
\Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[61]~304_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[61]~305_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[61]~304_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[61]~305_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[61]~304_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[61]~305_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[61]~304_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[61]~305_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X32_Y23_N24
\Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[62]~303_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[62]~455_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[62]~303_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[62]~455_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[62]~303_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[62]~455_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[62]~303_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[62]~455_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X32_Y23_N26
\Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[63]~302_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[63]~454_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[63]~302_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[63]~454_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[63]~302_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[63]~454_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[63]~302_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[63]~454_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~7\);

-- Location: LCCOMB_X32_Y23_N28
\Div2|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[64]~453_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[64]~301_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[64]~453_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[64]~301_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\);

-- Location: LCCOMB_X32_Y23_N30
\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\);

-- Location: LCCOMB_X32_Y23_N2
\Div2|auto_generated|divider|divider|StageOut[69]~457\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[69]~457_combout\ = (\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[62]~455_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[62]~455_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[69]~457_combout\);

-- Location: LCCOMB_X32_Y23_N4
\Div2|auto_generated|divider|divider|StageOut[70]~456\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[70]~456_combout\ = (\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[63]~454_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[63]~454_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[70]~456_combout\);

-- Location: LCCOMB_X32_Y23_N16
\Div2|auto_generated|divider|divider|StageOut[70]~308\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[70]~308_combout\ = (\Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[70]~308_combout\);

-- Location: LCCOMB_X31_Y23_N18
\Div2|auto_generated|divider|divider|StageOut[69]~309\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[69]~309_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[69]~309_combout\);

-- Location: LCCOMB_X31_Y23_N30
\Div2|auto_generated|divider|divider|StageOut[68]~510\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[68]~510_combout\ = (\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & 
-- ((\Div2|auto_generated|divider|my_abs_num|cs2a[21]~19_combout\))) # (!\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[21]~19_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[68]~510_combout\);

-- Location: LCCOMB_X31_Y23_N0
\Div2|auto_generated|divider|divider|StageOut[68]~310\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[68]~310_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[68]~310_combout\);

-- Location: LCCOMB_X31_Y23_N26
\Div2|auto_generated|divider|divider|StageOut[67]~312\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[67]~312_combout\ = (\Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[67]~312_combout\);

-- Location: LCCOMB_X32_Y23_N14
\Div2|auto_generated|divider|divider|StageOut[67]~311\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[67]~311_combout\ = (\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[19]~8_combout\ $ (\Add1~36_combout\ $ (\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[19]~8_combout\,
	datab => \Add1~36_combout\,
	datac => \Add1~56_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[67]~311_combout\);

-- Location: LCCOMB_X31_Y24_N2
\Div2|auto_generated|divider|my_abs_num|cs2a[19]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[19]~20_combout\ = \Div2|auto_generated|divider|my_abs_num|_~5_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs2a[16]~7_combout\ & (\Div2|auto_generated|divider|my_abs_num|_~4_combout\ & 
-- \Div2|auto_generated|divider|my_abs_num|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[16]~7_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|_~4_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|_~5_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|_~3_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[19]~20_combout\);

-- Location: LCCOMB_X30_Y25_N28
\Div2|auto_generated|divider|divider|StageOut[66]~314\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[66]~314_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[19]~20_combout\ & !\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[19]~20_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[66]~314_combout\);

-- Location: LCCOMB_X31_Y23_N28
\Div2|auto_generated|divider|divider|StageOut[66]~313\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[66]~313_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[19]~20_combout\ & \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[19]~20_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[66]~313_combout\);

-- Location: LCCOMB_X31_Y23_N6
\Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[66]~314_combout\) # (\Div2|auto_generated|divider|divider|StageOut[66]~313_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[66]~314_combout\) # (\Div2|auto_generated|divider|divider|StageOut[66]~313_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[66]~314_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[66]~313_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~1\);

-- Location: LCCOMB_X31_Y23_N8
\Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[67]~312_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[67]~311_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[67]~312_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[67]~311_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[67]~312_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[67]~311_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[67]~312_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[67]~311_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~3\);

-- Location: LCCOMB_X31_Y23_N10
\Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[68]~510_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[68]~310_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[68]~510_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[68]~310_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[68]~510_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[68]~310_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[68]~510_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[68]~310_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~5\);

-- Location: LCCOMB_X31_Y23_N12
\Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[69]~457_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[69]~309_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[69]~457_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[69]~309_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[69]~457_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[69]~309_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[69]~457_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[69]~309_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~7\);

-- Location: LCCOMB_X31_Y23_N14
\Div2|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[70]~456_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[70]~308_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[70]~456_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[70]~308_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\);

-- Location: LCCOMB_X31_Y23_N16
\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\);

-- Location: LCCOMB_X31_Y23_N24
\Div2|auto_generated|divider|divider|StageOut[76]~458\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[76]~458_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[69]~457_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[69]~457_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[76]~458_combout\);

-- Location: LCCOMB_X31_Y23_N22
\Div2|auto_generated|divider|divider|StageOut[76]~315\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[76]~315_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[76]~315_combout\);

-- Location: LCCOMB_X31_Y25_N12
\Div2|auto_generated|divider|divider|StageOut[75]~316\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[75]~316_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[75]~316_combout\);

-- Location: LCCOMB_X31_Y23_N2
\Div2|auto_generated|divider|divider|StageOut[75]~459\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[75]~459_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[68]~510_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[68]~510_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[75]~459_combout\);

-- Location: LCCOMB_X31_Y23_N20
\Div2|auto_generated|divider|divider|StageOut[74]~460\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[74]~460_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[67]~311_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[67]~311_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[74]~460_combout\);

-- Location: LCCOMB_X31_Y25_N18
\Div2|auto_generated|divider|divider|StageOut[74]~317\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[74]~317_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[74]~317_combout\);

-- Location: LCCOMB_X31_Y25_N30
\Div2|auto_generated|divider|divider|StageOut[73]~319\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[73]~319_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[73]~319_combout\);

-- Location: LCCOMB_X31_Y25_N20
\Div2|auto_generated|divider|divider|StageOut[73]~318\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[73]~318_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[19]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[19]~20_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[73]~318_combout\);

-- Location: LCCOMB_X31_Y24_N24
\Div2|auto_generated|divider|my_abs_num|cs2a[15]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[15]~21_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[13]~5_combout\ & ((\Add1~56_combout\ & (!\Add1~26_combout\ & !\Add1~24_combout\)) # (!\Add1~56_combout\ & (\Add1~26_combout\ & 
-- \Add1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[13]~5_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~26_combout\,
	datad => \Add1~24_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[15]~21_combout\);

-- Location: LCCOMB_X32_Y24_N6
\Div2|auto_generated|divider|my_abs_num|cs2a[17]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[17]~22_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[15]~21_combout\ & ((\Add1~28_combout\ & (\Add1~30_combout\ & !\Add1~56_combout\)) # (!\Add1~28_combout\ & (!\Add1~30_combout\ & 
-- \Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => \Add1~30_combout\,
	datac => \Add1~56_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[15]~21_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[17]~22_combout\);

-- Location: LCCOMB_X31_Y24_N10
\Div2|auto_generated|divider|divider|StageOut[72]~320\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[72]~320_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[17]~22_combout\ $ (\Add1~56_combout\ $ (\Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[17]~22_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datac => \Add1~56_combout\,
	datad => \Add1~32_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[72]~320_combout\);

-- Location: LCCOMB_X31_Y24_N0
\Div2|auto_generated|divider|divider|StageOut[72]~321\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[72]~321_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[17]~22_combout\ $ (\Add1~56_combout\ $ (\Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[17]~22_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datac => \Add1~56_combout\,
	datad => \Add1~32_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[72]~321_combout\);

-- Location: LCCOMB_X31_Y25_N0
\Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[72]~320_combout\) # (\Div2|auto_generated|divider|divider|StageOut[72]~321_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[72]~320_combout\) # (\Div2|auto_generated|divider|divider|StageOut[72]~321_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[72]~320_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[72]~321_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1\);

-- Location: LCCOMB_X31_Y25_N2
\Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[73]~319_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[73]~318_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[73]~319_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[73]~318_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[73]~319_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[73]~318_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[73]~319_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[73]~318_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3\);

-- Location: LCCOMB_X31_Y25_N4
\Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[74]~460_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[74]~317_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[74]~460_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[74]~317_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[74]~460_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[74]~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[74]~460_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[74]~317_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5\);

-- Location: LCCOMB_X31_Y25_N6
\Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[75]~316_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[75]~459_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[75]~316_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[75]~459_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[75]~316_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[75]~459_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[75]~316_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[75]~459_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~7\);

-- Location: LCCOMB_X31_Y25_N8
\Div2|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[76]~458_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[76]~315_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[76]~458_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[76]~315_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\);

-- Location: LCCOMB_X31_Y25_N10
\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\);

-- Location: LCCOMB_X32_Y24_N4
\Div2|auto_generated|divider|my_abs_num|cs2a[17]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[17]~23_combout\ = \Add1~30_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs2a[15]~21_combout\ & (\Add1~28_combout\)) # (!\Div2|auto_generated|divider|my_abs_num|cs2a[15]~21_combout\ & 
-- ((\Add1~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => \Add1~30_combout\,
	datac => \Add1~56_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[15]~21_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[17]~23_combout\);

-- Location: LCCOMB_X32_Y25_N30
\Div2|auto_generated|divider|divider|StageOut[78]~328\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[78]~328_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[17]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[17]~23_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[78]~328_combout\);

-- Location: LCCOMB_X32_Y25_N24
\Div2|auto_generated|divider|divider|StageOut[78]~327\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[78]~327_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[17]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[17]~23_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[78]~327_combout\);

-- Location: LCCOMB_X32_Y25_N0
\Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[78]~328_combout\) # (\Div2|auto_generated|divider|divider|StageOut[78]~327_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[78]~328_combout\) # (\Div2|auto_generated|divider|divider|StageOut[78]~327_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[78]~328_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[78]~327_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~1\);

-- Location: LCCOMB_X31_Y25_N16
\Div2|auto_generated|divider|divider|StageOut[82]~322\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[82]~322_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[82]~322_combout\);

-- Location: LCCOMB_X31_Y25_N24
\Div2|auto_generated|divider|divider|StageOut[82]~461\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[82]~461_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[75]~459_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[75]~459_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[82]~461_combout\);

-- Location: LCCOMB_X31_Y25_N26
\Div2|auto_generated|divider|divider|StageOut[81]~462\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[81]~462_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[74]~460_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[74]~460_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[81]~462_combout\);

-- Location: LCCOMB_X32_Y25_N20
\Div2|auto_generated|divider|divider|StageOut[81]~323\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[81]~323_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[81]~323_combout\);

-- Location: LCCOMB_X31_Y25_N14
\Div2|auto_generated|divider|divider|StageOut[80]~511\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[80]~511_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & 
-- (\Div2|auto_generated|divider|my_abs_num|cs2a[19]~20_combout\)) # (!\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[19]~20_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[80]~511_combout\);

-- Location: LCCOMB_X31_Y25_N22
\Div2|auto_generated|divider|divider|StageOut[80]~324\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[80]~324_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[80]~324_combout\);

-- Location: LCCOMB_X31_Y24_N14
\Div2|auto_generated|divider|divider|StageOut[79]~325\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[79]~325_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[17]~22_combout\ $ (\Add1~56_combout\ $ (\Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[17]~22_combout\,
	datab => \Add1~56_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \Add1~32_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[79]~325_combout\);

-- Location: LCCOMB_X32_Y25_N14
\Div2|auto_generated|divider|divider|StageOut[79]~326\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[79]~326_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[79]~326_combout\);

-- Location: LCCOMB_X32_Y25_N2
\Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[79]~325_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[79]~326_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[79]~325_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[79]~326_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[79]~325_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[79]~326_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[79]~325_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[79]~326_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~3\);

-- Location: LCCOMB_X32_Y25_N4
\Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[80]~511_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[80]~324_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[80]~511_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[80]~324_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[80]~511_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[80]~324_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[80]~511_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[80]~324_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~5\);

-- Location: LCCOMB_X32_Y25_N6
\Div2|auto_generated|divider|divider|add_sub_14_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[81]~462_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[81]~323_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[81]~462_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[81]~323_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[81]~462_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[81]~323_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[81]~462_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[81]~323_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_14_result_int[4]~7\);

-- Location: LCCOMB_X32_Y25_N8
\Div2|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[82]~322_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[82]~461_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_14_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[82]~322_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[82]~461_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_14_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\);

-- Location: LCCOMB_X32_Y25_N10
\Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\);

-- Location: LCCOMB_X32_Y25_N16
\Div2|auto_generated|divider|divider|StageOut[85]~333\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[85]~333_combout\ = (\Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[85]~333_combout\);

-- Location: LCCOMB_X32_Y24_N8
\Div2|auto_generated|divider|divider|StageOut[85]~332\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[85]~332_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[17]~23_combout\ & \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[17]~23_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[85]~332_combout\);

-- Location: LCCOMB_X32_Y24_N30
\Div2|auto_generated|divider|divider|StageOut[84]~334\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[84]~334_combout\ = (\Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & (\Add1~28_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[15]~21_combout\ $ (\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[15]~21_combout\,
	datac => \Add1~56_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[84]~334_combout\);

-- Location: LCCOMB_X32_Y24_N28
\Div2|auto_generated|divider|divider|StageOut[84]~335\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[84]~335_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & (\Add1~28_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[15]~21_combout\ $ (\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[15]~21_combout\,
	datac => \Add1~56_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[84]~335_combout\);

-- Location: LCCOMB_X32_Y24_N10
\Div2|auto_generated|divider|divider|add_sub_15_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[84]~334_combout\) # (\Div2|auto_generated|divider|divider|StageOut[84]~335_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[84]~334_combout\) # (\Div2|auto_generated|divider|divider|StageOut[84]~335_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[84]~334_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[84]~335_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_15_result_int[1]~1\);

-- Location: LCCOMB_X32_Y24_N12
\Div2|auto_generated|divider|divider|add_sub_15_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[85]~333_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[85]~332_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[85]~333_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[85]~332_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[85]~333_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[85]~332_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_15_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[85]~333_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[85]~332_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_15_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_15_result_int[2]~3\);

-- Location: LCCOMB_X31_Y25_N28
\Div2|auto_generated|divider|divider|StageOut[88]~463\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[88]~463_combout\ = (\Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[81]~462_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[81]~462_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[88]~463_combout\);

-- Location: LCCOMB_X32_Y25_N28
\Div2|auto_generated|divider|divider|StageOut[88]~329\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[88]~329_combout\ = (\Div2|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[88]~329_combout\);

-- Location: LCCOMB_X32_Y25_N22
\Div2|auto_generated|divider|divider|StageOut[87]~464\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[87]~464_combout\ = (\Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[80]~511_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[80]~511_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[87]~464_combout\);

-- Location: LCCOMB_X32_Y24_N22
\Div2|auto_generated|divider|divider|StageOut[87]~330\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[87]~330_combout\ = (\Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[87]~330_combout\);

-- Location: LCCOMB_X32_Y25_N12
\Div2|auto_generated|divider|divider|StageOut[86]~465\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[86]~465_combout\ = (\Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[79]~325_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[79]~325_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[86]~465_combout\);

-- Location: LCCOMB_X32_Y25_N18
\Div2|auto_generated|divider|divider|StageOut[86]~331\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[86]~331_combout\ = (\Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[86]~331_combout\);

-- Location: LCCOMB_X32_Y24_N14
\Div2|auto_generated|divider|divider|add_sub_15_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[86]~465_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[86]~331_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[86]~465_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[86]~331_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[86]~465_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[86]~331_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[86]~465_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[86]~331_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_15_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_15_result_int[3]~5\);

-- Location: LCCOMB_X32_Y24_N16
\Div2|auto_generated|divider|divider|add_sub_15_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[87]~464_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[87]~330_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[87]~464_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[87]~330_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[87]~464_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[87]~330_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_15_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[87]~464_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[87]~330_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_15_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_15_result_int[4]~7\);

-- Location: LCCOMB_X32_Y24_N18
\Div2|auto_generated|divider|divider|add_sub_15_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[88]~463_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[88]~329_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_15_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[88]~463_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[88]~329_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_15_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\);

-- Location: LCCOMB_X32_Y24_N20
\Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\);

-- Location: LCCOMB_X33_Y24_N12
\Div2|auto_generated|divider|divider|StageOut[92]~338\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[92]~338_combout\ = (\Div2|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[92]~338_combout\);

-- Location: LCCOMB_X33_Y25_N8
\Div2|auto_generated|divider|divider|StageOut[92]~512\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[92]~512_combout\ = (\Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & 
-- (\Div2|auto_generated|divider|my_abs_num|cs2a[17]~23_combout\)) # (!\Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[17]~23_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[92]~512_combout\);

-- Location: LCCOMB_X32_Y24_N26
\Div2|auto_generated|divider|divider|StageOut[91]~339\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[91]~339_combout\ = (\Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & (\Add1~28_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[15]~21_combout\ $ (\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[15]~21_combout\,
	datac => \Add1~56_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[91]~339_combout\);

-- Location: LCCOMB_X33_Y24_N18
\Div2|auto_generated|divider|divider|StageOut[91]~340\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[91]~340_combout\ = (\Div2|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[91]~340_combout\);

-- Location: LCCOMB_X31_Y24_N4
\Div2|auto_generated|divider|my_abs_num|cs2a[15]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[15]~24_combout\ = \Add1~26_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs2a[13]~5_combout\ & ((\Add1~24_combout\))) # (!\Div2|auto_generated|divider|my_abs_num|cs2a[13]~5_combout\ & 
-- (\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[13]~5_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~26_combout\,
	datad => \Add1~24_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[15]~24_combout\);

-- Location: LCCOMB_X31_Y24_N6
\Div2|auto_generated|divider|divider|StageOut[90]~342\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[90]~342_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[15]~24_combout\ & !\Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[15]~24_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[90]~342_combout\);

-- Location: LCCOMB_X33_Y24_N20
\Div2|auto_generated|divider|divider|StageOut[90]~341\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[90]~341_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[15]~24_combout\ & \Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[15]~24_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[90]~341_combout\);

-- Location: LCCOMB_X33_Y24_N0
\Div2|auto_generated|divider|divider|add_sub_16_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[90]~342_combout\) # (\Div2|auto_generated|divider|divider|StageOut[90]~341_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[90]~342_combout\) # (\Div2|auto_generated|divider|divider|StageOut[90]~341_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[90]~342_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[90]~341_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_16_result_int[1]~1\);

-- Location: LCCOMB_X33_Y24_N2
\Div2|auto_generated|divider|divider|add_sub_16_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[91]~339_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[91]~340_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[91]~339_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[91]~340_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[91]~339_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[91]~340_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_16_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[91]~339_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[91]~340_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_16_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_16_result_int[2]~3\);

-- Location: LCCOMB_X33_Y24_N4
\Div2|auto_generated|divider|divider|add_sub_16_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[92]~338_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[92]~512_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[92]~338_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[92]~512_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_16_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[92]~338_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[92]~512_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[92]~338_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[92]~512_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_16_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_16_result_int[3]~5\);

-- Location: LCCOMB_X32_Y24_N2
\Div2|auto_generated|divider|divider|StageOut[94]~466\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[94]~466_combout\ = (\Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[87]~464_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[87]~464_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[94]~466_combout\);

-- Location: LCCOMB_X33_Y24_N24
\Div2|auto_generated|divider|divider|StageOut[94]~336\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[94]~336_combout\ = (\Div2|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[94]~336_combout\);

-- Location: LCCOMB_X33_Y24_N26
\Div2|auto_generated|divider|divider|StageOut[93]~337\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[93]~337_combout\ = (\Div2|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[93]~337_combout\);

-- Location: LCCOMB_X32_Y25_N26
\Div2|auto_generated|divider|divider|StageOut[93]~467\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[93]~467_combout\ = (\Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[86]~465_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[86]~465_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[93]~467_combout\);

-- Location: LCCOMB_X33_Y24_N6
\Div2|auto_generated|divider|divider|add_sub_16_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_16_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[93]~337_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[93]~467_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_16_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[93]~337_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[93]~467_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[93]~337_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[93]~467_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_16_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[93]~337_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[93]~467_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_16_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_16_result_int[4]~7\);

-- Location: LCCOMB_X33_Y24_N8
\Div2|auto_generated|divider|divider|add_sub_16_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[94]~466_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[94]~336_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_16_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[94]~466_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[94]~336_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_16_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\);

-- Location: LCCOMB_X33_Y24_N10
\Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\);

-- Location: LCCOMB_X32_Y24_N0
\Div2|auto_generated|divider|divider|StageOut[100]~343\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[100]~343_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_16_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[100]~343_combout\);

-- Location: LCCOMB_X33_Y24_N16
\Div2|auto_generated|divider|divider|StageOut[100]~468\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[100]~468_combout\ = (\Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[93]~467_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[93]~467_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[100]~468_combout\);

-- Location: LCCOMB_X33_Y24_N30
\Div2|auto_generated|divider|divider|StageOut[99]~469\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[99]~469_combout\ = (\Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[92]~512_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[92]~512_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[99]~469_combout\);

-- Location: LCCOMB_X33_Y24_N14
\Div2|auto_generated|divider|divider|StageOut[99]~344\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[99]~344_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[99]~344_combout\);

-- Location: LCCOMB_X33_Y24_N28
\Div2|auto_generated|divider|divider|StageOut[98]~470\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[98]~470_combout\ = (\Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[91]~339_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[91]~339_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[98]~470_combout\);

-- Location: LCCOMB_X29_Y24_N24
\Div2|auto_generated|divider|divider|StageOut[98]~345\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[98]~345_combout\ = (\Div2|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[98]~345_combout\);

-- Location: LCCOMB_X29_Y24_N26
\Div2|auto_generated|divider|divider|StageOut[97]~346\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[97]~346_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[15]~24_combout\ & \Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[15]~24_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[97]~346_combout\);

-- Location: LCCOMB_X29_Y24_N20
\Div2|auto_generated|divider|divider|StageOut[97]~347\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[97]~347_combout\ = (\Div2|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[97]~347_combout\);

-- Location: LCCOMB_X31_Y24_N18
\Div2|auto_generated|divider|divider|StageOut[96]~349\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[96]~349_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[13]~5_combout\ $ (\Add1~24_combout\ $ (\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[13]~5_combout\,
	datab => \Add1~24_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datad => \Add1~56_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[96]~349_combout\);

-- Location: LCCOMB_X31_Y24_N12
\Div2|auto_generated|divider|divider|StageOut[96]~348\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[96]~348_combout\ = (\Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[13]~5_combout\ $ (\Add1~24_combout\ $ (\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[13]~5_combout\,
	datab => \Add1~24_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datad => \Add1~56_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[96]~348_combout\);

-- Location: LCCOMB_X29_Y24_N2
\Div2|auto_generated|divider|divider|add_sub_17_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[96]~349_combout\) # (\Div2|auto_generated|divider|divider|StageOut[96]~348_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_17_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[96]~349_combout\) # (\Div2|auto_generated|divider|divider|StageOut[96]~348_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[96]~349_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[96]~348_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_17_result_int[1]~1\);

-- Location: LCCOMB_X29_Y24_N4
\Div2|auto_generated|divider|divider|add_sub_17_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_17_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[97]~346_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[97]~347_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_17_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[97]~346_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[97]~347_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[97]~346_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[97]~347_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_17_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[97]~346_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[97]~347_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_17_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_17_result_int[2]~3\);

-- Location: LCCOMB_X29_Y24_N6
\Div2|auto_generated|divider|divider|add_sub_17_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[98]~470_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[98]~345_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[98]~470_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[98]~345_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_17_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[98]~470_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[98]~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[98]~470_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[98]~345_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_17_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_17_result_int[3]~5\);

-- Location: LCCOMB_X29_Y24_N8
\Div2|auto_generated|divider|divider|add_sub_17_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_17_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[99]~469_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[99]~344_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_17_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[99]~469_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[99]~344_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_17_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[99]~469_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[99]~344_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_17_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[99]~469_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[99]~344_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_17_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_17_result_int[4]~7\);

-- Location: LCCOMB_X29_Y24_N10
\Div2|auto_generated|divider|divider|add_sub_17_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_17_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[100]~343_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[100]~468_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_17_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[100]~343_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[100]~468_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_17_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_17_result_int[5]~9_cout\);

-- Location: LCCOMB_X29_Y24_N12
\Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_17_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_17_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\);

-- Location: LCCOMB_X31_Y24_N30
\Div2|auto_generated|divider|divider|StageOut[106]~471\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[106]~471_combout\ = (\Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[99]~469_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_16_result_int[3]~4_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[99]~469_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[106]~471_combout\);

-- Location: LCCOMB_X30_Y24_N2
\Div2|auto_generated|divider|divider|StageOut[106]~350\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[106]~350_combout\ = (\Div2|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[106]~350_combout\);

-- Location: LCCOMB_X29_Y24_N14
\Div2|auto_generated|divider|divider|StageOut[105]~351\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[105]~351_combout\ = (\Div2|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[105]~351_combout\);

-- Location: LCCOMB_X29_Y24_N22
\Div2|auto_generated|divider|divider|StageOut[105]~472\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[105]~472_combout\ = (\Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[98]~470_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[98]~470_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_16_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[105]~472_combout\);

-- Location: LCCOMB_X29_Y24_N16
\Div2|auto_generated|divider|divider|StageOut[104]~513\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[104]~513_combout\ = (\Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & 
-- ((\Div2|auto_generated|divider|my_abs_num|cs2a[15]~24_combout\))) # (!\Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_16_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[15]~24_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[104]~513_combout\);

-- Location: LCCOMB_X29_Y24_N28
\Div2|auto_generated|divider|divider|StageOut[104]~352\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[104]~352_combout\ = (\Div2|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[104]~352_combout\);

-- Location: LCCOMB_X30_Y24_N12
\Div2|auto_generated|divider|divider|StageOut[103]~354\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[103]~354_combout\ = (\Div2|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[103]~354_combout\);

-- Location: LCCOMB_X31_Y24_N16
\Div2|auto_generated|divider|divider|StageOut[103]~353\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[103]~353_combout\ = (\Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[13]~5_combout\ $ (\Add1~56_combout\ $ (\Add1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[13]~5_combout\,
	datab => \Add1~56_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datad => \Add1~24_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[103]~353_combout\);

-- Location: LCCOMB_X30_Y24_N30
\Div2|auto_generated|divider|my_abs_num|cs2a[13]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[13]~25_combout\ = \Add1~22_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs2a[11]~4_combout\ & ((\Add1~20_combout\))) # (!\Div2|auto_generated|divider|my_abs_num|cs2a[11]~4_combout\ & 
-- (\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \Add1~56_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[11]~4_combout\,
	datad => \Add1~20_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[13]~25_combout\);

-- Location: LCCOMB_X30_Y24_N10
\Div2|auto_generated|divider|divider|StageOut[102]~356\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[102]~356_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[13]~25_combout\ & !\Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[13]~25_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[102]~356_combout\);

-- Location: LCCOMB_X30_Y24_N4
\Div2|auto_generated|divider|divider|StageOut[102]~355\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[102]~355_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[13]~25_combout\ & \Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[13]~25_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[102]~355_combout\);

-- Location: LCCOMB_X30_Y24_N14
\Div2|auto_generated|divider|divider|add_sub_18_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[102]~356_combout\) # (\Div2|auto_generated|divider|divider|StageOut[102]~355_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_18_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[102]~356_combout\) # (\Div2|auto_generated|divider|divider|StageOut[102]~355_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[102]~356_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[102]~355_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_18_result_int[1]~1\);

-- Location: LCCOMB_X30_Y24_N16
\Div2|auto_generated|divider|divider|add_sub_18_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_18_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[103]~354_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[103]~353_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_18_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[103]~354_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[103]~353_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[103]~354_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[103]~353_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_18_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[103]~354_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[103]~353_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_18_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_18_result_int[2]~3\);

-- Location: LCCOMB_X30_Y24_N18
\Div2|auto_generated|divider|divider|add_sub_18_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[104]~513_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[104]~352_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[104]~513_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[104]~352_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_18_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_18_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[104]~513_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[104]~352_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[104]~513_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[104]~352_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_18_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_18_result_int[3]~5\);

-- Location: LCCOMB_X30_Y24_N20
\Div2|auto_generated|divider|divider|add_sub_18_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_18_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[105]~351_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[105]~472_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_18_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[105]~351_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[105]~472_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_18_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[105]~351_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[105]~472_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_18_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[105]~351_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[105]~472_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_18_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_18_result_int[4]~7\);

-- Location: LCCOMB_X30_Y24_N22
\Div2|auto_generated|divider|divider|add_sub_18_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_18_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[106]~471_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[106]~350_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_18_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[106]~471_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[106]~350_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_18_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_18_result_int[5]~9_cout\);

-- Location: LCCOMB_X30_Y24_N24
\Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_18_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_18_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\);

-- Location: LCCOMB_X29_Y24_N0
\Div2|auto_generated|divider|divider|StageOut[112]~473\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[112]~473_combout\ = (\Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[105]~472_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[105]~472_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[112]~473_combout\);

-- Location: LCCOMB_X30_Y24_N0
\Div2|auto_generated|divider|divider|StageOut[112]~357\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[112]~357_combout\ = (\Div2|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_18_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[112]~357_combout\);

-- Location: LCCOMB_X30_Y23_N4
\Div2|auto_generated|divider|divider|StageOut[111]~358\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[111]~358_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[111]~358_combout\);

-- Location: LCCOMB_X29_Y24_N30
\Div2|auto_generated|divider|divider|StageOut[111]~474\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[111]~474_combout\ = (\Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[104]~513_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[104]~513_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[111]~474_combout\);

-- Location: LCCOMB_X30_Y24_N6
\Div2|auto_generated|divider|divider|StageOut[110]~475\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[110]~475_combout\ = (\Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[103]~353_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[103]~353_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_17_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[110]~475_combout\);

-- Location: LCCOMB_X29_Y23_N28
\Div2|auto_generated|divider|divider|StageOut[110]~359\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[110]~359_combout\ = (\Div2|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[110]~359_combout\);

-- Location: LCCOMB_X30_Y23_N26
\Div2|auto_generated|divider|divider|StageOut[109]~360\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[109]~360_combout\ = (\Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[13]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[13]~25_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[109]~360_combout\);

-- Location: LCCOMB_X30_Y23_N28
\Div2|auto_generated|divider|divider|StageOut[109]~361\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[109]~361_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[109]~361_combout\);

-- Location: LCCOMB_X30_Y24_N26
\Div2|auto_generated|divider|divider|StageOut[108]~362\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[108]~362_combout\ = (\Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[11]~4_combout\ $ (\Add1~20_combout\ $ (\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[11]~4_combout\,
	datab => \Add1~20_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	datad => \Add1~56_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[108]~362_combout\);

-- Location: LCCOMB_X30_Y24_N8
\Div2|auto_generated|divider|divider|StageOut[108]~363\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[108]~363_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[11]~4_combout\ $ (\Add1~20_combout\ $ (\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[11]~4_combout\,
	datab => \Add1~20_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	datad => \Add1~56_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[108]~363_combout\);

-- Location: LCCOMB_X30_Y23_N8
\Div2|auto_generated|divider|divider|add_sub_19_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[108]~362_combout\) # (\Div2|auto_generated|divider|divider|StageOut[108]~363_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_19_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[108]~362_combout\) # (\Div2|auto_generated|divider|divider|StageOut[108]~363_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[108]~362_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[108]~363_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_19_result_int[1]~1\);

-- Location: LCCOMB_X30_Y23_N10
\Div2|auto_generated|divider|divider|add_sub_19_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_19_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[109]~360_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[109]~361_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_19_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[109]~360_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[109]~361_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_19_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[109]~360_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[109]~361_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_19_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[109]~360_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[109]~361_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_19_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_19_result_int[2]~3\);

-- Location: LCCOMB_X30_Y23_N12
\Div2|auto_generated|divider|divider|add_sub_19_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_19_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[110]~475_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[110]~359_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_19_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[110]~475_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[110]~359_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_19_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_19_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[110]~475_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[110]~359_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[110]~475_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[110]~359_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_19_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_19_result_int[3]~5\);

-- Location: LCCOMB_X30_Y23_N14
\Div2|auto_generated|divider|divider|add_sub_19_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_19_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[111]~358_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[111]~474_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_19_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[111]~358_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[111]~474_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_19_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[111]~358_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[111]~474_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_19_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[111]~358_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[111]~474_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_19_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_19_result_int[4]~7\);

-- Location: LCCOMB_X30_Y23_N16
\Div2|auto_generated|divider|divider|add_sub_19_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_19_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[112]~473_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[112]~357_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_19_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[112]~473_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[112]~357_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_19_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_19_result_int[5]~9_cout\);

-- Location: LCCOMB_X30_Y23_N18
\Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_19_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_19_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\);

-- Location: LCCOMB_X30_Y23_N6
\Div2|auto_generated|divider|divider|StageOut[117]~477\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[117]~477_combout\ = (\Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[110]~475_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_18_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[110]~475_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[117]~477_combout\);

-- Location: LCCOMB_X30_Y23_N24
\Div2|auto_generated|divider|divider|StageOut[117]~365\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[117]~365_combout\ = (\Div2|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[117]~365_combout\);

-- Location: LCCOMB_X29_Y23_N30
\Div2|auto_generated|divider|divider|StageOut[116]~366\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[116]~366_combout\ = (\Div2|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[116]~366_combout\);

-- Location: LCCOMB_X30_Y23_N22
\Div2|auto_generated|divider|divider|StageOut[116]~514\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[116]~514_combout\ = (\Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & 
-- (\Div2|auto_generated|divider|my_abs_num|cs2a[13]~25_combout\)) # (!\Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[13]~25_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_18_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[116]~514_combout\);

-- Location: LCCOMB_X30_Y23_N2
\Div2|auto_generated|divider|divider|StageOut[115]~367\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[115]~367_combout\ = (\Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ & (\Add1~56_combout\ $ (\Add1~20_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[11]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Add1~20_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[11]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[115]~367_combout\);

-- Location: LCCOMB_X29_Y23_N8
\Div2|auto_generated|divider|divider|StageOut[115]~368\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[115]~368_combout\ = (\Div2|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[115]~368_combout\);

-- Location: LCCOMB_X28_Y23_N14
\Div2|auto_generated|divider|my_abs_num|cs2a[11]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[11]~26_combout\ = \Add1~18_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs2a[9]~3_combout\ & ((\Add1~16_combout\))) # (!\Div2|auto_generated|divider|my_abs_num|cs2a[9]~3_combout\ & 
-- (\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Add1~18_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[9]~3_combout\,
	datad => \Add1~16_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[11]~26_combout\);

-- Location: LCCOMB_X29_Y23_N10
\Div2|auto_generated|divider|divider|StageOut[114]~369\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[114]~369_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[11]~26_combout\ & \Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[11]~26_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[114]~369_combout\);

-- Location: LCCOMB_X29_Y23_N0
\Div2|auto_generated|divider|divider|StageOut[114]~370\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[114]~370_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[11]~26_combout\ & !\Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[11]~26_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[114]~370_combout\);

-- Location: LCCOMB_X29_Y23_N16
\Div2|auto_generated|divider|divider|add_sub_20_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[114]~369_combout\) # (\Div2|auto_generated|divider|divider|StageOut[114]~370_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_20_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[114]~369_combout\) # (\Div2|auto_generated|divider|divider|StageOut[114]~370_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[114]~369_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[114]~370_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_20_result_int[1]~1\);

-- Location: LCCOMB_X29_Y23_N18
\Div2|auto_generated|divider|divider|add_sub_20_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_20_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[115]~367_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[115]~368_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_20_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[115]~367_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[115]~368_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_20_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[115]~367_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[115]~368_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_20_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[115]~367_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[115]~368_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_20_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_20_result_int[2]~3\);

-- Location: LCCOMB_X29_Y23_N20
\Div2|auto_generated|divider|divider|add_sub_20_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_20_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[116]~366_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[116]~514_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_20_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[116]~366_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[116]~514_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_20_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_20_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[116]~366_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[116]~514_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[116]~366_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[116]~514_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_20_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_20_result_int[3]~5\);

-- Location: LCCOMB_X29_Y23_N22
\Div2|auto_generated|divider|divider|add_sub_20_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_20_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_20_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[117]~477_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[117]~365_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_20_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[117]~477_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[117]~365_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_20_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[117]~477_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[117]~365_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_20_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[117]~477_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[117]~365_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_20_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_20_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_20_result_int[4]~7\);

-- Location: LCCOMB_X30_Y23_N30
\Div2|auto_generated|divider|divider|StageOut[118]~364\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[118]~364_combout\ = (\Div2|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[118]~364_combout\);

-- Location: LCCOMB_X30_Y23_N0
\Div2|auto_generated|divider|divider|StageOut[118]~476\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[118]~476_combout\ = (\Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[111]~474_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_18_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[111]~474_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_18_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[118]~476_combout\);

-- Location: LCCOMB_X29_Y23_N24
\Div2|auto_generated|divider|divider|add_sub_20_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_20_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[118]~364_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[118]~476_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_20_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[118]~364_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[118]~476_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_20_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_20_result_int[5]~9_cout\);

-- Location: LCCOMB_X29_Y23_N26
\Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_20_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_20_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\);

-- Location: LCCOMB_X28_Y23_N12
\Div2|auto_generated|divider|divider|StageOut[124]~371\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[124]~371_combout\ = (\Div2|auto_generated|divider|divider|add_sub_20_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_20_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[124]~371_combout\);

-- Location: LCCOMB_X30_Y23_N20
\Div2|auto_generated|divider|divider|StageOut[124]~478\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[124]~478_combout\ = (\Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[117]~477_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[117]~477_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[124]~478_combout\);

-- Location: LCCOMB_X29_Y23_N2
\Div2|auto_generated|divider|divider|StageOut[123]~479\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[123]~479_combout\ = (\Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[116]~514_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[116]~514_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[123]~479_combout\);

-- Location: LCCOMB_X28_Y23_N2
\Div2|auto_generated|divider|divider|StageOut[123]~372\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[123]~372_combout\ = (\Div2|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[123]~372_combout\);

-- Location: LCCOMB_X29_Y23_N6
\Div2|auto_generated|divider|divider|StageOut[122]~373\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[122]~373_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[122]~373_combout\);

-- Location: LCCOMB_X29_Y23_N12
\Div2|auto_generated|divider|divider|StageOut[122]~480\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[122]~480_combout\ = (\Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[115]~367_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_19_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[115]~367_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[122]~480_combout\);

-- Location: LCCOMB_X29_Y23_N4
\Div2|auto_generated|divider|divider|StageOut[121]~374\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[121]~374_combout\ = (\Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[11]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[11]~26_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[121]~374_combout\);

-- Location: LCCOMB_X28_Y23_N4
\Div2|auto_generated|divider|divider|StageOut[121]~375\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[121]~375_combout\ = (\Div2|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[121]~375_combout\);

-- Location: LCCOMB_X28_Y23_N30
\Div2|auto_generated|divider|divider|StageOut[120]~376\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[120]~376_combout\ = (\Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & (\Add1~56_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[9]~3_combout\ $ (\Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[9]~3_combout\,
	datad => \Add1~16_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[120]~376_combout\);

-- Location: LCCOMB_X28_Y23_N16
\Div2|auto_generated|divider|divider|StageOut[120]~377\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[120]~377_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & (\Add1~56_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[9]~3_combout\ $ (\Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[9]~3_combout\,
	datad => \Add1~16_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[120]~377_combout\);

-- Location: LCCOMB_X28_Y23_N18
\Div2|auto_generated|divider|divider|add_sub_21_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[120]~376_combout\) # (\Div2|auto_generated|divider|divider|StageOut[120]~377_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_21_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[120]~376_combout\) # (\Div2|auto_generated|divider|divider|StageOut[120]~377_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[120]~376_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[120]~377_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_21_result_int[1]~1\);

-- Location: LCCOMB_X28_Y23_N20
\Div2|auto_generated|divider|divider|add_sub_21_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_21_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[121]~374_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[121]~375_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_21_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[121]~374_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[121]~375_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_21_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[121]~374_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[121]~375_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_21_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[121]~374_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[121]~375_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_21_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_21_result_int[2]~3\);

-- Location: LCCOMB_X28_Y23_N22
\Div2|auto_generated|divider|divider|add_sub_21_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_21_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[122]~373_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[122]~480_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_21_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[122]~373_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[122]~480_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_21_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_21_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[122]~373_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[122]~480_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[122]~373_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[122]~480_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_21_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_21_result_int[3]~5\);

-- Location: LCCOMB_X28_Y23_N24
\Div2|auto_generated|divider|divider|add_sub_21_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_21_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_21_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[123]~479_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[123]~372_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_21_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[123]~479_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[123]~372_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_21_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[123]~479_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[123]~372_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_21_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[123]~479_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[123]~372_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_21_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_21_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_21_result_int[4]~7\);

-- Location: LCCOMB_X28_Y23_N26
\Div2|auto_generated|divider|divider|add_sub_21_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_21_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[124]~371_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[124]~478_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_21_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[124]~371_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[124]~478_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_21_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_21_result_int[5]~9_cout\);

-- Location: LCCOMB_X28_Y23_N28
\Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_21_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_21_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\);

-- Location: LCCOMB_X28_Y23_N10
\Div2|auto_generated|divider|divider|StageOut[129]~482\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[129]~482_combout\ = (\Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[122]~480_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_20_result_int[2]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[122]~480_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[129]~482_combout\);

-- Location: LCCOMB_X27_Y21_N14
\Div2|auto_generated|divider|divider|StageOut[129]~379\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[129]~379_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[129]~379_combout\);

-- Location: LCCOMB_X29_Y23_N14
\Div2|auto_generated|divider|divider|StageOut[128]~515\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[128]~515_combout\ = (\Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & 
-- ((\Div2|auto_generated|divider|my_abs_num|cs2a[11]~26_combout\))) # (!\Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_20_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[11]~26_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[128]~515_combout\);

-- Location: LCCOMB_X27_Y21_N0
\Div2|auto_generated|divider|divider|StageOut[128]~380\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[128]~380_combout\ = (\Div2|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[128]~380_combout\);

-- Location: LCCOMB_X27_Y21_N30
\Div2|auto_generated|divider|divider|StageOut[127]~382\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[127]~382_combout\ = (\Div2|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[127]~382_combout\);

-- Location: LCCOMB_X28_Y23_N6
\Div2|auto_generated|divider|divider|StageOut[127]~381\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[127]~381_combout\ = (\Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ & (\Add1~56_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[9]~3_combout\ $ (\Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[9]~3_combout\,
	datad => \Add1~16_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[127]~381_combout\);

-- Location: LCCOMB_X24_Y21_N16
\Div2|auto_generated|divider|my_abs_num|cs2a[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[9]~27_combout\ = \Div2|auto_generated|divider|my_abs_num|_~2_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|_~1_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ & 
-- \Div2|auto_generated|divider|my_abs_num|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|_~1_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|_~2_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|_~0_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[9]~27_combout\);

-- Location: LCCOMB_X27_Y21_N6
\Div2|auto_generated|divider|divider|StageOut[126]~384\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[126]~384_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[9]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[9]~27_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[126]~384_combout\);

-- Location: LCCOMB_X27_Y21_N16
\Div2|auto_generated|divider|divider|StageOut[126]~383\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[126]~383_combout\ = (\Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[9]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[9]~27_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[126]~383_combout\);

-- Location: LCCOMB_X27_Y21_N18
\Div2|auto_generated|divider|divider|add_sub_22_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[126]~384_combout\) # (\Div2|auto_generated|divider|divider|StageOut[126]~383_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_22_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[126]~384_combout\) # (\Div2|auto_generated|divider|divider|StageOut[126]~383_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[126]~384_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[126]~383_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_22_result_int[1]~1\);

-- Location: LCCOMB_X27_Y21_N20
\Div2|auto_generated|divider|divider|add_sub_22_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_22_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[127]~382_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[127]~381_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_22_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[127]~382_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[127]~381_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_22_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[127]~382_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[127]~381_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_22_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[127]~382_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[127]~381_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_22_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_22_result_int[2]~3\);

-- Location: LCCOMB_X27_Y21_N22
\Div2|auto_generated|divider|divider|add_sub_22_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_22_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[128]~515_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[128]~380_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_22_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[128]~515_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[128]~380_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_22_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_22_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[128]~515_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[128]~380_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[128]~515_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[128]~380_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_22_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_22_result_int[3]~5\);

-- Location: LCCOMB_X27_Y21_N24
\Div2|auto_generated|divider|divider|add_sub_22_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_22_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_22_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[129]~482_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[129]~379_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_22_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[129]~482_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[129]~379_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_22_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[129]~482_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[129]~379_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_22_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[129]~482_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[129]~379_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_22_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_22_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_22_result_int[4]~7\);

-- Location: LCCOMB_X27_Y21_N12
\Div2|auto_generated|divider|divider|StageOut[130]~378\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[130]~378_combout\ = (\Div2|auto_generated|divider|divider|add_sub_21_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_21_result_int[4]~6_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[130]~378_combout\);

-- Location: LCCOMB_X28_Y23_N8
\Div2|auto_generated|divider|divider|StageOut[130]~481\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[130]~481_combout\ = (\Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[123]~479_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[123]~479_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_20_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_20_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[130]~481_combout\);

-- Location: LCCOMB_X27_Y21_N26
\Div2|auto_generated|divider|divider|add_sub_22_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_22_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[130]~378_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[130]~481_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_22_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[130]~378_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[130]~481_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_22_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_22_result_int[5]~9_cout\);

-- Location: LCCOMB_X27_Y21_N28
\Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_22_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_22_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\);

-- Location: LCCOMB_X27_Y21_N4
\Div2|auto_generated|divider|divider|StageOut[136]~385\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[136]~385_combout\ = (\Div2|auto_generated|divider|divider|add_sub_22_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_22_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[136]~385_combout\);

-- Location: LCCOMB_X27_Y21_N10
\Div2|auto_generated|divider|divider|StageOut[136]~483\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[136]~483_combout\ = (\Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[129]~482_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[129]~482_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_21_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[136]~483_combout\);

-- Location: LCCOMB_X26_Y21_N28
\Div2|auto_generated|divider|divider|StageOut[135]~386\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[135]~386_combout\ = (\Div2|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[135]~386_combout\);

-- Location: LCCOMB_X27_Y21_N8
\Div2|auto_generated|divider|divider|StageOut[135]~484\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[135]~484_combout\ = (\Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[128]~515_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_21_result_int[2]~2_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[128]~515_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[135]~484_combout\);

-- Location: LCCOMB_X27_Y21_N2
\Div2|auto_generated|divider|divider|StageOut[134]~485\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[134]~485_combout\ = (\Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[127]~381_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_21_result_int[1]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[127]~381_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_21_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[134]~485_combout\);

-- Location: LCCOMB_X26_Y21_N18
\Div2|auto_generated|divider|divider|StageOut[134]~387\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[134]~387_combout\ = (\Div2|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[134]~387_combout\);

-- Location: LCCOMB_X26_Y21_N22
\Div2|auto_generated|divider|divider|StageOut[133]~389\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[133]~389_combout\ = (\Div2|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[133]~389_combout\);

-- Location: LCCOMB_X26_Y21_N20
\Div2|auto_generated|divider|divider|StageOut[133]~388\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[133]~388_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[9]~27_combout\ & \Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[9]~27_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[133]~388_combout\);

-- Location: LCCOMB_X24_Y21_N6
\Div2|auto_generated|divider|my_abs_num|cs2a[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[5]~28_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\ & ((\Add1~4_combout\ & (!\Add1~56_combout\ & \Add1~6_combout\)) # (!\Add1~4_combout\ & (\Add1~56_combout\ & !\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~6_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[5]~28_combout\);

-- Location: LCCOMB_X24_Y21_N8
\Div2|auto_generated|divider|my_abs_num|cs2a[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[7]~29_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[5]~28_combout\ & ((\Add1~8_combout\ & (!\Add1~56_combout\ & \Add1~10_combout\)) # (!\Add1~8_combout\ & (\Add1~56_combout\ & !\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[5]~28_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[7]~29_combout\);

-- Location: LCCOMB_X26_Y21_N30
\Div2|auto_generated|divider|divider|StageOut[132]~391\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[132]~391_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[7]~29_combout\ $ (\Add1~56_combout\ $ (\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[7]~29_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[132]~391_combout\);

-- Location: LCCOMB_X26_Y21_N4
\Div2|auto_generated|divider|divider|StageOut[132]~390\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[132]~390_combout\ = (\Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[7]~29_combout\ $ (\Add1~56_combout\ $ (\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[7]~29_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[132]~390_combout\);

-- Location: LCCOMB_X26_Y21_N6
\Div2|auto_generated|divider|divider|add_sub_23_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[132]~391_combout\) # (\Div2|auto_generated|divider|divider|StageOut[132]~390_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_23_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[132]~391_combout\) # (\Div2|auto_generated|divider|divider|StageOut[132]~390_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[132]~391_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[132]~390_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_23_result_int[1]~1\);

-- Location: LCCOMB_X26_Y21_N8
\Div2|auto_generated|divider|divider|add_sub_23_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_23_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[133]~389_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[133]~388_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_23_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[133]~389_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[133]~388_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_23_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[133]~389_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[133]~388_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_23_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[133]~389_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[133]~388_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_23_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_23_result_int[2]~3\);

-- Location: LCCOMB_X26_Y21_N10
\Div2|auto_generated|divider|divider|add_sub_23_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_23_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[134]~485_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[134]~387_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_23_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[134]~485_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[134]~387_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_23_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_23_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[134]~485_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[134]~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[134]~485_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[134]~387_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_23_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_23_result_int[3]~5\);

-- Location: LCCOMB_X26_Y21_N12
\Div2|auto_generated|divider|divider|add_sub_23_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_23_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_23_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[135]~386_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[135]~484_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_23_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[135]~386_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[135]~484_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_23_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[135]~386_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[135]~484_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_23_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[135]~386_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[135]~484_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_23_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_23_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_23_result_int[4]~7\);

-- Location: LCCOMB_X26_Y21_N14
\Div2|auto_generated|divider|divider|add_sub_23_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_23_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[136]~385_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[136]~483_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_23_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[136]~385_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[136]~483_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_23_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_23_result_int[5]~9_cout\);

-- Location: LCCOMB_X26_Y21_N16
\Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_23_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_23_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\);

-- Location: LCCOMB_X26_Y21_N26
\Div2|auto_generated|divider|divider|StageOut[142]~486\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[142]~486_combout\ = (\Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[135]~484_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_22_result_int[3]~4_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[135]~484_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[142]~486_combout\);

-- Location: LCCOMB_X26_Y22_N8
\Div2|auto_generated|divider|divider|StageOut[142]~392\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[142]~392_combout\ = (\Div2|auto_generated|divider|divider|add_sub_23_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_23_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[142]~392_combout\);

-- Location: LCCOMB_X26_Y21_N24
\Div2|auto_generated|divider|divider|StageOut[141]~487\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[141]~487_combout\ = (\Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[134]~485_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[134]~485_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_22_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[141]~487_combout\);

-- Location: LCCOMB_X26_Y22_N14
\Div2|auto_generated|divider|divider|StageOut[141]~393\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[141]~393_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[141]~393_combout\);

-- Location: LCCOMB_X26_Y21_N2
\Div2|auto_generated|divider|divider|StageOut[140]~516\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[140]~516_combout\ = (\Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ & 
-- ((\Div2|auto_generated|divider|my_abs_num|cs2a[9]~27_combout\))) # (!\Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_22_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[9]~27_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_22_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[140]~516_combout\);

-- Location: LCCOMB_X26_Y22_N0
\Div2|auto_generated|divider|divider|StageOut[140]~394\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[140]~394_combout\ = (\Div2|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[140]~394_combout\);

-- Location: LCCOMB_X26_Y22_N6
\Div2|auto_generated|divider|divider|StageOut[139]~396\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[139]~396_combout\ = (\Div2|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[139]~396_combout\);

-- Location: LCCOMB_X26_Y21_N0
\Div2|auto_generated|divider|divider|StageOut[139]~395\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[139]~395_combout\ = (\Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[7]~29_combout\ $ (\Add1~56_combout\ $ (\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[7]~29_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[139]~395_combout\);

-- Location: LCCOMB_X24_Y21_N22
\Div2|auto_generated|divider|my_abs_num|cs2a[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[7]~30_combout\ = \Add1~10_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs2a[5]~28_combout\ & (\Add1~8_combout\)) # (!\Div2|auto_generated|divider|my_abs_num|cs2a[5]~28_combout\ & 
-- ((\Add1~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[5]~28_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[7]~30_combout\);

-- Location: LCCOMB_X26_Y22_N12
\Div2|auto_generated|divider|divider|StageOut[138]~397\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[138]~397_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[7]~30_combout\ & \Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[7]~30_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[138]~397_combout\);

-- Location: LCCOMB_X26_Y22_N2
\Div2|auto_generated|divider|divider|StageOut[138]~398\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[138]~398_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[7]~30_combout\ & !\Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[7]~30_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[138]~398_combout\);

-- Location: LCCOMB_X26_Y22_N16
\Div2|auto_generated|divider|divider|add_sub_24_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_24_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[138]~397_combout\) # (\Div2|auto_generated|divider|divider|StageOut[138]~398_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_24_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[138]~397_combout\) # (\Div2|auto_generated|divider|divider|StageOut[138]~398_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[138]~397_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[138]~398_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_24_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_24_result_int[1]~1\);

-- Location: LCCOMB_X26_Y22_N18
\Div2|auto_generated|divider|divider|add_sub_24_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_24_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_24_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[139]~396_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[139]~395_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_24_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[139]~396_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[139]~395_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_24_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[139]~396_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[139]~395_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_24_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[139]~396_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[139]~395_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_24_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_24_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_24_result_int[2]~3\);

-- Location: LCCOMB_X26_Y22_N20
\Div2|auto_generated|divider|divider|add_sub_24_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_24_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_24_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[140]~516_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[140]~394_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_24_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[140]~516_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[140]~394_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_24_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_24_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[140]~516_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[140]~394_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[140]~516_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[140]~394_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_24_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_24_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_24_result_int[3]~5\);

-- Location: LCCOMB_X26_Y22_N22
\Div2|auto_generated|divider|divider|add_sub_24_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_24_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_24_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[141]~487_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[141]~393_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_24_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[141]~487_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[141]~393_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_24_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[141]~487_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[141]~393_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_24_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[141]~487_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[141]~393_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_24_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_24_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_24_result_int[4]~7\);

-- Location: LCCOMB_X26_Y22_N24
\Div2|auto_generated|divider|divider|add_sub_24_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_24_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[142]~486_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[142]~392_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_24_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[142]~486_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[142]~392_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_24_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_24_result_int[5]~9_cout\);

-- Location: LCCOMB_X26_Y22_N26
\Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_24_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_24_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\);

-- Location: LCCOMB_X24_Y22_N30
\Div2|auto_generated|divider|divider|StageOut[147]~400\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[147]~400_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_24_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_24_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[147]~400_combout\);

-- Location: LCCOMB_X26_Y22_N10
\Div2|auto_generated|divider|divider|StageOut[147]~489\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[147]~489_combout\ = (\Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[140]~516_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[140]~516_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_23_result_int[2]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[147]~489_combout\);

-- Location: LCCOMB_X26_Y22_N28
\Div2|auto_generated|divider|divider|StageOut[146]~490\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[146]~490_combout\ = (\Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[139]~395_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[139]~395_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_23_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[146]~490_combout\);

-- Location: LCCOMB_X24_Y22_N8
\Div2|auto_generated|divider|divider|StageOut[146]~401\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[146]~401_combout\ = (\Div2|auto_generated|divider|divider|add_sub_24_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_24_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[146]~401_combout\);

-- Location: LCCOMB_X24_Y22_N10
\Div2|auto_generated|divider|divider|StageOut[145]~402\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[145]~402_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[7]~30_combout\ & \Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[7]~30_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[145]~402_combout\);

-- Location: LCCOMB_X24_Y22_N0
\Div2|auto_generated|divider|divider|StageOut[145]~403\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[145]~403_combout\ = (\Div2|auto_generated|divider|divider|add_sub_24_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_24_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[145]~403_combout\);

-- Location: LCCOMB_X24_Y21_N18
\Div2|auto_generated|divider|divider|StageOut[144]~405\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[144]~405_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & (\Add1~8_combout\ $ (\Add1~56_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~56_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[5]~28_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[144]~405_combout\);

-- Location: LCCOMB_X24_Y21_N0
\Div2|auto_generated|divider|divider|StageOut[144]~404\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[144]~404_combout\ = (\Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & (\Add1~8_combout\ $ (\Add1~56_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~56_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[5]~28_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[144]~404_combout\);

-- Location: LCCOMB_X24_Y22_N16
\Div2|auto_generated|divider|divider|add_sub_25_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[144]~405_combout\) # (\Div2|auto_generated|divider|divider|StageOut[144]~404_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[144]~405_combout\) # (\Div2|auto_generated|divider|divider|StageOut[144]~404_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[144]~405_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[144]~404_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_25_result_int[1]~1\);

-- Location: LCCOMB_X24_Y22_N18
\Div2|auto_generated|divider|divider|add_sub_25_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[145]~402_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[145]~403_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[145]~402_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[145]~403_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[145]~402_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[145]~403_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_25_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[145]~402_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[145]~403_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_25_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_25_result_int[2]~3\);

-- Location: LCCOMB_X24_Y22_N20
\Div2|auto_generated|divider|divider|add_sub_25_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[146]~490_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[146]~401_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[146]~490_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[146]~401_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_25_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[146]~490_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[146]~401_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[146]~490_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[146]~401_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_25_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_25_result_int[3]~5\);

-- Location: LCCOMB_X24_Y22_N22
\Div2|auto_generated|divider|divider|add_sub_25_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_25_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_25_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[147]~400_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[147]~489_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_25_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[147]~400_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[147]~489_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_25_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[147]~400_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[147]~489_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_25_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[147]~400_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[147]~489_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_25_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_25_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_25_result_int[4]~7\);

-- Location: LCCOMB_X24_Y22_N4
\Div2|auto_generated|divider|divider|StageOut[148]~399\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[148]~399_combout\ = (\Div2|auto_generated|divider|divider|add_sub_24_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_24_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[148]~399_combout\);

-- Location: LCCOMB_X26_Y22_N4
\Div2|auto_generated|divider|divider|StageOut[148]~488\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[148]~488_combout\ = (\Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[141]~487_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[141]~487_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_23_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_23_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[148]~488_combout\);

-- Location: LCCOMB_X24_Y22_N24
\Div2|auto_generated|divider|divider|add_sub_25_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_25_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[148]~399_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[148]~488_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_25_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[148]~399_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[148]~488_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_25_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_25_result_int[5]~9_cout\);

-- Location: LCCOMB_X24_Y22_N26
\Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_25_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_25_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\);

-- Location: LCCOMB_X24_Y22_N6
\Div2|auto_generated|divider|divider|StageOut[154]~406\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[154]~406_combout\ = (\Div2|auto_generated|divider|divider|add_sub_25_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_25_result_int[4]~6_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[154]~406_combout\);

-- Location: LCCOMB_X24_Y22_N12
\Div2|auto_generated|divider|divider|StageOut[154]~491\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[154]~491_combout\ = (\Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[147]~489_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_24_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_24_result_int[3]~4_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[147]~489_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[154]~491_combout\);

-- Location: LCCOMB_X24_Y22_N2
\Div2|auto_generated|divider|divider|StageOut[153]~492\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[153]~492_combout\ = (\Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[146]~490_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_24_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_24_result_int[2]~2_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[146]~490_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[153]~492_combout\);

-- Location: LCCOMB_X23_Y22_N8
\Div2|auto_generated|divider|divider|StageOut[153]~407\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[153]~407_combout\ = (\Div2|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[153]~407_combout\);

-- Location: LCCOMB_X23_Y22_N6
\Div2|auto_generated|divider|divider|StageOut[152]~408\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[152]~408_combout\ = (\Div2|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[152]~408_combout\);

-- Location: LCCOMB_X24_Y22_N14
\Div2|auto_generated|divider|divider|StageOut[152]~517\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[152]~517_combout\ = (\Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & 
-- (\Div2|auto_generated|divider|my_abs_num|cs2a[7]~30_combout\)) # (!\Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_24_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[7]~30_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_24_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_24_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[152]~517_combout\);

-- Location: LCCOMB_X23_Y22_N12
\Div2|auto_generated|divider|divider|StageOut[151]~410\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[151]~410_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[151]~410_combout\);

-- Location: LCCOMB_X24_Y21_N28
\Div2|auto_generated|divider|divider|StageOut[151]~409\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[151]~409_combout\ = (\Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & (\Add1~8_combout\ $ (\Add1~56_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~56_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[5]~28_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[151]~409_combout\);

-- Location: LCCOMB_X24_Y21_N2
\Div2|auto_generated|divider|my_abs_num|cs2a[5]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[5]~31_combout\ = \Add1~6_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\ & (\Add1~4_combout\)) # (!\Div2|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\ & ((\Add1~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~6_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[5]~31_combout\);

-- Location: LCCOMB_X23_Y22_N10
\Div2|auto_generated|divider|divider|StageOut[150]~411\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[150]~411_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[5]~31_combout\ & \Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[5]~31_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[150]~411_combout\);

-- Location: LCCOMB_X23_Y22_N4
\Div2|auto_generated|divider|divider|StageOut[150]~412\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[150]~412_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[5]~31_combout\ & !\Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[5]~31_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[150]~412_combout\);

-- Location: LCCOMB_X23_Y22_N18
\Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[150]~411_combout\) # (\Div2|auto_generated|divider|divider|StageOut[150]~412_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[150]~411_combout\) # (\Div2|auto_generated|divider|divider|StageOut[150]~412_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[150]~411_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[150]~412_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~1\);

-- Location: LCCOMB_X23_Y22_N20
\Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[151]~410_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[151]~409_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[151]~410_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[151]~409_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[151]~410_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[151]~409_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[151]~410_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[151]~409_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~3\);

-- Location: LCCOMB_X23_Y22_N22
\Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[152]~408_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[152]~517_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[152]~408_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[152]~517_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[152]~408_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[152]~517_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[152]~408_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[152]~517_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~5\);

-- Location: LCCOMB_X23_Y22_N24
\Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[153]~492_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[153]~407_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[153]~492_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[153]~407_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[153]~492_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[153]~407_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[153]~492_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[153]~407_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~7\);

-- Location: LCCOMB_X23_Y22_N26
\Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[154]~406_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[154]~491_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[154]~406_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[154]~491_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\);

-- Location: LCCOMB_X23_Y22_N28
\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\);

-- Location: LCCOMB_X23_Y22_N2
\Div2|auto_generated|divider|divider|StageOut[159]~494\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[159]~494_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[152]~517_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[152]~517_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[159]~494_combout\);

-- Location: LCCOMB_X23_Y24_N16
\Div2|auto_generated|divider|divider|StageOut[160]~413\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[160]~413_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[160]~413_combout\);

-- Location: LCCOMB_X24_Y22_N28
\Div2|auto_generated|divider|divider|StageOut[160]~493\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[160]~493_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[153]~492_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[153]~492_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[160]~493_combout\);

-- Location: LCCOMB_X23_Y24_N6
\Div2|auto_generated|divider|divider|StageOut[159]~414\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[159]~414_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[159]~414_combout\);

-- Location: LCCOMB_X23_Y22_N16
\Div2|auto_generated|divider|divider|StageOut[158]~495\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[158]~495_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[151]~409_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_25_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[151]~409_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[158]~495_combout\);

-- Location: LCCOMB_X24_Y24_N20
\Div2|auto_generated|divider|divider|StageOut[158]~415\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[158]~415_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[158]~415_combout\);

-- Location: LCCOMB_X24_Y24_N12
\Div2|auto_generated|divider|divider|StageOut[157]~417\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[157]~417_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[157]~417_combout\);

-- Location: LCCOMB_X24_Y24_N18
\Div2|auto_generated|divider|divider|StageOut[157]~416\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[157]~416_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[5]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[5]~31_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[157]~416_combout\);

-- Location: LCCOMB_X24_Y24_N26
\Div2|auto_generated|divider|divider|StageOut[156]~418\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[156]~418_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & (\Add1~56_combout\ $ (\Add1~4_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Add1~4_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[156]~418_combout\);

-- Location: LCCOMB_X24_Y24_N28
\Div2|auto_generated|divider|divider|StageOut[156]~419\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[156]~419_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & (\Add1~56_combout\ $ (\Add1~4_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Add1~4_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[156]~419_combout\);

-- Location: LCCOMB_X24_Y24_N0
\Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[156]~418_combout\) # (\Div2|auto_generated|divider|divider|StageOut[156]~419_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[156]~418_combout\) # (\Div2|auto_generated|divider|divider|StageOut[156]~419_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[156]~418_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[156]~419_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~1\);

-- Location: LCCOMB_X24_Y24_N2
\Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[157]~417_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[157]~416_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[157]~417_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[157]~416_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[157]~417_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[157]~416_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[157]~417_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[157]~416_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~3\);

-- Location: LCCOMB_X24_Y24_N4
\Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[158]~495_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[158]~415_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[158]~495_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[158]~415_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[158]~495_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[158]~415_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[158]~495_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[158]~415_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~5\);

-- Location: LCCOMB_X24_Y24_N6
\Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[159]~494_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[159]~414_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[159]~494_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[159]~414_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[159]~494_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[159]~414_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[159]~494_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[159]~414_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~7\);

-- Location: LCCOMB_X24_Y24_N8
\Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[160]~413_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[160]~493_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[160]~413_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[160]~493_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\);

-- Location: LCCOMB_X24_Y24_N10
\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\);

-- Location: LCCOMB_X24_Y24_N16
\Div2|auto_generated|divider|divider|StageOut[166]~496\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[166]~496_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[159]~494_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[159]~494_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[166]~496_combout\);

-- Location: LCCOMB_X23_Y25_N4
\Div2|auto_generated|divider|divider|StageOut[166]~420\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[166]~420_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[166]~420_combout\);

-- Location: LCCOMB_X23_Y25_N26
\Div2|auto_generated|divider|divider|StageOut[165]~421\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[165]~421_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[165]~421_combout\);

-- Location: LCCOMB_X24_Y24_N22
\Div2|auto_generated|divider|divider|StageOut[165]~497\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[165]~497_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[158]~495_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[158]~495_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[165]~497_combout\);

-- Location: LCCOMB_X23_Y25_N28
\Div2|auto_generated|divider|divider|StageOut[164]~422\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[164]~422_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[164]~422_combout\);

-- Location: LCCOMB_X24_Y24_N24
\Div2|auto_generated|divider|divider|StageOut[164]~518\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[164]~518_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & 
-- (\Div2|auto_generated|divider|my_abs_num|cs2a[5]~31_combout\)) # (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[5]~31_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[164]~518_combout\);

-- Location: LCCOMB_X23_Y25_N30
\Div2|auto_generated|divider|divider|StageOut[163]~424\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[163]~424_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[163]~424_combout\);

-- Location: LCCOMB_X24_Y24_N30
\Div2|auto_generated|divider|divider|StageOut[163]~423\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[163]~423_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & (\Add1~56_combout\ $ (\Add1~4_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Add1~4_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[163]~423_combout\);

-- Location: LCCOMB_X24_Y28_N30
\Div2|auto_generated|divider|my_abs_num|cs2a[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[3]~32_combout\ = \Add1~2_combout\ $ (((\Add1~56_combout\ & ((\rra_servo_lower|o_current[1]~0_combout\) # (\Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Add1~2_combout\,
	datac => \rra_servo_lower|o_current[1]~0_combout\,
	datad => \Add1~0_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[3]~32_combout\);

-- Location: LCCOMB_X23_Y25_N22
\Div2|auto_generated|divider|divider|StageOut[162]~426\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[162]~426_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[3]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[3]~32_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[162]~426_combout\);

-- Location: LCCOMB_X23_Y25_N20
\Div2|auto_generated|divider|divider|StageOut[162]~425\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[162]~425_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[3]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[3]~32_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[162]~425_combout\);

-- Location: LCCOMB_X23_Y25_N6
\Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[162]~426_combout\) # (\Div2|auto_generated|divider|divider|StageOut[162]~425_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[162]~426_combout\) # (\Div2|auto_generated|divider|divider|StageOut[162]~425_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[162]~426_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[162]~425_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~1\);

-- Location: LCCOMB_X23_Y25_N8
\Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[163]~424_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[163]~423_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[163]~424_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[163]~423_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[163]~424_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[163]~423_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[163]~424_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[163]~423_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~3\);

-- Location: LCCOMB_X23_Y25_N10
\Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[164]~422_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[164]~518_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[164]~422_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[164]~518_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[164]~422_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[164]~518_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[164]~422_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[164]~518_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~5\);

-- Location: LCCOMB_X23_Y25_N12
\Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[165]~421_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[165]~497_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[165]~421_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[165]~497_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[165]~421_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[165]~497_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[165]~421_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[165]~497_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~7\);

-- Location: LCCOMB_X23_Y25_N14
\Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[166]~496_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[166]~420_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[166]~496_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[166]~420_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\);

-- Location: LCCOMB_X23_Y25_N16
\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\);

-- Location: LCCOMB_X24_Y25_N26
\Div2|auto_generated|divider|divider|StageOut[171]~428\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[171]~428_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[171]~428_combout\);

-- Location: LCCOMB_X23_Y25_N18
\Div2|auto_generated|divider|divider|StageOut[171]~499\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[171]~499_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[164]~518_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[164]~518_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[171]~499_combout\);

-- Location: LCCOMB_X24_Y25_N12
\Div2|auto_generated|divider|divider|StageOut[170]~429\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[170]~429_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[170]~429_combout\);

-- Location: LCCOMB_X23_Y25_N24
\Div2|auto_generated|divider|divider|StageOut[170]~500\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[170]~500_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[163]~423_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[163]~423_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[170]~500_combout\);

-- Location: LCCOMB_X24_Y25_N30
\Div2|auto_generated|divider|divider|StageOut[169]~430\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[169]~430_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[3]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[3]~32_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[169]~430_combout\);

-- Location: LCCOMB_X24_Y25_N16
\Div2|auto_generated|divider|divider|StageOut[169]~431\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[169]~431_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[169]~431_combout\);

-- Location: LCCOMB_X24_Y28_N18
\Div2|auto_generated|divider|divider|StageOut[168]~433\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[168]~433_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & (\Add1~0_combout\ $ (((\Add1~56_combout\ & \rra_servo_lower|o_current[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datac => \rra_servo_lower|o_current[1]~0_combout\,
	datad => \Add1~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[168]~433_combout\);

-- Location: LCCOMB_X24_Y28_N12
\Div2|auto_generated|divider|divider|StageOut[168]~432\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[168]~432_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & (\Add1~0_combout\ $ (((\Add1~56_combout\ & \rra_servo_lower|o_current[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datac => \rra_servo_lower|o_current[1]~0_combout\,
	datad => \Add1~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[168]~432_combout\);

-- Location: LCCOMB_X24_Y25_N0
\Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[168]~433_combout\) # (\Div2|auto_generated|divider|divider|StageOut[168]~432_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[168]~433_combout\) # (\Div2|auto_generated|divider|divider|StageOut[168]~432_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[168]~433_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[168]~432_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~1\);

-- Location: LCCOMB_X24_Y25_N2
\Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[169]~430_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[169]~431_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[169]~430_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[169]~431_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[169]~430_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[169]~431_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[169]~430_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[169]~431_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~3\);

-- Location: LCCOMB_X24_Y25_N4
\Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[170]~429_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[170]~500_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[170]~429_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[170]~500_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[170]~429_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[170]~500_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[170]~429_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[170]~500_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~5\);

-- Location: LCCOMB_X24_Y25_N6
\Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[171]~428_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[171]~499_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[171]~428_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[171]~499_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[171]~428_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[171]~499_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[171]~428_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[171]~499_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~7\);

-- Location: LCCOMB_X23_Y25_N0
\Div2|auto_generated|divider|divider|StageOut[172]~498\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[172]~498_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[165]~497_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[165]~497_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[172]~498_combout\);

-- Location: LCCOMB_X24_Y25_N20
\Div2|auto_generated|divider|divider|StageOut[172]~427\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[172]~427_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[172]~427_combout\);

-- Location: LCCOMB_X24_Y25_N8
\Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[172]~498_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[172]~427_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[172]~498_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[172]~427_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\);

-- Location: LCCOMB_X24_Y25_N10
\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\);

-- Location: LCCOMB_X24_Y25_N22
\Div2|auto_generated|divider|divider|StageOut[178]~434\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[178]~434_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[178]~434_combout\);

-- Location: LCCOMB_X24_Y25_N18
\Div2|auto_generated|divider|divider|StageOut[178]~501\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[178]~501_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[171]~499_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[171]~499_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[178]~501_combout\);

-- Location: LCCOMB_X24_Y25_N28
\Div2|auto_generated|divider|divider|StageOut[177]~502\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[177]~502_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[170]~500_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[170]~500_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[177]~502_combout\);

-- Location: LCCOMB_X24_Y27_N0
\Div2|auto_generated|divider|divider|StageOut[177]~435\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[177]~435_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[177]~435_combout\);

-- Location: LCCOMB_X24_Y25_N14
\Div2|auto_generated|divider|divider|StageOut[176]~519\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[176]~519_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & 
-- ((\Div2|auto_generated|divider|my_abs_num|cs2a[3]~32_combout\))) # (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[3]~32_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[176]~519_combout\);

-- Location: LCCOMB_X24_Y25_N24
\Div2|auto_generated|divider|divider|StageOut[176]~436\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[176]~436_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[176]~436_combout\);

-- Location: LCCOMB_X24_Y27_N26
\Div2|auto_generated|divider|divider|StageOut[175]~438\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[175]~438_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[175]~438_combout\);

-- Location: LCCOMB_X24_Y28_N4
\Div2|auto_generated|divider|divider|StageOut[175]~437\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[175]~437_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (\Add1~0_combout\ $ (((\rra_servo_lower|o_current[1]~0_combout\ & \Add1~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \rra_servo_lower|o_current[1]~0_combout\,
	datac => \Add1~56_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[175]~437_combout\);

-- Location: LCCOMB_X23_Y27_N14
\Div2|auto_generated|divider|divider|StageOut[174]~503\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[174]~503_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (!\rst~input_o\ & (\rra_servo_lower|current\(0) & !\Add1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \rst~input_o\,
	datac => \rra_servo_lower|current\(0),
	datad => \Add1~56_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[174]~503_combout\);

-- Location: LCCOMB_X23_Y27_N28
\Div2|auto_generated|divider|divider|StageOut[174]~504\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[174]~504_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (!\rst~input_o\ & (\rra_servo_lower|current\(0) & !\Add1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \rst~input_o\,
	datac => \rra_servo_lower|current\(0),
	datad => \Add1~56_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[174]~504_combout\);

-- Location: LCCOMB_X24_Y27_N2
\Div2|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[1]~1_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[174]~503_combout\) # (\Div2|auto_generated|divider|divider|StageOut[174]~504_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[174]~503_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[174]~504_combout\,
	datad => VCC,
	cout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[1]~1_cout\);

-- Location: LCCOMB_X24_Y27_N4
\Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~3_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[175]~438_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[175]~437_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_30_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[175]~438_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[175]~437_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_30_result_int[1]~1_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~3_cout\);

-- Location: LCCOMB_X24_Y27_N6
\Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~5_cout\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~3_cout\ & ((\Div2|auto_generated|divider|divider|StageOut[176]~519_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[176]~436_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[176]~519_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[176]~436_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~3_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~5_cout\);

-- Location: LCCOMB_X24_Y27_N8
\Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[177]~502_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[177]~435_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[177]~502_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[177]~435_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~5_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y27_N10
\Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[178]~434_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[178]~501_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[178]~434_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[178]~501_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\);

-- Location: LCCOMB_X24_Y27_N12
\Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\);

-- Location: LCCOMB_X23_Y27_N6
\Div2|auto_generated|divider|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|op_1~0_combout\ = \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ $ (VCC)
-- \Div2|auto_generated|divider|op_1~1\ = CARRY(\Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|op_1~0_combout\,
	cout => \Div2|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X23_Y27_N16
\Div2|auto_generated|divider|quotient[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|quotient[0]~0_combout\ = (\Add1~56_combout\ & ((\Div2|auto_generated|divider|op_1~0_combout\))) # (!\Add1~56_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~56_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|op_1~0_combout\,
	combout => \Div2|auto_generated|divider|quotient[0]~0_combout\);

-- Location: LCCOMB_X23_Y27_N8
\Div2|auto_generated|divider|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|op_1~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & (!\Div2|auto_generated|divider|op_1~1\)) # (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & 
-- ((\Div2|auto_generated|divider|op_1~1\) # (GND)))
-- \Div2|auto_generated|divider|op_1~3\ = CARRY((!\Div2|auto_generated|divider|op_1~1\) # (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|op_1~1\,
	combout => \Div2|auto_generated|divider|op_1~2_combout\,
	cout => \Div2|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X23_Y27_N18
\Div2|auto_generated|divider|quotient[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|quotient[1]~1_combout\ = (\Add1~56_combout\ & (\Div2|auto_generated|divider|op_1~2_combout\)) # (!\Add1~56_combout\ & ((!\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~56_combout\,
	datac => \Div2|auto_generated|divider|op_1~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|quotient[1]~1_combout\);

-- Location: LCCOMB_X24_Y28_N10
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = \Add1~0_combout\ $ (\Div2|auto_generated|divider|quotient[1]~1_combout\ $ (((\rra_servo_lower|o_current[1]~0_combout\) # (!\Div2|auto_generated|divider|quotient[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	datac => \rra_servo_lower|o_current[1]~0_combout\,
	datad => \Div2|auto_generated|divider|quotient[1]~1_combout\,
	combout => \Add3~2_combout\);

-- Location: LCCOMB_X24_Y28_N22
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\Add1~0_combout\ & (((\rra_servo_lower|o_current[1]~0_combout\) # (!\Div2|auto_generated|divider|quotient[1]~1_combout\)) # (!\Div2|auto_generated|divider|quotient[0]~0_combout\))) # (!\Add1~0_combout\ & 
-- (!\Div2|auto_generated|divider|quotient[1]~1_combout\ & ((\rra_servo_lower|o_current[1]~0_combout\) # (!\Div2|auto_generated|divider|quotient[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	datac => \rra_servo_lower|o_current[1]~0_combout\,
	datad => \Div2|auto_generated|divider|quotient[1]~1_combout\,
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X23_Y27_N10
\Div2|auto_generated|divider|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|op_1~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|op_1~3\ $ (GND))) # (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & 
-- (!\Div2|auto_generated|divider|op_1~3\ & VCC))
-- \Div2|auto_generated|divider|op_1~5\ = CARRY((\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ & !\Div2|auto_generated|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|op_1~3\,
	combout => \Div2|auto_generated|divider|op_1~4_combout\,
	cout => \Div2|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X23_Y27_N24
\Div2|auto_generated|divider|quotient[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|quotient[2]~2_combout\ = (\Add1~56_combout\ & ((\Div2|auto_generated|divider|op_1~4_combout\))) # (!\Add1~56_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~56_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|op_1~4_combout\,
	combout => \Div2|auto_generated|divider|quotient[2]~2_combout\);

-- Location: LCCOMB_X24_Y28_N28
\Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = \Add3~0_combout\ $ (\Div2|auto_generated|divider|quotient[2]~2_combout\ $ (\Add1~2_combout\ $ (\Div2|auto_generated|divider|quotient[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Div2|auto_generated|divider|quotient[2]~2_combout\,
	datac => \Add1~2_combout\,
	datad => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X24_Y28_N8
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Add3~2_combout\ & (\Add3~1_combout\ $ (\rra_servo_lower|o_current[1]~0_combout\ $ (!\Div2|auto_generated|divider|quotient[0]~0_combout\)))) # (!\Add3~2_combout\ & (\Add3~1_combout\ & 
-- ((\Div2|auto_generated|divider|quotient[0]~0_combout\) # (!\rra_servo_lower|o_current[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~1_combout\,
	datac => \rra_servo_lower|o_current[1]~0_combout\,
	datad => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X24_Y28_N26
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Add3~1_combout\ & ((\Div2|auto_generated|divider|quotient[0]~0_combout\ & (\Add3~2_combout\)) # (!\Div2|auto_generated|divider|quotient[0]~0_combout\ & ((\rra_servo_lower|o_current[1]~0_combout\))))) # (!\Add3~1_combout\ & 
-- ((\rra_servo_lower|o_current[1]~0_combout\ $ (\Div2|auto_generated|divider|quotient[0]~0_combout\)) # (!\Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~1_combout\,
	datac => \rra_servo_lower|o_current[1]~0_combout\,
	datad => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X24_Y28_N16
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\rra_servo_lower|o_current[1]~0_combout\) # ((\Div2|auto_generated|divider|quotient[0]~0_combout\ & ((!\Add3~1_combout\))) # (!\Div2|auto_generated|divider|quotient[0]~0_combout\ & (!\Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~1_combout\,
	datac => \rra_servo_lower|o_current[1]~0_combout\,
	datad => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X24_Y28_N6
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Div2|auto_generated|divider|quotient[0]~0_combout\ & (\Add3~1_combout\ $ (((!\rra_servo_lower|o_current[1]~0_combout\) # (!\Add3~2_combout\))))) # (!\Div2|auto_generated|divider|quotient[0]~0_combout\ & (((!\Add3~1_combout\ & 
-- \rra_servo_lower|o_current[1]~0_combout\)) # (!\Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~1_combout\,
	datac => \rra_servo_lower|o_current[1]~0_combout\,
	datad => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X24_Y28_N20
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Add3~2_combout\ & ((\rra_servo_lower|o_current[1]~0_combout\ & (!\Add3~1_combout\ & !\Div2|auto_generated|divider|quotient[0]~0_combout\)) # (!\rra_servo_lower|o_current[1]~0_combout\ & 
-- ((\Div2|auto_generated|divider|quotient[0]~0_combout\))))) # (!\Add3~2_combout\ & (!\Add3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~1_combout\,
	datac => \rra_servo_lower|o_current[1]~0_combout\,
	datad => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X24_Y28_N2
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Add3~2_combout\ & (!\Add3~1_combout\ & (\rra_servo_lower|o_current[1]~0_combout\ $ (\Div2|auto_generated|divider|quotient[0]~0_combout\)))) # (!\Add3~2_combout\ & (((\Div2|auto_generated|divider|quotient[0]~0_combout\)) # 
-- (!\Add3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~1_combout\,
	datac => \rra_servo_lower|o_current[1]~0_combout\,
	datad => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X24_Y28_N24
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\rra_servo_lower|o_current[1]~0_combout\ & (\Add3~1_combout\ $ (((!\Div2|auto_generated|divider|quotient[0]~0_combout\) # (!\Add3~2_combout\))))) # (!\rra_servo_lower|o_current[1]~0_combout\ & 
-- ((\Div2|auto_generated|divider|quotient[0]~0_combout\ & ((!\Add3~1_combout\))) # (!\Div2|auto_generated|divider|quotient[0]~0_combout\ & (!\Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~1_combout\,
	datac => \rra_servo_lower|o_current[1]~0_combout\,
	datad => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X23_Y27_N12
\Div2|auto_generated|divider|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|op_1~6_combout\ = \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ $ (\Div2|auto_generated|divider|op_1~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	cin => \Div2|auto_generated|divider|op_1~5\,
	combout => \Div2|auto_generated|divider|op_1~6_combout\);

-- Location: LCCOMB_X23_Y27_N22
\Div2|auto_generated|divider|quotient[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|quotient[3]~3_combout\ = (\Add1~56_combout\ & ((\Div2|auto_generated|divider|op_1~6_combout\))) # (!\Add1~56_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~56_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|op_1~6_combout\,
	combout => \Div2|auto_generated|divider|quotient[3]~3_combout\);

-- Location: LCCOMB_X24_Y27_N20
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Div2|auto_generated|divider|quotient[2]~2_combout\ & (!\Div2|auto_generated|divider|quotient[3]~3_combout\ & ((!\Div2|auto_generated|divider|quotient[1]~1_combout\) # (!\Div2|auto_generated|divider|quotient[0]~0_combout\)))) # 
-- (!\Div2|auto_generated|divider|quotient[2]~2_combout\ & (\Div2|auto_generated|divider|quotient[3]~3_combout\ $ (((\Div2|auto_generated|divider|quotient[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|quotient[2]~2_combout\,
	datab => \Div2|auto_generated|divider|quotient[3]~3_combout\,
	datac => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	datad => \Div2|auto_generated|divider|quotient[1]~1_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X24_Y28_N14
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Div2|auto_generated|divider|quotient[0]~0_combout\ & ((\Div2|auto_generated|divider|quotient[1]~1_combout\) # (\Div2|auto_generated|divider|quotient[3]~3_combout\ $ (!\Div2|auto_generated|divider|quotient[2]~2_combout\)))) # 
-- (!\Div2|auto_generated|divider|quotient[0]~0_combout\ & ((\Div2|auto_generated|divider|quotient[2]~2_combout\ & (\Div2|auto_generated|divider|quotient[3]~3_combout\)) # (!\Div2|auto_generated|divider|quotient[2]~2_combout\ & 
-- ((\Div2|auto_generated|divider|quotient[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|quotient[3]~3_combout\,
	datab => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	datac => \Div2|auto_generated|divider|quotient[2]~2_combout\,
	datad => \Div2|auto_generated|divider|quotient[1]~1_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X23_Y27_N0
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Div2|auto_generated|divider|quotient[0]~0_combout\) # ((\Div2|auto_generated|divider|quotient[1]~1_combout\ & ((\Div2|auto_generated|divider|quotient[3]~3_combout\))) # (!\Div2|auto_generated|divider|quotient[1]~1_combout\ & 
-- (\Div2|auto_generated|divider|quotient[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|quotient[1]~1_combout\,
	datab => \Div2|auto_generated|divider|quotient[2]~2_combout\,
	datac => \Div2|auto_generated|divider|quotient[3]~3_combout\,
	datad => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X24_Y27_N30
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Div2|auto_generated|divider|quotient[1]~1_combout\ & ((\Div2|auto_generated|divider|quotient[3]~3_combout\) # ((\Div2|auto_generated|divider|quotient[2]~2_combout\ & \Div2|auto_generated|divider|quotient[0]~0_combout\)))) # 
-- (!\Div2|auto_generated|divider|quotient[1]~1_combout\ & (\Div2|auto_generated|divider|quotient[2]~2_combout\ $ (((!\Div2|auto_generated|divider|quotient[3]~3_combout\ & \Div2|auto_generated|divider|quotient[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|quotient[2]~2_combout\,
	datab => \Div2|auto_generated|divider|quotient[3]~3_combout\,
	datac => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	datad => \Div2|auto_generated|divider|quotient[1]~1_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X24_Y27_N24
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Div2|auto_generated|divider|quotient[2]~2_combout\ & (\Div2|auto_generated|divider|quotient[3]~3_combout\)) # (!\Div2|auto_generated|divider|quotient[2]~2_combout\ & (\Div2|auto_generated|divider|quotient[1]~1_combout\ & 
-- ((\Div2|auto_generated|divider|quotient[3]~3_combout\) # (!\Div2|auto_generated|divider|quotient[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|quotient[2]~2_combout\,
	datab => \Div2|auto_generated|divider|quotient[3]~3_combout\,
	datac => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	datad => \Div2|auto_generated|divider|quotient[1]~1_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X23_Y27_N2
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Div2|auto_generated|divider|quotient[2]~2_combout\ & ((\Div2|auto_generated|divider|quotient[3]~3_combout\) # (\Div2|auto_generated|divider|quotient[1]~1_combout\ $ (\Div2|auto_generated|divider|quotient[0]~0_combout\)))) # 
-- (!\Div2|auto_generated|divider|quotient[2]~2_combout\ & (\Div2|auto_generated|divider|quotient[1]~1_combout\ & (\Div2|auto_generated|divider|quotient[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|quotient[1]~1_combout\,
	datab => \Div2|auto_generated|divider|quotient[2]~2_combout\,
	datac => \Div2|auto_generated|divider|quotient[3]~3_combout\,
	datad => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X23_Y27_N4
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Div2|auto_generated|divider|quotient[1]~1_combout\ & (((\Div2|auto_generated|divider|quotient[3]~3_combout\)))) # (!\Div2|auto_generated|divider|quotient[1]~1_combout\ & (\Div2|auto_generated|divider|quotient[2]~2_combout\ $ 
-- (((!\Div2|auto_generated|divider|quotient[3]~3_combout\ & \Div2|auto_generated|divider|quotient[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|quotient[1]~1_combout\,
	datab => \Div2|auto_generated|divider|quotient[2]~2_combout\,
	datac => \Div2|auto_generated|divider|quotient[3]~3_combout\,
	datad => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X0_Y8_N15
\mode[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(0),
	o => \mode[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N1
\mode[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(1),
	o => \mode[1]~input_o\);

ww_l1 <= \l1~output_o\;

ww_l2 <= \l2~output_o\;

ww_l1_i <= \l1_i~output_o\;

ww_l2_i <= \l2_i~output_o\;

ww_m1 <= \m1~output_o\;

ww_m2 <= \m2~output_o\;

ww_m1_i <= \m1_i~output_o\;

ww_m2_i <= \m2_i~output_o\;

ww_u1 <= \u1~output_o\;

ww_u2 <= \u2~output_o\;

ww_u1_i <= \u1_i~output_o\;

ww_u2_i <= \u2_i~output_o\;

ww_w1 <= \w1~output_o\;

ww_g1 <= \g1~output_o\;

ww_w1_i <= \w1_i~output_o\;

ww_g1_i <= \g1_i~output_o\;

ww_b1 <= \b1~output_o\;

ww_b1_i <= \b1_i~output_o\;

ww_o_key_col(0) <= \o_key_col[0]~output_o\;

ww_o_key_col(1) <= \o_key_col[1]~output_o\;

ww_o_key_col(2) <= \o_key_col[2]~output_o\;

ww_o_key_col(3) <= \o_key_col[3]~output_o\;

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_leds(8) <= \leds[8]~output_o\;

ww_leds(9) <= \leds[9]~output_o\;

ww_segment7_1(0) <= \segment7_1[0]~output_o\;

ww_segment7_1(1) <= \segment7_1[1]~output_o\;

ww_segment7_1(2) <= \segment7_1[2]~output_o\;

ww_segment7_1(3) <= \segment7_1[3]~output_o\;

ww_segment7_1(4) <= \segment7_1[4]~output_o\;

ww_segment7_1(5) <= \segment7_1[5]~output_o\;

ww_segment7_1(6) <= \segment7_1[6]~output_o\;

ww_segment7_2(0) <= \segment7_2[0]~output_o\;

ww_segment7_2(1) <= \segment7_2[1]~output_o\;

ww_segment7_2(2) <= \segment7_2[2]~output_o\;

ww_segment7_2(3) <= \segment7_2[3]~output_o\;

ww_segment7_2(4) <= \segment7_2[4]~output_o\;

ww_segment7_2(5) <= \segment7_2[5]~output_o\;

ww_segment7_2(6) <= \segment7_2[6]~output_o\;

ww_segment7_3(0) <= \segment7_3[0]~output_o\;

ww_segment7_3(1) <= \segment7_3[1]~output_o\;

ww_segment7_3(2) <= \segment7_3[2]~output_o\;

ww_segment7_3(3) <= \segment7_3[3]~output_o\;

ww_segment7_3(4) <= \segment7_3[4]~output_o\;

ww_segment7_3(5) <= \segment7_3[5]~output_o\;

ww_segment7_3(6) <= \segment7_3[6]~output_o\;

ww_segment7_4(0) <= \segment7_4[0]~output_o\;

ww_segment7_4(1) <= \segment7_4[1]~output_o\;

ww_segment7_4(2) <= \segment7_4[2]~output_o\;

ww_segment7_4(3) <= \segment7_4[3]~output_o\;

ww_segment7_4(4) <= \segment7_4[4]~output_o\;

ww_segment7_4(5) <= \segment7_4[5]~output_o\;

ww_segment7_4(6) <= \segment7_4[6]~output_o\;
END structure;


