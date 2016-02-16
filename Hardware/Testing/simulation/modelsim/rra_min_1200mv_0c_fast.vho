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

-- DATE "02/15/2016 22:05:38"

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
	l1 : BUFFER std_logic;
	l2 : BUFFER std_logic;
	m1 : BUFFER std_logic;
	m2 : BUFFER std_logic;
	u1 : BUFFER std_logic;
	u2 : BUFFER std_logic;
	w1 : BUFFER std_logic;
	g1 : BUFFER std_logic;
	b1 : BUFFER std_logic;
	i_key_row : IN std_logic_vector(3 DOWNTO 0);
	o_key_col : BUFFER std_logic_vector(3 DOWNTO 0);
	o_key_test : BUFFER std_logic_vector(15 DOWNTO 0);
	low_u : IN std_logic;
	low_d : IN std_logic;
	mid_u : IN std_logic;
	mid_d : IN std_logic;
	upp_u : IN std_logic;
	upp_d : IN std_logic;
	store : IN std_logic;
	low_target : BUFFER std_logic_vector(8 DOWNTO 0);
	speed : IN std_logic_vector(3 DOWNTO 0);
	mode : IN std_logic_vector(1 DOWNTO 0)
	);
END rra;

-- Design Ports Information
-- l1	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m1	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m2	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u1	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u2	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w1	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g1	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_col[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_col[1]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_col[2]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_col[3]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_test[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_test[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_test[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_test[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_test[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_test[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_test[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_test[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_test[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_test[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_test[10]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_test[11]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_test[12]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_test[13]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_test[14]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_key_test[15]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- low_u	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- low_d	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mid_u	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mid_d	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- upp_u	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- upp_d	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- low_target[0]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- low_target[1]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- low_target[2]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- low_target[3]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- low_target[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- low_target[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- low_target[6]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- low_target[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- low_target[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[1]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- store	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_key_row[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_key_row[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_key_row[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_key_row[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_m1 : std_logic;
SIGNAL ww_m2 : std_logic;
SIGNAL ww_u1 : std_logic;
SIGNAL ww_u2 : std_logic;
SIGNAL ww_w1 : std_logic;
SIGNAL ww_g1 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_i_key_row : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_key_col : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_key_test : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_low_u : std_logic;
SIGNAL ww_low_d : std_logic;
SIGNAL ww_mid_u : std_logic;
SIGNAL ww_mid_d : std_logic;
SIGNAL ww_upp_u : std_logic;
SIGNAL ww_upp_d : std_logic;
SIGNAL ww_store : std_logic;
SIGNAL ww_low_target : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_speed : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL \rra_servo_gripper|clk_1mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_base|clk_1mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_middle|clk_1mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_lower|clk_1mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_upper|clk_1mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_lower|LessThan0~18clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_base|LessThan0~18clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_gripper|LessThan0~18clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_wrist|clk_1mhz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_middle|LessThan0~18clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_base|current[1]~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_gripper|current[1]~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_lower|current[1]~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_upper|current[1]~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_middle|current[1]~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_wrist|current[1]~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_upper|LessThan0~18clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_wrist|LessThan0~18clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \low_u~input_o\ : std_logic;
SIGNAL \low_d~input_o\ : std_logic;
SIGNAL \mid_u~input_o\ : std_logic;
SIGNAL \mid_d~input_o\ : std_logic;
SIGNAL \upp_u~input_o\ : std_logic;
SIGNAL \upp_d~input_o\ : std_logic;
SIGNAL \mode[0]~input_o\ : std_logic;
SIGNAL \mode[1]~input_o\ : std_logic;
SIGNAL \store~input_o\ : std_logic;
SIGNAL \l1~output_o\ : std_logic;
SIGNAL \l2~output_o\ : std_logic;
SIGNAL \m1~output_o\ : std_logic;
SIGNAL \m2~output_o\ : std_logic;
SIGNAL \u1~output_o\ : std_logic;
SIGNAL \u2~output_o\ : std_logic;
SIGNAL \w1~output_o\ : std_logic;
SIGNAL \g1~output_o\ : std_logic;
SIGNAL \b1~output_o\ : std_logic;
SIGNAL \o_key_col[0]~output_o\ : std_logic;
SIGNAL \o_key_col[1]~output_o\ : std_logic;
SIGNAL \o_key_col[2]~output_o\ : std_logic;
SIGNAL \o_key_col[3]~output_o\ : std_logic;
SIGNAL \o_key_test[0]~output_o\ : std_logic;
SIGNAL \o_key_test[1]~output_o\ : std_logic;
SIGNAL \o_key_test[2]~output_o\ : std_logic;
SIGNAL \o_key_test[3]~output_o\ : std_logic;
SIGNAL \o_key_test[4]~output_o\ : std_logic;
SIGNAL \o_key_test[5]~output_o\ : std_logic;
SIGNAL \o_key_test[6]~output_o\ : std_logic;
SIGNAL \o_key_test[7]~output_o\ : std_logic;
SIGNAL \o_key_test[8]~output_o\ : std_logic;
SIGNAL \o_key_test[9]~output_o\ : std_logic;
SIGNAL \o_key_test[10]~output_o\ : std_logic;
SIGNAL \o_key_test[11]~output_o\ : std_logic;
SIGNAL \o_key_test[12]~output_o\ : std_logic;
SIGNAL \o_key_test[13]~output_o\ : std_logic;
SIGNAL \o_key_test[14]~output_o\ : std_logic;
SIGNAL \o_key_test[15]~output_o\ : std_logic;
SIGNAL \low_target[0]~output_o\ : std_logic;
SIGNAL \low_target[1]~output_o\ : std_logic;
SIGNAL \low_target[2]~output_o\ : std_logic;
SIGNAL \low_target[3]~output_o\ : std_logic;
SIGNAL \low_target[4]~output_o\ : std_logic;
SIGNAL \low_target[5]~output_o\ : std_logic;
SIGNAL \low_target[6]~output_o\ : std_logic;
SIGNAL \low_target[7]~output_o\ : std_logic;
SIGNAL \low_target[8]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[0]~9_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[0]~10\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[1]~11_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[1]~12\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[2]~13_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[2]~14\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[3]~15_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[3]~16\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[4]~17_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[4]~18\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[5]~19_combout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan3~1_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[5]~20\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[6]~21_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[6]~22\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[7]~23_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[7]~24\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz_count[8]~25_combout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan3~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan3~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|clk_1mhz~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|clk_1mhz~q\ : std_logic;
SIGNAL \rra_servo_lower|clk_1mhz~clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[0]~11_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[0]~12\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[1]~13_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[1]~14\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[2]~15_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[2]~16\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[3]~17_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[3]~18\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[4]~19_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[4]~20\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[5]~21_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[5]~22\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[6]~23_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[6]~24\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[7]~25_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[7]~26\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[8]~27_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[8]~28\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[9]~29_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~1_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[9]~30\ : std_logic;
SIGNAL \rra_servo_lower|pwm_count[10]~31_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rra_servo_lower|current[1]~1_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add6~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add6~1\ : std_logic;
SIGNAL \rra_servo_lower|Add6~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|current[1]~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~18clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_lower|interval_count[0]~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add4~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add4~1\ : std_logic;
SIGNAL \rra_servo_lower|Add4~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add4~3\ : std_logic;
SIGNAL \rra_servo_lower|Add4~4_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add4~5\ : std_logic;
SIGNAL \rra_servo_lower|Add4~6_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add4~7\ : std_logic;
SIGNAL \rra_servo_lower|Add4~8_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add4~9\ : std_logic;
SIGNAL \rra_servo_lower|Add4~10_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add4~11\ : std_logic;
SIGNAL \rra_servo_lower|Add4~12_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add4~13\ : std_logic;
SIGNAL \rra_servo_lower|Add4~14_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add4~15\ : std_logic;
SIGNAL \rra_servo_lower|Add4~16_combout\ : std_logic;
SIGNAL \speed[3]~input_o\ : std_logic;
SIGNAL \speed[1]~input_o\ : std_logic;
SIGNAL \speed[2]~input_o\ : std_logic;
SIGNAL \speed[0]~input_o\ : std_logic;
SIGNAL \rra_servo_lower|Add0~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add1~1\ : std_logic;
SIGNAL \rra_servo_lower|Add1~3\ : std_logic;
SIGNAL \rra_servo_lower|Add1~5\ : std_logic;
SIGNAL \rra_servo_lower|Add1~6_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add1~4_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add1~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add1~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add0~1_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add0~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add2~1\ : std_logic;
SIGNAL \rra_servo_lower|Add2~3\ : std_logic;
SIGNAL \rra_servo_lower|Add2~5\ : std_logic;
SIGNAL \rra_servo_lower|Add2~7\ : std_logic;
SIGNAL \rra_servo_lower|Add2~9\ : std_logic;
SIGNAL \rra_servo_lower|Add2~11\ : std_logic;
SIGNAL \rra_servo_lower|Add2~13\ : std_logic;
SIGNAL \rra_servo_lower|Add2~14_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add2~16_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add2~12_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add2~17_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add2~10_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add2~18_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add2~8_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add2~19_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add2~6_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add2~20_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add2~4_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add2~21_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add2~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add2~22_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add2~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add2~23_combout\ : std_logic;
SIGNAL \rra_servo_lower|interval[1]~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~1_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~3_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~5_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~7_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~9_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~11_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~13_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~15_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~17_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan0~18_combout\ : std_logic;
SIGNAL \rra_servo_lower|current[1]~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|current[1]~2clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_lower|Add6~3\ : std_logic;
SIGNAL \rra_servo_lower|Add6~4_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add6~5\ : std_logic;
SIGNAL \rra_servo_lower|Add6~6_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add6~7\ : std_logic;
SIGNAL \rra_servo_lower|Add6~8_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add6~9\ : std_logic;
SIGNAL \rra_servo_lower|Add6~10_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add6~11\ : std_logic;
SIGNAL \rra_servo_lower|Add6~12_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add6~13\ : std_logic;
SIGNAL \rra_servo_lower|Add6~14_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add8~1\ : std_logic;
SIGNAL \rra_servo_lower|Add8~3\ : std_logic;
SIGNAL \rra_servo_lower|Add8~5\ : std_logic;
SIGNAL \rra_servo_lower|Add8~7\ : std_logic;
SIGNAL \rra_servo_lower|Add8~9\ : std_logic;
SIGNAL \rra_servo_lower|Add8~11\ : std_logic;
SIGNAL \rra_servo_lower|Add8~12_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add8~10_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add8~8_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add8~6_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add8~4_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add8~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|Add8~0_combout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan5~1_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan5~3_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan5~5_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan5~7_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan5~9_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan5~11_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan5~13_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan5~15_cout\ : std_logic;
SIGNAL \rra_servo_lower|LessThan5~16_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~3_combout\ : std_logic;
SIGNAL \rra_servo_lower|pwm_out~q\ : std_logic;
SIGNAL \rra_servo_lower|o_pwm_out~feeder_combout\ : std_logic;
SIGNAL \rra_servo_lower|o_pwm_out~q\ : std_logic;
SIGNAL \rra_servo_middle|clk_1mhz~0_combout\ : std_logic;
SIGNAL \rra_servo_middle|clk_1mhz~q\ : std_logic;
SIGNAL \rra_servo_middle|clk_1mhz~clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[0]~11_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[0]~12\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[1]~13_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[1]~14\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[2]~15_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[2]~16\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[3]~17_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[3]~18\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[4]~19_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[4]~20\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[5]~21_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[5]~22\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[6]~23_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_out~0_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[6]~24\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[7]~25_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[7]~26\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[8]~27_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[8]~28\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[9]~29_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_out~1_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add6~0_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add6~1\ : std_logic;
SIGNAL \rra_servo_middle|Add6~2_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add6~3\ : std_logic;
SIGNAL \rra_servo_middle|Add6~4_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add6~5\ : std_logic;
SIGNAL \rra_servo_middle|Add6~6_combout\ : std_logic;
SIGNAL \rra_servo_middle|current[1]~0_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add6~7\ : std_logic;
SIGNAL \rra_servo_middle|Add6~8_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add6~9\ : std_logic;
SIGNAL \rra_servo_middle|Add6~10_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add6~11\ : std_logic;
SIGNAL \rra_servo_middle|Add6~12_combout\ : std_logic;
SIGNAL \rra_servo_middle|current[1]~1_combout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~18clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_middle|interval_count[0]~0_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add4~0_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add4~1\ : std_logic;
SIGNAL \rra_servo_middle|Add4~2_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add4~3\ : std_logic;
SIGNAL \rra_servo_middle|Add4~4_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add4~5\ : std_logic;
SIGNAL \rra_servo_middle|Add4~6_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add4~7\ : std_logic;
SIGNAL \rra_servo_middle|Add4~8_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add4~9\ : std_logic;
SIGNAL \rra_servo_middle|Add4~10_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add4~11\ : std_logic;
SIGNAL \rra_servo_middle|Add4~12_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add4~13\ : std_logic;
SIGNAL \rra_servo_middle|Add4~14_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add4~15\ : std_logic;
SIGNAL \rra_servo_middle|Add4~16_combout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~1_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~3_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~5_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~7_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~9_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~11_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~13_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~15_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~17_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan0~18_combout\ : std_logic;
SIGNAL \rra_servo_middle|current[1]~2_combout\ : std_logic;
SIGNAL \rra_servo_middle|current[1]~2clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_middle|Add6~13\ : std_logic;
SIGNAL \rra_servo_middle|Add6~14_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add8~1\ : std_logic;
SIGNAL \rra_servo_middle|Add8~3\ : std_logic;
SIGNAL \rra_servo_middle|Add8~5\ : std_logic;
SIGNAL \rra_servo_middle|Add8~7\ : std_logic;
SIGNAL \rra_servo_middle|Add8~9\ : std_logic;
SIGNAL \rra_servo_middle|Add8~11\ : std_logic;
SIGNAL \rra_servo_middle|Add8~12_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[9]~30\ : std_logic;
SIGNAL \rra_servo_middle|pwm_count[10]~31_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add8~10_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add8~8_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add8~6_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add8~4_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add8~2_combout\ : std_logic;
SIGNAL \rra_servo_middle|Add8~0_combout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan5~1_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan5~3_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan5~5_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan5~7_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan5~9_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan5~11_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan5~13_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan5~15_cout\ : std_logic;
SIGNAL \rra_servo_middle|LessThan5~16_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_out~2_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_out~3_combout\ : std_logic;
SIGNAL \rra_servo_middle|pwm_out~q\ : std_logic;
SIGNAL \rra_servo_middle|o_pwm_out~feeder_combout\ : std_logic;
SIGNAL \rra_servo_middle|o_pwm_out~q\ : std_logic;
SIGNAL \rra_servo_upper|clk_1mhz~0_combout\ : std_logic;
SIGNAL \rra_servo_upper|clk_1mhz~q\ : std_logic;
SIGNAL \rra_servo_upper|clk_1mhz~clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[0]~11_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[0]~12\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[1]~13_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[1]~14\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[2]~15_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[2]~16\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[3]~17_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[3]~18\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[4]~19_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[4]~20\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[5]~21_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[5]~22\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[6]~23_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[6]~24\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[7]~25_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[7]~26\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[8]~27_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[8]~28\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[9]~29_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[9]~30\ : std_logic;
SIGNAL \rra_servo_upper|pwm_count[10]~31_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out~1_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add6~0_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add6~1\ : std_logic;
SIGNAL \rra_servo_upper|Add6~2_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add6~3\ : std_logic;
SIGNAL \rra_servo_upper|Add6~4_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add6~5\ : std_logic;
SIGNAL \rra_servo_upper|Add6~6_combout\ : std_logic;
SIGNAL \rra_servo_upper|current[1]~0_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add6~7\ : std_logic;
SIGNAL \rra_servo_upper|Add6~8_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add6~9\ : std_logic;
SIGNAL \rra_servo_upper|Add6~10_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add6~11\ : std_logic;
SIGNAL \rra_servo_upper|Add6~12_combout\ : std_logic;
SIGNAL \rra_servo_upper|current[1]~1_combout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~18clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_upper|interval_count[0]~0_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add4~0_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add4~1\ : std_logic;
SIGNAL \rra_servo_upper|Add4~2_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add4~3\ : std_logic;
SIGNAL \rra_servo_upper|Add4~4_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add4~5\ : std_logic;
SIGNAL \rra_servo_upper|Add4~6_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add4~7\ : std_logic;
SIGNAL \rra_servo_upper|Add4~8_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add4~9\ : std_logic;
SIGNAL \rra_servo_upper|Add4~10_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add4~11\ : std_logic;
SIGNAL \rra_servo_upper|Add4~12_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add4~13\ : std_logic;
SIGNAL \rra_servo_upper|Add4~14_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add4~15\ : std_logic;
SIGNAL \rra_servo_upper|Add4~16_combout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~1_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~3_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~5_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~7_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~9_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~11_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~13_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~15_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~17_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan0~18_combout\ : std_logic;
SIGNAL \rra_servo_upper|current[1]~2_combout\ : std_logic;
SIGNAL \rra_servo_upper|current[1]~2clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_upper|Add6~13\ : std_logic;
SIGNAL \rra_servo_upper|Add6~14_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add8~1\ : std_logic;
SIGNAL \rra_servo_upper|Add8~3\ : std_logic;
SIGNAL \rra_servo_upper|Add8~5\ : std_logic;
SIGNAL \rra_servo_upper|Add8~7\ : std_logic;
SIGNAL \rra_servo_upper|Add8~9\ : std_logic;
SIGNAL \rra_servo_upper|Add8~11\ : std_logic;
SIGNAL \rra_servo_upper|Add8~12_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add8~10_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add8~8_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add8~6_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add8~4_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add8~2_combout\ : std_logic;
SIGNAL \rra_servo_upper|Add8~0_combout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan5~1_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan5~3_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan5~5_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan5~7_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan5~9_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan5~11_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan5~13_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan5~15_cout\ : std_logic;
SIGNAL \rra_servo_upper|LessThan5~16_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out~0_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out~2_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out~3_combout\ : std_logic;
SIGNAL \rra_servo_upper|pwm_out~q\ : std_logic;
SIGNAL \rra_servo_upper|o_pwm_out~feeder_combout\ : std_logic;
SIGNAL \rra_servo_upper|o_pwm_out~q\ : std_logic;
SIGNAL \rra_servo_wrist|clk_1mhz~0_combout\ : std_logic;
SIGNAL \rra_servo_wrist|clk_1mhz~q\ : std_logic;
SIGNAL \rra_servo_wrist|clk_1mhz~clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[0]~11_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[0]~12\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[1]~13_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[1]~14\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[2]~15_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[2]~16\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[3]~17_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[3]~18\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[4]~19_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[4]~20\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[5]~21_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[5]~22\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[6]~23_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[6]~24\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[7]~25_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[7]~26\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[8]~27_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[8]~28\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[9]~29_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_out~1_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[9]~30\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_count[10]~31_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_out~0_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add6~0_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add6~1\ : std_logic;
SIGNAL \rra_servo_wrist|Add6~2_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add6~3\ : std_logic;
SIGNAL \rra_servo_wrist|Add6~4_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add6~5\ : std_logic;
SIGNAL \rra_servo_wrist|Add6~6_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add6~7\ : std_logic;
SIGNAL \rra_servo_wrist|Add6~8_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add6~9\ : std_logic;
SIGNAL \rra_servo_wrist|Add6~10_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add6~11\ : std_logic;
SIGNAL \rra_servo_wrist|Add6~12_combout\ : std_logic;
SIGNAL \rra_servo_wrist|current[1]~1_combout\ : std_logic;
SIGNAL \rra_servo_wrist|current[1]~0_combout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan0~18clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_wrist|interval_count[0]~0_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add4~0_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add4~1\ : std_logic;
SIGNAL \rra_servo_wrist|Add4~2_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add4~3\ : std_logic;
SIGNAL \rra_servo_wrist|Add4~4_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add4~5\ : std_logic;
SIGNAL \rra_servo_wrist|Add4~6_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add4~7\ : std_logic;
SIGNAL \rra_servo_wrist|Add4~8_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add4~9\ : std_logic;
SIGNAL \rra_servo_wrist|Add4~10_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add4~11\ : std_logic;
SIGNAL \rra_servo_wrist|Add4~12_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add4~13\ : std_logic;
SIGNAL \rra_servo_wrist|Add4~14_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add4~15\ : std_logic;
SIGNAL \rra_servo_wrist|Add4~16_combout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan0~1_cout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan0~3_cout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan0~5_cout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan0~7_cout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan0~9_cout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan0~11_cout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan0~13_cout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan0~15_cout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan0~17_cout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan0~18_combout\ : std_logic;
SIGNAL \rra_servo_wrist|current[1]~2_combout\ : std_logic;
SIGNAL \rra_servo_wrist|current[1]~2clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_wrist|Add6~13\ : std_logic;
SIGNAL \rra_servo_wrist|Add6~14_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add8~1\ : std_logic;
SIGNAL \rra_servo_wrist|Add8~3\ : std_logic;
SIGNAL \rra_servo_wrist|Add8~5\ : std_logic;
SIGNAL \rra_servo_wrist|Add8~7\ : std_logic;
SIGNAL \rra_servo_wrist|Add8~9\ : std_logic;
SIGNAL \rra_servo_wrist|Add8~11\ : std_logic;
SIGNAL \rra_servo_wrist|Add8~12_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add8~10_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add8~8_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add8~6_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add8~4_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add8~2_combout\ : std_logic;
SIGNAL \rra_servo_wrist|Add8~0_combout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan5~1_cout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan5~3_cout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan5~5_cout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan5~7_cout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan5~9_cout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan5~11_cout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan5~13_cout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan5~15_cout\ : std_logic;
SIGNAL \rra_servo_wrist|LessThan5~16_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_out~2_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_out~3_combout\ : std_logic;
SIGNAL \rra_servo_wrist|pwm_out~q\ : std_logic;
SIGNAL \rra_servo_wrist|o_pwm_out~feeder_combout\ : std_logic;
SIGNAL \rra_servo_wrist|o_pwm_out~q\ : std_logic;
SIGNAL \rra_servo_gripper|clk_1mhz~0_combout\ : std_logic;
SIGNAL \rra_servo_gripper|clk_1mhz~q\ : std_logic;
SIGNAL \rra_servo_gripper|clk_1mhz~clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[0]~11_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[0]~12\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[1]~13_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[1]~14\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[2]~15_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[2]~16\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[3]~17_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[3]~18\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[4]~19_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[4]~20\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[5]~21_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[5]~22\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[6]~23_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[6]~24\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[7]~25_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[7]~26\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[8]~27_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[8]~28\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[9]~29_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[9]~30\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_count[10]~31_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_out~1_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_out~0_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add6~0_combout\ : std_logic;
SIGNAL \rra_servo_gripper|current[1]~1_combout\ : std_logic;
SIGNAL \rra_servo_gripper|current[1]~0_combout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan0~18clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_gripper|interval_count[0]~0_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add4~0_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add4~1\ : std_logic;
SIGNAL \rra_servo_gripper|Add4~2_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add4~3\ : std_logic;
SIGNAL \rra_servo_gripper|Add4~4_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add4~5\ : std_logic;
SIGNAL \rra_servo_gripper|Add4~6_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add4~7\ : std_logic;
SIGNAL \rra_servo_gripper|Add4~8_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add4~9\ : std_logic;
SIGNAL \rra_servo_gripper|Add4~10_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add4~11\ : std_logic;
SIGNAL \rra_servo_gripper|Add4~12_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add4~13\ : std_logic;
SIGNAL \rra_servo_gripper|Add4~14_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add4~15\ : std_logic;
SIGNAL \rra_servo_gripper|Add4~16_combout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan0~1_cout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan0~3_cout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan0~5_cout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan0~7_cout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan0~9_cout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan0~11_cout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan0~13_cout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan0~15_cout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan0~17_cout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan0~18_combout\ : std_logic;
SIGNAL \rra_servo_gripper|current[1]~2_combout\ : std_logic;
SIGNAL \rra_servo_gripper|current[1]~2clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_gripper|Add6~1\ : std_logic;
SIGNAL \rra_servo_gripper|Add6~2_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add6~3\ : std_logic;
SIGNAL \rra_servo_gripper|Add6~4_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add6~5\ : std_logic;
SIGNAL \rra_servo_gripper|Add6~6_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add6~7\ : std_logic;
SIGNAL \rra_servo_gripper|Add6~8_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add6~9\ : std_logic;
SIGNAL \rra_servo_gripper|Add6~10_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add6~11\ : std_logic;
SIGNAL \rra_servo_gripper|Add6~12_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add6~13\ : std_logic;
SIGNAL \rra_servo_gripper|Add6~14_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add8~1\ : std_logic;
SIGNAL \rra_servo_gripper|Add8~3\ : std_logic;
SIGNAL \rra_servo_gripper|Add8~5\ : std_logic;
SIGNAL \rra_servo_gripper|Add8~7\ : std_logic;
SIGNAL \rra_servo_gripper|Add8~9\ : std_logic;
SIGNAL \rra_servo_gripper|Add8~11\ : std_logic;
SIGNAL \rra_servo_gripper|Add8~12_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add8~10_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add8~8_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add8~6_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add8~4_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add8~2_combout\ : std_logic;
SIGNAL \rra_servo_gripper|Add8~0_combout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan5~1_cout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan5~3_cout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan5~5_cout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan5~7_cout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan5~9_cout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan5~11_cout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan5~13_cout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan5~15_cout\ : std_logic;
SIGNAL \rra_servo_gripper|LessThan5~16_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_out~2_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_out~3_combout\ : std_logic;
SIGNAL \rra_servo_gripper|pwm_out~q\ : std_logic;
SIGNAL \rra_servo_gripper|o_pwm_out~feeder_combout\ : std_logic;
SIGNAL \rra_servo_gripper|o_pwm_out~q\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz~0_combout\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz~q\ : std_logic;
SIGNAL \rra_servo_base|clk_1mhz~clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[0]~11_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[0]~12\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[1]~13_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[1]~14\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[2]~15_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[2]~16\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[3]~17_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[3]~18\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[4]~19_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[4]~20\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[5]~21_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[5]~22\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[6]~23_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[6]~24\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[7]~25_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[7]~26\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[8]~27_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[8]~28\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[9]~29_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_out~1_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[9]~30\ : std_logic;
SIGNAL \rra_servo_base|pwm_count[10]~31_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_out~0_combout\ : std_logic;
SIGNAL \rra_servo_base|Add6~0_combout\ : std_logic;
SIGNAL \rra_servo_base|Add6~1\ : std_logic;
SIGNAL \rra_servo_base|Add6~2_combout\ : std_logic;
SIGNAL \rra_servo_base|Add6~3\ : std_logic;
SIGNAL \rra_servo_base|Add6~4_combout\ : std_logic;
SIGNAL \rra_servo_base|Add6~5\ : std_logic;
SIGNAL \rra_servo_base|Add6~6_combout\ : std_logic;
SIGNAL \rra_servo_base|current[1]~0_combout\ : std_logic;
SIGNAL \rra_servo_base|Add6~7\ : std_logic;
SIGNAL \rra_servo_base|Add6~8_combout\ : std_logic;
SIGNAL \rra_servo_base|Add6~9\ : std_logic;
SIGNAL \rra_servo_base|Add6~10_combout\ : std_logic;
SIGNAL \rra_servo_base|Add6~11\ : std_logic;
SIGNAL \rra_servo_base|Add6~12_combout\ : std_logic;
SIGNAL \rra_servo_base|current[1]~1_combout\ : std_logic;
SIGNAL \rra_servo_base|interval_count[0]~0_combout\ : std_logic;
SIGNAL \rra_servo_base|Add4~0_combout\ : std_logic;
SIGNAL \rra_servo_base|LessThan0~18clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_base|Add4~1\ : std_logic;
SIGNAL \rra_servo_base|Add4~2_combout\ : std_logic;
SIGNAL \rra_servo_base|Add4~3\ : std_logic;
SIGNAL \rra_servo_base|Add4~4_combout\ : std_logic;
SIGNAL \rra_servo_base|Add4~5\ : std_logic;
SIGNAL \rra_servo_base|Add4~6_combout\ : std_logic;
SIGNAL \rra_servo_base|Add4~7\ : std_logic;
SIGNAL \rra_servo_base|Add4~8_combout\ : std_logic;
SIGNAL \rra_servo_base|Add4~9\ : std_logic;
SIGNAL \rra_servo_base|Add4~10_combout\ : std_logic;
SIGNAL \rra_servo_base|Add4~11\ : std_logic;
SIGNAL \rra_servo_base|Add4~12_combout\ : std_logic;
SIGNAL \rra_servo_base|Add4~13\ : std_logic;
SIGNAL \rra_servo_base|Add4~14_combout\ : std_logic;
SIGNAL \rra_servo_base|Add4~15\ : std_logic;
SIGNAL \rra_servo_base|Add4~16_combout\ : std_logic;
SIGNAL \rra_servo_base|LessThan0~1_cout\ : std_logic;
SIGNAL \rra_servo_base|LessThan0~3_cout\ : std_logic;
SIGNAL \rra_servo_base|LessThan0~5_cout\ : std_logic;
SIGNAL \rra_servo_base|LessThan0~7_cout\ : std_logic;
SIGNAL \rra_servo_base|LessThan0~9_cout\ : std_logic;
SIGNAL \rra_servo_base|LessThan0~11_cout\ : std_logic;
SIGNAL \rra_servo_base|LessThan0~13_cout\ : std_logic;
SIGNAL \rra_servo_base|LessThan0~15_cout\ : std_logic;
SIGNAL \rra_servo_base|LessThan0~17_cout\ : std_logic;
SIGNAL \rra_servo_base|LessThan0~18_combout\ : std_logic;
SIGNAL \rra_servo_base|current[1]~2_combout\ : std_logic;
SIGNAL \rra_servo_base|current[1]~2clkctrl_outclk\ : std_logic;
SIGNAL \rra_servo_base|Add6~13\ : std_logic;
SIGNAL \rra_servo_base|Add6~14_combout\ : std_logic;
SIGNAL \rra_servo_base|Add8~1\ : std_logic;
SIGNAL \rra_servo_base|Add8~3\ : std_logic;
SIGNAL \rra_servo_base|Add8~5\ : std_logic;
SIGNAL \rra_servo_base|Add8~7\ : std_logic;
SIGNAL \rra_servo_base|Add8~9\ : std_logic;
SIGNAL \rra_servo_base|Add8~11\ : std_logic;
SIGNAL \rra_servo_base|Add8~12_combout\ : std_logic;
SIGNAL \rra_servo_base|Add8~10_combout\ : std_logic;
SIGNAL \rra_servo_base|Add8~8_combout\ : std_logic;
SIGNAL \rra_servo_base|Add8~6_combout\ : std_logic;
SIGNAL \rra_servo_base|Add8~4_combout\ : std_logic;
SIGNAL \rra_servo_base|Add8~2_combout\ : std_logic;
SIGNAL \rra_servo_base|Add8~0_combout\ : std_logic;
SIGNAL \rra_servo_base|LessThan5~1_cout\ : std_logic;
SIGNAL \rra_servo_base|LessThan5~3_cout\ : std_logic;
SIGNAL \rra_servo_base|LessThan5~5_cout\ : std_logic;
SIGNAL \rra_servo_base|LessThan5~7_cout\ : std_logic;
SIGNAL \rra_servo_base|LessThan5~9_cout\ : std_logic;
SIGNAL \rra_servo_base|LessThan5~11_cout\ : std_logic;
SIGNAL \rra_servo_base|LessThan5~13_cout\ : std_logic;
SIGNAL \rra_servo_base|LessThan5~15_cout\ : std_logic;
SIGNAL \rra_servo_base|LessThan5~16_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_out~2_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_out~3_combout\ : std_logic;
SIGNAL \rra_servo_base|pwm_out~q\ : std_logic;
SIGNAL \rra_servo_base|o_pwm_out~feeder_combout\ : std_logic;
SIGNAL \rra_servo_base|o_pwm_out~q\ : std_logic;
SIGNAL \keypad|col_count[0]~1_combout\ : std_logic;
SIGNAL \keypad|col_count[1]~0_combout\ : std_logic;
SIGNAL \keypad|Mux49~0_combout\ : std_logic;
SIGNAL \keypad|Mux52~0_combout\ : std_logic;
SIGNAL \keypad|Mux49~1_combout\ : std_logic;
SIGNAL \keypad|Mux49~2_combout\ : std_logic;
SIGNAL \i_key_row[3]~input_o\ : std_logic;
SIGNAL \i_key_row[2]~input_o\ : std_logic;
SIGNAL \i_key_row[0]~input_o\ : std_logic;
SIGNAL \i_key_row[1]~input_o\ : std_logic;
SIGNAL \keypad|Mux48~2_combout\ : std_logic;
SIGNAL \keypad|Mux48~3_combout\ : std_logic;
SIGNAL \keypad|key_next[0]~0_combout\ : std_logic;
SIGNAL \keypad|key_out[0]~feeder_combout\ : std_logic;
SIGNAL \keypad|Mux16~1_combout\ : std_logic;
SIGNAL \keypad|Mux16~0_combout\ : std_logic;
SIGNAL \keypad|Mux16~2_combout\ : std_logic;
SIGNAL \keypad|err~q\ : std_logic;
SIGNAL \keypad|Mux47~0_combout\ : std_logic;
SIGNAL \keypad|key_out[1]~feeder_combout\ : std_logic;
SIGNAL \keypad|Mux46~0_combout\ : std_logic;
SIGNAL \keypad|key_out[2]~feeder_combout\ : std_logic;
SIGNAL \keypad|Mux45~0_combout\ : std_logic;
SIGNAL \keypad|key_out[3]~feeder_combout\ : std_logic;
SIGNAL \keypad|Mux44~2_combout\ : std_logic;
SIGNAL \keypad|Mux44~3_combout\ : std_logic;
SIGNAL \keypad|key_out[4]~feeder_combout\ : std_logic;
SIGNAL \keypad|Mux43~2_combout\ : std_logic;
SIGNAL \keypad|key_out[5]~feeder_combout\ : std_logic;
SIGNAL \keypad|Mux42~2_combout\ : std_logic;
SIGNAL \keypad|key_out[6]~feeder_combout\ : std_logic;
SIGNAL \keypad|Mux41~2_combout\ : std_logic;
SIGNAL \keypad|Mux41~3_combout\ : std_logic;
SIGNAL \keypad|key_out[7]~feeder_combout\ : std_logic;
SIGNAL \keypad|Mux40~2_combout\ : std_logic;
SIGNAL \keypad|key_out[8]~feeder_combout\ : std_logic;
SIGNAL \keypad|Mux39~2_combout\ : std_logic;
SIGNAL \keypad|key_out[9]~feeder_combout\ : std_logic;
SIGNAL \keypad|Mux38~2_combout\ : std_logic;
SIGNAL \keypad|key_out[10]~feeder_combout\ : std_logic;
SIGNAL \keypad|Mux37~2_combout\ : std_logic;
SIGNAL \keypad|key_out[11]~feeder_combout\ : std_logic;
SIGNAL \keypad|Mux36~0_combout\ : std_logic;
SIGNAL \keypad|key_out[12]~feeder_combout\ : std_logic;
SIGNAL \keypad|Mux35~2_combout\ : std_logic;
SIGNAL \keypad|key_out[13]~feeder_combout\ : std_logic;
SIGNAL \keypad|Mux34~2_combout\ : std_logic;
SIGNAL \keypad|key_out[14]~feeder_combout\ : std_logic;
SIGNAL \keypad|Mux33~2_combout\ : std_logic;
SIGNAL \keypad|key_out[15]~feeder_combout\ : std_logic;
SIGNAL \keypad|col_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \rra_servo_lower|pwm_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \rra_servo_lower|interval_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \rra_servo_lower|current\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rra_servo_gripper|current\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rra_servo_wrist|current\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \keypad|key_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rra_servo_wrist|pwm_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \rra_servo_base|pwm_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \rra_servo_middle|interval_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \rra_servo_wrist|interval_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \keypad|key_next\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rra_servo_upper|interval_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \rra_servo_upper|pwm_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \rra_servo_base|interval_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \rra_servo_upper|current\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rra_servo_middle|current\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rra_servo_base|clk_1mhz_count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rra_servo_base|current\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rra_servo_gripper|interval_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \rra_servo_middle|pwm_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \rra_servo_gripper|pwm_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \keypad|key_col\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rra_servo_lower|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \rra_servo_base|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \rra_servo_gripper|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \rra_servo_wrist|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \rra_servo_upper|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \rra_servo_middle|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \rra_servo_lower|ALT_INV_pwm_out~2_combout\ : std_logic;
SIGNAL \keypad|ALT_INV_err~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
l1 <= ww_l1;
l2 <= ww_l2;
m1 <= ww_m1;
m2 <= ww_m2;
u1 <= ww_u1;
u2 <= ww_u2;
w1 <= ww_w1;
g1 <= ww_g1;
b1 <= ww_b1;
ww_i_key_row <= i_key_row;
o_key_col <= ww_o_key_col;
o_key_test <= ww_o_key_test;
ww_low_u <= low_u;
ww_low_d <= low_d;
ww_mid_u <= mid_u;
ww_mid_d <= mid_d;
ww_upp_u <= upp_u;
ww_upp_d <= upp_d;
ww_store <= store;
low_target <= ww_low_target;
ww_speed <= speed;
ww_mode <= mode;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rra_servo_gripper|clk_1mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_gripper|clk_1mhz~q\);

\rra_servo_base|clk_1mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_base|clk_1mhz~q\);

\rra_servo_middle|clk_1mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_middle|clk_1mhz~q\);

\rra_servo_lower|clk_1mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_lower|clk_1mhz~q\);

\rra_servo_upper|clk_1mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_upper|clk_1mhz~q\);

\rra_servo_lower|LessThan0~18clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_lower|LessThan0~18_combout\);

\rra_servo_base|LessThan0~18clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_base|LessThan0~18_combout\);

\rra_servo_gripper|LessThan0~18clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_gripper|LessThan0~18_combout\);

\rra_servo_wrist|clk_1mhz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_wrist|clk_1mhz~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rra_servo_middle|LessThan0~18clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_middle|LessThan0~18_combout\);

\rra_servo_base|current[1]~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_base|current[1]~2_combout\);

\rra_servo_gripper|current[1]~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_gripper|current[1]~2_combout\);

\rra_servo_lower|current[1]~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_lower|current[1]~2_combout\);

\rra_servo_upper|current[1]~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_upper|current[1]~2_combout\);

\rra_servo_middle|current[1]~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_middle|current[1]~2_combout\);

\rra_servo_wrist|current[1]~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_wrist|current[1]~2_combout\);

\rra_servo_upper|LessThan0~18clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_upper|LessThan0~18_combout\);

\rra_servo_wrist|LessThan0~18clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rra_servo_wrist|LessThan0~18_combout\);
\rra_servo_lower|ALT_INV_LessThan3~2_combout\ <= NOT \rra_servo_lower|LessThan3~2_combout\;
\rra_servo_base|ALT_INV_pwm_out~2_combout\ <= NOT \rra_servo_base|pwm_out~2_combout\;
\rra_servo_gripper|ALT_INV_pwm_out~2_combout\ <= NOT \rra_servo_gripper|pwm_out~2_combout\;
\rra_servo_wrist|ALT_INV_pwm_out~2_combout\ <= NOT \rra_servo_wrist|pwm_out~2_combout\;
\rra_servo_upper|ALT_INV_pwm_out~2_combout\ <= NOT \rra_servo_upper|pwm_out~2_combout\;
\rra_servo_middle|ALT_INV_pwm_out~2_combout\ <= NOT \rra_servo_middle|pwm_out~2_combout\;
\rra_servo_lower|ALT_INV_pwm_out~2_combout\ <= NOT \rra_servo_lower|pwm_out~2_combout\;
\keypad|ALT_INV_err~q\ <= NOT \keypad|err~q\;

-- Location: IOOBUF_X21_Y29_N16
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

-- Location: IOOBUF_X21_Y29_N9
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

-- Location: IOOBUF_X14_Y29_N16
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

-- Location: IOOBUF_X14_Y29_N2
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

-- Location: IOOBUF_X11_Y29_N2
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

-- Location: IOOBUF_X11_Y29_N9
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

-- Location: IOOBUF_X5_Y29_N9
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

-- Location: IOOBUF_X23_Y29_N30
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

-- Location: IOOBUF_X21_Y29_N2
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

-- Location: IOOBUF_X1_Y0_N2
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

-- Location: IOOBUF_X9_Y0_N9
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

-- Location: IOOBUF_X9_Y0_N2
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

-- Location: IOOBUF_X14_Y0_N2
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
\o_key_test[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(0),
	devoe => ww_devoe,
	o => \o_key_test[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\o_key_test[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(1),
	devoe => ww_devoe,
	o => \o_key_test[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\o_key_test[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(2),
	devoe => ww_devoe,
	o => \o_key_test[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\o_key_test[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(3),
	devoe => ww_devoe,
	o => \o_key_test[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\o_key_test[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(4),
	devoe => ww_devoe,
	o => \o_key_test[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\o_key_test[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(5),
	devoe => ww_devoe,
	o => \o_key_test[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\o_key_test[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(6),
	devoe => ww_devoe,
	o => \o_key_test[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\o_key_test[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(7),
	devoe => ww_devoe,
	o => \o_key_test[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\o_key_test[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(8),
	devoe => ww_devoe,
	o => \o_key_test[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\o_key_test[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(9),
	devoe => ww_devoe,
	o => \o_key_test[9]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\o_key_test[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(10),
	devoe => ww_devoe,
	o => \o_key_test[10]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\o_key_test[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(11),
	devoe => ww_devoe,
	o => \o_key_test[11]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\o_key_test[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(12),
	devoe => ww_devoe,
	o => \o_key_test[12]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\o_key_test[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(13),
	devoe => ww_devoe,
	o => \o_key_test[13]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\o_key_test[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(14),
	devoe => ww_devoe,
	o => \o_key_test[14]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\o_key_test[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad|key_out\(15),
	devoe => ww_devoe,
	o => \o_key_test[15]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\low_target[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \low_target[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N9
\low_target[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \low_target[1]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\low_target[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \low_target[2]~output_o\);

-- Location: IOOBUF_X41_Y12_N2
\low_target[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \low_target[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
\low_target[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \low_target[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\low_target[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \low_target[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\low_target[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \low_target[6]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\low_target[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \low_target[7]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\low_target[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \low_target[8]~output_o\);

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

-- Location: LCCOMB_X2_Y14_N4
\rra_servo_base|clk_1mhz_count[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1mhz_count[0]~9_combout\ = \rra_servo_base|clk_1mhz_count\(0) $ (VCC)
-- \rra_servo_base|clk_1mhz_count[0]~10\ = CARRY(\rra_servo_base|clk_1mhz_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|clk_1mhz_count\(0),
	datad => VCC,
	combout => \rra_servo_base|clk_1mhz_count[0]~9_combout\,
	cout => \rra_servo_base|clk_1mhz_count[0]~10\);

-- Location: FF_X2_Y14_N5
\rra_servo_base|clk_1mhz_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1mhz_count[0]~9_combout\,
	sclr => \rra_servo_lower|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1mhz_count\(0));

-- Location: LCCOMB_X2_Y14_N6
\rra_servo_base|clk_1mhz_count[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1mhz_count[1]~11_combout\ = (\rra_servo_base|clk_1mhz_count\(1) & (!\rra_servo_base|clk_1mhz_count[0]~10\)) # (!\rra_servo_base|clk_1mhz_count\(1) & ((\rra_servo_base|clk_1mhz_count[0]~10\) # (GND)))
-- \rra_servo_base|clk_1mhz_count[1]~12\ = CARRY((!\rra_servo_base|clk_1mhz_count[0]~10\) # (!\rra_servo_base|clk_1mhz_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|clk_1mhz_count\(1),
	datad => VCC,
	cin => \rra_servo_base|clk_1mhz_count[0]~10\,
	combout => \rra_servo_base|clk_1mhz_count[1]~11_combout\,
	cout => \rra_servo_base|clk_1mhz_count[1]~12\);

-- Location: FF_X2_Y14_N7
\rra_servo_base|clk_1mhz_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1mhz_count[1]~11_combout\,
	sclr => \rra_servo_lower|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1mhz_count\(1));

-- Location: LCCOMB_X2_Y14_N8
\rra_servo_base|clk_1mhz_count[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1mhz_count[2]~13_combout\ = (\rra_servo_base|clk_1mhz_count\(2) & (\rra_servo_base|clk_1mhz_count[1]~12\ $ (GND))) # (!\rra_servo_base|clk_1mhz_count\(2) & (!\rra_servo_base|clk_1mhz_count[1]~12\ & VCC))
-- \rra_servo_base|clk_1mhz_count[2]~14\ = CARRY((\rra_servo_base|clk_1mhz_count\(2) & !\rra_servo_base|clk_1mhz_count[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|clk_1mhz_count\(2),
	datad => VCC,
	cin => \rra_servo_base|clk_1mhz_count[1]~12\,
	combout => \rra_servo_base|clk_1mhz_count[2]~13_combout\,
	cout => \rra_servo_base|clk_1mhz_count[2]~14\);

-- Location: FF_X2_Y14_N9
\rra_servo_base|clk_1mhz_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1mhz_count[2]~13_combout\,
	sclr => \rra_servo_lower|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1mhz_count\(2));

-- Location: LCCOMB_X2_Y14_N10
\rra_servo_base|clk_1mhz_count[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1mhz_count[3]~15_combout\ = (\rra_servo_base|clk_1mhz_count\(3) & (!\rra_servo_base|clk_1mhz_count[2]~14\)) # (!\rra_servo_base|clk_1mhz_count\(3) & ((\rra_servo_base|clk_1mhz_count[2]~14\) # (GND)))
-- \rra_servo_base|clk_1mhz_count[3]~16\ = CARRY((!\rra_servo_base|clk_1mhz_count[2]~14\) # (!\rra_servo_base|clk_1mhz_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|clk_1mhz_count\(3),
	datad => VCC,
	cin => \rra_servo_base|clk_1mhz_count[2]~14\,
	combout => \rra_servo_base|clk_1mhz_count[3]~15_combout\,
	cout => \rra_servo_base|clk_1mhz_count[3]~16\);

-- Location: FF_X2_Y14_N11
\rra_servo_base|clk_1mhz_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1mhz_count[3]~15_combout\,
	sclr => \rra_servo_lower|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1mhz_count\(3));

-- Location: LCCOMB_X2_Y14_N12
\rra_servo_base|clk_1mhz_count[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1mhz_count[4]~17_combout\ = (\rra_servo_base|clk_1mhz_count\(4) & (\rra_servo_base|clk_1mhz_count[3]~16\ $ (GND))) # (!\rra_servo_base|clk_1mhz_count\(4) & (!\rra_servo_base|clk_1mhz_count[3]~16\ & VCC))
-- \rra_servo_base|clk_1mhz_count[4]~18\ = CARRY((\rra_servo_base|clk_1mhz_count\(4) & !\rra_servo_base|clk_1mhz_count[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|clk_1mhz_count\(4),
	datad => VCC,
	cin => \rra_servo_base|clk_1mhz_count[3]~16\,
	combout => \rra_servo_base|clk_1mhz_count[4]~17_combout\,
	cout => \rra_servo_base|clk_1mhz_count[4]~18\);

-- Location: FF_X2_Y14_N13
\rra_servo_base|clk_1mhz_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1mhz_count[4]~17_combout\,
	sclr => \rra_servo_lower|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1mhz_count\(4));

-- Location: LCCOMB_X2_Y14_N14
\rra_servo_base|clk_1mhz_count[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1mhz_count[5]~19_combout\ = (\rra_servo_base|clk_1mhz_count\(5) & (!\rra_servo_base|clk_1mhz_count[4]~18\)) # (!\rra_servo_base|clk_1mhz_count\(5) & ((\rra_servo_base|clk_1mhz_count[4]~18\) # (GND)))
-- \rra_servo_base|clk_1mhz_count[5]~20\ = CARRY((!\rra_servo_base|clk_1mhz_count[4]~18\) # (!\rra_servo_base|clk_1mhz_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|clk_1mhz_count\(5),
	datad => VCC,
	cin => \rra_servo_base|clk_1mhz_count[4]~18\,
	combout => \rra_servo_base|clk_1mhz_count[5]~19_combout\,
	cout => \rra_servo_base|clk_1mhz_count[5]~20\);

-- Location: FF_X2_Y14_N15
\rra_servo_base|clk_1mhz_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1mhz_count[5]~19_combout\,
	sclr => \rra_servo_lower|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1mhz_count\(5));

-- Location: LCCOMB_X2_Y14_N24
\rra_servo_lower|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan3~1_combout\ = (!\rra_servo_base|clk_1mhz_count\(1) & (!\rra_servo_base|clk_1mhz_count\(0) & (!\rra_servo_base|clk_1mhz_count\(2) & !\rra_servo_base|clk_1mhz_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|clk_1mhz_count\(1),
	datab => \rra_servo_base|clk_1mhz_count\(0),
	datac => \rra_servo_base|clk_1mhz_count\(2),
	datad => \rra_servo_base|clk_1mhz_count\(3),
	combout => \rra_servo_lower|LessThan3~1_combout\);

-- Location: LCCOMB_X2_Y14_N16
\rra_servo_base|clk_1mhz_count[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1mhz_count[6]~21_combout\ = (\rra_servo_base|clk_1mhz_count\(6) & (\rra_servo_base|clk_1mhz_count[5]~20\ $ (GND))) # (!\rra_servo_base|clk_1mhz_count\(6) & (!\rra_servo_base|clk_1mhz_count[5]~20\ & VCC))
-- \rra_servo_base|clk_1mhz_count[6]~22\ = CARRY((\rra_servo_base|clk_1mhz_count\(6) & !\rra_servo_base|clk_1mhz_count[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|clk_1mhz_count\(6),
	datad => VCC,
	cin => \rra_servo_base|clk_1mhz_count[5]~20\,
	combout => \rra_servo_base|clk_1mhz_count[6]~21_combout\,
	cout => \rra_servo_base|clk_1mhz_count[6]~22\);

-- Location: FF_X2_Y14_N17
\rra_servo_base|clk_1mhz_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1mhz_count[6]~21_combout\,
	sclr => \rra_servo_lower|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1mhz_count\(6));

-- Location: LCCOMB_X2_Y14_N18
\rra_servo_base|clk_1mhz_count[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1mhz_count[7]~23_combout\ = (\rra_servo_base|clk_1mhz_count\(7) & (!\rra_servo_base|clk_1mhz_count[6]~22\)) # (!\rra_servo_base|clk_1mhz_count\(7) & ((\rra_servo_base|clk_1mhz_count[6]~22\) # (GND)))
-- \rra_servo_base|clk_1mhz_count[7]~24\ = CARRY((!\rra_servo_base|clk_1mhz_count[6]~22\) # (!\rra_servo_base|clk_1mhz_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|clk_1mhz_count\(7),
	datad => VCC,
	cin => \rra_servo_base|clk_1mhz_count[6]~22\,
	combout => \rra_servo_base|clk_1mhz_count[7]~23_combout\,
	cout => \rra_servo_base|clk_1mhz_count[7]~24\);

-- Location: FF_X2_Y14_N19
\rra_servo_base|clk_1mhz_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1mhz_count[7]~23_combout\,
	sclr => \rra_servo_lower|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1mhz_count\(7));

-- Location: LCCOMB_X2_Y14_N20
\rra_servo_base|clk_1mhz_count[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1mhz_count[8]~25_combout\ = \rra_servo_base|clk_1mhz_count\(8) $ (!\rra_servo_base|clk_1mhz_count[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|clk_1mhz_count\(8),
	cin => \rra_servo_base|clk_1mhz_count[7]~24\,
	combout => \rra_servo_base|clk_1mhz_count[8]~25_combout\);

-- Location: FF_X2_Y14_N21
\rra_servo_base|clk_1mhz_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1mhz_count[8]~25_combout\,
	sclr => \rra_servo_lower|ALT_INV_LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1mhz_count\(8));

-- Location: LCCOMB_X2_Y14_N2
\rra_servo_lower|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan3~0_combout\ = (!\rra_servo_base|clk_1mhz_count\(6) & (!\rra_servo_base|clk_1mhz_count\(8) & !\rra_servo_base|clk_1mhz_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|clk_1mhz_count\(6),
	datac => \rra_servo_base|clk_1mhz_count\(8),
	datad => \rra_servo_base|clk_1mhz_count\(7),
	combout => \rra_servo_lower|LessThan3~0_combout\);

-- Location: LCCOMB_X2_Y14_N28
\rra_servo_lower|LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan3~2_combout\ = (\rra_servo_lower|LessThan3~0_combout\ & (((\rra_servo_lower|LessThan3~1_combout\) # (!\rra_servo_base|clk_1mhz_count\(5))) # (!\rra_servo_base|clk_1mhz_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|clk_1mhz_count\(4),
	datab => \rra_servo_base|clk_1mhz_count\(5),
	datac => \rra_servo_lower|LessThan3~1_combout\,
	datad => \rra_servo_lower|LessThan3~0_combout\,
	combout => \rra_servo_lower|LessThan3~2_combout\);

-- Location: LCCOMB_X2_Y14_N22
\rra_servo_lower|clk_1mhz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|clk_1mhz~0_combout\ = !\rra_servo_lower|LessThan3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|LessThan3~2_combout\,
	combout => \rra_servo_lower|clk_1mhz~0_combout\);

-- Location: FF_X2_Y14_N23
\rra_servo_lower|clk_1mhz\ : dffeas
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
	q => \rra_servo_lower|clk_1mhz~q\);

-- Location: CLKCTRL_G19
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

-- Location: LCCOMB_X20_Y21_N4
\rra_servo_lower|pwm_count[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[0]~11_combout\ = \rra_servo_lower|pwm_count\(0) $ (VCC)
-- \rra_servo_lower|pwm_count[0]~12\ = CARRY(\rra_servo_lower|pwm_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(0),
	datad => VCC,
	combout => \rra_servo_lower|pwm_count[0]~11_combout\,
	cout => \rra_servo_lower|pwm_count[0]~12\);

-- Location: FF_X20_Y21_N5
\rra_servo_lower|pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[0]~11_combout\,
	sclr => \rra_servo_lower|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(0));

-- Location: LCCOMB_X20_Y21_N6
\rra_servo_lower|pwm_count[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[1]~13_combout\ = (\rra_servo_lower|pwm_count\(1) & (!\rra_servo_lower|pwm_count[0]~12\)) # (!\rra_servo_lower|pwm_count\(1) & ((\rra_servo_lower|pwm_count[0]~12\) # (GND)))
-- \rra_servo_lower|pwm_count[1]~14\ = CARRY((!\rra_servo_lower|pwm_count[0]~12\) # (!\rra_servo_lower|pwm_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(1),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[0]~12\,
	combout => \rra_servo_lower|pwm_count[1]~13_combout\,
	cout => \rra_servo_lower|pwm_count[1]~14\);

-- Location: FF_X20_Y21_N7
\rra_servo_lower|pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[1]~13_combout\,
	sclr => \rra_servo_lower|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(1));

-- Location: LCCOMB_X20_Y21_N8
\rra_servo_lower|pwm_count[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[2]~15_combout\ = (\rra_servo_lower|pwm_count\(2) & (\rra_servo_lower|pwm_count[1]~14\ $ (GND))) # (!\rra_servo_lower|pwm_count\(2) & (!\rra_servo_lower|pwm_count[1]~14\ & VCC))
-- \rra_servo_lower|pwm_count[2]~16\ = CARRY((\rra_servo_lower|pwm_count\(2) & !\rra_servo_lower|pwm_count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(2),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[1]~14\,
	combout => \rra_servo_lower|pwm_count[2]~15_combout\,
	cout => \rra_servo_lower|pwm_count[2]~16\);

-- Location: FF_X20_Y21_N9
\rra_servo_lower|pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[2]~15_combout\,
	sclr => \rra_servo_lower|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(2));

-- Location: LCCOMB_X20_Y21_N10
\rra_servo_lower|pwm_count[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[3]~17_combout\ = (\rra_servo_lower|pwm_count\(3) & (!\rra_servo_lower|pwm_count[2]~16\)) # (!\rra_servo_lower|pwm_count\(3) & ((\rra_servo_lower|pwm_count[2]~16\) # (GND)))
-- \rra_servo_lower|pwm_count[3]~18\ = CARRY((!\rra_servo_lower|pwm_count[2]~16\) # (!\rra_servo_lower|pwm_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(3),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[2]~16\,
	combout => \rra_servo_lower|pwm_count[3]~17_combout\,
	cout => \rra_servo_lower|pwm_count[3]~18\);

-- Location: FF_X20_Y21_N11
\rra_servo_lower|pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[3]~17_combout\,
	sclr => \rra_servo_lower|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(3));

-- Location: LCCOMB_X20_Y21_N12
\rra_servo_lower|pwm_count[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[4]~19_combout\ = (\rra_servo_lower|pwm_count\(4) & (\rra_servo_lower|pwm_count[3]~18\ $ (GND))) # (!\rra_servo_lower|pwm_count\(4) & (!\rra_servo_lower|pwm_count[3]~18\ & VCC))
-- \rra_servo_lower|pwm_count[4]~20\ = CARRY((\rra_servo_lower|pwm_count\(4) & !\rra_servo_lower|pwm_count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(4),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[3]~18\,
	combout => \rra_servo_lower|pwm_count[4]~19_combout\,
	cout => \rra_servo_lower|pwm_count[4]~20\);

-- Location: FF_X20_Y21_N13
\rra_servo_lower|pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[4]~19_combout\,
	sclr => \rra_servo_lower|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(4));

-- Location: LCCOMB_X20_Y21_N14
\rra_servo_lower|pwm_count[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[5]~21_combout\ = (\rra_servo_lower|pwm_count\(5) & (!\rra_servo_lower|pwm_count[4]~20\)) # (!\rra_servo_lower|pwm_count\(5) & ((\rra_servo_lower|pwm_count[4]~20\) # (GND)))
-- \rra_servo_lower|pwm_count[5]~22\ = CARRY((!\rra_servo_lower|pwm_count[4]~20\) # (!\rra_servo_lower|pwm_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(5),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[4]~20\,
	combout => \rra_servo_lower|pwm_count[5]~21_combout\,
	cout => \rra_servo_lower|pwm_count[5]~22\);

-- Location: FF_X20_Y21_N15
\rra_servo_lower|pwm_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[5]~21_combout\,
	sclr => \rra_servo_lower|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(5));

-- Location: LCCOMB_X20_Y21_N16
\rra_servo_lower|pwm_count[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[6]~23_combout\ = (\rra_servo_lower|pwm_count\(6) & (\rra_servo_lower|pwm_count[5]~22\ $ (GND))) # (!\rra_servo_lower|pwm_count\(6) & (!\rra_servo_lower|pwm_count[5]~22\ & VCC))
-- \rra_servo_lower|pwm_count[6]~24\ = CARRY((\rra_servo_lower|pwm_count\(6) & !\rra_servo_lower|pwm_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(6),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[5]~22\,
	combout => \rra_servo_lower|pwm_count[6]~23_combout\,
	cout => \rra_servo_lower|pwm_count[6]~24\);

-- Location: FF_X20_Y21_N17
\rra_servo_lower|pwm_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[6]~23_combout\,
	sclr => \rra_servo_lower|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(6));

-- Location: LCCOMB_X20_Y21_N26
\rra_servo_lower|pwm_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out~0_combout\ = (((!\rra_servo_lower|pwm_count\(4) & !\rra_servo_lower|pwm_count\(3))) # (!\rra_servo_lower|pwm_count\(6))) # (!\rra_servo_lower|pwm_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(4),
	datab => \rra_servo_lower|pwm_count\(3),
	datac => \rra_servo_lower|pwm_count\(5),
	datad => \rra_servo_lower|pwm_count\(6),
	combout => \rra_servo_lower|pwm_out~0_combout\);

-- Location: LCCOMB_X20_Y21_N18
\rra_servo_lower|pwm_count[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[7]~25_combout\ = (\rra_servo_lower|pwm_count\(7) & (!\rra_servo_lower|pwm_count[6]~24\)) # (!\rra_servo_lower|pwm_count\(7) & ((\rra_servo_lower|pwm_count[6]~24\) # (GND)))
-- \rra_servo_lower|pwm_count[7]~26\ = CARRY((!\rra_servo_lower|pwm_count[6]~24\) # (!\rra_servo_lower|pwm_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(7),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[6]~24\,
	combout => \rra_servo_lower|pwm_count[7]~25_combout\,
	cout => \rra_servo_lower|pwm_count[7]~26\);

-- Location: FF_X20_Y21_N19
\rra_servo_lower|pwm_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[7]~25_combout\,
	sclr => \rra_servo_lower|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(7));

-- Location: LCCOMB_X20_Y21_N20
\rra_servo_lower|pwm_count[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[8]~27_combout\ = (\rra_servo_lower|pwm_count\(8) & (\rra_servo_lower|pwm_count[7]~26\ $ (GND))) # (!\rra_servo_lower|pwm_count\(8) & (!\rra_servo_lower|pwm_count[7]~26\ & VCC))
-- \rra_servo_lower|pwm_count[8]~28\ = CARRY((\rra_servo_lower|pwm_count\(8) & !\rra_servo_lower|pwm_count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(8),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[7]~26\,
	combout => \rra_servo_lower|pwm_count[8]~27_combout\,
	cout => \rra_servo_lower|pwm_count[8]~28\);

-- Location: FF_X20_Y21_N21
\rra_servo_lower|pwm_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[8]~27_combout\,
	sclr => \rra_servo_lower|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(8));

-- Location: LCCOMB_X20_Y21_N22
\rra_servo_lower|pwm_count[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[9]~29_combout\ = (\rra_servo_lower|pwm_count\(9) & (!\rra_servo_lower|pwm_count[8]~28\)) # (!\rra_servo_lower|pwm_count\(9) & ((\rra_servo_lower|pwm_count[8]~28\) # (GND)))
-- \rra_servo_lower|pwm_count[9]~30\ = CARRY((!\rra_servo_lower|pwm_count[8]~28\) # (!\rra_servo_lower|pwm_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(9),
	datad => VCC,
	cin => \rra_servo_lower|pwm_count[8]~28\,
	combout => \rra_servo_lower|pwm_count[9]~29_combout\,
	cout => \rra_servo_lower|pwm_count[9]~30\);

-- Location: FF_X20_Y21_N23
\rra_servo_lower|pwm_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[9]~29_combout\,
	sclr => \rra_servo_lower|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(9));

-- Location: LCCOMB_X20_Y21_N28
\rra_servo_lower|pwm_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out~1_combout\ = ((!\rra_servo_lower|pwm_count\(8)) # (!\rra_servo_lower|pwm_count\(9))) # (!\rra_servo_lower|pwm_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(7),
	datac => \rra_servo_lower|pwm_count\(9),
	datad => \rra_servo_lower|pwm_count\(8),
	combout => \rra_servo_lower|pwm_out~1_combout\);

-- Location: LCCOMB_X20_Y21_N24
\rra_servo_lower|pwm_count[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_count[10]~31_combout\ = \rra_servo_lower|pwm_count[9]~30\ $ (!\rra_servo_lower|pwm_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|pwm_count\(10),
	cin => \rra_servo_lower|pwm_count[9]~30\,
	combout => \rra_servo_lower|pwm_count[10]~31_combout\);

-- Location: FF_X20_Y21_N25
\rra_servo_lower|pwm_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_count[10]~31_combout\,
	sclr => \rra_servo_lower|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_count\(10));

-- Location: IOIBUF_X16_Y29_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X19_Y21_N0
\rra_servo_lower|current[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|current[1]~1_combout\ = (\rra_servo_lower|current\(6)) # ((\rra_servo_lower|current\(7)) # ((\rra_servo_lower|current\(8)) # (\rra_servo_lower|current\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|current\(6),
	datab => \rra_servo_lower|current\(7),
	datac => \rra_servo_lower|current\(8),
	datad => \rra_servo_lower|current\(5),
	combout => \rra_servo_lower|current[1]~1_combout\);

-- Location: LCCOMB_X22_Y21_N12
\rra_servo_lower|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add6~0_combout\ = \rra_servo_lower|current\(1) $ (VCC)
-- \rra_servo_lower|Add6~1\ = CARRY(\rra_servo_lower|current\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|current\(1),
	datad => VCC,
	combout => \rra_servo_lower|Add6~0_combout\,
	cout => \rra_servo_lower|Add6~1\);

-- Location: LCCOMB_X22_Y21_N10
\rra_servo_lower|current[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|current\(1) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_lower|current[1]~2clkctrl_outclk\) & (\rra_servo_lower|Add6~0_combout\)) # (!GLOBAL(\rra_servo_lower|current[1]~2clkctrl_outclk\) & ((\rra_servo_lower|current\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add6~0_combout\,
	datab => \rst~input_o\,
	datac => \rra_servo_lower|current\(1),
	datad => \rra_servo_lower|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_lower|current\(1));

-- Location: LCCOMB_X22_Y21_N14
\rra_servo_lower|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add6~2_combout\ = (\rra_servo_lower|current\(2) & (\rra_servo_lower|Add6~1\ & VCC)) # (!\rra_servo_lower|current\(2) & (!\rra_servo_lower|Add6~1\))
-- \rra_servo_lower|Add6~3\ = CARRY((!\rra_servo_lower|current\(2) & !\rra_servo_lower|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|current\(2),
	datad => VCC,
	cin => \rra_servo_lower|Add6~1\,
	combout => \rra_servo_lower|Add6~2_combout\,
	cout => \rra_servo_lower|Add6~3\);

-- Location: LCCOMB_X22_Y21_N8
\rra_servo_lower|current[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|current\(2) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_lower|current[1]~2clkctrl_outclk\) & ((\rra_servo_lower|Add6~2_combout\))) # (!GLOBAL(\rra_servo_lower|current[1]~2clkctrl_outclk\) & (\rra_servo_lower|current\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_lower|current\(2),
	datac => \rra_servo_lower|Add6~2_combout\,
	datad => \rra_servo_lower|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_lower|current\(2));

-- Location: LCCOMB_X21_Y22_N20
\rra_servo_lower|current[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|current[1]~0_combout\ = (\rra_servo_lower|current\(1)) # ((\rra_servo_lower|current\(4)) # ((\rra_servo_lower|current\(2)) # (\rra_servo_lower|current\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|current\(1),
	datab => \rra_servo_lower|current\(4),
	datac => \rra_servo_lower|current\(2),
	datad => \rra_servo_lower|current\(3),
	combout => \rra_servo_lower|current[1]~0_combout\);

-- Location: CLKCTRL_G15
\rra_servo_lower|LessThan0~18clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_lower|LessThan0~18clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_lower|LessThan0~18clkctrl_outclk\);

-- Location: LCCOMB_X17_Y26_N0
\rra_servo_lower|interval_count[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count[0]~0_combout\ = (!\rst~input_o\ & (\rra_servo_lower|interval_count[0]~0_combout\ $ (\rra_servo_lower|LessThan0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count[0]~0_combout\,
	datac => \rra_servo_lower|LessThan0~18_combout\,
	datad => \rst~input_o\,
	combout => \rra_servo_lower|interval_count[0]~0_combout\);

-- Location: LCCOMB_X17_Y26_N12
\rra_servo_lower|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add4~0_combout\ = (\rra_servo_lower|interval_count\(1) & (\rra_servo_lower|interval_count[0]~0_combout\ $ (VCC))) # (!\rra_servo_lower|interval_count\(1) & (\rra_servo_lower|interval_count[0]~0_combout\ & VCC))
-- \rra_servo_lower|Add4~1\ = CARRY((\rra_servo_lower|interval_count\(1) & \rra_servo_lower|interval_count[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(1),
	datab => \rra_servo_lower|interval_count[0]~0_combout\,
	datad => VCC,
	combout => \rra_servo_lower|Add4~0_combout\,
	cout => \rra_servo_lower|Add4~1\);

-- Location: LCCOMB_X16_Y26_N6
\rra_servo_lower|interval_count[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count\(1) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_lower|LessThan0~18clkctrl_outclk\) & (\rra_servo_lower|Add4~0_combout\)) # (!GLOBAL(\rra_servo_lower|LessThan0~18clkctrl_outclk\) & ((\rra_servo_lower|interval_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add4~0_combout\,
	datab => \rra_servo_lower|interval_count\(1),
	datac => \rst~input_o\,
	datad => \rra_servo_lower|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_lower|interval_count\(1));

-- Location: LCCOMB_X17_Y26_N14
\rra_servo_lower|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add4~2_combout\ = (\rra_servo_lower|interval_count\(2) & (!\rra_servo_lower|Add4~1\)) # (!\rra_servo_lower|interval_count\(2) & ((\rra_servo_lower|Add4~1\) # (GND)))
-- \rra_servo_lower|Add4~3\ = CARRY((!\rra_servo_lower|Add4~1\) # (!\rra_servo_lower|interval_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(2),
	datad => VCC,
	cin => \rra_servo_lower|Add4~1\,
	combout => \rra_servo_lower|Add4~2_combout\,
	cout => \rra_servo_lower|Add4~3\);

-- Location: LCCOMB_X17_Y26_N30
\rra_servo_lower|interval_count[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count\(2) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_lower|LessThan0~18clkctrl_outclk\) & ((\rra_servo_lower|Add4~2_combout\))) # (!GLOBAL(\rra_servo_lower|LessThan0~18clkctrl_outclk\) & (\rra_servo_lower|interval_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(2),
	datab => \rst~input_o\,
	datac => \rra_servo_lower|Add4~2_combout\,
	datad => \rra_servo_lower|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_lower|interval_count\(2));

-- Location: LCCOMB_X17_Y26_N16
\rra_servo_lower|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add4~4_combout\ = (\rra_servo_lower|interval_count\(3) & (\rra_servo_lower|Add4~3\ $ (GND))) # (!\rra_servo_lower|interval_count\(3) & (!\rra_servo_lower|Add4~3\ & VCC))
-- \rra_servo_lower|Add4~5\ = CARRY((\rra_servo_lower|interval_count\(3) & !\rra_servo_lower|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|interval_count\(3),
	datad => VCC,
	cin => \rra_servo_lower|Add4~3\,
	combout => \rra_servo_lower|Add4~4_combout\,
	cout => \rra_servo_lower|Add4~5\);

-- Location: LCCOMB_X17_Y26_N6
\rra_servo_lower|interval_count[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count\(3) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_lower|LessThan0~18clkctrl_outclk\) & ((\rra_servo_lower|Add4~4_combout\))) # (!GLOBAL(\rra_servo_lower|LessThan0~18clkctrl_outclk\) & (\rra_servo_lower|interval_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(3),
	datab => \rst~input_o\,
	datac => \rra_servo_lower|Add4~4_combout\,
	datad => \rra_servo_lower|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_lower|interval_count\(3));

-- Location: LCCOMB_X17_Y26_N18
\rra_servo_lower|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add4~6_combout\ = (\rra_servo_lower|interval_count\(4) & (!\rra_servo_lower|Add4~5\)) # (!\rra_servo_lower|interval_count\(4) & ((\rra_servo_lower|Add4~5\) # (GND)))
-- \rra_servo_lower|Add4~7\ = CARRY((!\rra_servo_lower|Add4~5\) # (!\rra_servo_lower|interval_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|interval_count\(4),
	datad => VCC,
	cin => \rra_servo_lower|Add4~5\,
	combout => \rra_servo_lower|Add4~6_combout\,
	cout => \rra_servo_lower|Add4~7\);

-- Location: LCCOMB_X17_Y26_N8
\rra_servo_lower|interval_count[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count\(4) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_lower|LessThan0~18clkctrl_outclk\) & ((\rra_servo_lower|Add4~6_combout\))) # (!GLOBAL(\rra_servo_lower|LessThan0~18clkctrl_outclk\) & (\rra_servo_lower|interval_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_lower|interval_count\(4),
	datac => \rra_servo_lower|LessThan0~18clkctrl_outclk\,
	datad => \rra_servo_lower|Add4~6_combout\,
	combout => \rra_servo_lower|interval_count\(4));

-- Location: LCCOMB_X17_Y26_N20
\rra_servo_lower|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add4~8_combout\ = (\rra_servo_lower|interval_count\(5) & (\rra_servo_lower|Add4~7\ $ (GND))) # (!\rra_servo_lower|interval_count\(5) & (!\rra_servo_lower|Add4~7\ & VCC))
-- \rra_servo_lower|Add4~9\ = CARRY((\rra_servo_lower|interval_count\(5) & !\rra_servo_lower|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|interval_count\(5),
	datad => VCC,
	cin => \rra_servo_lower|Add4~7\,
	combout => \rra_servo_lower|Add4~8_combout\,
	cout => \rra_servo_lower|Add4~9\);

-- Location: LCCOMB_X16_Y26_N8
\rra_servo_lower|interval_count[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count\(5) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_lower|LessThan0~18clkctrl_outclk\) & ((\rra_servo_lower|Add4~8_combout\))) # (!GLOBAL(\rra_servo_lower|LessThan0~18clkctrl_outclk\) & (\rra_servo_lower|interval_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_lower|interval_count\(5),
	datac => \rra_servo_lower|Add4~8_combout\,
	datad => \rra_servo_lower|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_lower|interval_count\(5));

-- Location: LCCOMB_X17_Y26_N22
\rra_servo_lower|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add4~10_combout\ = (\rra_servo_lower|interval_count\(6) & (!\rra_servo_lower|Add4~9\)) # (!\rra_servo_lower|interval_count\(6) & ((\rra_servo_lower|Add4~9\) # (GND)))
-- \rra_servo_lower|Add4~11\ = CARRY((!\rra_servo_lower|Add4~9\) # (!\rra_servo_lower|interval_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(6),
	datad => VCC,
	cin => \rra_servo_lower|Add4~9\,
	combout => \rra_servo_lower|Add4~10_combout\,
	cout => \rra_servo_lower|Add4~11\);

-- Location: LCCOMB_X16_Y26_N4
\rra_servo_lower|interval_count[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count\(6) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_lower|LessThan0~18clkctrl_outclk\) & ((\rra_servo_lower|Add4~10_combout\))) # (!GLOBAL(\rra_servo_lower|LessThan0~18clkctrl_outclk\) & (\rra_servo_lower|interval_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_lower|interval_count\(6),
	datac => \rra_servo_lower|LessThan0~18clkctrl_outclk\,
	datad => \rra_servo_lower|Add4~10_combout\,
	combout => \rra_servo_lower|interval_count\(6));

-- Location: LCCOMB_X17_Y26_N24
\rra_servo_lower|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add4~12_combout\ = (\rra_servo_lower|interval_count\(7) & (\rra_servo_lower|Add4~11\ $ (GND))) # (!\rra_servo_lower|interval_count\(7) & (!\rra_servo_lower|Add4~11\ & VCC))
-- \rra_servo_lower|Add4~13\ = CARRY((\rra_servo_lower|interval_count\(7) & !\rra_servo_lower|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|interval_count\(7),
	datad => VCC,
	cin => \rra_servo_lower|Add4~11\,
	combout => \rra_servo_lower|Add4~12_combout\,
	cout => \rra_servo_lower|Add4~13\);

-- Location: LCCOMB_X17_Y26_N2
\rra_servo_lower|interval_count[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count\(7) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_lower|LessThan0~18clkctrl_outclk\) & (\rra_servo_lower|Add4~12_combout\)) # (!GLOBAL(\rra_servo_lower|LessThan0~18clkctrl_outclk\) & ((\rra_servo_lower|interval_count\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_lower|Add4~12_combout\,
	datac => \rra_servo_lower|interval_count\(7),
	datad => \rra_servo_lower|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_lower|interval_count\(7));

-- Location: LCCOMB_X17_Y26_N26
\rra_servo_lower|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add4~14_combout\ = (\rra_servo_lower|interval_count\(8) & (!\rra_servo_lower|Add4~13\)) # (!\rra_servo_lower|interval_count\(8) & ((\rra_servo_lower|Add4~13\) # (GND)))
-- \rra_servo_lower|Add4~15\ = CARRY((!\rra_servo_lower|Add4~13\) # (!\rra_servo_lower|interval_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|interval_count\(8),
	datad => VCC,
	cin => \rra_servo_lower|Add4~13\,
	combout => \rra_servo_lower|Add4~14_combout\,
	cout => \rra_servo_lower|Add4~15\);

-- Location: LCCOMB_X17_Y26_N4
\rra_servo_lower|interval_count[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count\(8) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_lower|LessThan0~18clkctrl_outclk\) & ((\rra_servo_lower|Add4~14_combout\))) # (!GLOBAL(\rra_servo_lower|LessThan0~18clkctrl_outclk\) & (\rra_servo_lower|interval_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_lower|interval_count\(8),
	datac => \rra_servo_lower|Add4~14_combout\,
	datad => \rra_servo_lower|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_lower|interval_count\(8));

-- Location: LCCOMB_X17_Y26_N28
\rra_servo_lower|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add4~16_combout\ = \rra_servo_lower|Add4~15\ $ (!\rra_servo_lower|interval_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|interval_count\(9),
	cin => \rra_servo_lower|Add4~15\,
	combout => \rra_servo_lower|Add4~16_combout\);

-- Location: LCCOMB_X17_Y26_N10
\rra_servo_lower|interval_count[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval_count\(9) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_lower|LessThan0~18clkctrl_outclk\) & ((\rra_servo_lower|Add4~16_combout\))) # (!GLOBAL(\rra_servo_lower|LessThan0~18clkctrl_outclk\) & (\rra_servo_lower|interval_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(9),
	datab => \rst~input_o\,
	datac => \rra_servo_lower|LessThan0~18clkctrl_outclk\,
	datad => \rra_servo_lower|Add4~16_combout\,
	combout => \rra_servo_lower|interval_count\(9));

-- Location: IOIBUF_X14_Y29_N8
\speed[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(3),
	o => \speed[3]~input_o\);

-- Location: IOIBUF_X14_Y29_N29
\speed[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(1),
	o => \speed[1]~input_o\);

-- Location: IOIBUF_X16_Y29_N1
\speed[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(2),
	o => \speed[2]~input_o\);

-- Location: IOIBUF_X16_Y29_N29
\speed[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(0),
	o => \speed[0]~input_o\);

-- Location: LCCOMB_X15_Y28_N20
\rra_servo_lower|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~0_combout\ = (\speed[3]~input_o\) # ((\speed[1]~input_o\) # ((\speed[2]~input_o\) # (\speed[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[3]~input_o\,
	datab => \speed[1]~input_o\,
	datac => \speed[2]~input_o\,
	datad => \speed[0]~input_o\,
	combout => \rra_servo_lower|Add0~0_combout\);

-- Location: LCCOMB_X15_Y28_N24
\rra_servo_lower|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add1~0_combout\ = (\rra_servo_lower|Add0~0_combout\ & (\speed[0]~input_o\ $ (VCC))) # (!\rra_servo_lower|Add0~0_combout\ & (\speed[0]~input_o\ & VCC))
-- \rra_servo_lower|Add1~1\ = CARRY((\rra_servo_lower|Add0~0_combout\ & \speed[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add0~0_combout\,
	datab => \speed[0]~input_o\,
	datad => VCC,
	combout => \rra_servo_lower|Add1~0_combout\,
	cout => \rra_servo_lower|Add1~1\);

-- Location: LCCOMB_X15_Y28_N26
\rra_servo_lower|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add1~2_combout\ = (\rra_servo_lower|Add0~0_combout\ & ((\speed[1]~input_o\ & (\rra_servo_lower|Add1~1\ & VCC)) # (!\speed[1]~input_o\ & (!\rra_servo_lower|Add1~1\)))) # (!\rra_servo_lower|Add0~0_combout\ & ((\speed[1]~input_o\ & 
-- (!\rra_servo_lower|Add1~1\)) # (!\speed[1]~input_o\ & ((\rra_servo_lower|Add1~1\) # (GND)))))
-- \rra_servo_lower|Add1~3\ = CARRY((\rra_servo_lower|Add0~0_combout\ & (!\speed[1]~input_o\ & !\rra_servo_lower|Add1~1\)) # (!\rra_servo_lower|Add0~0_combout\ & ((!\rra_servo_lower|Add1~1\) # (!\speed[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add0~0_combout\,
	datab => \speed[1]~input_o\,
	datad => VCC,
	cin => \rra_servo_lower|Add1~1\,
	combout => \rra_servo_lower|Add1~2_combout\,
	cout => \rra_servo_lower|Add1~3\);

-- Location: LCCOMB_X15_Y28_N28
\rra_servo_lower|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add1~4_combout\ = ((\rra_servo_lower|Add0~0_combout\ $ (\speed[2]~input_o\ $ (!\rra_servo_lower|Add1~3\)))) # (GND)
-- \rra_servo_lower|Add1~5\ = CARRY((\rra_servo_lower|Add0~0_combout\ & ((\speed[2]~input_o\) # (!\rra_servo_lower|Add1~3\))) # (!\rra_servo_lower|Add0~0_combout\ & (\speed[2]~input_o\ & !\rra_servo_lower|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add0~0_combout\,
	datab => \speed[2]~input_o\,
	datad => VCC,
	cin => \rra_servo_lower|Add1~3\,
	combout => \rra_servo_lower|Add1~4_combout\,
	cout => \rra_servo_lower|Add1~5\);

-- Location: LCCOMB_X15_Y28_N30
\rra_servo_lower|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add1~6_combout\ = \speed[3]~input_o\ $ (\rra_servo_lower|Add1~5\ $ (\rra_servo_lower|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed[3]~input_o\,
	datad => \rra_servo_lower|Add0~0_combout\,
	cin => \rra_servo_lower|Add1~5\,
	combout => \rra_servo_lower|Add1~6_combout\);

-- Location: LCCOMB_X15_Y28_N18
\rra_servo_lower|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~1_combout\ = (\speed[1]~input_o\) # ((\speed[2]~input_o\) # (\speed[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \speed[1]~input_o\,
	datac => \speed[2]~input_o\,
	datad => \speed[0]~input_o\,
	combout => \rra_servo_lower|Add0~1_combout\);

-- Location: LCCOMB_X15_Y28_N16
\rra_servo_lower|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add0~2_combout\ = (\speed[1]~input_o\) # (\speed[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \speed[1]~input_o\,
	datad => \speed[0]~input_o\,
	combout => \rra_servo_lower|Add0~2_combout\);

-- Location: LCCOMB_X15_Y28_N0
\rra_servo_lower|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add2~0_combout\ = \speed[1]~input_o\ $ (\speed[0]~input_o\ $ (VCC))
-- \rra_servo_lower|Add2~1\ = CARRY(\speed[1]~input_o\ $ (\speed[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \speed[1]~input_o\,
	datab => \speed[0]~input_o\,
	datad => VCC,
	combout => \rra_servo_lower|Add2~0_combout\,
	cout => \rra_servo_lower|Add2~1\);

-- Location: LCCOMB_X15_Y28_N2
\rra_servo_lower|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add2~2_combout\ = (\rra_servo_lower|Add2~1\ & ((\rra_servo_lower|Add0~2_combout\ $ (\speed[2]~input_o\)))) # (!\rra_servo_lower|Add2~1\ & (\rra_servo_lower|Add0~2_combout\ $ ((!\speed[2]~input_o\))))
-- \rra_servo_lower|Add2~3\ = CARRY((!\rra_servo_lower|Add2~1\ & (\rra_servo_lower|Add0~2_combout\ $ (!\speed[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add0~2_combout\,
	datab => \speed[2]~input_o\,
	datad => VCC,
	cin => \rra_servo_lower|Add2~1\,
	combout => \rra_servo_lower|Add2~2_combout\,
	cout => \rra_servo_lower|Add2~3\);

-- Location: LCCOMB_X15_Y28_N4
\rra_servo_lower|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add2~4_combout\ = (\rra_servo_lower|Add2~3\ & (\speed[3]~input_o\ $ (\rra_servo_lower|Add0~1_combout\ $ (VCC)))) # (!\rra_servo_lower|Add2~3\ & ((\speed[3]~input_o\ $ (\rra_servo_lower|Add0~1_combout\)) # (GND)))
-- \rra_servo_lower|Add2~5\ = CARRY((\speed[3]~input_o\ $ (\rra_servo_lower|Add0~1_combout\)) # (!\rra_servo_lower|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed[3]~input_o\,
	datab => \rra_servo_lower|Add0~1_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add2~3\,
	combout => \rra_servo_lower|Add2~4_combout\,
	cout => \rra_servo_lower|Add2~5\);

-- Location: LCCOMB_X15_Y28_N6
\rra_servo_lower|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add2~6_combout\ = (\rra_servo_lower|Add2~5\ & (((\speed[3]~input_o\) # (\rra_servo_lower|Add0~1_combout\)))) # (!\rra_servo_lower|Add2~5\ & (!\speed[3]~input_o\ & (!\rra_servo_lower|Add0~1_combout\)))
-- \rra_servo_lower|Add2~7\ = CARRY((!\speed[3]~input_o\ & (!\rra_servo_lower|Add0~1_combout\ & !\rra_servo_lower|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed[3]~input_o\,
	datab => \rra_servo_lower|Add0~1_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add2~5\,
	combout => \rra_servo_lower|Add2~6_combout\,
	cout => \rra_servo_lower|Add2~7\);

-- Location: LCCOMB_X15_Y28_N8
\rra_servo_lower|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add2~8_combout\ = (\rra_servo_lower|Add1~0_combout\ & (\rra_servo_lower|Add2~7\ $ (GND))) # (!\rra_servo_lower|Add1~0_combout\ & (!\rra_servo_lower|Add2~7\ & VCC))
-- \rra_servo_lower|Add2~9\ = CARRY((\rra_servo_lower|Add1~0_combout\ & !\rra_servo_lower|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|Add1~0_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add2~7\,
	combout => \rra_servo_lower|Add2~8_combout\,
	cout => \rra_servo_lower|Add2~9\);

-- Location: LCCOMB_X15_Y28_N10
\rra_servo_lower|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add2~10_combout\ = (\rra_servo_lower|Add1~2_combout\ & (!\rra_servo_lower|Add2~9\)) # (!\rra_servo_lower|Add1~2_combout\ & ((\rra_servo_lower|Add2~9\) # (GND)))
-- \rra_servo_lower|Add2~11\ = CARRY((!\rra_servo_lower|Add2~9\) # (!\rra_servo_lower|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add1~2_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add2~9\,
	combout => \rra_servo_lower|Add2~10_combout\,
	cout => \rra_servo_lower|Add2~11\);

-- Location: LCCOMB_X15_Y28_N12
\rra_servo_lower|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add2~12_combout\ = (\rra_servo_lower|Add1~4_combout\ & (\rra_servo_lower|Add2~11\ $ (GND))) # (!\rra_servo_lower|Add1~4_combout\ & (!\rra_servo_lower|Add2~11\ & VCC))
-- \rra_servo_lower|Add2~13\ = CARRY((\rra_servo_lower|Add1~4_combout\ & !\rra_servo_lower|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|Add1~4_combout\,
	datad => VCC,
	cin => \rra_servo_lower|Add2~11\,
	combout => \rra_servo_lower|Add2~12_combout\,
	cout => \rra_servo_lower|Add2~13\);

-- Location: LCCOMB_X15_Y28_N14
\rra_servo_lower|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add2~14_combout\ = \rra_servo_lower|Add1~6_combout\ $ (\rra_servo_lower|Add2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add1~6_combout\,
	cin => \rra_servo_lower|Add2~13\,
	combout => \rra_servo_lower|Add2~14_combout\);

-- Location: LCCOMB_X15_Y26_N14
\rra_servo_lower|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add2~16_combout\ = (\rra_servo_lower|Add2~14_combout\) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_lower|Add2~14_combout\,
	datad => \rst~input_o\,
	combout => \rra_servo_lower|Add2~16_combout\);

-- Location: LCCOMB_X15_Y26_N6
\rra_servo_lower|Add2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add2~17_combout\ = (\rra_servo_lower|Add2~12_combout\) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|Add2~12_combout\,
	datad => \rst~input_o\,
	combout => \rra_servo_lower|Add2~17_combout\);

-- Location: LCCOMB_X15_Y26_N18
\rra_servo_lower|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add2~18_combout\ = (\rra_servo_lower|Add2~10_combout\) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|Add2~10_combout\,
	datad => \rst~input_o\,
	combout => \rra_servo_lower|Add2~18_combout\);

-- Location: LCCOMB_X15_Y26_N22
\rra_servo_lower|Add2~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add2~19_combout\ = (\rra_servo_lower|Add2~8_combout\) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|Add2~8_combout\,
	datad => \rst~input_o\,
	combout => \rra_servo_lower|Add2~19_combout\);

-- Location: LCCOMB_X15_Y26_N26
\rra_servo_lower|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add2~20_combout\ = (\rra_servo_lower|Add2~6_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_lower|Add2~6_combout\,
	datad => \rst~input_o\,
	combout => \rra_servo_lower|Add2~20_combout\);

-- Location: LCCOMB_X15_Y26_N30
\rra_servo_lower|Add2~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add2~21_combout\ = (\rra_servo_lower|Add2~4_combout\) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~4_combout\,
	datad => \rst~input_o\,
	combout => \rra_servo_lower|Add2~21_combout\);

-- Location: LCCOMB_X15_Y26_N24
\rra_servo_lower|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add2~22_combout\ = (\rra_servo_lower|Add2~2_combout\) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_lower|Add2~2_combout\,
	datad => \rst~input_o\,
	combout => \rra_servo_lower|Add2~22_combout\);

-- Location: LCCOMB_X16_Y26_N10
\rra_servo_lower|Add2~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add2~23_combout\ = (\rra_servo_lower|Add2~0_combout\) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|Add2~0_combout\,
	datad => \rst~input_o\,
	combout => \rra_servo_lower|Add2~23_combout\);

-- Location: LCCOMB_X16_Y26_N0
\rra_servo_lower|interval[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|interval[1]~0_combout\ = (\speed[0]~input_o\) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \speed[0]~input_o\,
	datad => \rst~input_o\,
	combout => \rra_servo_lower|interval[1]~0_combout\);

-- Location: LCCOMB_X16_Y26_N12
\rra_servo_lower|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~1_cout\ = CARRY(\rra_servo_lower|interval_count[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|interval_count[0]~0_combout\,
	datad => VCC,
	cout => \rra_servo_lower|LessThan0~1_cout\);

-- Location: LCCOMB_X16_Y26_N14
\rra_servo_lower|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~3_cout\ = CARRY((\rra_servo_lower|interval_count\(1) & (\rra_servo_lower|interval[1]~0_combout\ & !\rra_servo_lower|LessThan0~1_cout\)) # (!\rra_servo_lower|interval_count\(1) & ((\rra_servo_lower|interval[1]~0_combout\) # 
-- (!\rra_servo_lower|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(1),
	datab => \rra_servo_lower|interval[1]~0_combout\,
	datad => VCC,
	cin => \rra_servo_lower|LessThan0~1_cout\,
	cout => \rra_servo_lower|LessThan0~3_cout\);

-- Location: LCCOMB_X16_Y26_N16
\rra_servo_lower|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~5_cout\ = CARRY((\rra_servo_lower|interval_count\(2) & ((!\rra_servo_lower|LessThan0~3_cout\) # (!\rra_servo_lower|Add2~23_combout\))) # (!\rra_servo_lower|interval_count\(2) & (!\rra_servo_lower|Add2~23_combout\ & 
-- !\rra_servo_lower|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(2),
	datab => \rra_servo_lower|Add2~23_combout\,
	datad => VCC,
	cin => \rra_servo_lower|LessThan0~3_cout\,
	cout => \rra_servo_lower|LessThan0~5_cout\);

-- Location: LCCOMB_X16_Y26_N18
\rra_servo_lower|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~7_cout\ = CARRY((\rra_servo_lower|interval_count\(3) & (\rra_servo_lower|Add2~22_combout\ & !\rra_servo_lower|LessThan0~5_cout\)) # (!\rra_servo_lower|interval_count\(3) & ((\rra_servo_lower|Add2~22_combout\) # 
-- (!\rra_servo_lower|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(3),
	datab => \rra_servo_lower|Add2~22_combout\,
	datad => VCC,
	cin => \rra_servo_lower|LessThan0~5_cout\,
	cout => \rra_servo_lower|LessThan0~7_cout\);

-- Location: LCCOMB_X16_Y26_N20
\rra_servo_lower|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~9_cout\ = CARRY((\rra_servo_lower|Add2~21_combout\ & (\rra_servo_lower|interval_count\(4) & !\rra_servo_lower|LessThan0~7_cout\)) # (!\rra_servo_lower|Add2~21_combout\ & ((\rra_servo_lower|interval_count\(4)) # 
-- (!\rra_servo_lower|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~21_combout\,
	datab => \rra_servo_lower|interval_count\(4),
	datad => VCC,
	cin => \rra_servo_lower|LessThan0~7_cout\,
	cout => \rra_servo_lower|LessThan0~9_cout\);

-- Location: LCCOMB_X16_Y26_N22
\rra_servo_lower|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~11_cout\ = CARRY((\rra_servo_lower|Add2~20_combout\ & ((!\rra_servo_lower|LessThan0~9_cout\) # (!\rra_servo_lower|interval_count\(5)))) # (!\rra_servo_lower|Add2~20_combout\ & (!\rra_servo_lower|interval_count\(5) & 
-- !\rra_servo_lower|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~20_combout\,
	datab => \rra_servo_lower|interval_count\(5),
	datad => VCC,
	cin => \rra_servo_lower|LessThan0~9_cout\,
	cout => \rra_servo_lower|LessThan0~11_cout\);

-- Location: LCCOMB_X16_Y26_N24
\rra_servo_lower|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~13_cout\ = CARRY((\rra_servo_lower|Add2~19_combout\ & (\rra_servo_lower|interval_count\(6) & !\rra_servo_lower|LessThan0~11_cout\)) # (!\rra_servo_lower|Add2~19_combout\ & ((\rra_servo_lower|interval_count\(6)) # 
-- (!\rra_servo_lower|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~19_combout\,
	datab => \rra_servo_lower|interval_count\(6),
	datad => VCC,
	cin => \rra_servo_lower|LessThan0~11_cout\,
	cout => \rra_servo_lower|LessThan0~13_cout\);

-- Location: LCCOMB_X16_Y26_N26
\rra_servo_lower|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~15_cout\ = CARRY((\rra_servo_lower|interval_count\(7) & (\rra_servo_lower|Add2~18_combout\ & !\rra_servo_lower|LessThan0~13_cout\)) # (!\rra_servo_lower|interval_count\(7) & ((\rra_servo_lower|Add2~18_combout\) # 
-- (!\rra_servo_lower|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(7),
	datab => \rra_servo_lower|Add2~18_combout\,
	datad => VCC,
	cin => \rra_servo_lower|LessThan0~13_cout\,
	cout => \rra_servo_lower|LessThan0~15_cout\);

-- Location: LCCOMB_X16_Y26_N28
\rra_servo_lower|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~17_cout\ = CARRY((\rra_servo_lower|Add2~17_combout\ & (\rra_servo_lower|interval_count\(8) & !\rra_servo_lower|LessThan0~15_cout\)) # (!\rra_servo_lower|Add2~17_combout\ & ((\rra_servo_lower|interval_count\(8)) # 
-- (!\rra_servo_lower|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~17_combout\,
	datab => \rra_servo_lower|interval_count\(8),
	datad => VCC,
	cin => \rra_servo_lower|LessThan0~15_cout\,
	cout => \rra_servo_lower|LessThan0~17_cout\);

-- Location: LCCOMB_X16_Y26_N30
\rra_servo_lower|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan0~18_combout\ = (\rra_servo_lower|interval_count\(9) & (!\rra_servo_lower|LessThan0~17_cout\ & \rra_servo_lower|Add2~16_combout\)) # (!\rra_servo_lower|interval_count\(9) & ((\rra_servo_lower|Add2~16_combout\) # 
-- (!\rra_servo_lower|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval_count\(9),
	datad => \rra_servo_lower|Add2~16_combout\,
	cin => \rra_servo_lower|LessThan0~17_cout\,
	combout => \rra_servo_lower|LessThan0~18_combout\);

-- Location: LCCOMB_X16_Y26_N2
\rra_servo_lower|current[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|current[1]~2_combout\ = (!\rra_servo_lower|LessThan0~18_combout\ & ((\rra_servo_lower|current[1]~1_combout\) # (\rra_servo_lower|current[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|current[1]~1_combout\,
	datab => \rra_servo_lower|current[1]~0_combout\,
	datac => \rra_servo_lower|LessThan0~18_combout\,
	combout => \rra_servo_lower|current[1]~2_combout\);

-- Location: CLKCTRL_G5
\rra_servo_lower|current[1]~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_lower|current[1]~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_lower|current[1]~2clkctrl_outclk\);

-- Location: LCCOMB_X22_Y21_N16
\rra_servo_lower|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add6~4_combout\ = (\rra_servo_lower|current\(3) & (\rra_servo_lower|Add6~3\ $ (GND))) # (!\rra_servo_lower|current\(3) & (!\rra_servo_lower|Add6~3\ & VCC))
-- \rra_servo_lower|Add6~5\ = CARRY((\rra_servo_lower|current\(3) & !\rra_servo_lower|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|current\(3),
	datad => VCC,
	cin => \rra_servo_lower|Add6~3\,
	combout => \rra_servo_lower|Add6~4_combout\,
	cout => \rra_servo_lower|Add6~5\);

-- Location: LCCOMB_X22_Y21_N6
\rra_servo_lower|current[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|current\(3) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_lower|current[1]~2clkctrl_outclk\) & ((\rra_servo_lower|Add6~4_combout\))) # (!GLOBAL(\rra_servo_lower|current[1]~2clkctrl_outclk\) & (\rra_servo_lower|current\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|current\(3),
	datab => \rst~input_o\,
	datac => \rra_servo_lower|current[1]~2clkctrl_outclk\,
	datad => \rra_servo_lower|Add6~4_combout\,
	combout => \rra_servo_lower|current\(3));

-- Location: LCCOMB_X22_Y21_N18
\rra_servo_lower|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add6~6_combout\ = (\rra_servo_lower|current\(4) & (\rra_servo_lower|Add6~5\ & VCC)) # (!\rra_servo_lower|current\(4) & (!\rra_servo_lower|Add6~5\))
-- \rra_servo_lower|Add6~7\ = CARRY((!\rra_servo_lower|current\(4) & !\rra_servo_lower|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|current\(4),
	datad => VCC,
	cin => \rra_servo_lower|Add6~5\,
	combout => \rra_servo_lower|Add6~6_combout\,
	cout => \rra_servo_lower|Add6~7\);

-- Location: LCCOMB_X22_Y21_N4
\rra_servo_lower|current[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|current\(4) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_lower|current[1]~2clkctrl_outclk\) & (\rra_servo_lower|Add6~6_combout\)) # (!GLOBAL(\rra_servo_lower|current[1]~2clkctrl_outclk\) & ((\rra_servo_lower|current\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add6~6_combout\,
	datab => \rst~input_o\,
	datac => \rra_servo_lower|current\(4),
	datad => \rra_servo_lower|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_lower|current\(4));

-- Location: LCCOMB_X22_Y21_N20
\rra_servo_lower|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add6~8_combout\ = (\rra_servo_lower|current\(5) & ((GND) # (!\rra_servo_lower|Add6~7\))) # (!\rra_servo_lower|current\(5) & (\rra_servo_lower|Add6~7\ $ (GND)))
-- \rra_servo_lower|Add6~9\ = CARRY((\rra_servo_lower|current\(5)) # (!\rra_servo_lower|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|current\(5),
	datad => VCC,
	cin => \rra_servo_lower|Add6~7\,
	combout => \rra_servo_lower|Add6~8_combout\,
	cout => \rra_servo_lower|Add6~9\);

-- Location: LCCOMB_X22_Y21_N30
\rra_servo_lower|current[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|current\(5) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_lower|current[1]~2clkctrl_outclk\) & (\rra_servo_lower|Add6~8_combout\)) # (!GLOBAL(\rra_servo_lower|current[1]~2clkctrl_outclk\) & ((\rra_servo_lower|current\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_lower|Add6~8_combout\,
	datac => \rra_servo_lower|current\(5),
	datad => \rra_servo_lower|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_lower|current\(5));

-- Location: LCCOMB_X22_Y21_N22
\rra_servo_lower|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add6~10_combout\ = (\rra_servo_lower|current\(6) & (\rra_servo_lower|Add6~9\ & VCC)) # (!\rra_servo_lower|current\(6) & (!\rra_servo_lower|Add6~9\))
-- \rra_servo_lower|Add6~11\ = CARRY((!\rra_servo_lower|current\(6) & !\rra_servo_lower|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|current\(6),
	datad => VCC,
	cin => \rra_servo_lower|Add6~9\,
	combout => \rra_servo_lower|Add6~10_combout\,
	cout => \rra_servo_lower|Add6~11\);

-- Location: LCCOMB_X22_Y21_N28
\rra_servo_lower|current[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|current\(6) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_lower|current[1]~2clkctrl_outclk\) & (\rra_servo_lower|Add6~10_combout\)) # (!GLOBAL(\rra_servo_lower|current[1]~2clkctrl_outclk\) & ((\rra_servo_lower|current\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add6~10_combout\,
	datab => \rst~input_o\,
	datac => \rra_servo_lower|current\(6),
	datad => \rra_servo_lower|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_lower|current\(6));

-- Location: LCCOMB_X22_Y21_N24
\rra_servo_lower|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add6~12_combout\ = (\rra_servo_lower|current\(7) & ((GND) # (!\rra_servo_lower|Add6~11\))) # (!\rra_servo_lower|current\(7) & (\rra_servo_lower|Add6~11\ $ (GND)))
-- \rra_servo_lower|Add6~13\ = CARRY((\rra_servo_lower|current\(7)) # (!\rra_servo_lower|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|current\(7),
	datad => VCC,
	cin => \rra_servo_lower|Add6~11\,
	combout => \rra_servo_lower|Add6~12_combout\,
	cout => \rra_servo_lower|Add6~13\);

-- Location: LCCOMB_X22_Y21_N2
\rra_servo_lower|current[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|current\(7) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_lower|current[1]~2clkctrl_outclk\) & (\rra_servo_lower|Add6~12_combout\)) # (!GLOBAL(\rra_servo_lower|current[1]~2clkctrl_outclk\) & ((\rra_servo_lower|current\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_lower|Add6~12_combout\,
	datac => \rra_servo_lower|current\(7),
	datad => \rra_servo_lower|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_lower|current\(7));

-- Location: LCCOMB_X22_Y21_N26
\rra_servo_lower|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add6~14_combout\ = \rra_servo_lower|Add6~13\ $ (!\rra_servo_lower|current\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|current\(8),
	cin => \rra_servo_lower|Add6~13\,
	combout => \rra_servo_lower|Add6~14_combout\);

-- Location: LCCOMB_X22_Y21_N0
\rra_servo_lower|current[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|current\(8) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_lower|current[1]~2clkctrl_outclk\) & ((\rra_servo_lower|Add6~14_combout\))) # (!GLOBAL(\rra_servo_lower|current[1]~2clkctrl_outclk\) & (\rra_servo_lower|current\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_lower|current\(8),
	datac => \rra_servo_lower|Add6~14_combout\,
	datad => \rra_servo_lower|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_lower|current\(8));

-- Location: LCCOMB_X21_Y21_N0
\rra_servo_lower|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add8~0_combout\ = (\rra_servo_lower|current\(3) & (\rra_servo_lower|current\(2) $ (VCC))) # (!\rra_servo_lower|current\(3) & (\rra_servo_lower|current\(2) & VCC))
-- \rra_servo_lower|Add8~1\ = CARRY((\rra_servo_lower|current\(3) & \rra_servo_lower|current\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|current\(3),
	datab => \rra_servo_lower|current\(2),
	datad => VCC,
	combout => \rra_servo_lower|Add8~0_combout\,
	cout => \rra_servo_lower|Add8~1\);

-- Location: LCCOMB_X21_Y21_N2
\rra_servo_lower|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add8~2_combout\ = (\rra_servo_lower|current\(4) & (\rra_servo_lower|Add8~1\ & VCC)) # (!\rra_servo_lower|current\(4) & (!\rra_servo_lower|Add8~1\))
-- \rra_servo_lower|Add8~3\ = CARRY((!\rra_servo_lower|current\(4) & !\rra_servo_lower|Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|current\(4),
	datad => VCC,
	cin => \rra_servo_lower|Add8~1\,
	combout => \rra_servo_lower|Add8~2_combout\,
	cout => \rra_servo_lower|Add8~3\);

-- Location: LCCOMB_X21_Y21_N4
\rra_servo_lower|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add8~4_combout\ = (\rra_servo_lower|current\(5) & ((GND) # (!\rra_servo_lower|Add8~3\))) # (!\rra_servo_lower|current\(5) & (\rra_servo_lower|Add8~3\ $ (GND)))
-- \rra_servo_lower|Add8~5\ = CARRY((\rra_servo_lower|current\(5)) # (!\rra_servo_lower|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|current\(5),
	datad => VCC,
	cin => \rra_servo_lower|Add8~3\,
	combout => \rra_servo_lower|Add8~4_combout\,
	cout => \rra_servo_lower|Add8~5\);

-- Location: LCCOMB_X21_Y21_N6
\rra_servo_lower|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add8~6_combout\ = (\rra_servo_lower|current\(6) & (\rra_servo_lower|Add8~5\ & VCC)) # (!\rra_servo_lower|current\(6) & (!\rra_servo_lower|Add8~5\))
-- \rra_servo_lower|Add8~7\ = CARRY((!\rra_servo_lower|current\(6) & !\rra_servo_lower|Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|current\(6),
	datad => VCC,
	cin => \rra_servo_lower|Add8~5\,
	combout => \rra_servo_lower|Add8~6_combout\,
	cout => \rra_servo_lower|Add8~7\);

-- Location: LCCOMB_X21_Y21_N8
\rra_servo_lower|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add8~8_combout\ = (\rra_servo_lower|current\(7) & ((GND) # (!\rra_servo_lower|Add8~7\))) # (!\rra_servo_lower|current\(7) & (\rra_servo_lower|Add8~7\ $ (GND)))
-- \rra_servo_lower|Add8~9\ = CARRY((\rra_servo_lower|current\(7)) # (!\rra_servo_lower|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|current\(7),
	datad => VCC,
	cin => \rra_servo_lower|Add8~7\,
	combout => \rra_servo_lower|Add8~8_combout\,
	cout => \rra_servo_lower|Add8~9\);

-- Location: LCCOMB_X21_Y21_N10
\rra_servo_lower|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add8~10_combout\ = (\rra_servo_lower|current\(8) & (\rra_servo_lower|Add8~9\ & VCC)) # (!\rra_servo_lower|current\(8) & (!\rra_servo_lower|Add8~9\))
-- \rra_servo_lower|Add8~11\ = CARRY((!\rra_servo_lower|current\(8) & !\rra_servo_lower|Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|current\(8),
	datad => VCC,
	cin => \rra_servo_lower|Add8~9\,
	combout => \rra_servo_lower|Add8~10_combout\,
	cout => \rra_servo_lower|Add8~11\);

-- Location: LCCOMB_X21_Y21_N12
\rra_servo_lower|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|Add8~12_combout\ = !\rra_servo_lower|Add8~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rra_servo_lower|Add8~11\,
	combout => \rra_servo_lower|Add8~12_combout\);

-- Location: LCCOMB_X21_Y21_N14
\rra_servo_lower|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan5~1_cout\ = CARRY((!\rra_servo_lower|pwm_count\(2) & \rra_servo_lower|current\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(2),
	datab => \rra_servo_lower|current\(1),
	datad => VCC,
	cout => \rra_servo_lower|LessThan5~1_cout\);

-- Location: LCCOMB_X21_Y21_N16
\rra_servo_lower|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan5~3_cout\ = CARRY((\rra_servo_lower|pwm_count\(3) & ((\rra_servo_lower|current\(2)) # (!\rra_servo_lower|LessThan5~1_cout\))) # (!\rra_servo_lower|pwm_count\(3) & (\rra_servo_lower|current\(2) & 
-- !\rra_servo_lower|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(3),
	datab => \rra_servo_lower|current\(2),
	datad => VCC,
	cin => \rra_servo_lower|LessThan5~1_cout\,
	cout => \rra_servo_lower|LessThan5~3_cout\);

-- Location: LCCOMB_X21_Y21_N18
\rra_servo_lower|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan5~5_cout\ = CARRY((\rra_servo_lower|pwm_count\(4) & (\rra_servo_lower|Add8~0_combout\ & !\rra_servo_lower|LessThan5~3_cout\)) # (!\rra_servo_lower|pwm_count\(4) & ((\rra_servo_lower|Add8~0_combout\) # 
-- (!\rra_servo_lower|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(4),
	datab => \rra_servo_lower|Add8~0_combout\,
	datad => VCC,
	cin => \rra_servo_lower|LessThan5~3_cout\,
	cout => \rra_servo_lower|LessThan5~5_cout\);

-- Location: LCCOMB_X21_Y21_N20
\rra_servo_lower|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan5~7_cout\ = CARRY((\rra_servo_lower|pwm_count\(5) & ((!\rra_servo_lower|LessThan5~5_cout\) # (!\rra_servo_lower|Add8~2_combout\))) # (!\rra_servo_lower|pwm_count\(5) & (!\rra_servo_lower|Add8~2_combout\ & 
-- !\rra_servo_lower|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(5),
	datab => \rra_servo_lower|Add8~2_combout\,
	datad => VCC,
	cin => \rra_servo_lower|LessThan5~5_cout\,
	cout => \rra_servo_lower|LessThan5~7_cout\);

-- Location: LCCOMB_X21_Y21_N22
\rra_servo_lower|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan5~9_cout\ = CARRY((\rra_servo_lower|pwm_count\(6) & (\rra_servo_lower|Add8~4_combout\ & !\rra_servo_lower|LessThan5~7_cout\)) # (!\rra_servo_lower|pwm_count\(6) & ((\rra_servo_lower|Add8~4_combout\) # 
-- (!\rra_servo_lower|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(6),
	datab => \rra_servo_lower|Add8~4_combout\,
	datad => VCC,
	cin => \rra_servo_lower|LessThan5~7_cout\,
	cout => \rra_servo_lower|LessThan5~9_cout\);

-- Location: LCCOMB_X21_Y21_N24
\rra_servo_lower|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan5~11_cout\ = CARRY((\rra_servo_lower|Add8~6_combout\ & (\rra_servo_lower|pwm_count\(7) & !\rra_servo_lower|LessThan5~9_cout\)) # (!\rra_servo_lower|Add8~6_combout\ & ((\rra_servo_lower|pwm_count\(7)) # 
-- (!\rra_servo_lower|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add8~6_combout\,
	datab => \rra_servo_lower|pwm_count\(7),
	datad => VCC,
	cin => \rra_servo_lower|LessThan5~9_cout\,
	cout => \rra_servo_lower|LessThan5~11_cout\);

-- Location: LCCOMB_X21_Y21_N26
\rra_servo_lower|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan5~13_cout\ = CARRY((\rra_servo_lower|pwm_count\(8) & (\rra_servo_lower|Add8~8_combout\ & !\rra_servo_lower|LessThan5~11_cout\)) # (!\rra_servo_lower|pwm_count\(8) & ((\rra_servo_lower|Add8~8_combout\) # 
-- (!\rra_servo_lower|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_count\(8),
	datab => \rra_servo_lower|Add8~8_combout\,
	datad => VCC,
	cin => \rra_servo_lower|LessThan5~11_cout\,
	cout => \rra_servo_lower|LessThan5~13_cout\);

-- Location: LCCOMB_X21_Y21_N28
\rra_servo_lower|LessThan5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan5~15_cout\ = CARRY((\rra_servo_lower|Add8~10_combout\ & (\rra_servo_lower|pwm_count\(9) & !\rra_servo_lower|LessThan5~13_cout\)) # (!\rra_servo_lower|Add8~10_combout\ & ((\rra_servo_lower|pwm_count\(9)) # 
-- (!\rra_servo_lower|LessThan5~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add8~10_combout\,
	datab => \rra_servo_lower|pwm_count\(9),
	datad => VCC,
	cin => \rra_servo_lower|LessThan5~13_cout\,
	cout => \rra_servo_lower|LessThan5~15_cout\);

-- Location: LCCOMB_X21_Y21_N30
\rra_servo_lower|LessThan5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|LessThan5~16_combout\ = (\rra_servo_lower|pwm_count\(10) & (!\rra_servo_lower|LessThan5~15_cout\ & \rra_servo_lower|Add8~12_combout\)) # (!\rra_servo_lower|pwm_count\(10) & ((\rra_servo_lower|Add8~12_combout\) # 
-- (!\rra_servo_lower|LessThan5~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_lower|pwm_count\(10),
	datad => \rra_servo_lower|Add8~12_combout\,
	cin => \rra_servo_lower|LessThan5~15_cout\,
	combout => \rra_servo_lower|LessThan5~16_combout\);

-- Location: LCCOMB_X20_Y21_N30
\rra_servo_lower|pwm_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out~2_combout\ = (\rra_servo_lower|LessThan5~16_combout\) # ((!\rra_servo_lower|pwm_count\(10) & ((\rra_servo_lower|pwm_out~0_combout\) # (\rra_servo_lower|pwm_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|pwm_out~0_combout\,
	datab => \rra_servo_lower|pwm_out~1_combout\,
	datac => \rra_servo_lower|LessThan5~16_combout\,
	datad => \rra_servo_lower|pwm_count\(10),
	combout => \rra_servo_lower|pwm_out~2_combout\);

-- Location: LCCOMB_X20_Y21_N2
\rra_servo_lower|pwm_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_lower|pwm_out~3_combout\ = \rra_servo_lower|pwm_out~q\ $ (!\rra_servo_lower|pwm_out~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_lower|pwm_out~q\,
	datad => \rra_servo_lower|pwm_out~2_combout\,
	combout => \rra_servo_lower|pwm_out~3_combout\);

-- Location: FF_X20_Y21_N3
\rra_servo_lower|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_lower|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_lower|pwm_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|pwm_out~q\);

-- Location: LCCOMB_X20_Y21_N0
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

-- Location: FF_X20_Y21_N1
\rra_servo_lower|o_pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_lower|o_pwm_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_lower|o_pwm_out~q\);

-- Location: LCCOMB_X2_Y14_N30
\rra_servo_middle|clk_1mhz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|clk_1mhz~0_combout\ = !\rra_servo_lower|LessThan3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|LessThan3~2_combout\,
	combout => \rra_servo_middle|clk_1mhz~0_combout\);

-- Location: FF_X2_Y14_N31
\rra_servo_middle|clk_1mhz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_middle|clk_1mhz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|clk_1mhz~q\);

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X16_Y22_N0
\rra_servo_middle|pwm_count[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[0]~11_combout\ = \rra_servo_middle|pwm_count\(0) $ (VCC)
-- \rra_servo_middle|pwm_count[0]~12\ = CARRY(\rra_servo_middle|pwm_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|pwm_count\(0),
	datad => VCC,
	combout => \rra_servo_middle|pwm_count[0]~11_combout\,
	cout => \rra_servo_middle|pwm_count[0]~12\);

-- Location: FF_X16_Y22_N1
\rra_servo_middle|pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[0]~11_combout\,
	sclr => \rra_servo_middle|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(0));

-- Location: LCCOMB_X16_Y22_N2
\rra_servo_middle|pwm_count[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[1]~13_combout\ = (\rra_servo_middle|pwm_count\(1) & (!\rra_servo_middle|pwm_count[0]~12\)) # (!\rra_servo_middle|pwm_count\(1) & ((\rra_servo_middle|pwm_count[0]~12\) # (GND)))
-- \rra_servo_middle|pwm_count[1]~14\ = CARRY((!\rra_servo_middle|pwm_count[0]~12\) # (!\rra_servo_middle|pwm_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|pwm_count\(1),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[0]~12\,
	combout => \rra_servo_middle|pwm_count[1]~13_combout\,
	cout => \rra_servo_middle|pwm_count[1]~14\);

-- Location: FF_X16_Y22_N3
\rra_servo_middle|pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[1]~13_combout\,
	sclr => \rra_servo_middle|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(1));

-- Location: LCCOMB_X16_Y22_N4
\rra_servo_middle|pwm_count[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[2]~15_combout\ = (\rra_servo_middle|pwm_count\(2) & (\rra_servo_middle|pwm_count[1]~14\ $ (GND))) # (!\rra_servo_middle|pwm_count\(2) & (!\rra_servo_middle|pwm_count[1]~14\ & VCC))
-- \rra_servo_middle|pwm_count[2]~16\ = CARRY((\rra_servo_middle|pwm_count\(2) & !\rra_servo_middle|pwm_count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|pwm_count\(2),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[1]~14\,
	combout => \rra_servo_middle|pwm_count[2]~15_combout\,
	cout => \rra_servo_middle|pwm_count[2]~16\);

-- Location: FF_X16_Y22_N5
\rra_servo_middle|pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[2]~15_combout\,
	sclr => \rra_servo_middle|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(2));

-- Location: LCCOMB_X16_Y22_N6
\rra_servo_middle|pwm_count[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[3]~17_combout\ = (\rra_servo_middle|pwm_count\(3) & (!\rra_servo_middle|pwm_count[2]~16\)) # (!\rra_servo_middle|pwm_count\(3) & ((\rra_servo_middle|pwm_count[2]~16\) # (GND)))
-- \rra_servo_middle|pwm_count[3]~18\ = CARRY((!\rra_servo_middle|pwm_count[2]~16\) # (!\rra_servo_middle|pwm_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|pwm_count\(3),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[2]~16\,
	combout => \rra_servo_middle|pwm_count[3]~17_combout\,
	cout => \rra_servo_middle|pwm_count[3]~18\);

-- Location: FF_X16_Y22_N7
\rra_servo_middle|pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[3]~17_combout\,
	sclr => \rra_servo_middle|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(3));

-- Location: LCCOMB_X16_Y22_N8
\rra_servo_middle|pwm_count[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[4]~19_combout\ = (\rra_servo_middle|pwm_count\(4) & (\rra_servo_middle|pwm_count[3]~18\ $ (GND))) # (!\rra_servo_middle|pwm_count\(4) & (!\rra_servo_middle|pwm_count[3]~18\ & VCC))
-- \rra_servo_middle|pwm_count[4]~20\ = CARRY((\rra_servo_middle|pwm_count\(4) & !\rra_servo_middle|pwm_count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|pwm_count\(4),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[3]~18\,
	combout => \rra_servo_middle|pwm_count[4]~19_combout\,
	cout => \rra_servo_middle|pwm_count[4]~20\);

-- Location: FF_X16_Y22_N9
\rra_servo_middle|pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[4]~19_combout\,
	sclr => \rra_servo_middle|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(4));

-- Location: LCCOMB_X16_Y22_N10
\rra_servo_middle|pwm_count[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[5]~21_combout\ = (\rra_servo_middle|pwm_count\(5) & (!\rra_servo_middle|pwm_count[4]~20\)) # (!\rra_servo_middle|pwm_count\(5) & ((\rra_servo_middle|pwm_count[4]~20\) # (GND)))
-- \rra_servo_middle|pwm_count[5]~22\ = CARRY((!\rra_servo_middle|pwm_count[4]~20\) # (!\rra_servo_middle|pwm_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|pwm_count\(5),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[4]~20\,
	combout => \rra_servo_middle|pwm_count[5]~21_combout\,
	cout => \rra_servo_middle|pwm_count[5]~22\);

-- Location: FF_X16_Y22_N11
\rra_servo_middle|pwm_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[5]~21_combout\,
	sclr => \rra_servo_middle|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(5));

-- Location: LCCOMB_X16_Y22_N12
\rra_servo_middle|pwm_count[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[6]~23_combout\ = (\rra_servo_middle|pwm_count\(6) & (\rra_servo_middle|pwm_count[5]~22\ $ (GND))) # (!\rra_servo_middle|pwm_count\(6) & (!\rra_servo_middle|pwm_count[5]~22\ & VCC))
-- \rra_servo_middle|pwm_count[6]~24\ = CARRY((\rra_servo_middle|pwm_count\(6) & !\rra_servo_middle|pwm_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(6),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[5]~22\,
	combout => \rra_servo_middle|pwm_count[6]~23_combout\,
	cout => \rra_servo_middle|pwm_count[6]~24\);

-- Location: FF_X16_Y22_N13
\rra_servo_middle|pwm_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[6]~23_combout\,
	sclr => \rra_servo_middle|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(6));

-- Location: LCCOMB_X16_Y22_N30
\rra_servo_middle|pwm_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_out~0_combout\ = (((!\rra_servo_middle|pwm_count\(3) & !\rra_servo_middle|pwm_count\(4))) # (!\rra_servo_middle|pwm_count\(6))) # (!\rra_servo_middle|pwm_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(3),
	datab => \rra_servo_middle|pwm_count\(4),
	datac => \rra_servo_middle|pwm_count\(5),
	datad => \rra_servo_middle|pwm_count\(6),
	combout => \rra_servo_middle|pwm_out~0_combout\);

-- Location: LCCOMB_X16_Y22_N14
\rra_servo_middle|pwm_count[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[7]~25_combout\ = (\rra_servo_middle|pwm_count\(7) & (!\rra_servo_middle|pwm_count[6]~24\)) # (!\rra_servo_middle|pwm_count\(7) & ((\rra_servo_middle|pwm_count[6]~24\) # (GND)))
-- \rra_servo_middle|pwm_count[7]~26\ = CARRY((!\rra_servo_middle|pwm_count[6]~24\) # (!\rra_servo_middle|pwm_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|pwm_count\(7),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[6]~24\,
	combout => \rra_servo_middle|pwm_count[7]~25_combout\,
	cout => \rra_servo_middle|pwm_count[7]~26\);

-- Location: FF_X16_Y22_N15
\rra_servo_middle|pwm_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[7]~25_combout\,
	sclr => \rra_servo_middle|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(7));

-- Location: LCCOMB_X16_Y22_N16
\rra_servo_middle|pwm_count[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[8]~27_combout\ = (\rra_servo_middle|pwm_count\(8) & (\rra_servo_middle|pwm_count[7]~26\ $ (GND))) # (!\rra_servo_middle|pwm_count\(8) & (!\rra_servo_middle|pwm_count[7]~26\ & VCC))
-- \rra_servo_middle|pwm_count[8]~28\ = CARRY((\rra_servo_middle|pwm_count\(8) & !\rra_servo_middle|pwm_count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|pwm_count\(8),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[7]~26\,
	combout => \rra_servo_middle|pwm_count[8]~27_combout\,
	cout => \rra_servo_middle|pwm_count[8]~28\);

-- Location: FF_X16_Y22_N17
\rra_servo_middle|pwm_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[8]~27_combout\,
	sclr => \rra_servo_middle|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(8));

-- Location: LCCOMB_X16_Y22_N18
\rra_servo_middle|pwm_count[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[9]~29_combout\ = (\rra_servo_middle|pwm_count\(9) & (!\rra_servo_middle|pwm_count[8]~28\)) # (!\rra_servo_middle|pwm_count\(9) & ((\rra_servo_middle|pwm_count[8]~28\) # (GND)))
-- \rra_servo_middle|pwm_count[9]~30\ = CARRY((!\rra_servo_middle|pwm_count[8]~28\) # (!\rra_servo_middle|pwm_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(9),
	datad => VCC,
	cin => \rra_servo_middle|pwm_count[8]~28\,
	combout => \rra_servo_middle|pwm_count[9]~29_combout\,
	cout => \rra_servo_middle|pwm_count[9]~30\);

-- Location: FF_X16_Y22_N19
\rra_servo_middle|pwm_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[9]~29_combout\,
	sclr => \rra_servo_middle|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(9));

-- Location: LCCOMB_X16_Y22_N28
\rra_servo_middle|pwm_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_out~1_combout\ = ((!\rra_servo_middle|pwm_count\(8)) # (!\rra_servo_middle|pwm_count\(7))) # (!\rra_servo_middle|pwm_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(9),
	datac => \rra_servo_middle|pwm_count\(7),
	datad => \rra_servo_middle|pwm_count\(8),
	combout => \rra_servo_middle|pwm_out~1_combout\);

-- Location: LCCOMB_X14_Y22_N14
\rra_servo_middle|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add6~0_combout\ = \rra_servo_middle|current\(1) $ (VCC)
-- \rra_servo_middle|Add6~1\ = CARRY(\rra_servo_middle|current\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|current\(1),
	datad => VCC,
	combout => \rra_servo_middle|Add6~0_combout\,
	cout => \rra_servo_middle|Add6~1\);

-- Location: LCCOMB_X14_Y22_N30
\rra_servo_middle|current[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|current\(1) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_middle|current[1]~2clkctrl_outclk\) & (\rra_servo_middle|Add6~0_combout\)) # (!GLOBAL(\rra_servo_middle|current[1]~2clkctrl_outclk\) & ((\rra_servo_middle|current\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_middle|Add6~0_combout\,
	datac => \rra_servo_middle|current\(1),
	datad => \rra_servo_middle|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_middle|current\(1));

-- Location: LCCOMB_X14_Y22_N16
\rra_servo_middle|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add6~2_combout\ = (\rra_servo_middle|current\(2) & (\rra_servo_middle|Add6~1\ & VCC)) # (!\rra_servo_middle|current\(2) & (!\rra_servo_middle|Add6~1\))
-- \rra_servo_middle|Add6~3\ = CARRY((!\rra_servo_middle|current\(2) & !\rra_servo_middle|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|current\(2),
	datad => VCC,
	cin => \rra_servo_middle|Add6~1\,
	combout => \rra_servo_middle|Add6~2_combout\,
	cout => \rra_servo_middle|Add6~3\);

-- Location: LCCOMB_X14_Y22_N0
\rra_servo_middle|current[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|current\(2) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_middle|current[1]~2clkctrl_outclk\) & ((\rra_servo_middle|Add6~2_combout\))) # (!GLOBAL(\rra_servo_middle|current[1]~2clkctrl_outclk\) & (\rra_servo_middle|current\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_middle|current\(2),
	datac => \rra_servo_middle|Add6~2_combout\,
	datad => \rra_servo_middle|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_middle|current\(2));

-- Location: LCCOMB_X14_Y22_N18
\rra_servo_middle|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add6~4_combout\ = (\rra_servo_middle|current\(3) & (\rra_servo_middle|Add6~3\ $ (GND))) # (!\rra_servo_middle|current\(3) & (!\rra_servo_middle|Add6~3\ & VCC))
-- \rra_servo_middle|Add6~5\ = CARRY((\rra_servo_middle|current\(3) & !\rra_servo_middle|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|current\(3),
	datad => VCC,
	cin => \rra_servo_middle|Add6~3\,
	combout => \rra_servo_middle|Add6~4_combout\,
	cout => \rra_servo_middle|Add6~5\);

-- Location: LCCOMB_X14_Y22_N6
\rra_servo_middle|current[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|current\(3) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_middle|current[1]~2clkctrl_outclk\) & (\rra_servo_middle|Add6~4_combout\)) # (!GLOBAL(\rra_servo_middle|current[1]~2clkctrl_outclk\) & ((\rra_servo_middle|current\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|Add6~4_combout\,
	datab => \rst~input_o\,
	datac => \rra_servo_middle|current\(3),
	datad => \rra_servo_middle|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_middle|current\(3));

-- Location: LCCOMB_X14_Y22_N20
\rra_servo_middle|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add6~6_combout\ = (\rra_servo_middle|current\(4) & (\rra_servo_middle|Add6~5\ & VCC)) # (!\rra_servo_middle|current\(4) & (!\rra_servo_middle|Add6~5\))
-- \rra_servo_middle|Add6~7\ = CARRY((!\rra_servo_middle|current\(4) & !\rra_servo_middle|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|current\(4),
	datad => VCC,
	cin => \rra_servo_middle|Add6~5\,
	combout => \rra_servo_middle|Add6~6_combout\,
	cout => \rra_servo_middle|Add6~7\);

-- Location: LCCOMB_X14_Y22_N4
\rra_servo_middle|current[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|current\(4) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_middle|current[1]~2clkctrl_outclk\) & (\rra_servo_middle|Add6~6_combout\)) # (!GLOBAL(\rra_servo_middle|current[1]~2clkctrl_outclk\) & ((\rra_servo_middle|current\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_middle|Add6~6_combout\,
	datac => \rra_servo_middle|current\(4),
	datad => \rra_servo_middle|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_middle|current\(4));

-- Location: LCCOMB_X12_Y22_N24
\rra_servo_middle|current[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|current[1]~0_combout\ = (\rra_servo_middle|current\(2)) # ((\rra_servo_middle|current\(1)) # ((\rra_servo_middle|current\(4)) # (\rra_servo_middle|current\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|current\(2),
	datab => \rra_servo_middle|current\(1),
	datac => \rra_servo_middle|current\(4),
	datad => \rra_servo_middle|current\(3),
	combout => \rra_servo_middle|current[1]~0_combout\);

-- Location: LCCOMB_X14_Y22_N22
\rra_servo_middle|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add6~8_combout\ = (\rra_servo_middle|current\(5) & ((GND) # (!\rra_servo_middle|Add6~7\))) # (!\rra_servo_middle|current\(5) & (\rra_servo_middle|Add6~7\ $ (GND)))
-- \rra_servo_middle|Add6~9\ = CARRY((\rra_servo_middle|current\(5)) # (!\rra_servo_middle|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|current\(5),
	datad => VCC,
	cin => \rra_servo_middle|Add6~7\,
	combout => \rra_servo_middle|Add6~8_combout\,
	cout => \rra_servo_middle|Add6~9\);

-- Location: LCCOMB_X14_Y22_N2
\rra_servo_middle|current[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|current\(5) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_middle|current[1]~2clkctrl_outclk\) & (\rra_servo_middle|Add6~8_combout\)) # (!GLOBAL(\rra_servo_middle|current[1]~2clkctrl_outclk\) & ((\rra_servo_middle|current\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|Add6~8_combout\,
	datab => \rst~input_o\,
	datac => \rra_servo_middle|current\(5),
	datad => \rra_servo_middle|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_middle|current\(5));

-- Location: LCCOMB_X14_Y22_N24
\rra_servo_middle|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add6~10_combout\ = (\rra_servo_middle|current\(6) & (\rra_servo_middle|Add6~9\ & VCC)) # (!\rra_servo_middle|current\(6) & (!\rra_servo_middle|Add6~9\))
-- \rra_servo_middle|Add6~11\ = CARRY((!\rra_servo_middle|current\(6) & !\rra_servo_middle|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|current\(6),
	datad => VCC,
	cin => \rra_servo_middle|Add6~9\,
	combout => \rra_servo_middle|Add6~10_combout\,
	cout => \rra_servo_middle|Add6~11\);

-- Location: LCCOMB_X14_Y22_N12
\rra_servo_middle|current[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|current\(6) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_middle|current[1]~2clkctrl_outclk\) & (\rra_servo_middle|Add6~10_combout\)) # (!GLOBAL(\rra_servo_middle|current[1]~2clkctrl_outclk\) & ((\rra_servo_middle|current\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_middle|Add6~10_combout\,
	datac => \rra_servo_middle|current\(6),
	datad => \rra_servo_middle|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_middle|current\(6));

-- Location: LCCOMB_X14_Y22_N26
\rra_servo_middle|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add6~12_combout\ = (\rra_servo_middle|current\(7) & ((GND) # (!\rra_servo_middle|Add6~11\))) # (!\rra_servo_middle|current\(7) & (\rra_servo_middle|Add6~11\ $ (GND)))
-- \rra_servo_middle|Add6~13\ = CARRY((\rra_servo_middle|current\(7)) # (!\rra_servo_middle|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|current\(7),
	datad => VCC,
	cin => \rra_servo_middle|Add6~11\,
	combout => \rra_servo_middle|Add6~12_combout\,
	cout => \rra_servo_middle|Add6~13\);

-- Location: LCCOMB_X14_Y22_N10
\rra_servo_middle|current[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|current\(7) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_middle|current[1]~2clkctrl_outclk\) & ((\rra_servo_middle|Add6~12_combout\))) # (!GLOBAL(\rra_servo_middle|current[1]~2clkctrl_outclk\) & (\rra_servo_middle|current\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|current\(7),
	datab => \rst~input_o\,
	datac => \rra_servo_middle|Add6~12_combout\,
	datad => \rra_servo_middle|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_middle|current\(7));

-- Location: LCCOMB_X12_Y22_N10
\rra_servo_middle|current[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|current[1]~1_combout\ = (\rra_servo_middle|current\(8)) # ((\rra_servo_middle|current\(5)) # ((\rra_servo_middle|current\(6)) # (\rra_servo_middle|current\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|current\(8),
	datab => \rra_servo_middle|current\(5),
	datac => \rra_servo_middle|current\(6),
	datad => \rra_servo_middle|current\(7),
	combout => \rra_servo_middle|current[1]~1_combout\);

-- Location: CLKCTRL_G6
\rra_servo_middle|LessThan0~18clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_middle|LessThan0~18clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_middle|LessThan0~18clkctrl_outclk\);

-- Location: LCCOMB_X11_Y24_N22
\rra_servo_middle|interval_count[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count[0]~0_combout\ = (!\rst~input_o\ & (\rra_servo_middle|LessThan0~18_combout\ $ (\rra_servo_middle|interval_count[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|LessThan0~18_combout\,
	datac => \rst~input_o\,
	datad => \rra_servo_middle|interval_count[0]~0_combout\,
	combout => \rra_servo_middle|interval_count[0]~0_combout\);

-- Location: LCCOMB_X11_Y24_N0
\rra_servo_middle|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add4~0_combout\ = (\rra_servo_middle|interval_count[0]~0_combout\ & (\rra_servo_middle|interval_count\(1) $ (VCC))) # (!\rra_servo_middle|interval_count[0]~0_combout\ & (\rra_servo_middle|interval_count\(1) & VCC))
-- \rra_servo_middle|Add4~1\ = CARRY((\rra_servo_middle|interval_count[0]~0_combout\ & \rra_servo_middle|interval_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count[0]~0_combout\,
	datab => \rra_servo_middle|interval_count\(1),
	datad => VCC,
	combout => \rra_servo_middle|Add4~0_combout\,
	cout => \rra_servo_middle|Add4~1\);

-- Location: LCCOMB_X11_Y24_N30
\rra_servo_middle|interval_count[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count\(1) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_middle|LessThan0~18clkctrl_outclk\) & (\rra_servo_middle|Add4~0_combout\)) # (!GLOBAL(\rra_servo_middle|LessThan0~18clkctrl_outclk\) & ((\rra_servo_middle|interval_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_middle|Add4~0_combout\,
	datac => \rra_servo_middle|interval_count\(1),
	datad => \rra_servo_middle|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_middle|interval_count\(1));

-- Location: LCCOMB_X11_Y24_N2
\rra_servo_middle|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add4~2_combout\ = (\rra_servo_middle|interval_count\(2) & (!\rra_servo_middle|Add4~1\)) # (!\rra_servo_middle|interval_count\(2) & ((\rra_servo_middle|Add4~1\) # (GND)))
-- \rra_servo_middle|Add4~3\ = CARRY((!\rra_servo_middle|Add4~1\) # (!\rra_servo_middle|interval_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|interval_count\(2),
	datad => VCC,
	cin => \rra_servo_middle|Add4~1\,
	combout => \rra_servo_middle|Add4~2_combout\,
	cout => \rra_servo_middle|Add4~3\);

-- Location: LCCOMB_X11_Y24_N20
\rra_servo_middle|interval_count[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count\(2) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_middle|LessThan0~18clkctrl_outclk\) & ((\rra_servo_middle|Add4~2_combout\))) # (!GLOBAL(\rra_servo_middle|LessThan0~18clkctrl_outclk\) & (\rra_servo_middle|interval_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_middle|interval_count\(2),
	datac => \rra_servo_middle|Add4~2_combout\,
	datad => \rra_servo_middle|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_middle|interval_count\(2));

-- Location: LCCOMB_X11_Y24_N4
\rra_servo_middle|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add4~4_combout\ = (\rra_servo_middle|interval_count\(3) & (\rra_servo_middle|Add4~3\ $ (GND))) # (!\rra_servo_middle|interval_count\(3) & (!\rra_servo_middle|Add4~3\ & VCC))
-- \rra_servo_middle|Add4~5\ = CARRY((\rra_servo_middle|interval_count\(3) & !\rra_servo_middle|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count\(3),
	datad => VCC,
	cin => \rra_servo_middle|Add4~3\,
	combout => \rra_servo_middle|Add4~4_combout\,
	cout => \rra_servo_middle|Add4~5\);

-- Location: LCCOMB_X11_Y24_N26
\rra_servo_middle|interval_count[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count\(3) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_middle|LessThan0~18clkctrl_outclk\) & (\rra_servo_middle|Add4~4_combout\)) # (!GLOBAL(\rra_servo_middle|LessThan0~18clkctrl_outclk\) & ((\rra_servo_middle|interval_count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_middle|Add4~4_combout\,
	datac => \rra_servo_middle|interval_count\(3),
	datad => \rra_servo_middle|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_middle|interval_count\(3));

-- Location: LCCOMB_X11_Y24_N6
\rra_servo_middle|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add4~6_combout\ = (\rra_servo_middle|interval_count\(4) & (!\rra_servo_middle|Add4~5\)) # (!\rra_servo_middle|interval_count\(4) & ((\rra_servo_middle|Add4~5\) # (GND)))
-- \rra_servo_middle|Add4~7\ = CARRY((!\rra_servo_middle|Add4~5\) # (!\rra_servo_middle|interval_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count\(4),
	datad => VCC,
	cin => \rra_servo_middle|Add4~5\,
	combout => \rra_servo_middle|Add4~6_combout\,
	cout => \rra_servo_middle|Add4~7\);

-- Location: LCCOMB_X11_Y24_N28
\rra_servo_middle|interval_count[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count\(4) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_middle|LessThan0~18clkctrl_outclk\) & (\rra_servo_middle|Add4~6_combout\)) # (!GLOBAL(\rra_servo_middle|LessThan0~18clkctrl_outclk\) & ((\rra_servo_middle|interval_count\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_middle|Add4~6_combout\,
	datac => \rra_servo_middle|interval_count\(4),
	datad => \rra_servo_middle|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_middle|interval_count\(4));

-- Location: LCCOMB_X11_Y24_N8
\rra_servo_middle|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add4~8_combout\ = (\rra_servo_middle|interval_count\(5) & (\rra_servo_middle|Add4~7\ $ (GND))) # (!\rra_servo_middle|interval_count\(5) & (!\rra_servo_middle|Add4~7\ & VCC))
-- \rra_servo_middle|Add4~9\ = CARRY((\rra_servo_middle|interval_count\(5) & !\rra_servo_middle|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|interval_count\(5),
	datad => VCC,
	cin => \rra_servo_middle|Add4~7\,
	combout => \rra_servo_middle|Add4~8_combout\,
	cout => \rra_servo_middle|Add4~9\);

-- Location: LCCOMB_X12_Y24_N8
\rra_servo_middle|interval_count[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count\(5) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_middle|LessThan0~18clkctrl_outclk\) & (\rra_servo_middle|Add4~8_combout\)) # (!GLOBAL(\rra_servo_middle|LessThan0~18clkctrl_outclk\) & ((\rra_servo_middle|interval_count\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|Add4~8_combout\,
	datab => \rst~input_o\,
	datac => \rra_servo_middle|interval_count\(5),
	datad => \rra_servo_middle|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_middle|interval_count\(5));

-- Location: LCCOMB_X11_Y24_N10
\rra_servo_middle|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add4~10_combout\ = (\rra_servo_middle|interval_count\(6) & (!\rra_servo_middle|Add4~9\)) # (!\rra_servo_middle|interval_count\(6) & ((\rra_servo_middle|Add4~9\) # (GND)))
-- \rra_servo_middle|Add4~11\ = CARRY((!\rra_servo_middle|Add4~9\) # (!\rra_servo_middle|interval_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count\(6),
	datad => VCC,
	cin => \rra_servo_middle|Add4~9\,
	combout => \rra_servo_middle|Add4~10_combout\,
	cout => \rra_servo_middle|Add4~11\);

-- Location: LCCOMB_X11_Y24_N18
\rra_servo_middle|interval_count[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count\(6) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_middle|LessThan0~18clkctrl_outclk\) & ((\rra_servo_middle|Add4~10_combout\))) # (!GLOBAL(\rra_servo_middle|LessThan0~18clkctrl_outclk\) & 
-- (\rra_servo_middle|interval_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_middle|interval_count\(6),
	datac => \rra_servo_middle|Add4~10_combout\,
	datad => \rra_servo_middle|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_middle|interval_count\(6));

-- Location: LCCOMB_X11_Y24_N12
\rra_servo_middle|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add4~12_combout\ = (\rra_servo_middle|interval_count\(7) & (\rra_servo_middle|Add4~11\ $ (GND))) # (!\rra_servo_middle|interval_count\(7) & (!\rra_servo_middle|Add4~11\ & VCC))
-- \rra_servo_middle|Add4~13\ = CARRY((\rra_servo_middle|interval_count\(7) & !\rra_servo_middle|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|interval_count\(7),
	datad => VCC,
	cin => \rra_servo_middle|Add4~11\,
	combout => \rra_servo_middle|Add4~12_combout\,
	cout => \rra_servo_middle|Add4~13\);

-- Location: LCCOMB_X12_Y24_N6
\rra_servo_middle|interval_count[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count\(7) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_middle|LessThan0~18clkctrl_outclk\) & ((\rra_servo_middle|Add4~12_combout\))) # (!GLOBAL(\rra_servo_middle|LessThan0~18clkctrl_outclk\) & 
-- (\rra_servo_middle|interval_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count\(7),
	datab => \rst~input_o\,
	datac => \rra_servo_middle|LessThan0~18clkctrl_outclk\,
	datad => \rra_servo_middle|Add4~12_combout\,
	combout => \rra_servo_middle|interval_count\(7));

-- Location: LCCOMB_X11_Y24_N14
\rra_servo_middle|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add4~14_combout\ = (\rra_servo_middle|interval_count\(8) & (!\rra_servo_middle|Add4~13\)) # (!\rra_servo_middle|interval_count\(8) & ((\rra_servo_middle|Add4~13\) # (GND)))
-- \rra_servo_middle|Add4~15\ = CARRY((!\rra_servo_middle|Add4~13\) # (!\rra_servo_middle|interval_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count\(8),
	datad => VCC,
	cin => \rra_servo_middle|Add4~13\,
	combout => \rra_servo_middle|Add4~14_combout\,
	cout => \rra_servo_middle|Add4~15\);

-- Location: LCCOMB_X12_Y24_N4
\rra_servo_middle|interval_count[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count\(8) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_middle|LessThan0~18clkctrl_outclk\) & ((\rra_servo_middle|Add4~14_combout\))) # (!GLOBAL(\rra_servo_middle|LessThan0~18clkctrl_outclk\) & 
-- (\rra_servo_middle|interval_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_middle|interval_count\(8),
	datac => \rra_servo_middle|LessThan0~18clkctrl_outclk\,
	datad => \rra_servo_middle|Add4~14_combout\,
	combout => \rra_servo_middle|interval_count\(8));

-- Location: LCCOMB_X11_Y24_N16
\rra_servo_middle|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add4~16_combout\ = \rra_servo_middle|Add4~15\ $ (!\rra_servo_middle|interval_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_middle|interval_count\(9),
	cin => \rra_servo_middle|Add4~15\,
	combout => \rra_servo_middle|Add4~16_combout\);

-- Location: LCCOMB_X11_Y24_N24
\rra_servo_middle|interval_count[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|interval_count\(9) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_middle|LessThan0~18clkctrl_outclk\) & (\rra_servo_middle|Add4~16_combout\)) # (!GLOBAL(\rra_servo_middle|LessThan0~18clkctrl_outclk\) & 
-- ((\rra_servo_middle|interval_count\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_middle|Add4~16_combout\,
	datac => \rra_servo_middle|interval_count\(9),
	datad => \rra_servo_middle|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_middle|interval_count\(9));

-- Location: LCCOMB_X12_Y24_N10
\rra_servo_middle|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~1_cout\ = CARRY(\rra_servo_middle|interval_count[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|interval_count[0]~0_combout\,
	datad => VCC,
	cout => \rra_servo_middle|LessThan0~1_cout\);

-- Location: LCCOMB_X12_Y24_N12
\rra_servo_middle|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~3_cout\ = CARRY((\rra_servo_lower|interval[1]~0_combout\ & ((!\rra_servo_middle|LessThan0~1_cout\) # (!\rra_servo_middle|interval_count\(1)))) # (!\rra_servo_lower|interval[1]~0_combout\ & (!\rra_servo_middle|interval_count\(1) 
-- & !\rra_servo_middle|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval[1]~0_combout\,
	datab => \rra_servo_middle|interval_count\(1),
	datad => VCC,
	cin => \rra_servo_middle|LessThan0~1_cout\,
	cout => \rra_servo_middle|LessThan0~3_cout\);

-- Location: LCCOMB_X12_Y24_N14
\rra_servo_middle|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~5_cout\ = CARRY((\rra_servo_lower|Add2~23_combout\ & (\rra_servo_middle|interval_count\(2) & !\rra_servo_middle|LessThan0~3_cout\)) # (!\rra_servo_lower|Add2~23_combout\ & ((\rra_servo_middle|interval_count\(2)) # 
-- (!\rra_servo_middle|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~23_combout\,
	datab => \rra_servo_middle|interval_count\(2),
	datad => VCC,
	cin => \rra_servo_middle|LessThan0~3_cout\,
	cout => \rra_servo_middle|LessThan0~5_cout\);

-- Location: LCCOMB_X12_Y24_N16
\rra_servo_middle|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~7_cout\ = CARRY((\rra_servo_middle|interval_count\(3) & (\rra_servo_lower|Add2~22_combout\ & !\rra_servo_middle|LessThan0~5_cout\)) # (!\rra_servo_middle|interval_count\(3) & ((\rra_servo_lower|Add2~22_combout\) # 
-- (!\rra_servo_middle|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count\(3),
	datab => \rra_servo_lower|Add2~22_combout\,
	datad => VCC,
	cin => \rra_servo_middle|LessThan0~5_cout\,
	cout => \rra_servo_middle|LessThan0~7_cout\);

-- Location: LCCOMB_X12_Y24_N18
\rra_servo_middle|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~9_cout\ = CARRY((\rra_servo_lower|Add2~21_combout\ & (\rra_servo_middle|interval_count\(4) & !\rra_servo_middle|LessThan0~7_cout\)) # (!\rra_servo_lower|Add2~21_combout\ & ((\rra_servo_middle|interval_count\(4)) # 
-- (!\rra_servo_middle|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~21_combout\,
	datab => \rra_servo_middle|interval_count\(4),
	datad => VCC,
	cin => \rra_servo_middle|LessThan0~7_cout\,
	cout => \rra_servo_middle|LessThan0~9_cout\);

-- Location: LCCOMB_X12_Y24_N20
\rra_servo_middle|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~11_cout\ = CARRY((\rra_servo_middle|interval_count\(5) & (\rra_servo_lower|Add2~20_combout\ & !\rra_servo_middle|LessThan0~9_cout\)) # (!\rra_servo_middle|interval_count\(5) & ((\rra_servo_lower|Add2~20_combout\) # 
-- (!\rra_servo_middle|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count\(5),
	datab => \rra_servo_lower|Add2~20_combout\,
	datad => VCC,
	cin => \rra_servo_middle|LessThan0~9_cout\,
	cout => \rra_servo_middle|LessThan0~11_cout\);

-- Location: LCCOMB_X12_Y24_N22
\rra_servo_middle|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~13_cout\ = CARRY((\rra_servo_middle|interval_count\(6) & ((!\rra_servo_middle|LessThan0~11_cout\) # (!\rra_servo_lower|Add2~19_combout\))) # (!\rra_servo_middle|interval_count\(6) & (!\rra_servo_lower|Add2~19_combout\ & 
-- !\rra_servo_middle|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|interval_count\(6),
	datab => \rra_servo_lower|Add2~19_combout\,
	datad => VCC,
	cin => \rra_servo_middle|LessThan0~11_cout\,
	cout => \rra_servo_middle|LessThan0~13_cout\);

-- Location: LCCOMB_X12_Y24_N24
\rra_servo_middle|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~15_cout\ = CARRY((\rra_servo_lower|Add2~18_combout\ & ((!\rra_servo_middle|LessThan0~13_cout\) # (!\rra_servo_middle|interval_count\(7)))) # (!\rra_servo_lower|Add2~18_combout\ & (!\rra_servo_middle|interval_count\(7) & 
-- !\rra_servo_middle|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~18_combout\,
	datab => \rra_servo_middle|interval_count\(7),
	datad => VCC,
	cin => \rra_servo_middle|LessThan0~13_cout\,
	cout => \rra_servo_middle|LessThan0~15_cout\);

-- Location: LCCOMB_X12_Y24_N26
\rra_servo_middle|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~17_cout\ = CARRY((\rra_servo_lower|Add2~17_combout\ & (\rra_servo_middle|interval_count\(8) & !\rra_servo_middle|LessThan0~15_cout\)) # (!\rra_servo_lower|Add2~17_combout\ & ((\rra_servo_middle|interval_count\(8)) # 
-- (!\rra_servo_middle|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~17_combout\,
	datab => \rra_servo_middle|interval_count\(8),
	datad => VCC,
	cin => \rra_servo_middle|LessThan0~15_cout\,
	cout => \rra_servo_middle|LessThan0~17_cout\);

-- Location: LCCOMB_X12_Y24_N28
\rra_servo_middle|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan0~18_combout\ = (\rra_servo_middle|interval_count\(9) & (!\rra_servo_middle|LessThan0~17_cout\ & \rra_servo_lower|Add2~16_combout\)) # (!\rra_servo_middle|interval_count\(9) & ((\rra_servo_lower|Add2~16_combout\) # 
-- (!\rra_servo_middle|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|interval_count\(9),
	datad => \rra_servo_lower|Add2~16_combout\,
	cin => \rra_servo_middle|LessThan0~17_cout\,
	combout => \rra_servo_middle|LessThan0~18_combout\);

-- Location: LCCOMB_X12_Y24_N30
\rra_servo_middle|current[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|current[1]~2_combout\ = (!\rra_servo_middle|LessThan0~18_combout\ & ((\rra_servo_middle|current[1]~0_combout\) # (\rra_servo_middle|current[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|current[1]~0_combout\,
	datac => \rra_servo_middle|current[1]~1_combout\,
	datad => \rra_servo_middle|LessThan0~18_combout\,
	combout => \rra_servo_middle|current[1]~2_combout\);

-- Location: CLKCTRL_G7
\rra_servo_middle|current[1]~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_middle|current[1]~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_middle|current[1]~2clkctrl_outclk\);

-- Location: LCCOMB_X14_Y22_N28
\rra_servo_middle|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add6~14_combout\ = \rra_servo_middle|Add6~13\ $ (!\rra_servo_middle|current\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_middle|current\(8),
	cin => \rra_servo_middle|Add6~13\,
	combout => \rra_servo_middle|Add6~14_combout\);

-- Location: LCCOMB_X14_Y22_N8
\rra_servo_middle|current[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|current\(8) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_middle|current[1]~2clkctrl_outclk\) & ((\rra_servo_middle|Add6~14_combout\))) # (!GLOBAL(\rra_servo_middle|current[1]~2clkctrl_outclk\) & (\rra_servo_middle|current\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_middle|current\(8),
	datac => \rra_servo_middle|current[1]~2clkctrl_outclk\,
	datad => \rra_servo_middle|Add6~14_combout\,
	combout => \rra_servo_middle|current\(8));

-- Location: LCCOMB_X15_Y22_N18
\rra_servo_middle|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add8~0_combout\ = (\rra_servo_middle|current\(2) & (\rra_servo_middle|current\(3) $ (VCC))) # (!\rra_servo_middle|current\(2) & (\rra_servo_middle|current\(3) & VCC))
-- \rra_servo_middle|Add8~1\ = CARRY((\rra_servo_middle|current\(2) & \rra_servo_middle|current\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|current\(2),
	datab => \rra_servo_middle|current\(3),
	datad => VCC,
	combout => \rra_servo_middle|Add8~0_combout\,
	cout => \rra_servo_middle|Add8~1\);

-- Location: LCCOMB_X15_Y22_N20
\rra_servo_middle|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add8~2_combout\ = (\rra_servo_middle|current\(4) & (\rra_servo_middle|Add8~1\ & VCC)) # (!\rra_servo_middle|current\(4) & (!\rra_servo_middle|Add8~1\))
-- \rra_servo_middle|Add8~3\ = CARRY((!\rra_servo_middle|current\(4) & !\rra_servo_middle|Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_middle|current\(4),
	datad => VCC,
	cin => \rra_servo_middle|Add8~1\,
	combout => \rra_servo_middle|Add8~2_combout\,
	cout => \rra_servo_middle|Add8~3\);

-- Location: LCCOMB_X15_Y22_N22
\rra_servo_middle|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add8~4_combout\ = (\rra_servo_middle|current\(5) & ((GND) # (!\rra_servo_middle|Add8~3\))) # (!\rra_servo_middle|current\(5) & (\rra_servo_middle|Add8~3\ $ (GND)))
-- \rra_servo_middle|Add8~5\ = CARRY((\rra_servo_middle|current\(5)) # (!\rra_servo_middle|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|current\(5),
	datad => VCC,
	cin => \rra_servo_middle|Add8~3\,
	combout => \rra_servo_middle|Add8~4_combout\,
	cout => \rra_servo_middle|Add8~5\);

-- Location: LCCOMB_X15_Y22_N24
\rra_servo_middle|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add8~6_combout\ = (\rra_servo_middle|current\(6) & (\rra_servo_middle|Add8~5\ & VCC)) # (!\rra_servo_middle|current\(6) & (!\rra_servo_middle|Add8~5\))
-- \rra_servo_middle|Add8~7\ = CARRY((!\rra_servo_middle|current\(6) & !\rra_servo_middle|Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|current\(6),
	datad => VCC,
	cin => \rra_servo_middle|Add8~5\,
	combout => \rra_servo_middle|Add8~6_combout\,
	cout => \rra_servo_middle|Add8~7\);

-- Location: LCCOMB_X15_Y22_N26
\rra_servo_middle|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add8~8_combout\ = (\rra_servo_middle|current\(7) & ((GND) # (!\rra_servo_middle|Add8~7\))) # (!\rra_servo_middle|current\(7) & (\rra_servo_middle|Add8~7\ $ (GND)))
-- \rra_servo_middle|Add8~9\ = CARRY((\rra_servo_middle|current\(7)) # (!\rra_servo_middle|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|current\(7),
	datad => VCC,
	cin => \rra_servo_middle|Add8~7\,
	combout => \rra_servo_middle|Add8~8_combout\,
	cout => \rra_servo_middle|Add8~9\);

-- Location: LCCOMB_X15_Y22_N28
\rra_servo_middle|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add8~10_combout\ = (\rra_servo_middle|current\(8) & (\rra_servo_middle|Add8~9\ & VCC)) # (!\rra_servo_middle|current\(8) & (!\rra_servo_middle|Add8~9\))
-- \rra_servo_middle|Add8~11\ = CARRY((!\rra_servo_middle|current\(8) & !\rra_servo_middle|Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|current\(8),
	datad => VCC,
	cin => \rra_servo_middle|Add8~9\,
	combout => \rra_servo_middle|Add8~10_combout\,
	cout => \rra_servo_middle|Add8~11\);

-- Location: LCCOMB_X15_Y22_N30
\rra_servo_middle|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|Add8~12_combout\ = !\rra_servo_middle|Add8~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rra_servo_middle|Add8~11\,
	combout => \rra_servo_middle|Add8~12_combout\);

-- Location: LCCOMB_X16_Y22_N20
\rra_servo_middle|pwm_count[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_count[10]~31_combout\ = \rra_servo_middle|pwm_count[9]~30\ $ (!\rra_servo_middle|pwm_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_middle|pwm_count\(10),
	cin => \rra_servo_middle|pwm_count[9]~30\,
	combout => \rra_servo_middle|pwm_count[10]~31_combout\);

-- Location: FF_X16_Y22_N21
\rra_servo_middle|pwm_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_count[10]~31_combout\,
	sclr => \rra_servo_middle|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_count\(10));

-- Location: LCCOMB_X15_Y22_N0
\rra_servo_middle|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan5~1_cout\ = CARRY((!\rra_servo_middle|pwm_count\(2) & \rra_servo_middle|current\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(2),
	datab => \rra_servo_middle|current\(1),
	datad => VCC,
	cout => \rra_servo_middle|LessThan5~1_cout\);

-- Location: LCCOMB_X15_Y22_N2
\rra_servo_middle|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan5~3_cout\ = CARRY((\rra_servo_middle|pwm_count\(3) & ((\rra_servo_middle|current\(2)) # (!\rra_servo_middle|LessThan5~1_cout\))) # (!\rra_servo_middle|pwm_count\(3) & (\rra_servo_middle|current\(2) & 
-- !\rra_servo_middle|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(3),
	datab => \rra_servo_middle|current\(2),
	datad => VCC,
	cin => \rra_servo_middle|LessThan5~1_cout\,
	cout => \rra_servo_middle|LessThan5~3_cout\);

-- Location: LCCOMB_X15_Y22_N4
\rra_servo_middle|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan5~5_cout\ = CARRY((\rra_servo_middle|Add8~0_combout\ & ((!\rra_servo_middle|LessThan5~3_cout\) # (!\rra_servo_middle|pwm_count\(4)))) # (!\rra_servo_middle|Add8~0_combout\ & (!\rra_servo_middle|pwm_count\(4) & 
-- !\rra_servo_middle|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|Add8~0_combout\,
	datab => \rra_servo_middle|pwm_count\(4),
	datad => VCC,
	cin => \rra_servo_middle|LessThan5~3_cout\,
	cout => \rra_servo_middle|LessThan5~5_cout\);

-- Location: LCCOMB_X15_Y22_N6
\rra_servo_middle|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan5~7_cout\ = CARRY((\rra_servo_middle|pwm_count\(5) & ((!\rra_servo_middle|LessThan5~5_cout\) # (!\rra_servo_middle|Add8~2_combout\))) # (!\rra_servo_middle|pwm_count\(5) & (!\rra_servo_middle|Add8~2_combout\ & 
-- !\rra_servo_middle|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(5),
	datab => \rra_servo_middle|Add8~2_combout\,
	datad => VCC,
	cin => \rra_servo_middle|LessThan5~5_cout\,
	cout => \rra_servo_middle|LessThan5~7_cout\);

-- Location: LCCOMB_X15_Y22_N8
\rra_servo_middle|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan5~9_cout\ = CARRY((\rra_servo_middle|Add8~4_combout\ & ((!\rra_servo_middle|LessThan5~7_cout\) # (!\rra_servo_middle|pwm_count\(6)))) # (!\rra_servo_middle|Add8~4_combout\ & (!\rra_servo_middle|pwm_count\(6) & 
-- !\rra_servo_middle|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|Add8~4_combout\,
	datab => \rra_servo_middle|pwm_count\(6),
	datad => VCC,
	cin => \rra_servo_middle|LessThan5~7_cout\,
	cout => \rra_servo_middle|LessThan5~9_cout\);

-- Location: LCCOMB_X15_Y22_N10
\rra_servo_middle|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan5~11_cout\ = CARRY((\rra_servo_middle|pwm_count\(7) & ((!\rra_servo_middle|LessThan5~9_cout\) # (!\rra_servo_middle|Add8~6_combout\))) # (!\rra_servo_middle|pwm_count\(7) & (!\rra_servo_middle|Add8~6_combout\ & 
-- !\rra_servo_middle|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(7),
	datab => \rra_servo_middle|Add8~6_combout\,
	datad => VCC,
	cin => \rra_servo_middle|LessThan5~9_cout\,
	cout => \rra_servo_middle|LessThan5~11_cout\);

-- Location: LCCOMB_X15_Y22_N12
\rra_servo_middle|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan5~13_cout\ = CARRY((\rra_servo_middle|Add8~8_combout\ & ((!\rra_servo_middle|LessThan5~11_cout\) # (!\rra_servo_middle|pwm_count\(8)))) # (!\rra_servo_middle|Add8~8_combout\ & (!\rra_servo_middle|pwm_count\(8) & 
-- !\rra_servo_middle|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|Add8~8_combout\,
	datab => \rra_servo_middle|pwm_count\(8),
	datad => VCC,
	cin => \rra_servo_middle|LessThan5~11_cout\,
	cout => \rra_servo_middle|LessThan5~13_cout\);

-- Location: LCCOMB_X15_Y22_N14
\rra_servo_middle|LessThan5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan5~15_cout\ = CARRY((\rra_servo_middle|pwm_count\(9) & ((!\rra_servo_middle|LessThan5~13_cout\) # (!\rra_servo_middle|Add8~10_combout\))) # (!\rra_servo_middle|pwm_count\(9) & (!\rra_servo_middle|Add8~10_combout\ & 
-- !\rra_servo_middle|LessThan5~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_count\(9),
	datab => \rra_servo_middle|Add8~10_combout\,
	datad => VCC,
	cin => \rra_servo_middle|LessThan5~13_cout\,
	cout => \rra_servo_middle|LessThan5~15_cout\);

-- Location: LCCOMB_X15_Y22_N16
\rra_servo_middle|LessThan5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|LessThan5~16_combout\ = (\rra_servo_middle|Add8~12_combout\ & ((!\rra_servo_middle|pwm_count\(10)) # (!\rra_servo_middle|LessThan5~15_cout\))) # (!\rra_servo_middle|Add8~12_combout\ & (!\rra_servo_middle|LessThan5~15_cout\ & 
-- !\rra_servo_middle|pwm_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|Add8~12_combout\,
	datad => \rra_servo_middle|pwm_count\(10),
	cin => \rra_servo_middle|LessThan5~15_cout\,
	combout => \rra_servo_middle|LessThan5~16_combout\);

-- Location: LCCOMB_X16_Y22_N26
\rra_servo_middle|pwm_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_out~2_combout\ = (\rra_servo_middle|LessThan5~16_combout\) # ((!\rra_servo_middle|pwm_count\(10) & ((\rra_servo_middle|pwm_out~0_combout\) # (\rra_servo_middle|pwm_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_middle|pwm_out~0_combout\,
	datab => \rra_servo_middle|pwm_out~1_combout\,
	datac => \rra_servo_middle|LessThan5~16_combout\,
	datad => \rra_servo_middle|pwm_count\(10),
	combout => \rra_servo_middle|pwm_out~2_combout\);

-- Location: LCCOMB_X16_Y22_N24
\rra_servo_middle|pwm_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_middle|pwm_out~3_combout\ = \rra_servo_middle|pwm_out~q\ $ (!\rra_servo_middle|pwm_out~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_middle|pwm_out~q\,
	datad => \rra_servo_middle|pwm_out~2_combout\,
	combout => \rra_servo_middle|pwm_out~3_combout\);

-- Location: FF_X16_Y22_N25
\rra_servo_middle|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_middle|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_middle|pwm_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|pwm_out~q\);

-- Location: LCCOMB_X16_Y22_N22
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

-- Location: FF_X16_Y22_N23
\rra_servo_middle|o_pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_middle|o_pwm_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_middle|o_pwm_out~q\);

-- Location: LCCOMB_X1_Y14_N14
\rra_servo_upper|clk_1mhz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|clk_1mhz~0_combout\ = !\rra_servo_lower|LessThan3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|LessThan3~2_combout\,
	combout => \rra_servo_upper|clk_1mhz~0_combout\);

-- Location: FF_X1_Y14_N15
\rra_servo_upper|clk_1mhz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_upper|clk_1mhz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|clk_1mhz~q\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X15_Y24_N2
\rra_servo_upper|pwm_count[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[0]~11_combout\ = \rra_servo_upper|pwm_count\(0) $ (VCC)
-- \rra_servo_upper|pwm_count[0]~12\ = CARRY(\rra_servo_upper|pwm_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(0),
	datad => VCC,
	combout => \rra_servo_upper|pwm_count[0]~11_combout\,
	cout => \rra_servo_upper|pwm_count[0]~12\);

-- Location: FF_X15_Y24_N3
\rra_servo_upper|pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[0]~11_combout\,
	sclr => \rra_servo_upper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(0));

-- Location: LCCOMB_X15_Y24_N4
\rra_servo_upper|pwm_count[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[1]~13_combout\ = (\rra_servo_upper|pwm_count\(1) & (!\rra_servo_upper|pwm_count[0]~12\)) # (!\rra_servo_upper|pwm_count\(1) & ((\rra_servo_upper|pwm_count[0]~12\) # (GND)))
-- \rra_servo_upper|pwm_count[1]~14\ = CARRY((!\rra_servo_upper|pwm_count[0]~12\) # (!\rra_servo_upper|pwm_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(1),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[0]~12\,
	combout => \rra_servo_upper|pwm_count[1]~13_combout\,
	cout => \rra_servo_upper|pwm_count[1]~14\);

-- Location: FF_X15_Y24_N5
\rra_servo_upper|pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[1]~13_combout\,
	sclr => \rra_servo_upper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(1));

-- Location: LCCOMB_X15_Y24_N6
\rra_servo_upper|pwm_count[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[2]~15_combout\ = (\rra_servo_upper|pwm_count\(2) & (\rra_servo_upper|pwm_count[1]~14\ $ (GND))) # (!\rra_servo_upper|pwm_count\(2) & (!\rra_servo_upper|pwm_count[1]~14\ & VCC))
-- \rra_servo_upper|pwm_count[2]~16\ = CARRY((\rra_servo_upper|pwm_count\(2) & !\rra_servo_upper|pwm_count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(2),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[1]~14\,
	combout => \rra_servo_upper|pwm_count[2]~15_combout\,
	cout => \rra_servo_upper|pwm_count[2]~16\);

-- Location: FF_X15_Y24_N7
\rra_servo_upper|pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[2]~15_combout\,
	sclr => \rra_servo_upper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(2));

-- Location: LCCOMB_X15_Y24_N8
\rra_servo_upper|pwm_count[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[3]~17_combout\ = (\rra_servo_upper|pwm_count\(3) & (!\rra_servo_upper|pwm_count[2]~16\)) # (!\rra_servo_upper|pwm_count\(3) & ((\rra_servo_upper|pwm_count[2]~16\) # (GND)))
-- \rra_servo_upper|pwm_count[3]~18\ = CARRY((!\rra_servo_upper|pwm_count[2]~16\) # (!\rra_servo_upper|pwm_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(3),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[2]~16\,
	combout => \rra_servo_upper|pwm_count[3]~17_combout\,
	cout => \rra_servo_upper|pwm_count[3]~18\);

-- Location: FF_X15_Y24_N9
\rra_servo_upper|pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[3]~17_combout\,
	sclr => \rra_servo_upper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(3));

-- Location: LCCOMB_X15_Y24_N10
\rra_servo_upper|pwm_count[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[4]~19_combout\ = (\rra_servo_upper|pwm_count\(4) & (\rra_servo_upper|pwm_count[3]~18\ $ (GND))) # (!\rra_servo_upper|pwm_count\(4) & (!\rra_servo_upper|pwm_count[3]~18\ & VCC))
-- \rra_servo_upper|pwm_count[4]~20\ = CARRY((\rra_servo_upper|pwm_count\(4) & !\rra_servo_upper|pwm_count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(4),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[3]~18\,
	combout => \rra_servo_upper|pwm_count[4]~19_combout\,
	cout => \rra_servo_upper|pwm_count[4]~20\);

-- Location: FF_X15_Y24_N11
\rra_servo_upper|pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[4]~19_combout\,
	sclr => \rra_servo_upper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(4));

-- Location: LCCOMB_X15_Y24_N12
\rra_servo_upper|pwm_count[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[5]~21_combout\ = (\rra_servo_upper|pwm_count\(5) & (!\rra_servo_upper|pwm_count[4]~20\)) # (!\rra_servo_upper|pwm_count\(5) & ((\rra_servo_upper|pwm_count[4]~20\) # (GND)))
-- \rra_servo_upper|pwm_count[5]~22\ = CARRY((!\rra_servo_upper|pwm_count[4]~20\) # (!\rra_servo_upper|pwm_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(5),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[4]~20\,
	combout => \rra_servo_upper|pwm_count[5]~21_combout\,
	cout => \rra_servo_upper|pwm_count[5]~22\);

-- Location: FF_X15_Y24_N13
\rra_servo_upper|pwm_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[5]~21_combout\,
	sclr => \rra_servo_upper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(5));

-- Location: LCCOMB_X15_Y24_N14
\rra_servo_upper|pwm_count[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[6]~23_combout\ = (\rra_servo_upper|pwm_count\(6) & (\rra_servo_upper|pwm_count[5]~22\ $ (GND))) # (!\rra_servo_upper|pwm_count\(6) & (!\rra_servo_upper|pwm_count[5]~22\ & VCC))
-- \rra_servo_upper|pwm_count[6]~24\ = CARRY((\rra_servo_upper|pwm_count\(6) & !\rra_servo_upper|pwm_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(6),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[5]~22\,
	combout => \rra_servo_upper|pwm_count[6]~23_combout\,
	cout => \rra_servo_upper|pwm_count[6]~24\);

-- Location: FF_X15_Y24_N15
\rra_servo_upper|pwm_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[6]~23_combout\,
	sclr => \rra_servo_upper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(6));

-- Location: LCCOMB_X15_Y24_N16
\rra_servo_upper|pwm_count[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[7]~25_combout\ = (\rra_servo_upper|pwm_count\(7) & (!\rra_servo_upper|pwm_count[6]~24\)) # (!\rra_servo_upper|pwm_count\(7) & ((\rra_servo_upper|pwm_count[6]~24\) # (GND)))
-- \rra_servo_upper|pwm_count[7]~26\ = CARRY((!\rra_servo_upper|pwm_count[6]~24\) # (!\rra_servo_upper|pwm_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(7),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[6]~24\,
	combout => \rra_servo_upper|pwm_count[7]~25_combout\,
	cout => \rra_servo_upper|pwm_count[7]~26\);

-- Location: FF_X15_Y24_N17
\rra_servo_upper|pwm_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[7]~25_combout\,
	sclr => \rra_servo_upper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(7));

-- Location: LCCOMB_X15_Y24_N18
\rra_servo_upper|pwm_count[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[8]~27_combout\ = (\rra_servo_upper|pwm_count\(8) & (\rra_servo_upper|pwm_count[7]~26\ $ (GND))) # (!\rra_servo_upper|pwm_count\(8) & (!\rra_servo_upper|pwm_count[7]~26\ & VCC))
-- \rra_servo_upper|pwm_count[8]~28\ = CARRY((\rra_servo_upper|pwm_count\(8) & !\rra_servo_upper|pwm_count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(8),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[7]~26\,
	combout => \rra_servo_upper|pwm_count[8]~27_combout\,
	cout => \rra_servo_upper|pwm_count[8]~28\);

-- Location: FF_X15_Y24_N19
\rra_servo_upper|pwm_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[8]~27_combout\,
	sclr => \rra_servo_upper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(8));

-- Location: LCCOMB_X15_Y24_N20
\rra_servo_upper|pwm_count[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[9]~29_combout\ = (\rra_servo_upper|pwm_count\(9) & (!\rra_servo_upper|pwm_count[8]~28\)) # (!\rra_servo_upper|pwm_count\(9) & ((\rra_servo_upper|pwm_count[8]~28\) # (GND)))
-- \rra_servo_upper|pwm_count[9]~30\ = CARRY((!\rra_servo_upper|pwm_count[8]~28\) # (!\rra_servo_upper|pwm_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(9),
	datad => VCC,
	cin => \rra_servo_upper|pwm_count[8]~28\,
	combout => \rra_servo_upper|pwm_count[9]~29_combout\,
	cout => \rra_servo_upper|pwm_count[9]~30\);

-- Location: FF_X15_Y24_N21
\rra_servo_upper|pwm_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[9]~29_combout\,
	sclr => \rra_servo_upper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(9));

-- Location: LCCOMB_X15_Y24_N22
\rra_servo_upper|pwm_count[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_count[10]~31_combout\ = \rra_servo_upper|pwm_count\(10) $ (!\rra_servo_upper|pwm_count[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(10),
	cin => \rra_servo_upper|pwm_count[9]~30\,
	combout => \rra_servo_upper|pwm_count[10]~31_combout\);

-- Location: FF_X15_Y24_N23
\rra_servo_upper|pwm_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_count[10]~31_combout\,
	sclr => \rra_servo_upper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_count\(10));

-- Location: LCCOMB_X15_Y24_N24
\rra_servo_upper|pwm_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_out~1_combout\ = ((!\rra_servo_upper|pwm_count\(7)) # (!\rra_servo_upper|pwm_count\(8))) # (!\rra_servo_upper|pwm_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(9),
	datac => \rra_servo_upper|pwm_count\(8),
	datad => \rra_servo_upper|pwm_count\(7),
	combout => \rra_servo_upper|pwm_out~1_combout\);

-- Location: LCCOMB_X17_Y24_N14
\rra_servo_upper|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add6~0_combout\ = \rra_servo_upper|current\(1) $ (VCC)
-- \rra_servo_upper|Add6~1\ = CARRY(\rra_servo_upper|current\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|current\(1),
	datad => VCC,
	combout => \rra_servo_upper|Add6~0_combout\,
	cout => \rra_servo_upper|Add6~1\);

-- Location: LCCOMB_X17_Y24_N2
\rra_servo_upper|current[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|current\(1) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_upper|current[1]~2clkctrl_outclk\) & (\rra_servo_upper|Add6~0_combout\)) # (!GLOBAL(\rra_servo_upper|current[1]~2clkctrl_outclk\) & ((\rra_servo_upper|current\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|Add6~0_combout\,
	datab => \rra_servo_upper|current\(1),
	datac => \rst~input_o\,
	datad => \rra_servo_upper|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_upper|current\(1));

-- Location: LCCOMB_X17_Y24_N16
\rra_servo_upper|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add6~2_combout\ = (\rra_servo_upper|current\(2) & (\rra_servo_upper|Add6~1\ & VCC)) # (!\rra_servo_upper|current\(2) & (!\rra_servo_upper|Add6~1\))
-- \rra_servo_upper|Add6~3\ = CARRY((!\rra_servo_upper|current\(2) & !\rra_servo_upper|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|current\(2),
	datad => VCC,
	cin => \rra_servo_upper|Add6~1\,
	combout => \rra_servo_upper|Add6~2_combout\,
	cout => \rra_servo_upper|Add6~3\);

-- Location: LCCOMB_X17_Y24_N12
\rra_servo_upper|current[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|current\(2) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_upper|current[1]~2clkctrl_outclk\) & ((\rra_servo_upper|Add6~2_combout\))) # (!GLOBAL(\rra_servo_upper|current[1]~2clkctrl_outclk\) & (\rra_servo_upper|current\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_upper|current\(2),
	datac => \rra_servo_upper|current[1]~2clkctrl_outclk\,
	datad => \rra_servo_upper|Add6~2_combout\,
	combout => \rra_servo_upper|current\(2));

-- Location: LCCOMB_X17_Y24_N18
\rra_servo_upper|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add6~4_combout\ = (\rra_servo_upper|current\(3) & (\rra_servo_upper|Add6~3\ $ (GND))) # (!\rra_servo_upper|current\(3) & (!\rra_servo_upper|Add6~3\ & VCC))
-- \rra_servo_upper|Add6~5\ = CARRY((\rra_servo_upper|current\(3) & !\rra_servo_upper|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|current\(3),
	datad => VCC,
	cin => \rra_servo_upper|Add6~3\,
	combout => \rra_servo_upper|Add6~4_combout\,
	cout => \rra_servo_upper|Add6~5\);

-- Location: LCCOMB_X17_Y24_N30
\rra_servo_upper|current[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|current\(3) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_upper|current[1]~2clkctrl_outclk\) & ((\rra_servo_upper|Add6~4_combout\))) # (!GLOBAL(\rra_servo_upper|current[1]~2clkctrl_outclk\) & (\rra_servo_upper|current\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_upper|current\(3),
	datac => \rra_servo_upper|current[1]~2clkctrl_outclk\,
	datad => \rra_servo_upper|Add6~4_combout\,
	combout => \rra_servo_upper|current\(3));

-- Location: LCCOMB_X17_Y24_N20
\rra_servo_upper|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add6~6_combout\ = (\rra_servo_upper|current\(4) & (\rra_servo_upper|Add6~5\ & VCC)) # (!\rra_servo_upper|current\(4) & (!\rra_servo_upper|Add6~5\))
-- \rra_servo_upper|Add6~7\ = CARRY((!\rra_servo_upper|current\(4) & !\rra_servo_upper|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|current\(4),
	datad => VCC,
	cin => \rra_servo_upper|Add6~5\,
	combout => \rra_servo_upper|Add6~6_combout\,
	cout => \rra_servo_upper|Add6~7\);

-- Location: LCCOMB_X17_Y24_N0
\rra_servo_upper|current[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|current\(4) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_upper|current[1]~2clkctrl_outclk\) & ((\rra_servo_upper|Add6~6_combout\))) # (!GLOBAL(\rra_servo_upper|current[1]~2clkctrl_outclk\) & (\rra_servo_upper|current\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|current\(4),
	datab => \rra_servo_upper|Add6~6_combout\,
	datac => \rst~input_o\,
	datad => \rra_servo_upper|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_upper|current\(4));

-- Location: LCCOMB_X19_Y24_N4
\rra_servo_upper|current[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|current[1]~0_combout\ = (\rra_servo_upper|current\(2)) # ((\rra_servo_upper|current\(1)) # ((\rra_servo_upper|current\(3)) # (\rra_servo_upper|current\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|current\(2),
	datab => \rra_servo_upper|current\(1),
	datac => \rra_servo_upper|current\(3),
	datad => \rra_servo_upper|current\(4),
	combout => \rra_servo_upper|current[1]~0_combout\);

-- Location: LCCOMB_X17_Y24_N22
\rra_servo_upper|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add6~8_combout\ = (\rra_servo_upper|current\(5) & ((GND) # (!\rra_servo_upper|Add6~7\))) # (!\rra_servo_upper|current\(5) & (\rra_servo_upper|Add6~7\ $ (GND)))
-- \rra_servo_upper|Add6~9\ = CARRY((\rra_servo_upper|current\(5)) # (!\rra_servo_upper|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|current\(5),
	datad => VCC,
	cin => \rra_servo_upper|Add6~7\,
	combout => \rra_servo_upper|Add6~8_combout\,
	cout => \rra_servo_upper|Add6~9\);

-- Location: LCCOMB_X17_Y24_N6
\rra_servo_upper|current[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|current\(5) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_upper|current[1]~2clkctrl_outclk\) & (\rra_servo_upper|Add6~8_combout\)) # (!GLOBAL(\rra_servo_upper|current[1]~2clkctrl_outclk\) & ((\rra_servo_upper|current\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|Add6~8_combout\,
	datab => \rra_servo_upper|current\(5),
	datac => \rst~input_o\,
	datad => \rra_servo_upper|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_upper|current\(5));

-- Location: LCCOMB_X17_Y24_N24
\rra_servo_upper|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add6~10_combout\ = (\rra_servo_upper|current\(6) & (\rra_servo_upper|Add6~9\ & VCC)) # (!\rra_servo_upper|current\(6) & (!\rra_servo_upper|Add6~9\))
-- \rra_servo_upper|Add6~11\ = CARRY((!\rra_servo_upper|current\(6) & !\rra_servo_upper|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|current\(6),
	datad => VCC,
	cin => \rra_servo_upper|Add6~9\,
	combout => \rra_servo_upper|Add6~10_combout\,
	cout => \rra_servo_upper|Add6~11\);

-- Location: LCCOMB_X17_Y24_N8
\rra_servo_upper|current[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|current\(6) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_upper|current[1]~2clkctrl_outclk\) & ((\rra_servo_upper|Add6~10_combout\))) # (!GLOBAL(\rra_servo_upper|current[1]~2clkctrl_outclk\) & (\rra_servo_upper|current\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|current\(6),
	datab => \rra_servo_upper|Add6~10_combout\,
	datac => \rst~input_o\,
	datad => \rra_servo_upper|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_upper|current\(6));

-- Location: LCCOMB_X17_Y24_N26
\rra_servo_upper|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add6~12_combout\ = (\rra_servo_upper|current\(7) & ((GND) # (!\rra_servo_upper|Add6~11\))) # (!\rra_servo_upper|current\(7) & (\rra_servo_upper|Add6~11\ $ (GND)))
-- \rra_servo_upper|Add6~13\ = CARRY((\rra_servo_upper|current\(7)) # (!\rra_servo_upper|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|current\(7),
	datad => VCC,
	cin => \rra_servo_upper|Add6~11\,
	combout => \rra_servo_upper|Add6~12_combout\,
	cout => \rra_servo_upper|Add6~13\);

-- Location: LCCOMB_X17_Y24_N10
\rra_servo_upper|current[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|current\(7) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_upper|current[1]~2clkctrl_outclk\) & ((\rra_servo_upper|Add6~12_combout\))) # (!GLOBAL(\rra_servo_upper|current[1]~2clkctrl_outclk\) & (\rra_servo_upper|current\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|current[1]~2clkctrl_outclk\,
	datab => \rra_servo_upper|current\(7),
	datac => \rra_servo_upper|Add6~12_combout\,
	datad => \rst~input_o\,
	combout => \rra_servo_upper|current\(7));

-- Location: LCCOMB_X17_Y25_N0
\rra_servo_upper|current[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|current[1]~1_combout\ = (\rra_servo_upper|current\(7)) # ((\rra_servo_upper|current\(5)) # ((\rra_servo_upper|current\(6)) # (\rra_servo_upper|current\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|current\(7),
	datab => \rra_servo_upper|current\(5),
	datac => \rra_servo_upper|current\(6),
	datad => \rra_servo_upper|current\(8),
	combout => \rra_servo_upper|current[1]~1_combout\);

-- Location: CLKCTRL_G10
\rra_servo_upper|LessThan0~18clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_upper|LessThan0~18clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_upper|LessThan0~18clkctrl_outclk\);

-- Location: LCCOMB_X19_Y26_N28
\rra_servo_upper|interval_count[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count[0]~0_combout\ = (!\rst~input_o\ & (\rra_servo_upper|LessThan0~18_combout\ $ (\rra_servo_upper|interval_count[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|LessThan0~18_combout\,
	datac => \rra_servo_upper|interval_count[0]~0_combout\,
	datad => \rst~input_o\,
	combout => \rra_servo_upper|interval_count[0]~0_combout\);

-- Location: LCCOMB_X19_Y26_N4
\rra_servo_upper|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add4~0_combout\ = (\rra_servo_upper|interval_count\(1) & (\rra_servo_upper|interval_count[0]~0_combout\ $ (VCC))) # (!\rra_servo_upper|interval_count\(1) & (\rra_servo_upper|interval_count[0]~0_combout\ & VCC))
-- \rra_servo_upper|Add4~1\ = CARRY((\rra_servo_upper|interval_count\(1) & \rra_servo_upper|interval_count[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval_count\(1),
	datab => \rra_servo_upper|interval_count[0]~0_combout\,
	datad => VCC,
	combout => \rra_servo_upper|Add4~0_combout\,
	cout => \rra_servo_upper|Add4~1\);

-- Location: LCCOMB_X19_Y26_N2
\rra_servo_upper|interval_count[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count\(1) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_upper|LessThan0~18clkctrl_outclk\) & ((\rra_servo_upper|Add4~0_combout\))) # (!GLOBAL(\rra_servo_upper|LessThan0~18clkctrl_outclk\) & (\rra_servo_upper|interval_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_upper|interval_count\(1),
	datac => \rra_servo_upper|LessThan0~18clkctrl_outclk\,
	datad => \rra_servo_upper|Add4~0_combout\,
	combout => \rra_servo_upper|interval_count\(1));

-- Location: LCCOMB_X19_Y26_N6
\rra_servo_upper|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add4~2_combout\ = (\rra_servo_upper|interval_count\(2) & (!\rra_servo_upper|Add4~1\)) # (!\rra_servo_upper|interval_count\(2) & ((\rra_servo_upper|Add4~1\) # (GND)))
-- \rra_servo_upper|Add4~3\ = CARRY((!\rra_servo_upper|Add4~1\) # (!\rra_servo_upper|interval_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval_count\(2),
	datad => VCC,
	cin => \rra_servo_upper|Add4~1\,
	combout => \rra_servo_upper|Add4~2_combout\,
	cout => \rra_servo_upper|Add4~3\);

-- Location: LCCOMB_X19_Y26_N24
\rra_servo_upper|interval_count[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count\(2) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_upper|LessThan0~18clkctrl_outclk\) & (\rra_servo_upper|Add4~2_combout\)) # (!GLOBAL(\rra_servo_upper|LessThan0~18clkctrl_outclk\) & ((\rra_servo_upper|interval_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_upper|Add4~2_combout\,
	datac => \rra_servo_upper|interval_count\(2),
	datad => \rra_servo_upper|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_upper|interval_count\(2));

-- Location: LCCOMB_X19_Y26_N8
\rra_servo_upper|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add4~4_combout\ = (\rra_servo_upper|interval_count\(3) & (\rra_servo_upper|Add4~3\ $ (GND))) # (!\rra_servo_upper|interval_count\(3) & (!\rra_servo_upper|Add4~3\ & VCC))
-- \rra_servo_upper|Add4~5\ = CARRY((\rra_servo_upper|interval_count\(3) & !\rra_servo_upper|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval_count\(3),
	datad => VCC,
	cin => \rra_servo_upper|Add4~3\,
	combout => \rra_servo_upper|Add4~4_combout\,
	cout => \rra_servo_upper|Add4~5\);

-- Location: LCCOMB_X19_Y26_N26
\rra_servo_upper|interval_count[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count\(3) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_upper|LessThan0~18clkctrl_outclk\) & (\rra_servo_upper|Add4~4_combout\)) # (!GLOBAL(\rra_servo_upper|LessThan0~18clkctrl_outclk\) & ((\rra_servo_upper|interval_count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_upper|Add4~4_combout\,
	datac => \rra_servo_upper|interval_count\(3),
	datad => \rra_servo_upper|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_upper|interval_count\(3));

-- Location: LCCOMB_X19_Y26_N10
\rra_servo_upper|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add4~6_combout\ = (\rra_servo_upper|interval_count\(4) & (!\rra_servo_upper|Add4~5\)) # (!\rra_servo_upper|interval_count\(4) & ((\rra_servo_upper|Add4~5\) # (GND)))
-- \rra_servo_upper|Add4~7\ = CARRY((!\rra_servo_upper|Add4~5\) # (!\rra_servo_upper|interval_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|interval_count\(4),
	datad => VCC,
	cin => \rra_servo_upper|Add4~5\,
	combout => \rra_servo_upper|Add4~6_combout\,
	cout => \rra_servo_upper|Add4~7\);

-- Location: LCCOMB_X19_Y26_N0
\rra_servo_upper|interval_count[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count\(4) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_upper|LessThan0~18clkctrl_outclk\) & ((\rra_servo_upper|Add4~6_combout\))) # (!GLOBAL(\rra_servo_upper|LessThan0~18clkctrl_outclk\) & (\rra_servo_upper|interval_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_upper|interval_count\(4),
	datac => \rra_servo_upper|Add4~6_combout\,
	datad => \rra_servo_upper|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_upper|interval_count\(4));

-- Location: LCCOMB_X19_Y26_N12
\rra_servo_upper|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add4~8_combout\ = (\rra_servo_upper|interval_count\(5) & (\rra_servo_upper|Add4~7\ $ (GND))) # (!\rra_servo_upper|interval_count\(5) & (!\rra_servo_upper|Add4~7\ & VCC))
-- \rra_servo_upper|Add4~9\ = CARRY((\rra_servo_upper|interval_count\(5) & !\rra_servo_upper|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|interval_count\(5),
	datad => VCC,
	cin => \rra_servo_upper|Add4~7\,
	combout => \rra_servo_upper|Add4~8_combout\,
	cout => \rra_servo_upper|Add4~9\);

-- Location: LCCOMB_X19_Y26_N30
\rra_servo_upper|interval_count[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count\(5) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_upper|LessThan0~18clkctrl_outclk\) & (\rra_servo_upper|Add4~8_combout\)) # (!GLOBAL(\rra_servo_upper|LessThan0~18clkctrl_outclk\) & ((\rra_servo_upper|interval_count\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_upper|Add4~8_combout\,
	datac => \rra_servo_upper|interval_count\(5),
	datad => \rra_servo_upper|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_upper|interval_count\(5));

-- Location: LCCOMB_X19_Y26_N14
\rra_servo_upper|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add4~10_combout\ = (\rra_servo_upper|interval_count\(6) & (!\rra_servo_upper|Add4~9\)) # (!\rra_servo_upper|interval_count\(6) & ((\rra_servo_upper|Add4~9\) # (GND)))
-- \rra_servo_upper|Add4~11\ = CARRY((!\rra_servo_upper|Add4~9\) # (!\rra_servo_upper|interval_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|interval_count\(6),
	datad => VCC,
	cin => \rra_servo_upper|Add4~9\,
	combout => \rra_servo_upper|Add4~10_combout\,
	cout => \rra_servo_upper|Add4~11\);

-- Location: LCCOMB_X20_Y26_N22
\rra_servo_upper|interval_count[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count\(6) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_upper|LessThan0~18clkctrl_outclk\) & ((\rra_servo_upper|Add4~10_combout\))) # (!GLOBAL(\rra_servo_upper|LessThan0~18clkctrl_outclk\) & (\rra_servo_upper|interval_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval_count\(6),
	datab => \rst~input_o\,
	datac => \rra_servo_upper|LessThan0~18clkctrl_outclk\,
	datad => \rra_servo_upper|Add4~10_combout\,
	combout => \rra_servo_upper|interval_count\(6));

-- Location: LCCOMB_X19_Y26_N16
\rra_servo_upper|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add4~12_combout\ = (\rra_servo_upper|interval_count\(7) & (\rra_servo_upper|Add4~11\ $ (GND))) # (!\rra_servo_upper|interval_count\(7) & (!\rra_servo_upper|Add4~11\ & VCC))
-- \rra_servo_upper|Add4~13\ = CARRY((\rra_servo_upper|interval_count\(7) & !\rra_servo_upper|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|interval_count\(7),
	datad => VCC,
	cin => \rra_servo_upper|Add4~11\,
	combout => \rra_servo_upper|Add4~12_combout\,
	cout => \rra_servo_upper|Add4~13\);

-- Location: LCCOMB_X20_Y26_N28
\rra_servo_upper|interval_count[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count\(7) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_upper|LessThan0~18clkctrl_outclk\) & ((\rra_servo_upper|Add4~12_combout\))) # (!GLOBAL(\rra_servo_upper|LessThan0~18clkctrl_outclk\) & (\rra_servo_upper|interval_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_upper|interval_count\(7),
	datac => \rra_servo_upper|Add4~12_combout\,
	datad => \rra_servo_upper|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_upper|interval_count\(7));

-- Location: LCCOMB_X19_Y26_N18
\rra_servo_upper|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add4~14_combout\ = (\rra_servo_upper|interval_count\(8) & (!\rra_servo_upper|Add4~13\)) # (!\rra_servo_upper|interval_count\(8) & ((\rra_servo_upper|Add4~13\) # (GND)))
-- \rra_servo_upper|Add4~15\ = CARRY((!\rra_servo_upper|Add4~13\) # (!\rra_servo_upper|interval_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval_count\(8),
	datad => VCC,
	cin => \rra_servo_upper|Add4~13\,
	combout => \rra_servo_upper|Add4~14_combout\,
	cout => \rra_servo_upper|Add4~15\);

-- Location: LCCOMB_X19_Y26_N22
\rra_servo_upper|interval_count[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count\(8) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_upper|LessThan0~18clkctrl_outclk\) & (\rra_servo_upper|Add4~14_combout\)) # (!GLOBAL(\rra_servo_upper|LessThan0~18clkctrl_outclk\) & ((\rra_servo_upper|interval_count\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_upper|Add4~14_combout\,
	datac => \rra_servo_upper|interval_count\(8),
	datad => \rra_servo_upper|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_upper|interval_count\(8));

-- Location: LCCOMB_X19_Y26_N20
\rra_servo_upper|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add4~16_combout\ = \rra_servo_upper|Add4~15\ $ (!\rra_servo_upper|interval_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_upper|interval_count\(9),
	cin => \rra_servo_upper|Add4~15\,
	combout => \rra_servo_upper|Add4~16_combout\);

-- Location: LCCOMB_X20_Y26_N24
\rra_servo_upper|interval_count[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|interval_count\(9) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_upper|LessThan0~18clkctrl_outclk\) & ((\rra_servo_upper|Add4~16_combout\))) # (!GLOBAL(\rra_servo_upper|LessThan0~18clkctrl_outclk\) & (\rra_servo_upper|interval_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_upper|interval_count\(9),
	datac => \rra_servo_upper|LessThan0~18clkctrl_outclk\,
	datad => \rra_servo_upper|Add4~16_combout\,
	combout => \rra_servo_upper|interval_count\(9));

-- Location: LCCOMB_X20_Y26_N0
\rra_servo_upper|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~1_cout\ = CARRY(\rra_servo_upper|interval_count[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|interval_count[0]~0_combout\,
	datad => VCC,
	cout => \rra_servo_upper|LessThan0~1_cout\);

-- Location: LCCOMB_X20_Y26_N2
\rra_servo_upper|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~3_cout\ = CARRY((\rra_servo_upper|interval_count\(1) & (\rra_servo_lower|interval[1]~0_combout\ & !\rra_servo_upper|LessThan0~1_cout\)) # (!\rra_servo_upper|interval_count\(1) & ((\rra_servo_lower|interval[1]~0_combout\) # 
-- (!\rra_servo_upper|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval_count\(1),
	datab => \rra_servo_lower|interval[1]~0_combout\,
	datad => VCC,
	cin => \rra_servo_upper|LessThan0~1_cout\,
	cout => \rra_servo_upper|LessThan0~3_cout\);

-- Location: LCCOMB_X20_Y26_N4
\rra_servo_upper|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~5_cout\ = CARRY((\rra_servo_lower|Add2~23_combout\ & (\rra_servo_upper|interval_count\(2) & !\rra_servo_upper|LessThan0~3_cout\)) # (!\rra_servo_lower|Add2~23_combout\ & ((\rra_servo_upper|interval_count\(2)) # 
-- (!\rra_servo_upper|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~23_combout\,
	datab => \rra_servo_upper|interval_count\(2),
	datad => VCC,
	cin => \rra_servo_upper|LessThan0~3_cout\,
	cout => \rra_servo_upper|LessThan0~5_cout\);

-- Location: LCCOMB_X20_Y26_N6
\rra_servo_upper|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~7_cout\ = CARRY((\rra_servo_upper|interval_count\(3) & (\rra_servo_lower|Add2~22_combout\ & !\rra_servo_upper|LessThan0~5_cout\)) # (!\rra_servo_upper|interval_count\(3) & ((\rra_servo_lower|Add2~22_combout\) # 
-- (!\rra_servo_upper|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval_count\(3),
	datab => \rra_servo_lower|Add2~22_combout\,
	datad => VCC,
	cin => \rra_servo_upper|LessThan0~5_cout\,
	cout => \rra_servo_upper|LessThan0~7_cout\);

-- Location: LCCOMB_X20_Y26_N8
\rra_servo_upper|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~9_cout\ = CARRY((\rra_servo_lower|Add2~21_combout\ & (\rra_servo_upper|interval_count\(4) & !\rra_servo_upper|LessThan0~7_cout\)) # (!\rra_servo_lower|Add2~21_combout\ & ((\rra_servo_upper|interval_count\(4)) # 
-- (!\rra_servo_upper|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~21_combout\,
	datab => \rra_servo_upper|interval_count\(4),
	datad => VCC,
	cin => \rra_servo_upper|LessThan0~7_cout\,
	cout => \rra_servo_upper|LessThan0~9_cout\);

-- Location: LCCOMB_X20_Y26_N10
\rra_servo_upper|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~11_cout\ = CARRY((\rra_servo_lower|Add2~20_combout\ & ((!\rra_servo_upper|LessThan0~9_cout\) # (!\rra_servo_upper|interval_count\(5)))) # (!\rra_servo_lower|Add2~20_combout\ & (!\rra_servo_upper|interval_count\(5) & 
-- !\rra_servo_upper|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~20_combout\,
	datab => \rra_servo_upper|interval_count\(5),
	datad => VCC,
	cin => \rra_servo_upper|LessThan0~9_cout\,
	cout => \rra_servo_upper|LessThan0~11_cout\);

-- Location: LCCOMB_X20_Y26_N12
\rra_servo_upper|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~13_cout\ = CARRY((\rra_servo_upper|interval_count\(6) & ((!\rra_servo_upper|LessThan0~11_cout\) # (!\rra_servo_lower|Add2~19_combout\))) # (!\rra_servo_upper|interval_count\(6) & (!\rra_servo_lower|Add2~19_combout\ & 
-- !\rra_servo_upper|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval_count\(6),
	datab => \rra_servo_lower|Add2~19_combout\,
	datad => VCC,
	cin => \rra_servo_upper|LessThan0~11_cout\,
	cout => \rra_servo_upper|LessThan0~13_cout\);

-- Location: LCCOMB_X20_Y26_N14
\rra_servo_upper|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~15_cout\ = CARRY((\rra_servo_lower|Add2~18_combout\ & ((!\rra_servo_upper|LessThan0~13_cout\) # (!\rra_servo_upper|interval_count\(7)))) # (!\rra_servo_lower|Add2~18_combout\ & (!\rra_servo_upper|interval_count\(7) & 
-- !\rra_servo_upper|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~18_combout\,
	datab => \rra_servo_upper|interval_count\(7),
	datad => VCC,
	cin => \rra_servo_upper|LessThan0~13_cout\,
	cout => \rra_servo_upper|LessThan0~15_cout\);

-- Location: LCCOMB_X20_Y26_N16
\rra_servo_upper|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~17_cout\ = CARRY((\rra_servo_lower|Add2~17_combout\ & (\rra_servo_upper|interval_count\(8) & !\rra_servo_upper|LessThan0~15_cout\)) # (!\rra_servo_lower|Add2~17_combout\ & ((\rra_servo_upper|interval_count\(8)) # 
-- (!\rra_servo_upper|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~17_combout\,
	datab => \rra_servo_upper|interval_count\(8),
	datad => VCC,
	cin => \rra_servo_upper|LessThan0~15_cout\,
	cout => \rra_servo_upper|LessThan0~17_cout\);

-- Location: LCCOMB_X20_Y26_N18
\rra_servo_upper|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan0~18_combout\ = (\rra_servo_upper|interval_count\(9) & (!\rra_servo_upper|LessThan0~17_cout\ & \rra_servo_lower|Add2~16_combout\)) # (!\rra_servo_upper|interval_count\(9) & ((\rra_servo_lower|Add2~16_combout\) # 
-- (!\rra_servo_upper|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|interval_count\(9),
	datad => \rra_servo_lower|Add2~16_combout\,
	cin => \rra_servo_upper|LessThan0~17_cout\,
	combout => \rra_servo_upper|LessThan0~18_combout\);

-- Location: LCCOMB_X20_Y26_N26
\rra_servo_upper|current[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|current[1]~2_combout\ = (!\rra_servo_upper|LessThan0~18_combout\ & ((\rra_servo_upper|current[1]~0_combout\) # (\rra_servo_upper|current[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|current[1]~0_combout\,
	datac => \rra_servo_upper|current[1]~1_combout\,
	datad => \rra_servo_upper|LessThan0~18_combout\,
	combout => \rra_servo_upper|current[1]~2_combout\);

-- Location: CLKCTRL_G13
\rra_servo_upper|current[1]~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_upper|current[1]~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_upper|current[1]~2clkctrl_outclk\);

-- Location: LCCOMB_X17_Y24_N28
\rra_servo_upper|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add6~14_combout\ = \rra_servo_upper|Add6~13\ $ (!\rra_servo_upper|current\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_upper|current\(8),
	cin => \rra_servo_upper|Add6~13\,
	combout => \rra_servo_upper|Add6~14_combout\);

-- Location: LCCOMB_X17_Y24_N4
\rra_servo_upper|current[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|current\(8) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_upper|current[1]~2clkctrl_outclk\) & ((\rra_servo_upper|Add6~14_combout\))) # (!GLOBAL(\rra_servo_upper|current[1]~2clkctrl_outclk\) & (\rra_servo_upper|current\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_upper|current\(8),
	datac => \rra_servo_upper|current[1]~2clkctrl_outclk\,
	datad => \rra_servo_upper|Add6~14_combout\,
	combout => \rra_servo_upper|current\(8));

-- Location: LCCOMB_X16_Y24_N0
\rra_servo_upper|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add8~0_combout\ = (\rra_servo_upper|current\(3) & (\rra_servo_upper|current\(2) $ (VCC))) # (!\rra_servo_upper|current\(3) & (\rra_servo_upper|current\(2) & VCC))
-- \rra_servo_upper|Add8~1\ = CARRY((\rra_servo_upper|current\(3) & \rra_servo_upper|current\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|current\(3),
	datab => \rra_servo_upper|current\(2),
	datad => VCC,
	combout => \rra_servo_upper|Add8~0_combout\,
	cout => \rra_servo_upper|Add8~1\);

-- Location: LCCOMB_X16_Y24_N2
\rra_servo_upper|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add8~2_combout\ = (\rra_servo_upper|current\(4) & (\rra_servo_upper|Add8~1\ & VCC)) # (!\rra_servo_upper|current\(4) & (!\rra_servo_upper|Add8~1\))
-- \rra_servo_upper|Add8~3\ = CARRY((!\rra_servo_upper|current\(4) & !\rra_servo_upper|Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|current\(4),
	datad => VCC,
	cin => \rra_servo_upper|Add8~1\,
	combout => \rra_servo_upper|Add8~2_combout\,
	cout => \rra_servo_upper|Add8~3\);

-- Location: LCCOMB_X16_Y24_N4
\rra_servo_upper|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add8~4_combout\ = (\rra_servo_upper|current\(5) & ((GND) # (!\rra_servo_upper|Add8~3\))) # (!\rra_servo_upper|current\(5) & (\rra_servo_upper|Add8~3\ $ (GND)))
-- \rra_servo_upper|Add8~5\ = CARRY((\rra_servo_upper|current\(5)) # (!\rra_servo_upper|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|current\(5),
	datad => VCC,
	cin => \rra_servo_upper|Add8~3\,
	combout => \rra_servo_upper|Add8~4_combout\,
	cout => \rra_servo_upper|Add8~5\);

-- Location: LCCOMB_X16_Y24_N6
\rra_servo_upper|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add8~6_combout\ = (\rra_servo_upper|current\(6) & (\rra_servo_upper|Add8~5\ & VCC)) # (!\rra_servo_upper|current\(6) & (!\rra_servo_upper|Add8~5\))
-- \rra_servo_upper|Add8~7\ = CARRY((!\rra_servo_upper|current\(6) & !\rra_servo_upper|Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|current\(6),
	datad => VCC,
	cin => \rra_servo_upper|Add8~5\,
	combout => \rra_servo_upper|Add8~6_combout\,
	cout => \rra_servo_upper|Add8~7\);

-- Location: LCCOMB_X16_Y24_N8
\rra_servo_upper|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add8~8_combout\ = (\rra_servo_upper|current\(7) & ((GND) # (!\rra_servo_upper|Add8~7\))) # (!\rra_servo_upper|current\(7) & (\rra_servo_upper|Add8~7\ $ (GND)))
-- \rra_servo_upper|Add8~9\ = CARRY((\rra_servo_upper|current\(7)) # (!\rra_servo_upper|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|current\(7),
	datad => VCC,
	cin => \rra_servo_upper|Add8~7\,
	combout => \rra_servo_upper|Add8~8_combout\,
	cout => \rra_servo_upper|Add8~9\);

-- Location: LCCOMB_X16_Y24_N10
\rra_servo_upper|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add8~10_combout\ = (\rra_servo_upper|current\(8) & (\rra_servo_upper|Add8~9\ & VCC)) # (!\rra_servo_upper|current\(8) & (!\rra_servo_upper|Add8~9\))
-- \rra_servo_upper|Add8~11\ = CARRY((!\rra_servo_upper|current\(8) & !\rra_servo_upper|Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|current\(8),
	datad => VCC,
	cin => \rra_servo_upper|Add8~9\,
	combout => \rra_servo_upper|Add8~10_combout\,
	cout => \rra_servo_upper|Add8~11\);

-- Location: LCCOMB_X16_Y24_N12
\rra_servo_upper|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|Add8~12_combout\ = !\rra_servo_upper|Add8~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rra_servo_upper|Add8~11\,
	combout => \rra_servo_upper|Add8~12_combout\);

-- Location: LCCOMB_X16_Y24_N14
\rra_servo_upper|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan5~1_cout\ = CARRY((\rra_servo_upper|current\(1) & !\rra_servo_upper|pwm_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|current\(1),
	datab => \rra_servo_upper|pwm_count\(2),
	datad => VCC,
	cout => \rra_servo_upper|LessThan5~1_cout\);

-- Location: LCCOMB_X16_Y24_N16
\rra_servo_upper|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan5~3_cout\ = CARRY((\rra_servo_upper|pwm_count\(3) & ((\rra_servo_upper|current\(2)) # (!\rra_servo_upper|LessThan5~1_cout\))) # (!\rra_servo_upper|pwm_count\(3) & (\rra_servo_upper|current\(2) & 
-- !\rra_servo_upper|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(3),
	datab => \rra_servo_upper|current\(2),
	datad => VCC,
	cin => \rra_servo_upper|LessThan5~1_cout\,
	cout => \rra_servo_upper|LessThan5~3_cout\);

-- Location: LCCOMB_X16_Y24_N18
\rra_servo_upper|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan5~5_cout\ = CARRY((\rra_servo_upper|pwm_count\(4) & (\rra_servo_upper|Add8~0_combout\ & !\rra_servo_upper|LessThan5~3_cout\)) # (!\rra_servo_upper|pwm_count\(4) & ((\rra_servo_upper|Add8~0_combout\) # 
-- (!\rra_servo_upper|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(4),
	datab => \rra_servo_upper|Add8~0_combout\,
	datad => VCC,
	cin => \rra_servo_upper|LessThan5~3_cout\,
	cout => \rra_servo_upper|LessThan5~5_cout\);

-- Location: LCCOMB_X16_Y24_N20
\rra_servo_upper|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan5~7_cout\ = CARRY((\rra_servo_upper|pwm_count\(5) & ((!\rra_servo_upper|LessThan5~5_cout\) # (!\rra_servo_upper|Add8~2_combout\))) # (!\rra_servo_upper|pwm_count\(5) & (!\rra_servo_upper|Add8~2_combout\ & 
-- !\rra_servo_upper|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(5),
	datab => \rra_servo_upper|Add8~2_combout\,
	datad => VCC,
	cin => \rra_servo_upper|LessThan5~5_cout\,
	cout => \rra_servo_upper|LessThan5~7_cout\);

-- Location: LCCOMB_X16_Y24_N22
\rra_servo_upper|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan5~9_cout\ = CARRY((\rra_servo_upper|pwm_count\(6) & (\rra_servo_upper|Add8~4_combout\ & !\rra_servo_upper|LessThan5~7_cout\)) # (!\rra_servo_upper|pwm_count\(6) & ((\rra_servo_upper|Add8~4_combout\) # 
-- (!\rra_servo_upper|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(6),
	datab => \rra_servo_upper|Add8~4_combout\,
	datad => VCC,
	cin => \rra_servo_upper|LessThan5~7_cout\,
	cout => \rra_servo_upper|LessThan5~9_cout\);

-- Location: LCCOMB_X16_Y24_N24
\rra_servo_upper|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan5~11_cout\ = CARRY((\rra_servo_upper|Add8~6_combout\ & (\rra_servo_upper|pwm_count\(7) & !\rra_servo_upper|LessThan5~9_cout\)) # (!\rra_servo_upper|Add8~6_combout\ & ((\rra_servo_upper|pwm_count\(7)) # 
-- (!\rra_servo_upper|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|Add8~6_combout\,
	datab => \rra_servo_upper|pwm_count\(7),
	datad => VCC,
	cin => \rra_servo_upper|LessThan5~9_cout\,
	cout => \rra_servo_upper|LessThan5~11_cout\);

-- Location: LCCOMB_X16_Y24_N26
\rra_servo_upper|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan5~13_cout\ = CARRY((\rra_servo_upper|pwm_count\(8) & (\rra_servo_upper|Add8~8_combout\ & !\rra_servo_upper|LessThan5~11_cout\)) # (!\rra_servo_upper|pwm_count\(8) & ((\rra_servo_upper|Add8~8_combout\) # 
-- (!\rra_servo_upper|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(8),
	datab => \rra_servo_upper|Add8~8_combout\,
	datad => VCC,
	cin => \rra_servo_upper|LessThan5~11_cout\,
	cout => \rra_servo_upper|LessThan5~13_cout\);

-- Location: LCCOMB_X16_Y24_N28
\rra_servo_upper|LessThan5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan5~15_cout\ = CARRY((\rra_servo_upper|Add8~10_combout\ & (\rra_servo_upper|pwm_count\(9) & !\rra_servo_upper|LessThan5~13_cout\)) # (!\rra_servo_upper|Add8~10_combout\ & ((\rra_servo_upper|pwm_count\(9)) # 
-- (!\rra_servo_upper|LessThan5~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|Add8~10_combout\,
	datab => \rra_servo_upper|pwm_count\(9),
	datad => VCC,
	cin => \rra_servo_upper|LessThan5~13_cout\,
	cout => \rra_servo_upper|LessThan5~15_cout\);

-- Location: LCCOMB_X16_Y24_N30
\rra_servo_upper|LessThan5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|LessThan5~16_combout\ = (\rra_servo_upper|pwm_count\(10) & (!\rra_servo_upper|LessThan5~15_cout\ & \rra_servo_upper|Add8~12_combout\)) # (!\rra_servo_upper|pwm_count\(10) & ((\rra_servo_upper|Add8~12_combout\) # 
-- (!\rra_servo_upper|LessThan5~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_count\(10),
	datad => \rra_servo_upper|Add8~12_combout\,
	cin => \rra_servo_upper|LessThan5~15_cout\,
	combout => \rra_servo_upper|LessThan5~16_combout\);

-- Location: LCCOMB_X15_Y24_N26
\rra_servo_upper|pwm_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_out~0_combout\ = (((!\rra_servo_upper|pwm_count\(4) & !\rra_servo_upper|pwm_count\(3))) # (!\rra_servo_upper|pwm_count\(6))) # (!\rra_servo_upper|pwm_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(5),
	datab => \rra_servo_upper|pwm_count\(4),
	datac => \rra_servo_upper|pwm_count\(6),
	datad => \rra_servo_upper|pwm_count\(3),
	combout => \rra_servo_upper|pwm_out~0_combout\);

-- Location: LCCOMB_X15_Y24_N30
\rra_servo_upper|pwm_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_out~2_combout\ = (\rra_servo_upper|LessThan5~16_combout\) # ((!\rra_servo_upper|pwm_count\(10) & ((\rra_servo_upper|pwm_out~1_combout\) # (\rra_servo_upper|pwm_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_upper|pwm_count\(10),
	datab => \rra_servo_upper|pwm_out~1_combout\,
	datac => \rra_servo_upper|LessThan5~16_combout\,
	datad => \rra_servo_upper|pwm_out~0_combout\,
	combout => \rra_servo_upper|pwm_out~2_combout\);

-- Location: LCCOMB_X15_Y24_N28
\rra_servo_upper|pwm_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|pwm_out~3_combout\ = \rra_servo_upper|pwm_out~q\ $ (!\rra_servo_upper|pwm_out~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_upper|pwm_out~q\,
	datad => \rra_servo_upper|pwm_out~2_combout\,
	combout => \rra_servo_upper|pwm_out~3_combout\);

-- Location: FF_X15_Y24_N29
\rra_servo_upper|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_upper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_upper|pwm_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|pwm_out~q\);

-- Location: LCCOMB_X15_Y24_N0
\rra_servo_upper|o_pwm_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_upper|o_pwm_out~feeder_combout\ = \rra_servo_upper|pwm_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_upper|pwm_out~q\,
	combout => \rra_servo_upper|o_pwm_out~feeder_combout\);

-- Location: FF_X15_Y24_N1
\rra_servo_upper|o_pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_upper|o_pwm_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_upper|o_pwm_out~q\);

-- Location: LCCOMB_X1_Y14_N16
\rra_servo_wrist|clk_1mhz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|clk_1mhz~0_combout\ = !\rra_servo_lower|LessThan3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|LessThan3~2_combout\,
	combout => \rra_servo_wrist|clk_1mhz~0_combout\);

-- Location: FF_X1_Y14_N17
\rra_servo_wrist|clk_1mhz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_wrist|clk_1mhz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|clk_1mhz~q\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X7_Y28_N0
\rra_servo_wrist|pwm_count[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[0]~11_combout\ = \rra_servo_wrist|pwm_count\(0) $ (VCC)
-- \rra_servo_wrist|pwm_count[0]~12\ = CARRY(\rra_servo_wrist|pwm_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(0),
	datad => VCC,
	combout => \rra_servo_wrist|pwm_count[0]~11_combout\,
	cout => \rra_servo_wrist|pwm_count[0]~12\);

-- Location: FF_X7_Y28_N1
\rra_servo_wrist|pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[0]~11_combout\,
	sclr => \rra_servo_wrist|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(0));

-- Location: LCCOMB_X7_Y28_N2
\rra_servo_wrist|pwm_count[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[1]~13_combout\ = (\rra_servo_wrist|pwm_count\(1) & (!\rra_servo_wrist|pwm_count[0]~12\)) # (!\rra_servo_wrist|pwm_count\(1) & ((\rra_servo_wrist|pwm_count[0]~12\) # (GND)))
-- \rra_servo_wrist|pwm_count[1]~14\ = CARRY((!\rra_servo_wrist|pwm_count[0]~12\) # (!\rra_servo_wrist|pwm_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(1),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[0]~12\,
	combout => \rra_servo_wrist|pwm_count[1]~13_combout\,
	cout => \rra_servo_wrist|pwm_count[1]~14\);

-- Location: FF_X7_Y28_N3
\rra_servo_wrist|pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[1]~13_combout\,
	sclr => \rra_servo_wrist|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(1));

-- Location: LCCOMB_X7_Y28_N4
\rra_servo_wrist|pwm_count[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[2]~15_combout\ = (\rra_servo_wrist|pwm_count\(2) & (\rra_servo_wrist|pwm_count[1]~14\ $ (GND))) # (!\rra_servo_wrist|pwm_count\(2) & (!\rra_servo_wrist|pwm_count[1]~14\ & VCC))
-- \rra_servo_wrist|pwm_count[2]~16\ = CARRY((\rra_servo_wrist|pwm_count\(2) & !\rra_servo_wrist|pwm_count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(2),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[1]~14\,
	combout => \rra_servo_wrist|pwm_count[2]~15_combout\,
	cout => \rra_servo_wrist|pwm_count[2]~16\);

-- Location: FF_X7_Y28_N5
\rra_servo_wrist|pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[2]~15_combout\,
	sclr => \rra_servo_wrist|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(2));

-- Location: LCCOMB_X7_Y28_N6
\rra_servo_wrist|pwm_count[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[3]~17_combout\ = (\rra_servo_wrist|pwm_count\(3) & (!\rra_servo_wrist|pwm_count[2]~16\)) # (!\rra_servo_wrist|pwm_count\(3) & ((\rra_servo_wrist|pwm_count[2]~16\) # (GND)))
-- \rra_servo_wrist|pwm_count[3]~18\ = CARRY((!\rra_servo_wrist|pwm_count[2]~16\) # (!\rra_servo_wrist|pwm_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(3),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[2]~16\,
	combout => \rra_servo_wrist|pwm_count[3]~17_combout\,
	cout => \rra_servo_wrist|pwm_count[3]~18\);

-- Location: FF_X7_Y28_N7
\rra_servo_wrist|pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[3]~17_combout\,
	sclr => \rra_servo_wrist|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(3));

-- Location: LCCOMB_X7_Y28_N8
\rra_servo_wrist|pwm_count[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[4]~19_combout\ = (\rra_servo_wrist|pwm_count\(4) & (\rra_servo_wrist|pwm_count[3]~18\ $ (GND))) # (!\rra_servo_wrist|pwm_count\(4) & (!\rra_servo_wrist|pwm_count[3]~18\ & VCC))
-- \rra_servo_wrist|pwm_count[4]~20\ = CARRY((\rra_servo_wrist|pwm_count\(4) & !\rra_servo_wrist|pwm_count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(4),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[3]~18\,
	combout => \rra_servo_wrist|pwm_count[4]~19_combout\,
	cout => \rra_servo_wrist|pwm_count[4]~20\);

-- Location: FF_X7_Y28_N9
\rra_servo_wrist|pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[4]~19_combout\,
	sclr => \rra_servo_wrist|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(4));

-- Location: LCCOMB_X7_Y28_N10
\rra_servo_wrist|pwm_count[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[5]~21_combout\ = (\rra_servo_wrist|pwm_count\(5) & (!\rra_servo_wrist|pwm_count[4]~20\)) # (!\rra_servo_wrist|pwm_count\(5) & ((\rra_servo_wrist|pwm_count[4]~20\) # (GND)))
-- \rra_servo_wrist|pwm_count[5]~22\ = CARRY((!\rra_servo_wrist|pwm_count[4]~20\) # (!\rra_servo_wrist|pwm_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(5),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[4]~20\,
	combout => \rra_servo_wrist|pwm_count[5]~21_combout\,
	cout => \rra_servo_wrist|pwm_count[5]~22\);

-- Location: FF_X7_Y28_N11
\rra_servo_wrist|pwm_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[5]~21_combout\,
	sclr => \rra_servo_wrist|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(5));

-- Location: LCCOMB_X7_Y28_N12
\rra_servo_wrist|pwm_count[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[6]~23_combout\ = (\rra_servo_wrist|pwm_count\(6) & (\rra_servo_wrist|pwm_count[5]~22\ $ (GND))) # (!\rra_servo_wrist|pwm_count\(6) & (!\rra_servo_wrist|pwm_count[5]~22\ & VCC))
-- \rra_servo_wrist|pwm_count[6]~24\ = CARRY((\rra_servo_wrist|pwm_count\(6) & !\rra_servo_wrist|pwm_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(6),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[5]~22\,
	combout => \rra_servo_wrist|pwm_count[6]~23_combout\,
	cout => \rra_servo_wrist|pwm_count[6]~24\);

-- Location: FF_X7_Y28_N13
\rra_servo_wrist|pwm_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[6]~23_combout\,
	sclr => \rra_servo_wrist|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(6));

-- Location: LCCOMB_X7_Y28_N14
\rra_servo_wrist|pwm_count[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[7]~25_combout\ = (\rra_servo_wrist|pwm_count\(7) & (!\rra_servo_wrist|pwm_count[6]~24\)) # (!\rra_servo_wrist|pwm_count\(7) & ((\rra_servo_wrist|pwm_count[6]~24\) # (GND)))
-- \rra_servo_wrist|pwm_count[7]~26\ = CARRY((!\rra_servo_wrist|pwm_count[6]~24\) # (!\rra_servo_wrist|pwm_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(7),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[6]~24\,
	combout => \rra_servo_wrist|pwm_count[7]~25_combout\,
	cout => \rra_servo_wrist|pwm_count[7]~26\);

-- Location: FF_X7_Y28_N15
\rra_servo_wrist|pwm_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[7]~25_combout\,
	sclr => \rra_servo_wrist|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(7));

-- Location: LCCOMB_X7_Y28_N16
\rra_servo_wrist|pwm_count[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[8]~27_combout\ = (\rra_servo_wrist|pwm_count\(8) & (\rra_servo_wrist|pwm_count[7]~26\ $ (GND))) # (!\rra_servo_wrist|pwm_count\(8) & (!\rra_servo_wrist|pwm_count[7]~26\ & VCC))
-- \rra_servo_wrist|pwm_count[8]~28\ = CARRY((\rra_servo_wrist|pwm_count\(8) & !\rra_servo_wrist|pwm_count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_count\(8),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[7]~26\,
	combout => \rra_servo_wrist|pwm_count[8]~27_combout\,
	cout => \rra_servo_wrist|pwm_count[8]~28\);

-- Location: FF_X7_Y28_N17
\rra_servo_wrist|pwm_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[8]~27_combout\,
	sclr => \rra_servo_wrist|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(8));

-- Location: LCCOMB_X7_Y28_N18
\rra_servo_wrist|pwm_count[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[9]~29_combout\ = (\rra_servo_wrist|pwm_count\(9) & (!\rra_servo_wrist|pwm_count[8]~28\)) # (!\rra_servo_wrist|pwm_count\(9) & ((\rra_servo_wrist|pwm_count[8]~28\) # (GND)))
-- \rra_servo_wrist|pwm_count[9]~30\ = CARRY((!\rra_servo_wrist|pwm_count[8]~28\) # (!\rra_servo_wrist|pwm_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(9),
	datad => VCC,
	cin => \rra_servo_wrist|pwm_count[8]~28\,
	combout => \rra_servo_wrist|pwm_count[9]~29_combout\,
	cout => \rra_servo_wrist|pwm_count[9]~30\);

-- Location: FF_X7_Y28_N19
\rra_servo_wrist|pwm_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[9]~29_combout\,
	sclr => \rra_servo_wrist|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(9));

-- Location: LCCOMB_X7_Y28_N24
\rra_servo_wrist|pwm_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_out~1_combout\ = ((!\rra_servo_wrist|pwm_count\(8)) # (!\rra_servo_wrist|pwm_count\(7))) # (!\rra_servo_wrist|pwm_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(9),
	datac => \rra_servo_wrist|pwm_count\(7),
	datad => \rra_servo_wrist|pwm_count\(8),
	combout => \rra_servo_wrist|pwm_out~1_combout\);

-- Location: LCCOMB_X7_Y28_N20
\rra_servo_wrist|pwm_count[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_count[10]~31_combout\ = \rra_servo_wrist|pwm_count[9]~30\ $ (!\rra_servo_wrist|pwm_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_wrist|pwm_count\(10),
	cin => \rra_servo_wrist|pwm_count[9]~30\,
	combout => \rra_servo_wrist|pwm_count[10]~31_combout\);

-- Location: FF_X7_Y28_N21
\rra_servo_wrist|pwm_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_count[10]~31_combout\,
	sclr => \rra_servo_wrist|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_count\(10));

-- Location: LCCOMB_X7_Y28_N22
\rra_servo_wrist|pwm_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_out~0_combout\ = (((!\rra_servo_wrist|pwm_count\(3) & !\rra_servo_wrist|pwm_count\(4))) # (!\rra_servo_wrist|pwm_count\(6))) # (!\rra_servo_wrist|pwm_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(3),
	datab => \rra_servo_wrist|pwm_count\(5),
	datac => \rra_servo_wrist|pwm_count\(4),
	datad => \rra_servo_wrist|pwm_count\(6),
	combout => \rra_servo_wrist|pwm_out~0_combout\);

-- Location: LCCOMB_X9_Y28_N6
\rra_servo_wrist|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add6~0_combout\ = \rra_servo_wrist|current\(1) $ (VCC)
-- \rra_servo_wrist|Add6~1\ = CARRY(\rra_servo_wrist|current\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|current\(1),
	datad => VCC,
	combout => \rra_servo_wrist|Add6~0_combout\,
	cout => \rra_servo_wrist|Add6~1\);

-- Location: LCCOMB_X9_Y28_N26
\rra_servo_wrist|current[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|current\(1) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_wrist|current[1]~2clkctrl_outclk\) & (\rra_servo_wrist|Add6~0_combout\)) # (!GLOBAL(\rra_servo_wrist|current[1]~2clkctrl_outclk\) & ((\rra_servo_wrist|current\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|Add6~0_combout\,
	datab => \rst~input_o\,
	datac => \rra_servo_wrist|current\(1),
	datad => \rra_servo_wrist|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_wrist|current\(1));

-- Location: LCCOMB_X9_Y28_N8
\rra_servo_wrist|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add6~2_combout\ = (\rra_servo_wrist|current\(2) & (\rra_servo_wrist|Add6~1\ & VCC)) # (!\rra_servo_wrist|current\(2) & (!\rra_servo_wrist|Add6~1\))
-- \rra_servo_wrist|Add6~3\ = CARRY((!\rra_servo_wrist|current\(2) & !\rra_servo_wrist|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|current\(2),
	datad => VCC,
	cin => \rra_servo_wrist|Add6~1\,
	combout => \rra_servo_wrist|Add6~2_combout\,
	cout => \rra_servo_wrist|Add6~3\);

-- Location: LCCOMB_X9_Y28_N4
\rra_servo_wrist|current[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|current\(2) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_wrist|current[1]~2clkctrl_outclk\) & ((\rra_servo_wrist|Add6~2_combout\))) # (!GLOBAL(\rra_servo_wrist|current[1]~2clkctrl_outclk\) & (\rra_servo_wrist|current\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_wrist|current\(2),
	datac => \rra_servo_wrist|current[1]~2clkctrl_outclk\,
	datad => \rra_servo_wrist|Add6~2_combout\,
	combout => \rra_servo_wrist|current\(2));

-- Location: LCCOMB_X9_Y28_N10
\rra_servo_wrist|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add6~4_combout\ = (\rra_servo_wrist|current\(3) & (\rra_servo_wrist|Add6~3\ $ (GND))) # (!\rra_servo_wrist|current\(3) & (!\rra_servo_wrist|Add6~3\ & VCC))
-- \rra_servo_wrist|Add6~5\ = CARRY((\rra_servo_wrist|current\(3) & !\rra_servo_wrist|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|current\(3),
	datad => VCC,
	cin => \rra_servo_wrist|Add6~3\,
	combout => \rra_servo_wrist|Add6~4_combout\,
	cout => \rra_servo_wrist|Add6~5\);

-- Location: LCCOMB_X9_Y28_N2
\rra_servo_wrist|current[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|current\(3) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_wrist|current[1]~2clkctrl_outclk\) & ((\rra_servo_wrist|Add6~4_combout\))) # (!GLOBAL(\rra_servo_wrist|current[1]~2clkctrl_outclk\) & (\rra_servo_wrist|current\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_wrist|current\(3),
	datac => \rra_servo_wrist|Add6~4_combout\,
	datad => \rra_servo_wrist|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_wrist|current\(3));

-- Location: LCCOMB_X9_Y28_N12
\rra_servo_wrist|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add6~6_combout\ = (\rra_servo_wrist|current\(4) & (\rra_servo_wrist|Add6~5\ & VCC)) # (!\rra_servo_wrist|current\(4) & (!\rra_servo_wrist|Add6~5\))
-- \rra_servo_wrist|Add6~7\ = CARRY((!\rra_servo_wrist|current\(4) & !\rra_servo_wrist|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|current\(4),
	datad => VCC,
	cin => \rra_servo_wrist|Add6~5\,
	combout => \rra_servo_wrist|Add6~6_combout\,
	cout => \rra_servo_wrist|Add6~7\);

-- Location: LCCOMB_X9_Y28_N24
\rra_servo_wrist|current[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|current\(4) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_wrist|current[1]~2clkctrl_outclk\) & (\rra_servo_wrist|Add6~6_combout\)) # (!GLOBAL(\rra_servo_wrist|current[1]~2clkctrl_outclk\) & ((\rra_servo_wrist|current\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|Add6~6_combout\,
	datab => \rra_servo_wrist|current\(4),
	datac => \rst~input_o\,
	datad => \rra_servo_wrist|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_wrist|current\(4));

-- Location: LCCOMB_X9_Y28_N14
\rra_servo_wrist|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add6~8_combout\ = (\rra_servo_wrist|current\(5) & ((GND) # (!\rra_servo_wrist|Add6~7\))) # (!\rra_servo_wrist|current\(5) & (\rra_servo_wrist|Add6~7\ $ (GND)))
-- \rra_servo_wrist|Add6~9\ = CARRY((\rra_servo_wrist|current\(5)) # (!\rra_servo_wrist|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|current\(5),
	datad => VCC,
	cin => \rra_servo_wrist|Add6~7\,
	combout => \rra_servo_wrist|Add6~8_combout\,
	cout => \rra_servo_wrist|Add6~9\);

-- Location: LCCOMB_X9_Y28_N22
\rra_servo_wrist|current[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|current\(5) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_wrist|current[1]~2clkctrl_outclk\) & ((\rra_servo_wrist|Add6~8_combout\))) # (!GLOBAL(\rra_servo_wrist|current[1]~2clkctrl_outclk\) & (\rra_servo_wrist|current\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|current\(5),
	datab => \rst~input_o\,
	datac => \rra_servo_wrist|Add6~8_combout\,
	datad => \rra_servo_wrist|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_wrist|current\(5));

-- Location: LCCOMB_X9_Y28_N16
\rra_servo_wrist|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add6~10_combout\ = (\rra_servo_wrist|current\(6) & (\rra_servo_wrist|Add6~9\ & VCC)) # (!\rra_servo_wrist|current\(6) & (!\rra_servo_wrist|Add6~9\))
-- \rra_servo_wrist|Add6~11\ = CARRY((!\rra_servo_wrist|current\(6) & !\rra_servo_wrist|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|current\(6),
	datad => VCC,
	cin => \rra_servo_wrist|Add6~9\,
	combout => \rra_servo_wrist|Add6~10_combout\,
	cout => \rra_servo_wrist|Add6~11\);

-- Location: LCCOMB_X9_Y28_N0
\rra_servo_wrist|current[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|current\(6) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_wrist|current[1]~2clkctrl_outclk\) & (\rra_servo_wrist|Add6~10_combout\)) # (!GLOBAL(\rra_servo_wrist|current[1]~2clkctrl_outclk\) & ((\rra_servo_wrist|current\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_wrist|Add6~10_combout\,
	datac => \rra_servo_wrist|current[1]~2clkctrl_outclk\,
	datad => \rra_servo_wrist|current\(6),
	combout => \rra_servo_wrist|current\(6));

-- Location: LCCOMB_X9_Y28_N18
\rra_servo_wrist|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add6~12_combout\ = (\rra_servo_wrist|current\(7) & ((GND) # (!\rra_servo_wrist|Add6~11\))) # (!\rra_servo_wrist|current\(7) & (\rra_servo_wrist|Add6~11\ $ (GND)))
-- \rra_servo_wrist|Add6~13\ = CARRY((\rra_servo_wrist|current\(7)) # (!\rra_servo_wrist|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|current\(7),
	datad => VCC,
	cin => \rra_servo_wrist|Add6~11\,
	combout => \rra_servo_wrist|Add6~12_combout\,
	cout => \rra_servo_wrist|Add6~13\);

-- Location: LCCOMB_X9_Y28_N30
\rra_servo_wrist|current[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|current\(7) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_wrist|current[1]~2clkctrl_outclk\) & ((\rra_servo_wrist|Add6~12_combout\))) # (!GLOBAL(\rra_servo_wrist|current[1]~2clkctrl_outclk\) & (\rra_servo_wrist|current\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|current\(7),
	datab => \rst~input_o\,
	datac => \rra_servo_wrist|current[1]~2clkctrl_outclk\,
	datad => \rra_servo_wrist|Add6~12_combout\,
	combout => \rra_servo_wrist|current\(7));

-- Location: LCCOMB_X12_Y27_N16
\rra_servo_wrist|current[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|current[1]~1_combout\ = (\rra_servo_wrist|current\(6)) # ((\rra_servo_wrist|current\(7)) # ((\rra_servo_wrist|current\(5)) # (\rra_servo_wrist|current\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|current\(6),
	datab => \rra_servo_wrist|current\(7),
	datac => \rra_servo_wrist|current\(5),
	datad => \rra_servo_wrist|current\(8),
	combout => \rra_servo_wrist|current[1]~1_combout\);

-- Location: LCCOMB_X10_Y28_N28
\rra_servo_wrist|current[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|current[1]~0_combout\ = (\rra_servo_wrist|current\(3)) # ((\rra_servo_wrist|current\(2)) # ((\rra_servo_wrist|current\(1)) # (\rra_servo_wrist|current\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|current\(3),
	datab => \rra_servo_wrist|current\(2),
	datac => \rra_servo_wrist|current\(1),
	datad => \rra_servo_wrist|current\(4),
	combout => \rra_servo_wrist|current[1]~0_combout\);

-- Location: CLKCTRL_G11
\rra_servo_wrist|LessThan0~18clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_wrist|LessThan0~18clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_wrist|LessThan0~18clkctrl_outclk\);

-- Location: LCCOMB_X16_Y25_N30
\rra_servo_wrist|interval_count[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|interval_count[0]~0_combout\ = (!\rst~input_o\ & (\rra_servo_wrist|LessThan0~18_combout\ $ (\rra_servo_wrist|interval_count[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|LessThan0~18_combout\,
	datac => \rra_servo_wrist|interval_count[0]~0_combout\,
	datad => \rst~input_o\,
	combout => \rra_servo_wrist|interval_count[0]~0_combout\);

-- Location: LCCOMB_X16_Y25_N0
\rra_servo_wrist|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add4~0_combout\ = (\rra_servo_wrist|interval_count[0]~0_combout\ & (\rra_servo_wrist|interval_count\(1) $ (VCC))) # (!\rra_servo_wrist|interval_count[0]~0_combout\ & (\rra_servo_wrist|interval_count\(1) & VCC))
-- \rra_servo_wrist|Add4~1\ = CARRY((\rra_servo_wrist|interval_count[0]~0_combout\ & \rra_servo_wrist|interval_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|interval_count[0]~0_combout\,
	datab => \rra_servo_wrist|interval_count\(1),
	datad => VCC,
	combout => \rra_servo_wrist|Add4~0_combout\,
	cout => \rra_servo_wrist|Add4~1\);

-- Location: LCCOMB_X16_Y25_N18
\rra_servo_wrist|interval_count[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|interval_count\(1) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_wrist|LessThan0~18clkctrl_outclk\) & ((\rra_servo_wrist|Add4~0_combout\))) # (!GLOBAL(\rra_servo_wrist|LessThan0~18clkctrl_outclk\) & (\rra_servo_wrist|interval_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_wrist|interval_count\(1),
	datac => \rra_servo_wrist|Add4~0_combout\,
	datad => \rra_servo_wrist|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_wrist|interval_count\(1));

-- Location: LCCOMB_X16_Y25_N2
\rra_servo_wrist|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add4~2_combout\ = (\rra_servo_wrist|interval_count\(2) & (!\rra_servo_wrist|Add4~1\)) # (!\rra_servo_wrist|interval_count\(2) & ((\rra_servo_wrist|Add4~1\) # (GND)))
-- \rra_servo_wrist|Add4~3\ = CARRY((!\rra_servo_wrist|Add4~1\) # (!\rra_servo_wrist|interval_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|interval_count\(2),
	datad => VCC,
	cin => \rra_servo_wrist|Add4~1\,
	combout => \rra_servo_wrist|Add4~2_combout\,
	cout => \rra_servo_wrist|Add4~3\);

-- Location: LCCOMB_X16_Y25_N24
\rra_servo_wrist|interval_count[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|interval_count\(2) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_wrist|LessThan0~18clkctrl_outclk\) & (\rra_servo_wrist|Add4~2_combout\)) # (!GLOBAL(\rra_servo_wrist|LessThan0~18clkctrl_outclk\) & ((\rra_servo_wrist|interval_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|Add4~2_combout\,
	datab => \rst~input_o\,
	datac => \rra_servo_wrist|interval_count\(2),
	datad => \rra_servo_wrist|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_wrist|interval_count\(2));

-- Location: LCCOMB_X16_Y25_N4
\rra_servo_wrist|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add4~4_combout\ = (\rra_servo_wrist|interval_count\(3) & (\rra_servo_wrist|Add4~3\ $ (GND))) # (!\rra_servo_wrist|interval_count\(3) & (!\rra_servo_wrist|Add4~3\ & VCC))
-- \rra_servo_wrist|Add4~5\ = CARRY((\rra_servo_wrist|interval_count\(3) & !\rra_servo_wrist|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|interval_count\(3),
	datad => VCC,
	cin => \rra_servo_wrist|Add4~3\,
	combout => \rra_servo_wrist|Add4~4_combout\,
	cout => \rra_servo_wrist|Add4~5\);

-- Location: LCCOMB_X16_Y25_N22
\rra_servo_wrist|interval_count[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|interval_count\(3) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_wrist|LessThan0~18clkctrl_outclk\) & ((\rra_servo_wrist|Add4~4_combout\))) # (!GLOBAL(\rra_servo_wrist|LessThan0~18clkctrl_outclk\) & (\rra_servo_wrist|interval_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|interval_count\(3),
	datab => \rra_servo_wrist|Add4~4_combout\,
	datac => \rst~input_o\,
	datad => \rra_servo_wrist|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_wrist|interval_count\(3));

-- Location: LCCOMB_X16_Y25_N6
\rra_servo_wrist|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add4~6_combout\ = (\rra_servo_wrist|interval_count\(4) & (!\rra_servo_wrist|Add4~5\)) # (!\rra_servo_wrist|interval_count\(4) & ((\rra_servo_wrist|Add4~5\) # (GND)))
-- \rra_servo_wrist|Add4~7\ = CARRY((!\rra_servo_wrist|Add4~5\) # (!\rra_servo_wrist|interval_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|interval_count\(4),
	datad => VCC,
	cin => \rra_servo_wrist|Add4~5\,
	combout => \rra_servo_wrist|Add4~6_combout\,
	cout => \rra_servo_wrist|Add4~7\);

-- Location: LCCOMB_X16_Y25_N20
\rra_servo_wrist|interval_count[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|interval_count\(4) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_wrist|LessThan0~18clkctrl_outclk\) & ((\rra_servo_wrist|Add4~6_combout\))) # (!GLOBAL(\rra_servo_wrist|LessThan0~18clkctrl_outclk\) & (\rra_servo_wrist|interval_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|interval_count\(4),
	datab => \rra_servo_wrist|Add4~6_combout\,
	datac => \rst~input_o\,
	datad => \rra_servo_wrist|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_wrist|interval_count\(4));

-- Location: LCCOMB_X16_Y25_N8
\rra_servo_wrist|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add4~8_combout\ = (\rra_servo_wrist|interval_count\(5) & (\rra_servo_wrist|Add4~7\ $ (GND))) # (!\rra_servo_wrist|interval_count\(5) & (!\rra_servo_wrist|Add4~7\ & VCC))
-- \rra_servo_wrist|Add4~9\ = CARRY((\rra_servo_wrist|interval_count\(5) & !\rra_servo_wrist|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|interval_count\(5),
	datad => VCC,
	cin => \rra_servo_wrist|Add4~7\,
	combout => \rra_servo_wrist|Add4~8_combout\,
	cout => \rra_servo_wrist|Add4~9\);

-- Location: LCCOMB_X15_Y25_N26
\rra_servo_wrist|interval_count[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|interval_count\(5) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_wrist|LessThan0~18clkctrl_outclk\) & ((\rra_servo_wrist|Add4~8_combout\))) # (!GLOBAL(\rra_servo_wrist|LessThan0~18clkctrl_outclk\) & (\rra_servo_wrist|interval_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|interval_count\(5),
	datab => \rst~input_o\,
	datac => \rra_servo_wrist|Add4~8_combout\,
	datad => \rra_servo_wrist|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_wrist|interval_count\(5));

-- Location: LCCOMB_X16_Y25_N10
\rra_servo_wrist|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add4~10_combout\ = (\rra_servo_wrist|interval_count\(6) & (!\rra_servo_wrist|Add4~9\)) # (!\rra_servo_wrist|interval_count\(6) & ((\rra_servo_wrist|Add4~9\) # (GND)))
-- \rra_servo_wrist|Add4~11\ = CARRY((!\rra_servo_wrist|Add4~9\) # (!\rra_servo_wrist|interval_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|interval_count\(6),
	datad => VCC,
	cin => \rra_servo_wrist|Add4~9\,
	combout => \rra_servo_wrist|Add4~10_combout\,
	cout => \rra_servo_wrist|Add4~11\);

-- Location: LCCOMB_X16_Y25_N26
\rra_servo_wrist|interval_count[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|interval_count\(6) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_wrist|LessThan0~18clkctrl_outclk\) & ((\rra_servo_wrist|Add4~10_combout\))) # (!GLOBAL(\rra_servo_wrist|LessThan0~18clkctrl_outclk\) & (\rra_servo_wrist|interval_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|interval_count\(6),
	datab => \rst~input_o\,
	datac => \rra_servo_wrist|LessThan0~18clkctrl_outclk\,
	datad => \rra_servo_wrist|Add4~10_combout\,
	combout => \rra_servo_wrist|interval_count\(6));

-- Location: LCCOMB_X16_Y25_N12
\rra_servo_wrist|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add4~12_combout\ = (\rra_servo_wrist|interval_count\(7) & (\rra_servo_wrist|Add4~11\ $ (GND))) # (!\rra_servo_wrist|interval_count\(7) & (!\rra_servo_wrist|Add4~11\ & VCC))
-- \rra_servo_wrist|Add4~13\ = CARRY((\rra_servo_wrist|interval_count\(7) & !\rra_servo_wrist|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|interval_count\(7),
	datad => VCC,
	cin => \rra_servo_wrist|Add4~11\,
	combout => \rra_servo_wrist|Add4~12_combout\,
	cout => \rra_servo_wrist|Add4~13\);

-- Location: LCCOMB_X15_Y25_N20
\rra_servo_wrist|interval_count[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|interval_count\(7) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_wrist|LessThan0~18clkctrl_outclk\) & (\rra_servo_wrist|Add4~12_combout\)) # (!GLOBAL(\rra_servo_wrist|LessThan0~18clkctrl_outclk\) & ((\rra_servo_wrist|interval_count\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_wrist|Add4~12_combout\,
	datac => \rra_servo_wrist|interval_count\(7),
	datad => \rra_servo_wrist|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_wrist|interval_count\(7));

-- Location: LCCOMB_X16_Y25_N14
\rra_servo_wrist|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add4~14_combout\ = (\rra_servo_wrist|interval_count\(8) & (!\rra_servo_wrist|Add4~13\)) # (!\rra_servo_wrist|interval_count\(8) & ((\rra_servo_wrist|Add4~13\) # (GND)))
-- \rra_servo_wrist|Add4~15\ = CARRY((!\rra_servo_wrist|Add4~13\) # (!\rra_servo_wrist|interval_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|interval_count\(8),
	datad => VCC,
	cin => \rra_servo_wrist|Add4~13\,
	combout => \rra_servo_wrist|Add4~14_combout\,
	cout => \rra_servo_wrist|Add4~15\);

-- Location: LCCOMB_X15_Y25_N22
\rra_servo_wrist|interval_count[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|interval_count\(8) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_wrist|LessThan0~18clkctrl_outclk\) & ((\rra_servo_wrist|Add4~14_combout\))) # (!GLOBAL(\rra_servo_wrist|LessThan0~18clkctrl_outclk\) & (\rra_servo_wrist|interval_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|interval_count\(8),
	datab => \rst~input_o\,
	datac => \rra_servo_wrist|Add4~14_combout\,
	datad => \rra_servo_wrist|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_wrist|interval_count\(8));

-- Location: LCCOMB_X16_Y25_N16
\rra_servo_wrist|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add4~16_combout\ = \rra_servo_wrist|Add4~15\ $ (!\rra_servo_wrist|interval_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_wrist|interval_count\(9),
	cin => \rra_servo_wrist|Add4~15\,
	combout => \rra_servo_wrist|Add4~16_combout\);

-- Location: LCCOMB_X16_Y25_N28
\rra_servo_wrist|interval_count[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|interval_count\(9) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_wrist|LessThan0~18clkctrl_outclk\) & ((\rra_servo_wrist|Add4~16_combout\))) # (!GLOBAL(\rra_servo_wrist|LessThan0~18clkctrl_outclk\) & (\rra_servo_wrist|interval_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_wrist|interval_count\(9),
	datac => \rra_servo_wrist|Add4~16_combout\,
	datad => \rra_servo_wrist|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_wrist|interval_count\(9));

-- Location: LCCOMB_X15_Y25_N0
\rra_servo_wrist|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan0~1_cout\ = CARRY(\rra_servo_wrist|interval_count[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|interval_count[0]~0_combout\,
	datad => VCC,
	cout => \rra_servo_wrist|LessThan0~1_cout\);

-- Location: LCCOMB_X15_Y25_N2
\rra_servo_wrist|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan0~3_cout\ = CARRY((\rra_servo_lower|interval[1]~0_combout\ & ((!\rra_servo_wrist|LessThan0~1_cout\) # (!\rra_servo_wrist|interval_count\(1)))) # (!\rra_servo_lower|interval[1]~0_combout\ & (!\rra_servo_wrist|interval_count\(1) & 
-- !\rra_servo_wrist|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval[1]~0_combout\,
	datab => \rra_servo_wrist|interval_count\(1),
	datad => VCC,
	cin => \rra_servo_wrist|LessThan0~1_cout\,
	cout => \rra_servo_wrist|LessThan0~3_cout\);

-- Location: LCCOMB_X15_Y25_N4
\rra_servo_wrist|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan0~5_cout\ = CARRY((\rra_servo_lower|Add2~23_combout\ & (\rra_servo_wrist|interval_count\(2) & !\rra_servo_wrist|LessThan0~3_cout\)) # (!\rra_servo_lower|Add2~23_combout\ & ((\rra_servo_wrist|interval_count\(2)) # 
-- (!\rra_servo_wrist|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~23_combout\,
	datab => \rra_servo_wrist|interval_count\(2),
	datad => VCC,
	cin => \rra_servo_wrist|LessThan0~3_cout\,
	cout => \rra_servo_wrist|LessThan0~5_cout\);

-- Location: LCCOMB_X15_Y25_N6
\rra_servo_wrist|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan0~7_cout\ = CARRY((\rra_servo_wrist|interval_count\(3) & (\rra_servo_lower|Add2~22_combout\ & !\rra_servo_wrist|LessThan0~5_cout\)) # (!\rra_servo_wrist|interval_count\(3) & ((\rra_servo_lower|Add2~22_combout\) # 
-- (!\rra_servo_wrist|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|interval_count\(3),
	datab => \rra_servo_lower|Add2~22_combout\,
	datad => VCC,
	cin => \rra_servo_wrist|LessThan0~5_cout\,
	cout => \rra_servo_wrist|LessThan0~7_cout\);

-- Location: LCCOMB_X15_Y25_N8
\rra_servo_wrist|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan0~9_cout\ = CARRY((\rra_servo_lower|Add2~21_combout\ & (\rra_servo_wrist|interval_count\(4) & !\rra_servo_wrist|LessThan0~7_cout\)) # (!\rra_servo_lower|Add2~21_combout\ & ((\rra_servo_wrist|interval_count\(4)) # 
-- (!\rra_servo_wrist|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~21_combout\,
	datab => \rra_servo_wrist|interval_count\(4),
	datad => VCC,
	cin => \rra_servo_wrist|LessThan0~7_cout\,
	cout => \rra_servo_wrist|LessThan0~9_cout\);

-- Location: LCCOMB_X15_Y25_N10
\rra_servo_wrist|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan0~11_cout\ = CARRY((\rra_servo_wrist|interval_count\(5) & (\rra_servo_lower|Add2~20_combout\ & !\rra_servo_wrist|LessThan0~9_cout\)) # (!\rra_servo_wrist|interval_count\(5) & ((\rra_servo_lower|Add2~20_combout\) # 
-- (!\rra_servo_wrist|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|interval_count\(5),
	datab => \rra_servo_lower|Add2~20_combout\,
	datad => VCC,
	cin => \rra_servo_wrist|LessThan0~9_cout\,
	cout => \rra_servo_wrist|LessThan0~11_cout\);

-- Location: LCCOMB_X15_Y25_N12
\rra_servo_wrist|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan0~13_cout\ = CARRY((\rra_servo_lower|Add2~19_combout\ & (\rra_servo_wrist|interval_count\(6) & !\rra_servo_wrist|LessThan0~11_cout\)) # (!\rra_servo_lower|Add2~19_combout\ & ((\rra_servo_wrist|interval_count\(6)) # 
-- (!\rra_servo_wrist|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~19_combout\,
	datab => \rra_servo_wrist|interval_count\(6),
	datad => VCC,
	cin => \rra_servo_wrist|LessThan0~11_cout\,
	cout => \rra_servo_wrist|LessThan0~13_cout\);

-- Location: LCCOMB_X15_Y25_N14
\rra_servo_wrist|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan0~15_cout\ = CARRY((\rra_servo_wrist|interval_count\(7) & (\rra_servo_lower|Add2~18_combout\ & !\rra_servo_wrist|LessThan0~13_cout\)) # (!\rra_servo_wrist|interval_count\(7) & ((\rra_servo_lower|Add2~18_combout\) # 
-- (!\rra_servo_wrist|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|interval_count\(7),
	datab => \rra_servo_lower|Add2~18_combout\,
	datad => VCC,
	cin => \rra_servo_wrist|LessThan0~13_cout\,
	cout => \rra_servo_wrist|LessThan0~15_cout\);

-- Location: LCCOMB_X15_Y25_N16
\rra_servo_wrist|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan0~17_cout\ = CARRY((\rra_servo_lower|Add2~17_combout\ & (\rra_servo_wrist|interval_count\(8) & !\rra_servo_wrist|LessThan0~15_cout\)) # (!\rra_servo_lower|Add2~17_combout\ & ((\rra_servo_wrist|interval_count\(8)) # 
-- (!\rra_servo_wrist|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~17_combout\,
	datab => \rra_servo_wrist|interval_count\(8),
	datad => VCC,
	cin => \rra_servo_wrist|LessThan0~15_cout\,
	cout => \rra_servo_wrist|LessThan0~17_cout\);

-- Location: LCCOMB_X15_Y25_N18
\rra_servo_wrist|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan0~18_combout\ = (\rra_servo_wrist|interval_count\(9) & (!\rra_servo_wrist|LessThan0~17_cout\ & \rra_servo_lower|Add2~16_combout\)) # (!\rra_servo_wrist|interval_count\(9) & ((\rra_servo_lower|Add2~16_combout\) # 
-- (!\rra_servo_wrist|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|interval_count\(9),
	datad => \rra_servo_lower|Add2~16_combout\,
	cin => \rra_servo_wrist|LessThan0~17_cout\,
	combout => \rra_servo_wrist|LessThan0~18_combout\);

-- Location: LCCOMB_X15_Y25_N28
\rra_servo_wrist|current[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|current[1]~2_combout\ = (!\rra_servo_wrist|LessThan0~18_combout\ & ((\rra_servo_wrist|current[1]~1_combout\) # (\rra_servo_wrist|current[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|current[1]~1_combout\,
	datab => \rra_servo_wrist|current[1]~0_combout\,
	datad => \rra_servo_wrist|LessThan0~18_combout\,
	combout => \rra_servo_wrist|current[1]~2_combout\);

-- Location: CLKCTRL_G14
\rra_servo_wrist|current[1]~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_wrist|current[1]~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_wrist|current[1]~2clkctrl_outclk\);

-- Location: LCCOMB_X9_Y28_N20
\rra_servo_wrist|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add6~14_combout\ = \rra_servo_wrist|Add6~13\ $ (!\rra_servo_wrist|current\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_wrist|current\(8),
	cin => \rra_servo_wrist|Add6~13\,
	combout => \rra_servo_wrist|Add6~14_combout\);

-- Location: LCCOMB_X9_Y28_N28
\rra_servo_wrist|current[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|current\(8) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_wrist|current[1]~2clkctrl_outclk\) & ((\rra_servo_wrist|Add6~14_combout\))) # (!GLOBAL(\rra_servo_wrist|current[1]~2clkctrl_outclk\) & (\rra_servo_wrist|current\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_wrist|current\(8),
	datac => \rra_servo_wrist|current[1]~2clkctrl_outclk\,
	datad => \rra_servo_wrist|Add6~14_combout\,
	combout => \rra_servo_wrist|current\(8));

-- Location: LCCOMB_X8_Y28_N18
\rra_servo_wrist|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add8~0_combout\ = (\rra_servo_wrist|current\(2) & (\rra_servo_wrist|current\(3) $ (VCC))) # (!\rra_servo_wrist|current\(2) & (\rra_servo_wrist|current\(3) & VCC))
-- \rra_servo_wrist|Add8~1\ = CARRY((\rra_servo_wrist|current\(2) & \rra_servo_wrist|current\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|current\(2),
	datab => \rra_servo_wrist|current\(3),
	datad => VCC,
	combout => \rra_servo_wrist|Add8~0_combout\,
	cout => \rra_servo_wrist|Add8~1\);

-- Location: LCCOMB_X8_Y28_N20
\rra_servo_wrist|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add8~2_combout\ = (\rra_servo_wrist|current\(4) & (\rra_servo_wrist|Add8~1\ & VCC)) # (!\rra_servo_wrist|current\(4) & (!\rra_servo_wrist|Add8~1\))
-- \rra_servo_wrist|Add8~3\ = CARRY((!\rra_servo_wrist|current\(4) & !\rra_servo_wrist|Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|current\(4),
	datad => VCC,
	cin => \rra_servo_wrist|Add8~1\,
	combout => \rra_servo_wrist|Add8~2_combout\,
	cout => \rra_servo_wrist|Add8~3\);

-- Location: LCCOMB_X8_Y28_N22
\rra_servo_wrist|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add8~4_combout\ = (\rra_servo_wrist|current\(5) & ((GND) # (!\rra_servo_wrist|Add8~3\))) # (!\rra_servo_wrist|current\(5) & (\rra_servo_wrist|Add8~3\ $ (GND)))
-- \rra_servo_wrist|Add8~5\ = CARRY((\rra_servo_wrist|current\(5)) # (!\rra_servo_wrist|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|current\(5),
	datad => VCC,
	cin => \rra_servo_wrist|Add8~3\,
	combout => \rra_servo_wrist|Add8~4_combout\,
	cout => \rra_servo_wrist|Add8~5\);

-- Location: LCCOMB_X8_Y28_N24
\rra_servo_wrist|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add8~6_combout\ = (\rra_servo_wrist|current\(6) & (\rra_servo_wrist|Add8~5\ & VCC)) # (!\rra_servo_wrist|current\(6) & (!\rra_servo_wrist|Add8~5\))
-- \rra_servo_wrist|Add8~7\ = CARRY((!\rra_servo_wrist|current\(6) & !\rra_servo_wrist|Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|current\(6),
	datad => VCC,
	cin => \rra_servo_wrist|Add8~5\,
	combout => \rra_servo_wrist|Add8~6_combout\,
	cout => \rra_servo_wrist|Add8~7\);

-- Location: LCCOMB_X8_Y28_N26
\rra_servo_wrist|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add8~8_combout\ = (\rra_servo_wrist|current\(7) & ((GND) # (!\rra_servo_wrist|Add8~7\))) # (!\rra_servo_wrist|current\(7) & (\rra_servo_wrist|Add8~7\ $ (GND)))
-- \rra_servo_wrist|Add8~9\ = CARRY((\rra_servo_wrist|current\(7)) # (!\rra_servo_wrist|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|current\(7),
	datad => VCC,
	cin => \rra_servo_wrist|Add8~7\,
	combout => \rra_servo_wrist|Add8~8_combout\,
	cout => \rra_servo_wrist|Add8~9\);

-- Location: LCCOMB_X8_Y28_N28
\rra_servo_wrist|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add8~10_combout\ = (\rra_servo_wrist|current\(8) & (\rra_servo_wrist|Add8~9\ & VCC)) # (!\rra_servo_wrist|current\(8) & (!\rra_servo_wrist|Add8~9\))
-- \rra_servo_wrist|Add8~11\ = CARRY((!\rra_servo_wrist|current\(8) & !\rra_servo_wrist|Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|current\(8),
	datad => VCC,
	cin => \rra_servo_wrist|Add8~9\,
	combout => \rra_servo_wrist|Add8~10_combout\,
	cout => \rra_servo_wrist|Add8~11\);

-- Location: LCCOMB_X8_Y28_N30
\rra_servo_wrist|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|Add8~12_combout\ = !\rra_servo_wrist|Add8~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rra_servo_wrist|Add8~11\,
	combout => \rra_servo_wrist|Add8~12_combout\);

-- Location: LCCOMB_X8_Y28_N0
\rra_servo_wrist|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan5~1_cout\ = CARRY((\rra_servo_wrist|current\(1) & !\rra_servo_wrist|pwm_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|current\(1),
	datab => \rra_servo_wrist|pwm_count\(2),
	datad => VCC,
	cout => \rra_servo_wrist|LessThan5~1_cout\);

-- Location: LCCOMB_X8_Y28_N2
\rra_servo_wrist|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan5~3_cout\ = CARRY((\rra_servo_wrist|current\(2) & ((\rra_servo_wrist|pwm_count\(3)) # (!\rra_servo_wrist|LessThan5~1_cout\))) # (!\rra_servo_wrist|current\(2) & (\rra_servo_wrist|pwm_count\(3) & 
-- !\rra_servo_wrist|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|current\(2),
	datab => \rra_servo_wrist|pwm_count\(3),
	datad => VCC,
	cin => \rra_servo_wrist|LessThan5~1_cout\,
	cout => \rra_servo_wrist|LessThan5~3_cout\);

-- Location: LCCOMB_X8_Y28_N4
\rra_servo_wrist|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan5~5_cout\ = CARRY((\rra_servo_wrist|pwm_count\(4) & (\rra_servo_wrist|Add8~0_combout\ & !\rra_servo_wrist|LessThan5~3_cout\)) # (!\rra_servo_wrist|pwm_count\(4) & ((\rra_servo_wrist|Add8~0_combout\) # 
-- (!\rra_servo_wrist|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(4),
	datab => \rra_servo_wrist|Add8~0_combout\,
	datad => VCC,
	cin => \rra_servo_wrist|LessThan5~3_cout\,
	cout => \rra_servo_wrist|LessThan5~5_cout\);

-- Location: LCCOMB_X8_Y28_N6
\rra_servo_wrist|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan5~7_cout\ = CARRY((\rra_servo_wrist|pwm_count\(5) & ((!\rra_servo_wrist|LessThan5~5_cout\) # (!\rra_servo_wrist|Add8~2_combout\))) # (!\rra_servo_wrist|pwm_count\(5) & (!\rra_servo_wrist|Add8~2_combout\ & 
-- !\rra_servo_wrist|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(5),
	datab => \rra_servo_wrist|Add8~2_combout\,
	datad => VCC,
	cin => \rra_servo_wrist|LessThan5~5_cout\,
	cout => \rra_servo_wrist|LessThan5~7_cout\);

-- Location: LCCOMB_X8_Y28_N8
\rra_servo_wrist|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan5~9_cout\ = CARRY((\rra_servo_wrist|Add8~4_combout\ & ((!\rra_servo_wrist|LessThan5~7_cout\) # (!\rra_servo_wrist|pwm_count\(6)))) # (!\rra_servo_wrist|Add8~4_combout\ & (!\rra_servo_wrist|pwm_count\(6) & 
-- !\rra_servo_wrist|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|Add8~4_combout\,
	datab => \rra_servo_wrist|pwm_count\(6),
	datad => VCC,
	cin => \rra_servo_wrist|LessThan5~7_cout\,
	cout => \rra_servo_wrist|LessThan5~9_cout\);

-- Location: LCCOMB_X8_Y28_N10
\rra_servo_wrist|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan5~11_cout\ = CARRY((\rra_servo_wrist|pwm_count\(7) & ((!\rra_servo_wrist|LessThan5~9_cout\) # (!\rra_servo_wrist|Add8~6_combout\))) # (!\rra_servo_wrist|pwm_count\(7) & (!\rra_servo_wrist|Add8~6_combout\ & 
-- !\rra_servo_wrist|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(7),
	datab => \rra_servo_wrist|Add8~6_combout\,
	datad => VCC,
	cin => \rra_servo_wrist|LessThan5~9_cout\,
	cout => \rra_servo_wrist|LessThan5~11_cout\);

-- Location: LCCOMB_X8_Y28_N12
\rra_servo_wrist|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan5~13_cout\ = CARRY((\rra_servo_wrist|Add8~8_combout\ & ((!\rra_servo_wrist|LessThan5~11_cout\) # (!\rra_servo_wrist|pwm_count\(8)))) # (!\rra_servo_wrist|Add8~8_combout\ & (!\rra_servo_wrist|pwm_count\(8) & 
-- !\rra_servo_wrist|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|Add8~8_combout\,
	datab => \rra_servo_wrist|pwm_count\(8),
	datad => VCC,
	cin => \rra_servo_wrist|LessThan5~11_cout\,
	cout => \rra_servo_wrist|LessThan5~13_cout\);

-- Location: LCCOMB_X8_Y28_N14
\rra_servo_wrist|LessThan5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan5~15_cout\ = CARRY((\rra_servo_wrist|pwm_count\(9) & ((!\rra_servo_wrist|LessThan5~13_cout\) # (!\rra_servo_wrist|Add8~10_combout\))) # (!\rra_servo_wrist|pwm_count\(9) & (!\rra_servo_wrist|Add8~10_combout\ & 
-- !\rra_servo_wrist|LessThan5~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_count\(9),
	datab => \rra_servo_wrist|Add8~10_combout\,
	datad => VCC,
	cin => \rra_servo_wrist|LessThan5~13_cout\,
	cout => \rra_servo_wrist|LessThan5~15_cout\);

-- Location: LCCOMB_X8_Y28_N16
\rra_servo_wrist|LessThan5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|LessThan5~16_combout\ = (\rra_servo_wrist|Add8~12_combout\ & ((!\rra_servo_wrist|pwm_count\(10)) # (!\rra_servo_wrist|LessThan5~15_cout\))) # (!\rra_servo_wrist|Add8~12_combout\ & (!\rra_servo_wrist|LessThan5~15_cout\ & 
-- !\rra_servo_wrist|pwm_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|Add8~12_combout\,
	datad => \rra_servo_wrist|pwm_count\(10),
	cin => \rra_servo_wrist|LessThan5~15_cout\,
	combout => \rra_servo_wrist|LessThan5~16_combout\);

-- Location: LCCOMB_X7_Y28_N26
\rra_servo_wrist|pwm_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_out~2_combout\ = (\rra_servo_wrist|LessThan5~16_combout\) # ((!\rra_servo_wrist|pwm_count\(10) & ((\rra_servo_wrist|pwm_out~1_combout\) # (\rra_servo_wrist|pwm_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_wrist|pwm_out~1_combout\,
	datab => \rra_servo_wrist|pwm_count\(10),
	datac => \rra_servo_wrist|pwm_out~0_combout\,
	datad => \rra_servo_wrist|LessThan5~16_combout\,
	combout => \rra_servo_wrist|pwm_out~2_combout\);

-- Location: LCCOMB_X7_Y28_N28
\rra_servo_wrist|pwm_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|pwm_out~3_combout\ = \rra_servo_wrist|pwm_out~q\ $ (!\rra_servo_wrist|pwm_out~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_wrist|pwm_out~q\,
	datad => \rra_servo_wrist|pwm_out~2_combout\,
	combout => \rra_servo_wrist|pwm_out~3_combout\);

-- Location: FF_X7_Y28_N29
\rra_servo_wrist|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_wrist|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_wrist|pwm_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|pwm_out~q\);

-- Location: LCCOMB_X7_Y28_N30
\rra_servo_wrist|o_pwm_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_wrist|o_pwm_out~feeder_combout\ = \rra_servo_wrist|pwm_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_wrist|pwm_out~q\,
	combout => \rra_servo_wrist|o_pwm_out~feeder_combout\);

-- Location: FF_X7_Y28_N31
\rra_servo_wrist|o_pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_wrist|o_pwm_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_wrist|o_pwm_out~q\);

-- Location: LCCOMB_X1_Y14_N4
\rra_servo_gripper|clk_1mhz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|clk_1mhz~0_combout\ = !\rra_servo_lower|LessThan3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|LessThan3~2_combout\,
	combout => \rra_servo_gripper|clk_1mhz~0_combout\);

-- Location: FF_X1_Y14_N5
\rra_servo_gripper|clk_1mhz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_gripper|clk_1mhz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|clk_1mhz~q\);

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X24_Y27_N0
\rra_servo_gripper|pwm_count[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[0]~11_combout\ = \rra_servo_gripper|pwm_count\(0) $ (VCC)
-- \rra_servo_gripper|pwm_count[0]~12\ = CARRY(\rra_servo_gripper|pwm_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|pwm_count\(0),
	datad => VCC,
	combout => \rra_servo_gripper|pwm_count[0]~11_combout\,
	cout => \rra_servo_gripper|pwm_count[0]~12\);

-- Location: FF_X24_Y27_N1
\rra_servo_gripper|pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[0]~11_combout\,
	sclr => \rra_servo_gripper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(0));

-- Location: LCCOMB_X24_Y27_N2
\rra_servo_gripper|pwm_count[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[1]~13_combout\ = (\rra_servo_gripper|pwm_count\(1) & (!\rra_servo_gripper|pwm_count[0]~12\)) # (!\rra_servo_gripper|pwm_count\(1) & ((\rra_servo_gripper|pwm_count[0]~12\) # (GND)))
-- \rra_servo_gripper|pwm_count[1]~14\ = CARRY((!\rra_servo_gripper|pwm_count[0]~12\) # (!\rra_servo_gripper|pwm_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|pwm_count\(1),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[0]~12\,
	combout => \rra_servo_gripper|pwm_count[1]~13_combout\,
	cout => \rra_servo_gripper|pwm_count[1]~14\);

-- Location: FF_X24_Y27_N3
\rra_servo_gripper|pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[1]~13_combout\,
	sclr => \rra_servo_gripper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(1));

-- Location: LCCOMB_X24_Y27_N4
\rra_servo_gripper|pwm_count[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[2]~15_combout\ = (\rra_servo_gripper|pwm_count\(2) & (\rra_servo_gripper|pwm_count[1]~14\ $ (GND))) # (!\rra_servo_gripper|pwm_count\(2) & (!\rra_servo_gripper|pwm_count[1]~14\ & VCC))
-- \rra_servo_gripper|pwm_count[2]~16\ = CARRY((\rra_servo_gripper|pwm_count\(2) & !\rra_servo_gripper|pwm_count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|pwm_count\(2),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[1]~14\,
	combout => \rra_servo_gripper|pwm_count[2]~15_combout\,
	cout => \rra_servo_gripper|pwm_count[2]~16\);

-- Location: FF_X24_Y27_N5
\rra_servo_gripper|pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[2]~15_combout\,
	sclr => \rra_servo_gripper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(2));

-- Location: LCCOMB_X24_Y27_N6
\rra_servo_gripper|pwm_count[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[3]~17_combout\ = (\rra_servo_gripper|pwm_count\(3) & (!\rra_servo_gripper|pwm_count[2]~16\)) # (!\rra_servo_gripper|pwm_count\(3) & ((\rra_servo_gripper|pwm_count[2]~16\) # (GND)))
-- \rra_servo_gripper|pwm_count[3]~18\ = CARRY((!\rra_servo_gripper|pwm_count[2]~16\) # (!\rra_servo_gripper|pwm_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(3),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[2]~16\,
	combout => \rra_servo_gripper|pwm_count[3]~17_combout\,
	cout => \rra_servo_gripper|pwm_count[3]~18\);

-- Location: FF_X24_Y27_N7
\rra_servo_gripper|pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[3]~17_combout\,
	sclr => \rra_servo_gripper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(3));

-- Location: LCCOMB_X24_Y27_N8
\rra_servo_gripper|pwm_count[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[4]~19_combout\ = (\rra_servo_gripper|pwm_count\(4) & (\rra_servo_gripper|pwm_count[3]~18\ $ (GND))) # (!\rra_servo_gripper|pwm_count\(4) & (!\rra_servo_gripper|pwm_count[3]~18\ & VCC))
-- \rra_servo_gripper|pwm_count[4]~20\ = CARRY((\rra_servo_gripper|pwm_count\(4) & !\rra_servo_gripper|pwm_count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|pwm_count\(4),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[3]~18\,
	combout => \rra_servo_gripper|pwm_count[4]~19_combout\,
	cout => \rra_servo_gripper|pwm_count[4]~20\);

-- Location: FF_X24_Y27_N9
\rra_servo_gripper|pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[4]~19_combout\,
	sclr => \rra_servo_gripper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(4));

-- Location: LCCOMB_X24_Y27_N10
\rra_servo_gripper|pwm_count[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[5]~21_combout\ = (\rra_servo_gripper|pwm_count\(5) & (!\rra_servo_gripper|pwm_count[4]~20\)) # (!\rra_servo_gripper|pwm_count\(5) & ((\rra_servo_gripper|pwm_count[4]~20\) # (GND)))
-- \rra_servo_gripper|pwm_count[5]~22\ = CARRY((!\rra_servo_gripper|pwm_count[4]~20\) # (!\rra_servo_gripper|pwm_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|pwm_count\(5),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[4]~20\,
	combout => \rra_servo_gripper|pwm_count[5]~21_combout\,
	cout => \rra_servo_gripper|pwm_count[5]~22\);

-- Location: FF_X24_Y27_N11
\rra_servo_gripper|pwm_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[5]~21_combout\,
	sclr => \rra_servo_gripper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(5));

-- Location: LCCOMB_X24_Y27_N12
\rra_servo_gripper|pwm_count[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[6]~23_combout\ = (\rra_servo_gripper|pwm_count\(6) & (\rra_servo_gripper|pwm_count[5]~22\ $ (GND))) # (!\rra_servo_gripper|pwm_count\(6) & (!\rra_servo_gripper|pwm_count[5]~22\ & VCC))
-- \rra_servo_gripper|pwm_count[6]~24\ = CARRY((\rra_servo_gripper|pwm_count\(6) & !\rra_servo_gripper|pwm_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(6),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[5]~22\,
	combout => \rra_servo_gripper|pwm_count[6]~23_combout\,
	cout => \rra_servo_gripper|pwm_count[6]~24\);

-- Location: FF_X24_Y27_N13
\rra_servo_gripper|pwm_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[6]~23_combout\,
	sclr => \rra_servo_gripper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(6));

-- Location: LCCOMB_X24_Y27_N14
\rra_servo_gripper|pwm_count[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[7]~25_combout\ = (\rra_servo_gripper|pwm_count\(7) & (!\rra_servo_gripper|pwm_count[6]~24\)) # (!\rra_servo_gripper|pwm_count\(7) & ((\rra_servo_gripper|pwm_count[6]~24\) # (GND)))
-- \rra_servo_gripper|pwm_count[7]~26\ = CARRY((!\rra_servo_gripper|pwm_count[6]~24\) # (!\rra_servo_gripper|pwm_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|pwm_count\(7),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[6]~24\,
	combout => \rra_servo_gripper|pwm_count[7]~25_combout\,
	cout => \rra_servo_gripper|pwm_count[7]~26\);

-- Location: FF_X24_Y27_N15
\rra_servo_gripper|pwm_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[7]~25_combout\,
	sclr => \rra_servo_gripper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(7));

-- Location: LCCOMB_X24_Y27_N16
\rra_servo_gripper|pwm_count[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[8]~27_combout\ = (\rra_servo_gripper|pwm_count\(8) & (\rra_servo_gripper|pwm_count[7]~26\ $ (GND))) # (!\rra_servo_gripper|pwm_count\(8) & (!\rra_servo_gripper|pwm_count[7]~26\ & VCC))
-- \rra_servo_gripper|pwm_count[8]~28\ = CARRY((\rra_servo_gripper|pwm_count\(8) & !\rra_servo_gripper|pwm_count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|pwm_count\(8),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[7]~26\,
	combout => \rra_servo_gripper|pwm_count[8]~27_combout\,
	cout => \rra_servo_gripper|pwm_count[8]~28\);

-- Location: FF_X24_Y27_N17
\rra_servo_gripper|pwm_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[8]~27_combout\,
	sclr => \rra_servo_gripper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(8));

-- Location: LCCOMB_X24_Y27_N18
\rra_servo_gripper|pwm_count[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[9]~29_combout\ = (\rra_servo_gripper|pwm_count\(9) & (!\rra_servo_gripper|pwm_count[8]~28\)) # (!\rra_servo_gripper|pwm_count\(9) & ((\rra_servo_gripper|pwm_count[8]~28\) # (GND)))
-- \rra_servo_gripper|pwm_count[9]~30\ = CARRY((!\rra_servo_gripper|pwm_count[8]~28\) # (!\rra_servo_gripper|pwm_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(9),
	datad => VCC,
	cin => \rra_servo_gripper|pwm_count[8]~28\,
	combout => \rra_servo_gripper|pwm_count[9]~29_combout\,
	cout => \rra_servo_gripper|pwm_count[9]~30\);

-- Location: FF_X24_Y27_N19
\rra_servo_gripper|pwm_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[9]~29_combout\,
	sclr => \rra_servo_gripper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(9));

-- Location: LCCOMB_X24_Y27_N20
\rra_servo_gripper|pwm_count[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_count[10]~31_combout\ = \rra_servo_gripper|pwm_count[9]~30\ $ (!\rra_servo_gripper|pwm_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_gripper|pwm_count\(10),
	cin => \rra_servo_gripper|pwm_count[9]~30\,
	combout => \rra_servo_gripper|pwm_count[10]~31_combout\);

-- Location: FF_X24_Y27_N21
\rra_servo_gripper|pwm_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_count[10]~31_combout\,
	sclr => \rra_servo_gripper|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_count\(10));

-- Location: LCCOMB_X24_Y27_N24
\rra_servo_gripper|pwm_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_out~1_combout\ = ((!\rra_servo_gripper|pwm_count\(8)) # (!\rra_servo_gripper|pwm_count\(7))) # (!\rra_servo_gripper|pwm_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(9),
	datac => \rra_servo_gripper|pwm_count\(7),
	datad => \rra_servo_gripper|pwm_count\(8),
	combout => \rra_servo_gripper|pwm_out~1_combout\);

-- Location: LCCOMB_X24_Y27_N22
\rra_servo_gripper|pwm_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_out~0_combout\ = (((!\rra_servo_gripper|pwm_count\(4) & !\rra_servo_gripper|pwm_count\(3))) # (!\rra_servo_gripper|pwm_count\(6))) # (!\rra_servo_gripper|pwm_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(4),
	datab => \rra_servo_gripper|pwm_count\(3),
	datac => \rra_servo_gripper|pwm_count\(5),
	datad => \rra_servo_gripper|pwm_count\(6),
	combout => \rra_servo_gripper|pwm_out~0_combout\);

-- Location: LCCOMB_X22_Y27_N0
\rra_servo_gripper|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add6~0_combout\ = \rra_servo_gripper|current\(1) $ (VCC)
-- \rra_servo_gripper|Add6~1\ = CARRY(\rra_servo_gripper|current\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|current\(1),
	datad => VCC,
	combout => \rra_servo_gripper|Add6~0_combout\,
	cout => \rra_servo_gripper|Add6~1\);

-- Location: LCCOMB_X17_Y27_N10
\rra_servo_gripper|current[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|current[1]~1_combout\ = (\rra_servo_gripper|current\(8)) # ((\rra_servo_gripper|current\(5)) # ((\rra_servo_gripper|current\(6)) # (\rra_servo_gripper|current\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|current\(8),
	datab => \rra_servo_gripper|current\(5),
	datac => \rra_servo_gripper|current\(6),
	datad => \rra_servo_gripper|current\(7),
	combout => \rra_servo_gripper|current[1]~1_combout\);

-- Location: LCCOMB_X17_Y27_N4
\rra_servo_gripper|current[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|current[1]~0_combout\ = (\rra_servo_gripper|current\(3)) # ((\rra_servo_gripper|current\(4)) # ((\rra_servo_gripper|current\(1)) # (\rra_servo_gripper|current\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|current\(3),
	datab => \rra_servo_gripper|current\(4),
	datac => \rra_servo_gripper|current\(1),
	datad => \rra_servo_gripper|current\(2),
	combout => \rra_servo_gripper|current[1]~0_combout\);

-- Location: CLKCTRL_G16
\rra_servo_gripper|LessThan0~18clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_gripper|LessThan0~18clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_gripper|LessThan0~18clkctrl_outclk\);

-- Location: LCCOMB_X15_Y27_N28
\rra_servo_gripper|interval_count[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|interval_count[0]~0_combout\ = (!\rst~input_o\ & (\rra_servo_gripper|interval_count[0]~0_combout\ $ (\rra_servo_gripper|LessThan0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|interval_count[0]~0_combout\,
	datac => \rra_servo_gripper|LessThan0~18_combout\,
	datad => \rst~input_o\,
	combout => \rra_servo_gripper|interval_count[0]~0_combout\);

-- Location: LCCOMB_X15_Y27_N4
\rra_servo_gripper|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add4~0_combout\ = (\rra_servo_gripper|interval_count\(1) & (\rra_servo_gripper|interval_count[0]~0_combout\ $ (VCC))) # (!\rra_servo_gripper|interval_count\(1) & (\rra_servo_gripper|interval_count[0]~0_combout\ & VCC))
-- \rra_servo_gripper|Add4~1\ = CARRY((\rra_servo_gripper|interval_count\(1) & \rra_servo_gripper|interval_count[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|interval_count\(1),
	datab => \rra_servo_gripper|interval_count[0]~0_combout\,
	datad => VCC,
	combout => \rra_servo_gripper|Add4~0_combout\,
	cout => \rra_servo_gripper|Add4~1\);

-- Location: LCCOMB_X15_Y27_N26
\rra_servo_gripper|interval_count[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|interval_count\(1) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_gripper|LessThan0~18clkctrl_outclk\) & (\rra_servo_gripper|Add4~0_combout\)) # (!GLOBAL(\rra_servo_gripper|LessThan0~18clkctrl_outclk\) & 
-- ((\rra_servo_gripper|interval_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_gripper|Add4~0_combout\,
	datac => \rra_servo_gripper|interval_count\(1),
	datad => \rra_servo_gripper|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_gripper|interval_count\(1));

-- Location: LCCOMB_X15_Y27_N6
\rra_servo_gripper|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add4~2_combout\ = (\rra_servo_gripper|interval_count\(2) & (!\rra_servo_gripper|Add4~1\)) # (!\rra_servo_gripper|interval_count\(2) & ((\rra_servo_gripper|Add4~1\) # (GND)))
-- \rra_servo_gripper|Add4~3\ = CARRY((!\rra_servo_gripper|Add4~1\) # (!\rra_servo_gripper|interval_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|interval_count\(2),
	datad => VCC,
	cin => \rra_servo_gripper|Add4~1\,
	combout => \rra_servo_gripper|Add4~2_combout\,
	cout => \rra_servo_gripper|Add4~3\);

-- Location: LCCOMB_X15_Y27_N0
\rra_servo_gripper|interval_count[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|interval_count\(2) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_gripper|LessThan0~18clkctrl_outclk\) & (\rra_servo_gripper|Add4~2_combout\)) # (!GLOBAL(\rra_servo_gripper|LessThan0~18clkctrl_outclk\) & 
-- ((\rra_servo_gripper|interval_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|Add4~2_combout\,
	datab => \rra_servo_gripper|interval_count\(2),
	datac => \rst~input_o\,
	datad => \rra_servo_gripper|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_gripper|interval_count\(2));

-- Location: LCCOMB_X15_Y27_N8
\rra_servo_gripper|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add4~4_combout\ = (\rra_servo_gripper|interval_count\(3) & (\rra_servo_gripper|Add4~3\ $ (GND))) # (!\rra_servo_gripper|interval_count\(3) & (!\rra_servo_gripper|Add4~3\ & VCC))
-- \rra_servo_gripper|Add4~5\ = CARRY((\rra_servo_gripper|interval_count\(3) & !\rra_servo_gripper|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|interval_count\(3),
	datad => VCC,
	cin => \rra_servo_gripper|Add4~3\,
	combout => \rra_servo_gripper|Add4~4_combout\,
	cout => \rra_servo_gripper|Add4~5\);

-- Location: LCCOMB_X15_Y27_N22
\rra_servo_gripper|interval_count[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|interval_count\(3) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_gripper|LessThan0~18clkctrl_outclk\) & (\rra_servo_gripper|Add4~4_combout\)) # (!GLOBAL(\rra_servo_gripper|LessThan0~18clkctrl_outclk\) & 
-- ((\rra_servo_gripper|interval_count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|Add4~4_combout\,
	datab => \rst~input_o\,
	datac => \rra_servo_gripper|interval_count\(3),
	datad => \rra_servo_gripper|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_gripper|interval_count\(3));

-- Location: LCCOMB_X15_Y27_N10
\rra_servo_gripper|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add4~6_combout\ = (\rra_servo_gripper|interval_count\(4) & (!\rra_servo_gripper|Add4~5\)) # (!\rra_servo_gripper|interval_count\(4) & ((\rra_servo_gripper|Add4~5\) # (GND)))
-- \rra_servo_gripper|Add4~7\ = CARRY((!\rra_servo_gripper|Add4~5\) # (!\rra_servo_gripper|interval_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|interval_count\(4),
	datad => VCC,
	cin => \rra_servo_gripper|Add4~5\,
	combout => \rra_servo_gripper|Add4~6_combout\,
	cout => \rra_servo_gripper|Add4~7\);

-- Location: LCCOMB_X15_Y27_N24
\rra_servo_gripper|interval_count[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|interval_count\(4) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_gripper|LessThan0~18clkctrl_outclk\) & (\rra_servo_gripper|Add4~6_combout\)) # (!GLOBAL(\rra_servo_gripper|LessThan0~18clkctrl_outclk\) & 
-- ((\rra_servo_gripper|interval_count\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_gripper|Add4~6_combout\,
	datac => \rra_servo_gripper|interval_count\(4),
	datad => \rra_servo_gripper|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_gripper|interval_count\(4));

-- Location: LCCOMB_X15_Y27_N12
\rra_servo_gripper|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add4~8_combout\ = (\rra_servo_gripper|interval_count\(5) & (\rra_servo_gripper|Add4~7\ $ (GND))) # (!\rra_servo_gripper|interval_count\(5) & (!\rra_servo_gripper|Add4~7\ & VCC))
-- \rra_servo_gripper|Add4~9\ = CARRY((\rra_servo_gripper|interval_count\(5) & !\rra_servo_gripper|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|interval_count\(5),
	datad => VCC,
	cin => \rra_servo_gripper|Add4~7\,
	combout => \rra_servo_gripper|Add4~8_combout\,
	cout => \rra_servo_gripper|Add4~9\);

-- Location: LCCOMB_X15_Y27_N30
\rra_servo_gripper|interval_count[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|interval_count\(5) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_gripper|LessThan0~18clkctrl_outclk\) & (\rra_servo_gripper|Add4~8_combout\)) # (!GLOBAL(\rra_servo_gripper|LessThan0~18clkctrl_outclk\) & 
-- ((\rra_servo_gripper|interval_count\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_gripper|Add4~8_combout\,
	datac => \rra_servo_gripper|interval_count\(5),
	datad => \rra_servo_gripper|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_gripper|interval_count\(5));

-- Location: LCCOMB_X15_Y27_N14
\rra_servo_gripper|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add4~10_combout\ = (\rra_servo_gripper|interval_count\(6) & (!\rra_servo_gripper|Add4~9\)) # (!\rra_servo_gripper|interval_count\(6) & ((\rra_servo_gripper|Add4~9\) # (GND)))
-- \rra_servo_gripper|Add4~11\ = CARRY((!\rra_servo_gripper|Add4~9\) # (!\rra_servo_gripper|interval_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|interval_count\(6),
	datad => VCC,
	cin => \rra_servo_gripper|Add4~9\,
	combout => \rra_servo_gripper|Add4~10_combout\,
	cout => \rra_servo_gripper|Add4~11\);

-- Location: LCCOMB_X15_Y27_N2
\rra_servo_gripper|interval_count[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|interval_count\(6) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_gripper|LessThan0~18clkctrl_outclk\) & (\rra_servo_gripper|Add4~10_combout\)) # (!GLOBAL(\rra_servo_gripper|LessThan0~18clkctrl_outclk\) & 
-- ((\rra_servo_gripper|interval_count\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_gripper|Add4~10_combout\,
	datac => \rra_servo_gripper|interval_count\(6),
	datad => \rra_servo_gripper|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_gripper|interval_count\(6));

-- Location: LCCOMB_X15_Y27_N16
\rra_servo_gripper|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add4~12_combout\ = (\rra_servo_gripper|interval_count\(7) & (\rra_servo_gripper|Add4~11\ $ (GND))) # (!\rra_servo_gripper|interval_count\(7) & (!\rra_servo_gripper|Add4~11\ & VCC))
-- \rra_servo_gripper|Add4~13\ = CARRY((\rra_servo_gripper|interval_count\(7) & !\rra_servo_gripper|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|interval_count\(7),
	datad => VCC,
	cin => \rra_servo_gripper|Add4~11\,
	combout => \rra_servo_gripper|Add4~12_combout\,
	cout => \rra_servo_gripper|Add4~13\);

-- Location: LCCOMB_X16_Y27_N30
\rra_servo_gripper|interval_count[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|interval_count\(7) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_gripper|LessThan0~18clkctrl_outclk\) & ((\rra_servo_gripper|Add4~12_combout\))) # (!GLOBAL(\rra_servo_gripper|LessThan0~18clkctrl_outclk\) & 
-- (\rra_servo_gripper|interval_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|interval_count\(7),
	datab => \rst~input_o\,
	datac => \rra_servo_gripper|Add4~12_combout\,
	datad => \rra_servo_gripper|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_gripper|interval_count\(7));

-- Location: LCCOMB_X15_Y27_N18
\rra_servo_gripper|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add4~14_combout\ = (\rra_servo_gripper|interval_count\(8) & (!\rra_servo_gripper|Add4~13\)) # (!\rra_servo_gripper|interval_count\(8) & ((\rra_servo_gripper|Add4~13\) # (GND)))
-- \rra_servo_gripper|Add4~15\ = CARRY((!\rra_servo_gripper|Add4~13\) # (!\rra_servo_gripper|interval_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|interval_count\(8),
	datad => VCC,
	cin => \rra_servo_gripper|Add4~13\,
	combout => \rra_servo_gripper|Add4~14_combout\,
	cout => \rra_servo_gripper|Add4~15\);

-- Location: LCCOMB_X16_Y27_N26
\rra_servo_gripper|interval_count[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|interval_count\(8) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_gripper|LessThan0~18clkctrl_outclk\) & ((\rra_servo_gripper|Add4~14_combout\))) # (!GLOBAL(\rra_servo_gripper|LessThan0~18clkctrl_outclk\) & 
-- (\rra_servo_gripper|interval_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|interval_count\(8),
	datab => \rst~input_o\,
	datac => \rra_servo_gripper|LessThan0~18clkctrl_outclk\,
	datad => \rra_servo_gripper|Add4~14_combout\,
	combout => \rra_servo_gripper|interval_count\(8));

-- Location: LCCOMB_X15_Y27_N20
\rra_servo_gripper|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add4~16_combout\ = \rra_servo_gripper|interval_count\(9) $ (!\rra_servo_gripper|Add4~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|interval_count\(9),
	cin => \rra_servo_gripper|Add4~15\,
	combout => \rra_servo_gripper|Add4~16_combout\);

-- Location: LCCOMB_X16_Y27_N24
\rra_servo_gripper|interval_count[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|interval_count\(9) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_gripper|LessThan0~18clkctrl_outclk\) & ((\rra_servo_gripper|Add4~16_combout\))) # (!GLOBAL(\rra_servo_gripper|LessThan0~18clkctrl_outclk\) & 
-- (\rra_servo_gripper|interval_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|interval_count\(9),
	datab => \rst~input_o\,
	datac => \rra_servo_gripper|LessThan0~18clkctrl_outclk\,
	datad => \rra_servo_gripper|Add4~16_combout\,
	combout => \rra_servo_gripper|interval_count\(9));

-- Location: LCCOMB_X16_Y27_N2
\rra_servo_gripper|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan0~1_cout\ = CARRY(\rra_servo_gripper|interval_count[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|interval_count[0]~0_combout\,
	datad => VCC,
	cout => \rra_servo_gripper|LessThan0~1_cout\);

-- Location: LCCOMB_X16_Y27_N4
\rra_servo_gripper|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan0~3_cout\ = CARRY((\rra_servo_gripper|interval_count\(1) & (\rra_servo_lower|interval[1]~0_combout\ & !\rra_servo_gripper|LessThan0~1_cout\)) # (!\rra_servo_gripper|interval_count\(1) & ((\rra_servo_lower|interval[1]~0_combout\) 
-- # (!\rra_servo_gripper|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|interval_count\(1),
	datab => \rra_servo_lower|interval[1]~0_combout\,
	datad => VCC,
	cin => \rra_servo_gripper|LessThan0~1_cout\,
	cout => \rra_servo_gripper|LessThan0~3_cout\);

-- Location: LCCOMB_X16_Y27_N6
\rra_servo_gripper|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan0~5_cout\ = CARRY((\rra_servo_gripper|interval_count\(2) & ((!\rra_servo_gripper|LessThan0~3_cout\) # (!\rra_servo_lower|Add2~23_combout\))) # (!\rra_servo_gripper|interval_count\(2) & (!\rra_servo_lower|Add2~23_combout\ & 
-- !\rra_servo_gripper|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|interval_count\(2),
	datab => \rra_servo_lower|Add2~23_combout\,
	datad => VCC,
	cin => \rra_servo_gripper|LessThan0~3_cout\,
	cout => \rra_servo_gripper|LessThan0~5_cout\);

-- Location: LCCOMB_X16_Y27_N8
\rra_servo_gripper|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan0~7_cout\ = CARRY((\rra_servo_lower|Add2~22_combout\ & ((!\rra_servo_gripper|LessThan0~5_cout\) # (!\rra_servo_gripper|interval_count\(3)))) # (!\rra_servo_lower|Add2~22_combout\ & (!\rra_servo_gripper|interval_count\(3) & 
-- !\rra_servo_gripper|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~22_combout\,
	datab => \rra_servo_gripper|interval_count\(3),
	datad => VCC,
	cin => \rra_servo_gripper|LessThan0~5_cout\,
	cout => \rra_servo_gripper|LessThan0~7_cout\);

-- Location: LCCOMB_X16_Y27_N10
\rra_servo_gripper|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan0~9_cout\ = CARRY((\rra_servo_lower|Add2~21_combout\ & (\rra_servo_gripper|interval_count\(4) & !\rra_servo_gripper|LessThan0~7_cout\)) # (!\rra_servo_lower|Add2~21_combout\ & ((\rra_servo_gripper|interval_count\(4)) # 
-- (!\rra_servo_gripper|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~21_combout\,
	datab => \rra_servo_gripper|interval_count\(4),
	datad => VCC,
	cin => \rra_servo_gripper|LessThan0~7_cout\,
	cout => \rra_servo_gripper|LessThan0~9_cout\);

-- Location: LCCOMB_X16_Y27_N12
\rra_servo_gripper|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan0~11_cout\ = CARRY((\rra_servo_gripper|interval_count\(5) & (\rra_servo_lower|Add2~20_combout\ & !\rra_servo_gripper|LessThan0~9_cout\)) # (!\rra_servo_gripper|interval_count\(5) & ((\rra_servo_lower|Add2~20_combout\) # 
-- (!\rra_servo_gripper|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|interval_count\(5),
	datab => \rra_servo_lower|Add2~20_combout\,
	datad => VCC,
	cin => \rra_servo_gripper|LessThan0~9_cout\,
	cout => \rra_servo_gripper|LessThan0~11_cout\);

-- Location: LCCOMB_X16_Y27_N14
\rra_servo_gripper|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan0~13_cout\ = CARRY((\rra_servo_gripper|interval_count\(6) & ((!\rra_servo_gripper|LessThan0~11_cout\) # (!\rra_servo_lower|Add2~19_combout\))) # (!\rra_servo_gripper|interval_count\(6) & (!\rra_servo_lower|Add2~19_combout\ & 
-- !\rra_servo_gripper|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|interval_count\(6),
	datab => \rra_servo_lower|Add2~19_combout\,
	datad => VCC,
	cin => \rra_servo_gripper|LessThan0~11_cout\,
	cout => \rra_servo_gripper|LessThan0~13_cout\);

-- Location: LCCOMB_X16_Y27_N16
\rra_servo_gripper|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan0~15_cout\ = CARRY((\rra_servo_gripper|interval_count\(7) & (\rra_servo_lower|Add2~18_combout\ & !\rra_servo_gripper|LessThan0~13_cout\)) # (!\rra_servo_gripper|interval_count\(7) & ((\rra_servo_lower|Add2~18_combout\) # 
-- (!\rra_servo_gripper|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|interval_count\(7),
	datab => \rra_servo_lower|Add2~18_combout\,
	datad => VCC,
	cin => \rra_servo_gripper|LessThan0~13_cout\,
	cout => \rra_servo_gripper|LessThan0~15_cout\);

-- Location: LCCOMB_X16_Y27_N18
\rra_servo_gripper|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan0~17_cout\ = CARRY((\rra_servo_lower|Add2~17_combout\ & (\rra_servo_gripper|interval_count\(8) & !\rra_servo_gripper|LessThan0~15_cout\)) # (!\rra_servo_lower|Add2~17_combout\ & ((\rra_servo_gripper|interval_count\(8)) # 
-- (!\rra_servo_gripper|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~17_combout\,
	datab => \rra_servo_gripper|interval_count\(8),
	datad => VCC,
	cin => \rra_servo_gripper|LessThan0~15_cout\,
	cout => \rra_servo_gripper|LessThan0~17_cout\);

-- Location: LCCOMB_X16_Y27_N20
\rra_servo_gripper|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan0~18_combout\ = (\rra_servo_gripper|interval_count\(9) & (!\rra_servo_gripper|LessThan0~17_cout\ & \rra_servo_lower|Add2~16_combout\)) # (!\rra_servo_gripper|interval_count\(9) & ((\rra_servo_lower|Add2~16_combout\) # 
-- (!\rra_servo_gripper|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|interval_count\(9),
	datad => \rra_servo_lower|Add2~16_combout\,
	cin => \rra_servo_gripper|LessThan0~17_cout\,
	combout => \rra_servo_gripper|LessThan0~18_combout\);

-- Location: LCCOMB_X16_Y27_N28
\rra_servo_gripper|current[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|current[1]~2_combout\ = (!\rra_servo_gripper|LessThan0~18_combout\ & ((\rra_servo_gripper|current[1]~1_combout\) # (\rra_servo_gripper|current[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|current[1]~1_combout\,
	datab => \rra_servo_gripper|current[1]~0_combout\,
	datad => \rra_servo_gripper|LessThan0~18_combout\,
	combout => \rra_servo_gripper|current[1]~2_combout\);

-- Location: CLKCTRL_G17
\rra_servo_gripper|current[1]~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_gripper|current[1]~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_gripper|current[1]~2clkctrl_outclk\);

-- Location: LCCOMB_X22_Y27_N30
\rra_servo_gripper|current[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|current\(1) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_gripper|current[1]~2clkctrl_outclk\) & (\rra_servo_gripper|Add6~0_combout\)) # (!GLOBAL(\rra_servo_gripper|current[1]~2clkctrl_outclk\) & ((\rra_servo_gripper|current\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_gripper|Add6~0_combout\,
	datac => \rra_servo_gripper|current\(1),
	datad => \rra_servo_gripper|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_gripper|current\(1));

-- Location: LCCOMB_X22_Y27_N2
\rra_servo_gripper|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add6~2_combout\ = (\rra_servo_gripper|current\(2) & (\rra_servo_gripper|Add6~1\ & VCC)) # (!\rra_servo_gripper|current\(2) & (!\rra_servo_gripper|Add6~1\))
-- \rra_servo_gripper|Add6~3\ = CARRY((!\rra_servo_gripper|current\(2) & !\rra_servo_gripper|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|current\(2),
	datad => VCC,
	cin => \rra_servo_gripper|Add6~1\,
	combout => \rra_servo_gripper|Add6~2_combout\,
	cout => \rra_servo_gripper|Add6~3\);

-- Location: LCCOMB_X22_Y27_N16
\rra_servo_gripper|current[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|current\(2) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_gripper|current[1]~2clkctrl_outclk\) & (\rra_servo_gripper|Add6~2_combout\)) # (!GLOBAL(\rra_servo_gripper|current[1]~2clkctrl_outclk\) & ((\rra_servo_gripper|current\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|Add6~2_combout\,
	datab => \rst~input_o\,
	datac => \rra_servo_gripper|current\(2),
	datad => \rra_servo_gripper|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_gripper|current\(2));

-- Location: LCCOMB_X22_Y27_N4
\rra_servo_gripper|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add6~4_combout\ = (\rra_servo_gripper|current\(3) & (\rra_servo_gripper|Add6~3\ $ (GND))) # (!\rra_servo_gripper|current\(3) & (!\rra_servo_gripper|Add6~3\ & VCC))
-- \rra_servo_gripper|Add6~5\ = CARRY((\rra_servo_gripper|current\(3) & !\rra_servo_gripper|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|current\(3),
	datad => VCC,
	cin => \rra_servo_gripper|Add6~3\,
	combout => \rra_servo_gripper|Add6~4_combout\,
	cout => \rra_servo_gripper|Add6~5\);

-- Location: LCCOMB_X22_Y27_N18
\rra_servo_gripper|current[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|current\(3) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_gripper|current[1]~2clkctrl_outclk\) & (\rra_servo_gripper|Add6~4_combout\)) # (!GLOBAL(\rra_servo_gripper|current[1]~2clkctrl_outclk\) & ((\rra_servo_gripper|current\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|Add6~4_combout\,
	datab => \rst~input_o\,
	datac => \rra_servo_gripper|current\(3),
	datad => \rra_servo_gripper|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_gripper|current\(3));

-- Location: LCCOMB_X22_Y27_N6
\rra_servo_gripper|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add6~6_combout\ = (\rra_servo_gripper|current\(4) & (\rra_servo_gripper|Add6~5\ & VCC)) # (!\rra_servo_gripper|current\(4) & (!\rra_servo_gripper|Add6~5\))
-- \rra_servo_gripper|Add6~7\ = CARRY((!\rra_servo_gripper|current\(4) & !\rra_servo_gripper|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|current\(4),
	datad => VCC,
	cin => \rra_servo_gripper|Add6~5\,
	combout => \rra_servo_gripper|Add6~6_combout\,
	cout => \rra_servo_gripper|Add6~7\);

-- Location: LCCOMB_X22_Y27_N28
\rra_servo_gripper|current[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|current\(4) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_gripper|current[1]~2clkctrl_outclk\) & (\rra_servo_gripper|Add6~6_combout\)) # (!GLOBAL(\rra_servo_gripper|current[1]~2clkctrl_outclk\) & ((\rra_servo_gripper|current\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_gripper|Add6~6_combout\,
	datac => \rra_servo_gripper|current\(4),
	datad => \rra_servo_gripper|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_gripper|current\(4));

-- Location: LCCOMB_X22_Y27_N8
\rra_servo_gripper|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add6~8_combout\ = (\rra_servo_gripper|current\(5) & ((GND) # (!\rra_servo_gripper|Add6~7\))) # (!\rra_servo_gripper|current\(5) & (\rra_servo_gripper|Add6~7\ $ (GND)))
-- \rra_servo_gripper|Add6~9\ = CARRY((\rra_servo_gripper|current\(5)) # (!\rra_servo_gripper|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|current\(5),
	datad => VCC,
	cin => \rra_servo_gripper|Add6~7\,
	combout => \rra_servo_gripper|Add6~8_combout\,
	cout => \rra_servo_gripper|Add6~9\);

-- Location: LCCOMB_X22_Y27_N22
\rra_servo_gripper|current[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|current\(5) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_gripper|current[1]~2clkctrl_outclk\) & (\rra_servo_gripper|Add6~8_combout\)) # (!GLOBAL(\rra_servo_gripper|current[1]~2clkctrl_outclk\) & ((\rra_servo_gripper|current\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_gripper|Add6~8_combout\,
	datac => \rra_servo_gripper|current\(5),
	datad => \rra_servo_gripper|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_gripper|current\(5));

-- Location: LCCOMB_X22_Y27_N10
\rra_servo_gripper|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add6~10_combout\ = (\rra_servo_gripper|current\(6) & (\rra_servo_gripper|Add6~9\ & VCC)) # (!\rra_servo_gripper|current\(6) & (!\rra_servo_gripper|Add6~9\))
-- \rra_servo_gripper|Add6~11\ = CARRY((!\rra_servo_gripper|current\(6) & !\rra_servo_gripper|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|current\(6),
	datad => VCC,
	cin => \rra_servo_gripper|Add6~9\,
	combout => \rra_servo_gripper|Add6~10_combout\,
	cout => \rra_servo_gripper|Add6~11\);

-- Location: LCCOMB_X22_Y27_N20
\rra_servo_gripper|current[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|current\(6) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_gripper|current[1]~2clkctrl_outclk\) & (\rra_servo_gripper|Add6~10_combout\)) # (!GLOBAL(\rra_servo_gripper|current[1]~2clkctrl_outclk\) & ((\rra_servo_gripper|current\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|Add6~10_combout\,
	datab => \rra_servo_gripper|current\(6),
	datac => \rst~input_o\,
	datad => \rra_servo_gripper|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_gripper|current\(6));

-- Location: LCCOMB_X22_Y27_N12
\rra_servo_gripper|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add6~12_combout\ = (\rra_servo_gripper|current\(7) & ((GND) # (!\rra_servo_gripper|Add6~11\))) # (!\rra_servo_gripper|current\(7) & (\rra_servo_gripper|Add6~11\ $ (GND)))
-- \rra_servo_gripper|Add6~13\ = CARRY((\rra_servo_gripper|current\(7)) # (!\rra_servo_gripper|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|current\(7),
	datad => VCC,
	cin => \rra_servo_gripper|Add6~11\,
	combout => \rra_servo_gripper|Add6~12_combout\,
	cout => \rra_servo_gripper|Add6~13\);

-- Location: LCCOMB_X22_Y27_N26
\rra_servo_gripper|current[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|current\(7) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_gripper|current[1]~2clkctrl_outclk\) & (\rra_servo_gripper|Add6~12_combout\)) # (!GLOBAL(\rra_servo_gripper|current[1]~2clkctrl_outclk\) & ((\rra_servo_gripper|current\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|Add6~12_combout\,
	datab => \rst~input_o\,
	datac => \rra_servo_gripper|current\(7),
	datad => \rra_servo_gripper|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_gripper|current\(7));

-- Location: LCCOMB_X22_Y27_N14
\rra_servo_gripper|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add6~14_combout\ = \rra_servo_gripper|Add6~13\ $ (!\rra_servo_gripper|current\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_gripper|current\(8),
	cin => \rra_servo_gripper|Add6~13\,
	combout => \rra_servo_gripper|Add6~14_combout\);

-- Location: LCCOMB_X22_Y27_N24
\rra_servo_gripper|current[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|current\(8) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_gripper|current[1]~2clkctrl_outclk\) & ((\rra_servo_gripper|Add6~14_combout\))) # (!GLOBAL(\rra_servo_gripper|current[1]~2clkctrl_outclk\) & (\rra_servo_gripper|current\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_gripper|current\(8),
	datac => \rra_servo_gripper|Add6~14_combout\,
	datad => \rra_servo_gripper|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_gripper|current\(8));

-- Location: LCCOMB_X23_Y27_N0
\rra_servo_gripper|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add8~0_combout\ = (\rra_servo_gripper|current\(2) & (\rra_servo_gripper|current\(3) $ (VCC))) # (!\rra_servo_gripper|current\(2) & (\rra_servo_gripper|current\(3) & VCC))
-- \rra_servo_gripper|Add8~1\ = CARRY((\rra_servo_gripper|current\(2) & \rra_servo_gripper|current\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|current\(2),
	datab => \rra_servo_gripper|current\(3),
	datad => VCC,
	combout => \rra_servo_gripper|Add8~0_combout\,
	cout => \rra_servo_gripper|Add8~1\);

-- Location: LCCOMB_X23_Y27_N2
\rra_servo_gripper|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add8~2_combout\ = (\rra_servo_gripper|current\(4) & (\rra_servo_gripper|Add8~1\ & VCC)) # (!\rra_servo_gripper|current\(4) & (!\rra_servo_gripper|Add8~1\))
-- \rra_servo_gripper|Add8~3\ = CARRY((!\rra_servo_gripper|current\(4) & !\rra_servo_gripper|Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|current\(4),
	datad => VCC,
	cin => \rra_servo_gripper|Add8~1\,
	combout => \rra_servo_gripper|Add8~2_combout\,
	cout => \rra_servo_gripper|Add8~3\);

-- Location: LCCOMB_X23_Y27_N4
\rra_servo_gripper|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add8~4_combout\ = (\rra_servo_gripper|current\(5) & ((GND) # (!\rra_servo_gripper|Add8~3\))) # (!\rra_servo_gripper|current\(5) & (\rra_servo_gripper|Add8~3\ $ (GND)))
-- \rra_servo_gripper|Add8~5\ = CARRY((\rra_servo_gripper|current\(5)) # (!\rra_servo_gripper|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|current\(5),
	datad => VCC,
	cin => \rra_servo_gripper|Add8~3\,
	combout => \rra_servo_gripper|Add8~4_combout\,
	cout => \rra_servo_gripper|Add8~5\);

-- Location: LCCOMB_X23_Y27_N6
\rra_servo_gripper|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add8~6_combout\ = (\rra_servo_gripper|current\(6) & (\rra_servo_gripper|Add8~5\ & VCC)) # (!\rra_servo_gripper|current\(6) & (!\rra_servo_gripper|Add8~5\))
-- \rra_servo_gripper|Add8~7\ = CARRY((!\rra_servo_gripper|current\(6) & !\rra_servo_gripper|Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|current\(6),
	datad => VCC,
	cin => \rra_servo_gripper|Add8~5\,
	combout => \rra_servo_gripper|Add8~6_combout\,
	cout => \rra_servo_gripper|Add8~7\);

-- Location: LCCOMB_X23_Y27_N8
\rra_servo_gripper|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add8~8_combout\ = (\rra_servo_gripper|current\(7) & ((GND) # (!\rra_servo_gripper|Add8~7\))) # (!\rra_servo_gripper|current\(7) & (\rra_servo_gripper|Add8~7\ $ (GND)))
-- \rra_servo_gripper|Add8~9\ = CARRY((\rra_servo_gripper|current\(7)) # (!\rra_servo_gripper|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|current\(7),
	datad => VCC,
	cin => \rra_servo_gripper|Add8~7\,
	combout => \rra_servo_gripper|Add8~8_combout\,
	cout => \rra_servo_gripper|Add8~9\);

-- Location: LCCOMB_X23_Y27_N10
\rra_servo_gripper|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add8~10_combout\ = (\rra_servo_gripper|current\(8) & (\rra_servo_gripper|Add8~9\ & VCC)) # (!\rra_servo_gripper|current\(8) & (!\rra_servo_gripper|Add8~9\))
-- \rra_servo_gripper|Add8~11\ = CARRY((!\rra_servo_gripper|current\(8) & !\rra_servo_gripper|Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|current\(8),
	datad => VCC,
	cin => \rra_servo_gripper|Add8~9\,
	combout => \rra_servo_gripper|Add8~10_combout\,
	cout => \rra_servo_gripper|Add8~11\);

-- Location: LCCOMB_X23_Y27_N12
\rra_servo_gripper|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|Add8~12_combout\ = !\rra_servo_gripper|Add8~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rra_servo_gripper|Add8~11\,
	combout => \rra_servo_gripper|Add8~12_combout\);

-- Location: LCCOMB_X23_Y27_N14
\rra_servo_gripper|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan5~1_cout\ = CARRY((!\rra_servo_gripper|pwm_count\(2) & \rra_servo_gripper|current\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(2),
	datab => \rra_servo_gripper|current\(1),
	datad => VCC,
	cout => \rra_servo_gripper|LessThan5~1_cout\);

-- Location: LCCOMB_X23_Y27_N16
\rra_servo_gripper|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan5~3_cout\ = CARRY((\rra_servo_gripper|pwm_count\(3) & ((\rra_servo_gripper|current\(2)) # (!\rra_servo_gripper|LessThan5~1_cout\))) # (!\rra_servo_gripper|pwm_count\(3) & (\rra_servo_gripper|current\(2) & 
-- !\rra_servo_gripper|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(3),
	datab => \rra_servo_gripper|current\(2),
	datad => VCC,
	cin => \rra_servo_gripper|LessThan5~1_cout\,
	cout => \rra_servo_gripper|LessThan5~3_cout\);

-- Location: LCCOMB_X23_Y27_N18
\rra_servo_gripper|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan5~5_cout\ = CARRY((\rra_servo_gripper|Add8~0_combout\ & ((!\rra_servo_gripper|LessThan5~3_cout\) # (!\rra_servo_gripper|pwm_count\(4)))) # (!\rra_servo_gripper|Add8~0_combout\ & (!\rra_servo_gripper|pwm_count\(4) & 
-- !\rra_servo_gripper|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|Add8~0_combout\,
	datab => \rra_servo_gripper|pwm_count\(4),
	datad => VCC,
	cin => \rra_servo_gripper|LessThan5~3_cout\,
	cout => \rra_servo_gripper|LessThan5~5_cout\);

-- Location: LCCOMB_X23_Y27_N20
\rra_servo_gripper|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan5~7_cout\ = CARRY((\rra_servo_gripper|pwm_count\(5) & ((!\rra_servo_gripper|LessThan5~5_cout\) # (!\rra_servo_gripper|Add8~2_combout\))) # (!\rra_servo_gripper|pwm_count\(5) & (!\rra_servo_gripper|Add8~2_combout\ & 
-- !\rra_servo_gripper|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(5),
	datab => \rra_servo_gripper|Add8~2_combout\,
	datad => VCC,
	cin => \rra_servo_gripper|LessThan5~5_cout\,
	cout => \rra_servo_gripper|LessThan5~7_cout\);

-- Location: LCCOMB_X23_Y27_N22
\rra_servo_gripper|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan5~9_cout\ = CARRY((\rra_servo_gripper|pwm_count\(6) & (\rra_servo_gripper|Add8~4_combout\ & !\rra_servo_gripper|LessThan5~7_cout\)) # (!\rra_servo_gripper|pwm_count\(6) & ((\rra_servo_gripper|Add8~4_combout\) # 
-- (!\rra_servo_gripper|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(6),
	datab => \rra_servo_gripper|Add8~4_combout\,
	datad => VCC,
	cin => \rra_servo_gripper|LessThan5~7_cout\,
	cout => \rra_servo_gripper|LessThan5~9_cout\);

-- Location: LCCOMB_X23_Y27_N24
\rra_servo_gripper|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan5~11_cout\ = CARRY((\rra_servo_gripper|Add8~6_combout\ & (\rra_servo_gripper|pwm_count\(7) & !\rra_servo_gripper|LessThan5~9_cout\)) # (!\rra_servo_gripper|Add8~6_combout\ & ((\rra_servo_gripper|pwm_count\(7)) # 
-- (!\rra_servo_gripper|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|Add8~6_combout\,
	datab => \rra_servo_gripper|pwm_count\(7),
	datad => VCC,
	cin => \rra_servo_gripper|LessThan5~9_cout\,
	cout => \rra_servo_gripper|LessThan5~11_cout\);

-- Location: LCCOMB_X23_Y27_N26
\rra_servo_gripper|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan5~13_cout\ = CARRY((\rra_servo_gripper|pwm_count\(8) & (\rra_servo_gripper|Add8~8_combout\ & !\rra_servo_gripper|LessThan5~11_cout\)) # (!\rra_servo_gripper|pwm_count\(8) & ((\rra_servo_gripper|Add8~8_combout\) # 
-- (!\rra_servo_gripper|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(8),
	datab => \rra_servo_gripper|Add8~8_combout\,
	datad => VCC,
	cin => \rra_servo_gripper|LessThan5~11_cout\,
	cout => \rra_servo_gripper|LessThan5~13_cout\);

-- Location: LCCOMB_X23_Y27_N28
\rra_servo_gripper|LessThan5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan5~15_cout\ = CARRY((\rra_servo_gripper|Add8~10_combout\ & (\rra_servo_gripper|pwm_count\(9) & !\rra_servo_gripper|LessThan5~13_cout\)) # (!\rra_servo_gripper|Add8~10_combout\ & ((\rra_servo_gripper|pwm_count\(9)) # 
-- (!\rra_servo_gripper|LessThan5~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|Add8~10_combout\,
	datab => \rra_servo_gripper|pwm_count\(9),
	datad => VCC,
	cin => \rra_servo_gripper|LessThan5~13_cout\,
	cout => \rra_servo_gripper|LessThan5~15_cout\);

-- Location: LCCOMB_X23_Y27_N30
\rra_servo_gripper|LessThan5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|LessThan5~16_combout\ = (\rra_servo_gripper|pwm_count\(10) & (!\rra_servo_gripper|LessThan5~15_cout\ & \rra_servo_gripper|Add8~12_combout\)) # (!\rra_servo_gripper|pwm_count\(10) & ((\rra_servo_gripper|Add8~12_combout\) # 
-- (!\rra_servo_gripper|LessThan5~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(10),
	datad => \rra_servo_gripper|Add8~12_combout\,
	cin => \rra_servo_gripper|LessThan5~15_cout\,
	combout => \rra_servo_gripper|LessThan5~16_combout\);

-- Location: LCCOMB_X24_Y27_N26
\rra_servo_gripper|pwm_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_out~2_combout\ = (\rra_servo_gripper|LessThan5~16_combout\) # ((!\rra_servo_gripper|pwm_count\(10) & ((\rra_servo_gripper|pwm_out~1_combout\) # (\rra_servo_gripper|pwm_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_gripper|pwm_count\(10),
	datab => \rra_servo_gripper|pwm_out~1_combout\,
	datac => \rra_servo_gripper|pwm_out~0_combout\,
	datad => \rra_servo_gripper|LessThan5~16_combout\,
	combout => \rra_servo_gripper|pwm_out~2_combout\);

-- Location: LCCOMB_X24_Y27_N28
\rra_servo_gripper|pwm_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|pwm_out~3_combout\ = \rra_servo_gripper|pwm_out~q\ $ (!\rra_servo_gripper|pwm_out~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_gripper|pwm_out~q\,
	datad => \rra_servo_gripper|pwm_out~2_combout\,
	combout => \rra_servo_gripper|pwm_out~3_combout\);

-- Location: FF_X24_Y27_N29
\rra_servo_gripper|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_gripper|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_gripper|pwm_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|pwm_out~q\);

-- Location: LCCOMB_X24_Y27_N30
\rra_servo_gripper|o_pwm_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_gripper|o_pwm_out~feeder_combout\ = \rra_servo_gripper|pwm_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_gripper|pwm_out~q\,
	combout => \rra_servo_gripper|o_pwm_out~feeder_combout\);

-- Location: FF_X24_Y27_N31
\rra_servo_gripper|o_pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_gripper|o_pwm_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_gripper|o_pwm_out~q\);

-- Location: LCCOMB_X2_Y14_N26
\rra_servo_base|clk_1mhz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|clk_1mhz~0_combout\ = !\rra_servo_lower|LessThan3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_lower|LessThan3~2_combout\,
	combout => \rra_servo_base|clk_1mhz~0_combout\);

-- Location: FF_X2_Y14_N27
\rra_servo_base|clk_1mhz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|clk_1mhz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|clk_1mhz~q\);

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X21_Y27_N8
\rra_servo_base|pwm_count[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[0]~11_combout\ = \rra_servo_base|pwm_count\(0) $ (VCC)
-- \rra_servo_base|pwm_count[0]~12\ = CARRY(\rra_servo_base|pwm_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|pwm_count\(0),
	datad => VCC,
	combout => \rra_servo_base|pwm_count[0]~11_combout\,
	cout => \rra_servo_base|pwm_count[0]~12\);

-- Location: FF_X21_Y27_N9
\rra_servo_base|pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[0]~11_combout\,
	sclr => \rra_servo_base|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(0));

-- Location: LCCOMB_X21_Y27_N10
\rra_servo_base|pwm_count[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[1]~13_combout\ = (\rra_servo_base|pwm_count\(1) & (!\rra_servo_base|pwm_count[0]~12\)) # (!\rra_servo_base|pwm_count\(1) & ((\rra_servo_base|pwm_count[0]~12\) # (GND)))
-- \rra_servo_base|pwm_count[1]~14\ = CARRY((!\rra_servo_base|pwm_count[0]~12\) # (!\rra_servo_base|pwm_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(1),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[0]~12\,
	combout => \rra_servo_base|pwm_count[1]~13_combout\,
	cout => \rra_servo_base|pwm_count[1]~14\);

-- Location: FF_X21_Y27_N11
\rra_servo_base|pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[1]~13_combout\,
	sclr => \rra_servo_base|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(1));

-- Location: LCCOMB_X21_Y27_N12
\rra_servo_base|pwm_count[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[2]~15_combout\ = (\rra_servo_base|pwm_count\(2) & (\rra_servo_base|pwm_count[1]~14\ $ (GND))) # (!\rra_servo_base|pwm_count\(2) & (!\rra_servo_base|pwm_count[1]~14\ & VCC))
-- \rra_servo_base|pwm_count[2]~16\ = CARRY((\rra_servo_base|pwm_count\(2) & !\rra_servo_base|pwm_count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(2),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[1]~14\,
	combout => \rra_servo_base|pwm_count[2]~15_combout\,
	cout => \rra_servo_base|pwm_count[2]~16\);

-- Location: FF_X21_Y27_N13
\rra_servo_base|pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[2]~15_combout\,
	sclr => \rra_servo_base|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(2));

-- Location: LCCOMB_X21_Y27_N14
\rra_servo_base|pwm_count[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[3]~17_combout\ = (\rra_servo_base|pwm_count\(3) & (!\rra_servo_base|pwm_count[2]~16\)) # (!\rra_servo_base|pwm_count\(3) & ((\rra_servo_base|pwm_count[2]~16\) # (GND)))
-- \rra_servo_base|pwm_count[3]~18\ = CARRY((!\rra_servo_base|pwm_count[2]~16\) # (!\rra_servo_base|pwm_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|pwm_count\(3),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[2]~16\,
	combout => \rra_servo_base|pwm_count[3]~17_combout\,
	cout => \rra_servo_base|pwm_count[3]~18\);

-- Location: FF_X21_Y27_N15
\rra_servo_base|pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[3]~17_combout\,
	sclr => \rra_servo_base|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(3));

-- Location: LCCOMB_X21_Y27_N16
\rra_servo_base|pwm_count[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[4]~19_combout\ = (\rra_servo_base|pwm_count\(4) & (\rra_servo_base|pwm_count[3]~18\ $ (GND))) # (!\rra_servo_base|pwm_count\(4) & (!\rra_servo_base|pwm_count[3]~18\ & VCC))
-- \rra_servo_base|pwm_count[4]~20\ = CARRY((\rra_servo_base|pwm_count\(4) & !\rra_servo_base|pwm_count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|pwm_count\(4),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[3]~18\,
	combout => \rra_servo_base|pwm_count[4]~19_combout\,
	cout => \rra_servo_base|pwm_count[4]~20\);

-- Location: FF_X21_Y27_N17
\rra_servo_base|pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[4]~19_combout\,
	sclr => \rra_servo_base|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(4));

-- Location: LCCOMB_X21_Y27_N18
\rra_servo_base|pwm_count[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[5]~21_combout\ = (\rra_servo_base|pwm_count\(5) & (!\rra_servo_base|pwm_count[4]~20\)) # (!\rra_servo_base|pwm_count\(5) & ((\rra_servo_base|pwm_count[4]~20\) # (GND)))
-- \rra_servo_base|pwm_count[5]~22\ = CARRY((!\rra_servo_base|pwm_count[4]~20\) # (!\rra_servo_base|pwm_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|pwm_count\(5),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[4]~20\,
	combout => \rra_servo_base|pwm_count[5]~21_combout\,
	cout => \rra_servo_base|pwm_count[5]~22\);

-- Location: FF_X21_Y27_N19
\rra_servo_base|pwm_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[5]~21_combout\,
	sclr => \rra_servo_base|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(5));

-- Location: LCCOMB_X21_Y27_N20
\rra_servo_base|pwm_count[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[6]~23_combout\ = (\rra_servo_base|pwm_count\(6) & (\rra_servo_base|pwm_count[5]~22\ $ (GND))) # (!\rra_servo_base|pwm_count\(6) & (!\rra_servo_base|pwm_count[5]~22\ & VCC))
-- \rra_servo_base|pwm_count[6]~24\ = CARRY((\rra_servo_base|pwm_count\(6) & !\rra_servo_base|pwm_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|pwm_count\(6),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[5]~22\,
	combout => \rra_servo_base|pwm_count[6]~23_combout\,
	cout => \rra_servo_base|pwm_count[6]~24\);

-- Location: FF_X21_Y27_N21
\rra_servo_base|pwm_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[6]~23_combout\,
	sclr => \rra_servo_base|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(6));

-- Location: LCCOMB_X21_Y27_N22
\rra_servo_base|pwm_count[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[7]~25_combout\ = (\rra_servo_base|pwm_count\(7) & (!\rra_servo_base|pwm_count[6]~24\)) # (!\rra_servo_base|pwm_count\(7) & ((\rra_servo_base|pwm_count[6]~24\) # (GND)))
-- \rra_servo_base|pwm_count[7]~26\ = CARRY((!\rra_servo_base|pwm_count[6]~24\) # (!\rra_servo_base|pwm_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(7),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[6]~24\,
	combout => \rra_servo_base|pwm_count[7]~25_combout\,
	cout => \rra_servo_base|pwm_count[7]~26\);

-- Location: FF_X21_Y27_N23
\rra_servo_base|pwm_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[7]~25_combout\,
	sclr => \rra_servo_base|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(7));

-- Location: LCCOMB_X21_Y27_N24
\rra_servo_base|pwm_count[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[8]~27_combout\ = (\rra_servo_base|pwm_count\(8) & (\rra_servo_base|pwm_count[7]~26\ $ (GND))) # (!\rra_servo_base|pwm_count\(8) & (!\rra_servo_base|pwm_count[7]~26\ & VCC))
-- \rra_servo_base|pwm_count[8]~28\ = CARRY((\rra_servo_base|pwm_count\(8) & !\rra_servo_base|pwm_count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|pwm_count\(8),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[7]~26\,
	combout => \rra_servo_base|pwm_count[8]~27_combout\,
	cout => \rra_servo_base|pwm_count[8]~28\);

-- Location: FF_X21_Y27_N25
\rra_servo_base|pwm_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[8]~27_combout\,
	sclr => \rra_servo_base|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(8));

-- Location: LCCOMB_X21_Y27_N26
\rra_servo_base|pwm_count[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[9]~29_combout\ = (\rra_servo_base|pwm_count\(9) & (!\rra_servo_base|pwm_count[8]~28\)) # (!\rra_servo_base|pwm_count\(9) & ((\rra_servo_base|pwm_count[8]~28\) # (GND)))
-- \rra_servo_base|pwm_count[9]~30\ = CARRY((!\rra_servo_base|pwm_count[8]~28\) # (!\rra_servo_base|pwm_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(9),
	datad => VCC,
	cin => \rra_servo_base|pwm_count[8]~28\,
	combout => \rra_servo_base|pwm_count[9]~29_combout\,
	cout => \rra_servo_base|pwm_count[9]~30\);

-- Location: FF_X21_Y27_N27
\rra_servo_base|pwm_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[9]~29_combout\,
	sclr => \rra_servo_base|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(9));

-- Location: LCCOMB_X21_Y27_N6
\rra_servo_base|pwm_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_out~1_combout\ = ((!\rra_servo_base|pwm_count\(8)) # (!\rra_servo_base|pwm_count\(9))) # (!\rra_servo_base|pwm_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(7),
	datac => \rra_servo_base|pwm_count\(9),
	datad => \rra_servo_base|pwm_count\(8),
	combout => \rra_servo_base|pwm_out~1_combout\);

-- Location: LCCOMB_X21_Y27_N28
\rra_servo_base|pwm_count[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_count[10]~31_combout\ = \rra_servo_base|pwm_count[9]~30\ $ (!\rra_servo_base|pwm_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_base|pwm_count\(10),
	cin => \rra_servo_base|pwm_count[9]~30\,
	combout => \rra_servo_base|pwm_count[10]~31_combout\);

-- Location: FF_X21_Y27_N29
\rra_servo_base|pwm_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_count[10]~31_combout\,
	sclr => \rra_servo_base|ALT_INV_pwm_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_count\(10));

-- Location: LCCOMB_X21_Y27_N4
\rra_servo_base|pwm_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_out~0_combout\ = (((!\rra_servo_base|pwm_count\(4) & !\rra_servo_base|pwm_count\(3))) # (!\rra_servo_base|pwm_count\(6))) # (!\rra_servo_base|pwm_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(5),
	datab => \rra_servo_base|pwm_count\(4),
	datac => \rra_servo_base|pwm_count\(3),
	datad => \rra_servo_base|pwm_count\(6),
	combout => \rra_servo_base|pwm_out~0_combout\);

-- Location: LCCOMB_X19_Y27_N14
\rra_servo_base|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add6~0_combout\ = \rra_servo_base|current\(1) $ (VCC)
-- \rra_servo_base|Add6~1\ = CARRY(\rra_servo_base|current\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|current\(1),
	datad => VCC,
	combout => \rra_servo_base|Add6~0_combout\,
	cout => \rra_servo_base|Add6~1\);

-- Location: LCCOMB_X19_Y27_N2
\rra_servo_base|current[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|current\(1) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_base|current[1]~2clkctrl_outclk\) & (\rra_servo_base|Add6~0_combout\)) # (!GLOBAL(\rra_servo_base|current[1]~2clkctrl_outclk\) & ((\rra_servo_base|current\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|Add6~0_combout\,
	datab => \rst~input_o\,
	datac => \rra_servo_base|current\(1),
	datad => \rra_servo_base|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_base|current\(1));

-- Location: LCCOMB_X19_Y27_N16
\rra_servo_base|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add6~2_combout\ = (\rra_servo_base|current\(2) & (\rra_servo_base|Add6~1\ & VCC)) # (!\rra_servo_base|current\(2) & (!\rra_servo_base|Add6~1\))
-- \rra_servo_base|Add6~3\ = CARRY((!\rra_servo_base|current\(2) & !\rra_servo_base|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|current\(2),
	datad => VCC,
	cin => \rra_servo_base|Add6~1\,
	combout => \rra_servo_base|Add6~2_combout\,
	cout => \rra_servo_base|Add6~3\);

-- Location: LCCOMB_X19_Y27_N8
\rra_servo_base|current[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|current\(2) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_base|current[1]~2clkctrl_outclk\) & ((\rra_servo_base|Add6~2_combout\))) # (!GLOBAL(\rra_servo_base|current[1]~2clkctrl_outclk\) & (\rra_servo_base|current\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|current\(2),
	datab => \rst~input_o\,
	datac => \rra_servo_base|current[1]~2clkctrl_outclk\,
	datad => \rra_servo_base|Add6~2_combout\,
	combout => \rra_servo_base|current\(2));

-- Location: LCCOMB_X19_Y27_N18
\rra_servo_base|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add6~4_combout\ = (\rra_servo_base|current\(3) & (\rra_servo_base|Add6~3\ $ (GND))) # (!\rra_servo_base|current\(3) & (!\rra_servo_base|Add6~3\ & VCC))
-- \rra_servo_base|Add6~5\ = CARRY((\rra_servo_base|current\(3) & !\rra_servo_base|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|current\(3),
	datad => VCC,
	cin => \rra_servo_base|Add6~3\,
	combout => \rra_servo_base|Add6~4_combout\,
	cout => \rra_servo_base|Add6~5\);

-- Location: LCCOMB_X19_Y27_N6
\rra_servo_base|current[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|current\(3) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_base|current[1]~2clkctrl_outclk\) & ((\rra_servo_base|Add6~4_combout\))) # (!GLOBAL(\rra_servo_base|current[1]~2clkctrl_outclk\) & (\rra_servo_base|current\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|current\(3),
	datab => \rst~input_o\,
	datac => \rra_servo_base|current[1]~2clkctrl_outclk\,
	datad => \rra_servo_base|Add6~4_combout\,
	combout => \rra_servo_base|current\(3));

-- Location: LCCOMB_X19_Y27_N20
\rra_servo_base|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add6~6_combout\ = (\rra_servo_base|current\(4) & (\rra_servo_base|Add6~5\ & VCC)) # (!\rra_servo_base|current\(4) & (!\rra_servo_base|Add6~5\))
-- \rra_servo_base|Add6~7\ = CARRY((!\rra_servo_base|current\(4) & !\rra_servo_base|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|current\(4),
	datad => VCC,
	cin => \rra_servo_base|Add6~5\,
	combout => \rra_servo_base|Add6~6_combout\,
	cout => \rra_servo_base|Add6~7\);

-- Location: LCCOMB_X19_Y27_N0
\rra_servo_base|current[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|current\(4) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_base|current[1]~2clkctrl_outclk\) & (\rra_servo_base|Add6~6_combout\)) # (!GLOBAL(\rra_servo_base|current[1]~2clkctrl_outclk\) & ((\rra_servo_base|current\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_base|Add6~6_combout\,
	datac => \rra_servo_base|current\(4),
	datad => \rra_servo_base|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_base|current\(4));

-- Location: LCCOMB_X12_Y26_N30
\rra_servo_base|current[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|current[1]~0_combout\ = (\rra_servo_base|current\(2)) # ((\rra_servo_base|current\(1)) # ((\rra_servo_base|current\(4)) # (\rra_servo_base|current\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|current\(2),
	datab => \rra_servo_base|current\(1),
	datac => \rra_servo_base|current\(4),
	datad => \rra_servo_base|current\(3),
	combout => \rra_servo_base|current[1]~0_combout\);

-- Location: LCCOMB_X19_Y27_N22
\rra_servo_base|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add6~8_combout\ = (\rra_servo_base|current\(5) & ((GND) # (!\rra_servo_base|Add6~7\))) # (!\rra_servo_base|current\(5) & (\rra_servo_base|Add6~7\ $ (GND)))
-- \rra_servo_base|Add6~9\ = CARRY((\rra_servo_base|current\(5)) # (!\rra_servo_base|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|current\(5),
	datad => VCC,
	cin => \rra_servo_base|Add6~7\,
	combout => \rra_servo_base|Add6~8_combout\,
	cout => \rra_servo_base|Add6~9\);

-- Location: LCCOMB_X19_Y27_N30
\rra_servo_base|current[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|current\(5) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_base|current[1]~2clkctrl_outclk\) & (\rra_servo_base|Add6~8_combout\)) # (!GLOBAL(\rra_servo_base|current[1]~2clkctrl_outclk\) & ((\rra_servo_base|current\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|Add6~8_combout\,
	datab => \rst~input_o\,
	datac => \rra_servo_base|current\(5),
	datad => \rra_servo_base|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_base|current\(5));

-- Location: LCCOMB_X19_Y27_N24
\rra_servo_base|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add6~10_combout\ = (\rra_servo_base|current\(6) & (\rra_servo_base|Add6~9\ & VCC)) # (!\rra_servo_base|current\(6) & (!\rra_servo_base|Add6~9\))
-- \rra_servo_base|Add6~11\ = CARRY((!\rra_servo_base|current\(6) & !\rra_servo_base|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|current\(6),
	datad => VCC,
	cin => \rra_servo_base|Add6~9\,
	combout => \rra_servo_base|Add6~10_combout\,
	cout => \rra_servo_base|Add6~11\);

-- Location: LCCOMB_X19_Y27_N4
\rra_servo_base|current[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|current\(6) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_base|current[1]~2clkctrl_outclk\) & (\rra_servo_base|Add6~10_combout\)) # (!GLOBAL(\rra_servo_base|current[1]~2clkctrl_outclk\) & ((\rra_servo_base|current\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_base|Add6~10_combout\,
	datac => \rra_servo_base|current\(6),
	datad => \rra_servo_base|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_base|current\(6));

-- Location: LCCOMB_X19_Y27_N26
\rra_servo_base|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add6~12_combout\ = (\rra_servo_base|current\(7) & ((GND) # (!\rra_servo_base|Add6~11\))) # (!\rra_servo_base|current\(7) & (\rra_servo_base|Add6~11\ $ (GND)))
-- \rra_servo_base|Add6~13\ = CARRY((\rra_servo_base|current\(7)) # (!\rra_servo_base|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|current\(7),
	datad => VCC,
	cin => \rra_servo_base|Add6~11\,
	combout => \rra_servo_base|Add6~12_combout\,
	cout => \rra_servo_base|Add6~13\);

-- Location: LCCOMB_X19_Y27_N10
\rra_servo_base|current[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|current\(7) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_base|current[1]~2clkctrl_outclk\) & ((\rra_servo_base|Add6~12_combout\))) # (!GLOBAL(\rra_servo_base|current[1]~2clkctrl_outclk\) & (\rra_servo_base|current\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|current\(7),
	datab => \rst~input_o\,
	datac => \rra_servo_base|Add6~12_combout\,
	datad => \rra_servo_base|current[1]~2clkctrl_outclk\,
	combout => \rra_servo_base|current\(7));

-- Location: LCCOMB_X14_Y27_N20
\rra_servo_base|current[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|current[1]~1_combout\ = (\rra_servo_base|current\(5)) # ((\rra_servo_base|current\(8)) # ((\rra_servo_base|current\(7)) # (\rra_servo_base|current\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|current\(5),
	datab => \rra_servo_base|current\(8),
	datac => \rra_servo_base|current\(7),
	datad => \rra_servo_base|current\(6),
	combout => \rra_servo_base|current[1]~1_combout\);

-- Location: LCCOMB_X11_Y26_N8
\rra_servo_base|interval_count[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|interval_count[0]~0_combout\ = (!\rst~input_o\ & (\rra_servo_base|interval_count[0]~0_combout\ $ (\rra_servo_base|LessThan0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|interval_count[0]~0_combout\,
	datac => \rst~input_o\,
	datad => \rra_servo_base|LessThan0~18_combout\,
	combout => \rra_servo_base|interval_count[0]~0_combout\);

-- Location: LCCOMB_X11_Y26_N10
\rra_servo_base|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add4~0_combout\ = (\rra_servo_base|interval_count\(1) & (\rra_servo_base|interval_count[0]~0_combout\ $ (VCC))) # (!\rra_servo_base|interval_count\(1) & (\rra_servo_base|interval_count[0]~0_combout\ & VCC))
-- \rra_servo_base|Add4~1\ = CARRY((\rra_servo_base|interval_count\(1) & \rra_servo_base|interval_count[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|interval_count\(1),
	datab => \rra_servo_base|interval_count[0]~0_combout\,
	datad => VCC,
	combout => \rra_servo_base|Add4~0_combout\,
	cout => \rra_servo_base|Add4~1\);

-- Location: CLKCTRL_G8
\rra_servo_base|LessThan0~18clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_base|LessThan0~18clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_base|LessThan0~18clkctrl_outclk\);

-- Location: LCCOMB_X11_Y26_N6
\rra_servo_base|interval_count[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|interval_count\(1) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_base|LessThan0~18clkctrl_outclk\) & ((\rra_servo_base|Add4~0_combout\))) # (!GLOBAL(\rra_servo_base|LessThan0~18clkctrl_outclk\) & (\rra_servo_base|interval_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|interval_count\(1),
	datab => \rra_servo_base|Add4~0_combout\,
	datac => \rst~input_o\,
	datad => \rra_servo_base|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_base|interval_count\(1));

-- Location: LCCOMB_X11_Y26_N12
\rra_servo_base|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add4~2_combout\ = (\rra_servo_base|interval_count\(2) & (!\rra_servo_base|Add4~1\)) # (!\rra_servo_base|interval_count\(2) & ((\rra_servo_base|Add4~1\) # (GND)))
-- \rra_servo_base|Add4~3\ = CARRY((!\rra_servo_base|Add4~1\) # (!\rra_servo_base|interval_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|interval_count\(2),
	datad => VCC,
	cin => \rra_servo_base|Add4~1\,
	combout => \rra_servo_base|Add4~2_combout\,
	cout => \rra_servo_base|Add4~3\);

-- Location: LCCOMB_X11_Y26_N0
\rra_servo_base|interval_count[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|interval_count\(2) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_base|LessThan0~18clkctrl_outclk\) & (\rra_servo_base|Add4~2_combout\)) # (!GLOBAL(\rra_servo_base|LessThan0~18clkctrl_outclk\) & ((\rra_servo_base|interval_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|Add4~2_combout\,
	datab => \rra_servo_base|interval_count\(2),
	datac => \rst~input_o\,
	datad => \rra_servo_base|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_base|interval_count\(2));

-- Location: LCCOMB_X11_Y26_N14
\rra_servo_base|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add4~4_combout\ = (\rra_servo_base|interval_count\(3) & (\rra_servo_base|Add4~3\ $ (GND))) # (!\rra_servo_base|interval_count\(3) & (!\rra_servo_base|Add4~3\ & VCC))
-- \rra_servo_base|Add4~5\ = CARRY((\rra_servo_base|interval_count\(3) & !\rra_servo_base|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|interval_count\(3),
	datad => VCC,
	cin => \rra_servo_base|Add4~3\,
	combout => \rra_servo_base|Add4~4_combout\,
	cout => \rra_servo_base|Add4~5\);

-- Location: LCCOMB_X11_Y26_N28
\rra_servo_base|interval_count[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|interval_count\(3) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_base|LessThan0~18clkctrl_outclk\) & (\rra_servo_base|Add4~4_combout\)) # (!GLOBAL(\rra_servo_base|LessThan0~18clkctrl_outclk\) & ((\rra_servo_base|interval_count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|Add4~4_combout\,
	datab => \rra_servo_base|interval_count\(3),
	datac => \rst~input_o\,
	datad => \rra_servo_base|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_base|interval_count\(3));

-- Location: LCCOMB_X11_Y26_N16
\rra_servo_base|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add4~6_combout\ = (\rra_servo_base|interval_count\(4) & (!\rra_servo_base|Add4~5\)) # (!\rra_servo_base|interval_count\(4) & ((\rra_servo_base|Add4~5\) # (GND)))
-- \rra_servo_base|Add4~7\ = CARRY((!\rra_servo_base|Add4~5\) # (!\rra_servo_base|interval_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|interval_count\(4),
	datad => VCC,
	cin => \rra_servo_base|Add4~5\,
	combout => \rra_servo_base|Add4~6_combout\,
	cout => \rra_servo_base|Add4~7\);

-- Location: LCCOMB_X11_Y26_N30
\rra_servo_base|interval_count[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|interval_count\(4) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_base|LessThan0~18clkctrl_outclk\) & (\rra_servo_base|Add4~6_combout\)) # (!GLOBAL(\rra_servo_base|LessThan0~18clkctrl_outclk\) & ((\rra_servo_base|interval_count\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|Add4~6_combout\,
	datab => \rra_servo_base|interval_count\(4),
	datac => \rst~input_o\,
	datad => \rra_servo_base|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_base|interval_count\(4));

-- Location: LCCOMB_X11_Y26_N18
\rra_servo_base|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add4~8_combout\ = (\rra_servo_base|interval_count\(5) & (\rra_servo_base|Add4~7\ $ (GND))) # (!\rra_servo_base|interval_count\(5) & (!\rra_servo_base|Add4~7\ & VCC))
-- \rra_servo_base|Add4~9\ = CARRY((\rra_servo_base|interval_count\(5) & !\rra_servo_base|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|interval_count\(5),
	datad => VCC,
	cin => \rra_servo_base|Add4~7\,
	combout => \rra_servo_base|Add4~8_combout\,
	cout => \rra_servo_base|Add4~9\);

-- Location: LCCOMB_X11_Y26_N4
\rra_servo_base|interval_count[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|interval_count\(5) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_base|LessThan0~18clkctrl_outclk\) & (\rra_servo_base|Add4~8_combout\)) # (!GLOBAL(\rra_servo_base|LessThan0~18clkctrl_outclk\) & ((\rra_servo_base|interval_count\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|Add4~8_combout\,
	datab => \rra_servo_base|interval_count\(5),
	datac => \rst~input_o\,
	datad => \rra_servo_base|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_base|interval_count\(5));

-- Location: LCCOMB_X11_Y26_N20
\rra_servo_base|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add4~10_combout\ = (\rra_servo_base|interval_count\(6) & (!\rra_servo_base|Add4~9\)) # (!\rra_servo_base|interval_count\(6) & ((\rra_servo_base|Add4~9\) # (GND)))
-- \rra_servo_base|Add4~11\ = CARRY((!\rra_servo_base|Add4~9\) # (!\rra_servo_base|interval_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|interval_count\(6),
	datad => VCC,
	cin => \rra_servo_base|Add4~9\,
	combout => \rra_servo_base|Add4~10_combout\,
	cout => \rra_servo_base|Add4~11\);

-- Location: LCCOMB_X11_Y26_N2
\rra_servo_base|interval_count[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|interval_count\(6) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_base|LessThan0~18clkctrl_outclk\) & ((\rra_servo_base|Add4~10_combout\))) # (!GLOBAL(\rra_servo_base|LessThan0~18clkctrl_outclk\) & (\rra_servo_base|interval_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_base|interval_count\(6),
	datac => \rra_servo_base|Add4~10_combout\,
	datad => \rra_servo_base|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_base|interval_count\(6));

-- Location: LCCOMB_X11_Y26_N22
\rra_servo_base|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add4~12_combout\ = (\rra_servo_base|interval_count\(7) & (\rra_servo_base|Add4~11\ $ (GND))) # (!\rra_servo_base|interval_count\(7) & (!\rra_servo_base|Add4~11\ & VCC))
-- \rra_servo_base|Add4~13\ = CARRY((\rra_servo_base|interval_count\(7) & !\rra_servo_base|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|interval_count\(7),
	datad => VCC,
	cin => \rra_servo_base|Add4~11\,
	combout => \rra_servo_base|Add4~12_combout\,
	cout => \rra_servo_base|Add4~13\);

-- Location: LCCOMB_X12_Y26_N28
\rra_servo_base|interval_count[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|interval_count\(7) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_base|LessThan0~18clkctrl_outclk\) & (\rra_servo_base|Add4~12_combout\)) # (!GLOBAL(\rra_servo_base|LessThan0~18clkctrl_outclk\) & ((\rra_servo_base|interval_count\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \rra_servo_base|Add4~12_combout\,
	datac => \rra_servo_base|LessThan0~18clkctrl_outclk\,
	datad => \rra_servo_base|interval_count\(7),
	combout => \rra_servo_base|interval_count\(7));

-- Location: LCCOMB_X11_Y26_N24
\rra_servo_base|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add4~14_combout\ = (\rra_servo_base|interval_count\(8) & (!\rra_servo_base|Add4~13\)) # (!\rra_servo_base|interval_count\(8) & ((\rra_servo_base|Add4~13\) # (GND)))
-- \rra_servo_base|Add4~15\ = CARRY((!\rra_servo_base|Add4~13\) # (!\rra_servo_base|interval_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|interval_count\(8),
	datad => VCC,
	cin => \rra_servo_base|Add4~13\,
	combout => \rra_servo_base|Add4~14_combout\,
	cout => \rra_servo_base|Add4~15\);

-- Location: LCCOMB_X12_Y26_N24
\rra_servo_base|interval_count[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|interval_count\(8) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_base|LessThan0~18clkctrl_outclk\) & ((\rra_servo_base|Add4~14_combout\))) # (!GLOBAL(\rra_servo_base|LessThan0~18clkctrl_outclk\) & (\rra_servo_base|interval_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|interval_count\(8),
	datab => \rra_servo_base|Add4~14_combout\,
	datac => \rst~input_o\,
	datad => \rra_servo_base|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_base|interval_count\(8));

-- Location: LCCOMB_X11_Y26_N26
\rra_servo_base|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add4~16_combout\ = \rra_servo_base|interval_count\(9) $ (!\rra_servo_base|Add4~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|interval_count\(9),
	cin => \rra_servo_base|Add4~15\,
	combout => \rra_servo_base|Add4~16_combout\);

-- Location: LCCOMB_X12_Y26_N26
\rra_servo_base|interval_count[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|interval_count\(9) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_base|LessThan0~18clkctrl_outclk\) & ((\rra_servo_base|Add4~16_combout\))) # (!GLOBAL(\rra_servo_base|LessThan0~18clkctrl_outclk\) & (\rra_servo_base|interval_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|interval_count\(9),
	datab => \rst~input_o\,
	datac => \rra_servo_base|Add4~16_combout\,
	datad => \rra_servo_base|LessThan0~18clkctrl_outclk\,
	combout => \rra_servo_base|interval_count\(9));

-- Location: LCCOMB_X12_Y26_N4
\rra_servo_base|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan0~1_cout\ = CARRY(\rra_servo_base|interval_count[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|interval_count[0]~0_combout\,
	datad => VCC,
	cout => \rra_servo_base|LessThan0~1_cout\);

-- Location: LCCOMB_X12_Y26_N6
\rra_servo_base|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan0~3_cout\ = CARRY((\rra_servo_lower|interval[1]~0_combout\ & ((!\rra_servo_base|LessThan0~1_cout\) # (!\rra_servo_base|interval_count\(1)))) # (!\rra_servo_lower|interval[1]~0_combout\ & (!\rra_servo_base|interval_count\(1) & 
-- !\rra_servo_base|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|interval[1]~0_combout\,
	datab => \rra_servo_base|interval_count\(1),
	datad => VCC,
	cin => \rra_servo_base|LessThan0~1_cout\,
	cout => \rra_servo_base|LessThan0~3_cout\);

-- Location: LCCOMB_X12_Y26_N8
\rra_servo_base|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan0~5_cout\ = CARRY((\rra_servo_base|interval_count\(2) & ((!\rra_servo_base|LessThan0~3_cout\) # (!\rra_servo_lower|Add2~23_combout\))) # (!\rra_servo_base|interval_count\(2) & (!\rra_servo_lower|Add2~23_combout\ & 
-- !\rra_servo_base|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|interval_count\(2),
	datab => \rra_servo_lower|Add2~23_combout\,
	datad => VCC,
	cin => \rra_servo_base|LessThan0~3_cout\,
	cout => \rra_servo_base|LessThan0~5_cout\);

-- Location: LCCOMB_X12_Y26_N10
\rra_servo_base|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan0~7_cout\ = CARRY((\rra_servo_lower|Add2~22_combout\ & ((!\rra_servo_base|LessThan0~5_cout\) # (!\rra_servo_base|interval_count\(3)))) # (!\rra_servo_lower|Add2~22_combout\ & (!\rra_servo_base|interval_count\(3) & 
-- !\rra_servo_base|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~22_combout\,
	datab => \rra_servo_base|interval_count\(3),
	datad => VCC,
	cin => \rra_servo_base|LessThan0~5_cout\,
	cout => \rra_servo_base|LessThan0~7_cout\);

-- Location: LCCOMB_X12_Y26_N12
\rra_servo_base|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan0~9_cout\ = CARRY((\rra_servo_base|interval_count\(4) & ((!\rra_servo_base|LessThan0~7_cout\) # (!\rra_servo_lower|Add2~21_combout\))) # (!\rra_servo_base|interval_count\(4) & (!\rra_servo_lower|Add2~21_combout\ & 
-- !\rra_servo_base|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|interval_count\(4),
	datab => \rra_servo_lower|Add2~21_combout\,
	datad => VCC,
	cin => \rra_servo_base|LessThan0~7_cout\,
	cout => \rra_servo_base|LessThan0~9_cout\);

-- Location: LCCOMB_X12_Y26_N14
\rra_servo_base|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan0~11_cout\ = CARRY((\rra_servo_base|interval_count\(5) & (\rra_servo_lower|Add2~20_combout\ & !\rra_servo_base|LessThan0~9_cout\)) # (!\rra_servo_base|interval_count\(5) & ((\rra_servo_lower|Add2~20_combout\) # 
-- (!\rra_servo_base|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|interval_count\(5),
	datab => \rra_servo_lower|Add2~20_combout\,
	datad => VCC,
	cin => \rra_servo_base|LessThan0~9_cout\,
	cout => \rra_servo_base|LessThan0~11_cout\);

-- Location: LCCOMB_X12_Y26_N16
\rra_servo_base|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan0~13_cout\ = CARRY((\rra_servo_base|interval_count\(6) & ((!\rra_servo_base|LessThan0~11_cout\) # (!\rra_servo_lower|Add2~19_combout\))) # (!\rra_servo_base|interval_count\(6) & (!\rra_servo_lower|Add2~19_combout\ & 
-- !\rra_servo_base|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|interval_count\(6),
	datab => \rra_servo_lower|Add2~19_combout\,
	datad => VCC,
	cin => \rra_servo_base|LessThan0~11_cout\,
	cout => \rra_servo_base|LessThan0~13_cout\);

-- Location: LCCOMB_X12_Y26_N18
\rra_servo_base|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan0~15_cout\ = CARRY((\rra_servo_lower|Add2~18_combout\ & ((!\rra_servo_base|LessThan0~13_cout\) # (!\rra_servo_base|interval_count\(7)))) # (!\rra_servo_lower|Add2~18_combout\ & (!\rra_servo_base|interval_count\(7) & 
-- !\rra_servo_base|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~18_combout\,
	datab => \rra_servo_base|interval_count\(7),
	datad => VCC,
	cin => \rra_servo_base|LessThan0~13_cout\,
	cout => \rra_servo_base|LessThan0~15_cout\);

-- Location: LCCOMB_X12_Y26_N20
\rra_servo_base|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan0~17_cout\ = CARRY((\rra_servo_lower|Add2~17_combout\ & (\rra_servo_base|interval_count\(8) & !\rra_servo_base|LessThan0~15_cout\)) # (!\rra_servo_lower|Add2~17_combout\ & ((\rra_servo_base|interval_count\(8)) # 
-- (!\rra_servo_base|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_lower|Add2~17_combout\,
	datab => \rra_servo_base|interval_count\(8),
	datad => VCC,
	cin => \rra_servo_base|LessThan0~15_cout\,
	cout => \rra_servo_base|LessThan0~17_cout\);

-- Location: LCCOMB_X12_Y26_N22
\rra_servo_base|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan0~18_combout\ = (\rra_servo_base|interval_count\(9) & (!\rra_servo_base|LessThan0~17_cout\ & \rra_servo_lower|Add2~16_combout\)) # (!\rra_servo_base|interval_count\(9) & ((\rra_servo_lower|Add2~16_combout\) # 
-- (!\rra_servo_base|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|interval_count\(9),
	datad => \rra_servo_lower|Add2~16_combout\,
	cin => \rra_servo_base|LessThan0~17_cout\,
	combout => \rra_servo_base|LessThan0~18_combout\);

-- Location: LCCOMB_X12_Y26_N2
\rra_servo_base|current[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|current[1]~2_combout\ = (!\rra_servo_base|LessThan0~18_combout\ & ((\rra_servo_base|current[1]~0_combout\) # (\rra_servo_base|current[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|current[1]~0_combout\,
	datab => \rra_servo_base|current[1]~1_combout\,
	datac => \rra_servo_base|LessThan0~18_combout\,
	combout => \rra_servo_base|current[1]~2_combout\);

-- Location: CLKCTRL_G9
\rra_servo_base|current[1]~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rra_servo_base|current[1]~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rra_servo_base|current[1]~2clkctrl_outclk\);

-- Location: LCCOMB_X19_Y27_N28
\rra_servo_base|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add6~14_combout\ = \rra_servo_base|Add6~13\ $ (!\rra_servo_base|current\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rra_servo_base|current\(8),
	cin => \rra_servo_base|Add6~13\,
	combout => \rra_servo_base|Add6~14_combout\);

-- Location: LCCOMB_X19_Y27_N12
\rra_servo_base|current[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|current\(8) = (!\rst~input_o\ & ((GLOBAL(\rra_servo_base|current[1]~2clkctrl_outclk\) & ((\rra_servo_base|Add6~14_combout\))) # (!GLOBAL(\rra_servo_base|current[1]~2clkctrl_outclk\) & (\rra_servo_base|current\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|current\(8),
	datab => \rst~input_o\,
	datac => \rra_servo_base|current[1]~2clkctrl_outclk\,
	datad => \rra_servo_base|Add6~14_combout\,
	combout => \rra_servo_base|current\(8));

-- Location: LCCOMB_X20_Y27_N0
\rra_servo_base|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add8~0_combout\ = (\rra_servo_base|current\(2) & (\rra_servo_base|current\(3) $ (VCC))) # (!\rra_servo_base|current\(2) & (\rra_servo_base|current\(3) & VCC))
-- \rra_servo_base|Add8~1\ = CARRY((\rra_servo_base|current\(2) & \rra_servo_base|current\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|current\(2),
	datab => \rra_servo_base|current\(3),
	datad => VCC,
	combout => \rra_servo_base|Add8~0_combout\,
	cout => \rra_servo_base|Add8~1\);

-- Location: LCCOMB_X20_Y27_N2
\rra_servo_base|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add8~2_combout\ = (\rra_servo_base|current\(4) & (\rra_servo_base|Add8~1\ & VCC)) # (!\rra_servo_base|current\(4) & (!\rra_servo_base|Add8~1\))
-- \rra_servo_base|Add8~3\ = CARRY((!\rra_servo_base|current\(4) & !\rra_servo_base|Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|current\(4),
	datad => VCC,
	cin => \rra_servo_base|Add8~1\,
	combout => \rra_servo_base|Add8~2_combout\,
	cout => \rra_servo_base|Add8~3\);

-- Location: LCCOMB_X20_Y27_N4
\rra_servo_base|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add8~4_combout\ = (\rra_servo_base|current\(5) & ((GND) # (!\rra_servo_base|Add8~3\))) # (!\rra_servo_base|current\(5) & (\rra_servo_base|Add8~3\ $ (GND)))
-- \rra_servo_base|Add8~5\ = CARRY((\rra_servo_base|current\(5)) # (!\rra_servo_base|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|current\(5),
	datad => VCC,
	cin => \rra_servo_base|Add8~3\,
	combout => \rra_servo_base|Add8~4_combout\,
	cout => \rra_servo_base|Add8~5\);

-- Location: LCCOMB_X20_Y27_N6
\rra_servo_base|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add8~6_combout\ = (\rra_servo_base|current\(6) & (\rra_servo_base|Add8~5\ & VCC)) # (!\rra_servo_base|current\(6) & (!\rra_servo_base|Add8~5\))
-- \rra_servo_base|Add8~7\ = CARRY((!\rra_servo_base|current\(6) & !\rra_servo_base|Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|current\(6),
	datad => VCC,
	cin => \rra_servo_base|Add8~5\,
	combout => \rra_servo_base|Add8~6_combout\,
	cout => \rra_servo_base|Add8~7\);

-- Location: LCCOMB_X20_Y27_N8
\rra_servo_base|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add8~8_combout\ = (\rra_servo_base|current\(7) & ((GND) # (!\rra_servo_base|Add8~7\))) # (!\rra_servo_base|current\(7) & (\rra_servo_base|Add8~7\ $ (GND)))
-- \rra_servo_base|Add8~9\ = CARRY((\rra_servo_base|current\(7)) # (!\rra_servo_base|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|current\(7),
	datad => VCC,
	cin => \rra_servo_base|Add8~7\,
	combout => \rra_servo_base|Add8~8_combout\,
	cout => \rra_servo_base|Add8~9\);

-- Location: LCCOMB_X20_Y27_N10
\rra_servo_base|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add8~10_combout\ = (\rra_servo_base|current\(8) & (\rra_servo_base|Add8~9\ & VCC)) # (!\rra_servo_base|current\(8) & (!\rra_servo_base|Add8~9\))
-- \rra_servo_base|Add8~11\ = CARRY((!\rra_servo_base|current\(8) & !\rra_servo_base|Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|current\(8),
	datad => VCC,
	cin => \rra_servo_base|Add8~9\,
	combout => \rra_servo_base|Add8~10_combout\,
	cout => \rra_servo_base|Add8~11\);

-- Location: LCCOMB_X20_Y27_N12
\rra_servo_base|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|Add8~12_combout\ = !\rra_servo_base|Add8~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rra_servo_base|Add8~11\,
	combout => \rra_servo_base|Add8~12_combout\);

-- Location: LCCOMB_X20_Y27_N14
\rra_servo_base|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan5~1_cout\ = CARRY((\rra_servo_base|current\(1) & !\rra_servo_base|pwm_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|current\(1),
	datab => \rra_servo_base|pwm_count\(2),
	datad => VCC,
	cout => \rra_servo_base|LessThan5~1_cout\);

-- Location: LCCOMB_X20_Y27_N16
\rra_servo_base|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan5~3_cout\ = CARRY((\rra_servo_base|current\(2) & ((\rra_servo_base|pwm_count\(3)) # (!\rra_servo_base|LessThan5~1_cout\))) # (!\rra_servo_base|current\(2) & (\rra_servo_base|pwm_count\(3) & !\rra_servo_base|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|current\(2),
	datab => \rra_servo_base|pwm_count\(3),
	datad => VCC,
	cin => \rra_servo_base|LessThan5~1_cout\,
	cout => \rra_servo_base|LessThan5~3_cout\);

-- Location: LCCOMB_X20_Y27_N18
\rra_servo_base|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan5~5_cout\ = CARRY((\rra_servo_base|pwm_count\(4) & (\rra_servo_base|Add8~0_combout\ & !\rra_servo_base|LessThan5~3_cout\)) # (!\rra_servo_base|pwm_count\(4) & ((\rra_servo_base|Add8~0_combout\) # 
-- (!\rra_servo_base|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(4),
	datab => \rra_servo_base|Add8~0_combout\,
	datad => VCC,
	cin => \rra_servo_base|LessThan5~3_cout\,
	cout => \rra_servo_base|LessThan5~5_cout\);

-- Location: LCCOMB_X20_Y27_N20
\rra_servo_base|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan5~7_cout\ = CARRY((\rra_servo_base|pwm_count\(5) & ((!\rra_servo_base|LessThan5~5_cout\) # (!\rra_servo_base|Add8~2_combout\))) # (!\rra_servo_base|pwm_count\(5) & (!\rra_servo_base|Add8~2_combout\ & 
-- !\rra_servo_base|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(5),
	datab => \rra_servo_base|Add8~2_combout\,
	datad => VCC,
	cin => \rra_servo_base|LessThan5~5_cout\,
	cout => \rra_servo_base|LessThan5~7_cout\);

-- Location: LCCOMB_X20_Y27_N22
\rra_servo_base|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan5~9_cout\ = CARRY((\rra_servo_base|pwm_count\(6) & (\rra_servo_base|Add8~4_combout\ & !\rra_servo_base|LessThan5~7_cout\)) # (!\rra_servo_base|pwm_count\(6) & ((\rra_servo_base|Add8~4_combout\) # 
-- (!\rra_servo_base|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(6),
	datab => \rra_servo_base|Add8~4_combout\,
	datad => VCC,
	cin => \rra_servo_base|LessThan5~7_cout\,
	cout => \rra_servo_base|LessThan5~9_cout\);

-- Location: LCCOMB_X20_Y27_N24
\rra_servo_base|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan5~11_cout\ = CARRY((\rra_servo_base|Add8~6_combout\ & (\rra_servo_base|pwm_count\(7) & !\rra_servo_base|LessThan5~9_cout\)) # (!\rra_servo_base|Add8~6_combout\ & ((\rra_servo_base|pwm_count\(7)) # 
-- (!\rra_servo_base|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|Add8~6_combout\,
	datab => \rra_servo_base|pwm_count\(7),
	datad => VCC,
	cin => \rra_servo_base|LessThan5~9_cout\,
	cout => \rra_servo_base|LessThan5~11_cout\);

-- Location: LCCOMB_X20_Y27_N26
\rra_servo_base|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan5~13_cout\ = CARRY((\rra_servo_base|pwm_count\(8) & (\rra_servo_base|Add8~8_combout\ & !\rra_servo_base|LessThan5~11_cout\)) # (!\rra_servo_base|pwm_count\(8) & ((\rra_servo_base|Add8~8_combout\) # 
-- (!\rra_servo_base|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_count\(8),
	datab => \rra_servo_base|Add8~8_combout\,
	datad => VCC,
	cin => \rra_servo_base|LessThan5~11_cout\,
	cout => \rra_servo_base|LessThan5~13_cout\);

-- Location: LCCOMB_X20_Y27_N28
\rra_servo_base|LessThan5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan5~15_cout\ = CARRY((\rra_servo_base|Add8~10_combout\ & (\rra_servo_base|pwm_count\(9) & !\rra_servo_base|LessThan5~13_cout\)) # (!\rra_servo_base|Add8~10_combout\ & ((\rra_servo_base|pwm_count\(9)) # 
-- (!\rra_servo_base|LessThan5~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|Add8~10_combout\,
	datab => \rra_servo_base|pwm_count\(9),
	datad => VCC,
	cin => \rra_servo_base|LessThan5~13_cout\,
	cout => \rra_servo_base|LessThan5~15_cout\);

-- Location: LCCOMB_X20_Y27_N30
\rra_servo_base|LessThan5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|LessThan5~16_combout\ = (\rra_servo_base|pwm_count\(10) & (!\rra_servo_base|LessThan5~15_cout\ & \rra_servo_base|Add8~12_combout\)) # (!\rra_servo_base|pwm_count\(10) & ((\rra_servo_base|Add8~12_combout\) # 
-- (!\rra_servo_base|LessThan5~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rra_servo_base|pwm_count\(10),
	datad => \rra_servo_base|Add8~12_combout\,
	cin => \rra_servo_base|LessThan5~15_cout\,
	combout => \rra_servo_base|LessThan5~16_combout\);

-- Location: LCCOMB_X21_Y27_N2
\rra_servo_base|pwm_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_out~2_combout\ = (\rra_servo_base|LessThan5~16_combout\) # ((!\rra_servo_base|pwm_count\(10) & ((\rra_servo_base|pwm_out~1_combout\) # (\rra_servo_base|pwm_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rra_servo_base|pwm_out~1_combout\,
	datab => \rra_servo_base|pwm_count\(10),
	datac => \rra_servo_base|pwm_out~0_combout\,
	datad => \rra_servo_base|LessThan5~16_combout\,
	combout => \rra_servo_base|pwm_out~2_combout\);

-- Location: LCCOMB_X21_Y27_N30
\rra_servo_base|pwm_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|pwm_out~3_combout\ = \rra_servo_base|pwm_out~q\ $ (!\rra_servo_base|pwm_out~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_base|pwm_out~q\,
	datad => \rra_servo_base|pwm_out~2_combout\,
	combout => \rra_servo_base|pwm_out~3_combout\);

-- Location: FF_X21_Y27_N31
\rra_servo_base|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rra_servo_base|clk_1mhz~clkctrl_outclk\,
	d => \rra_servo_base|pwm_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|pwm_out~q\);

-- Location: LCCOMB_X21_Y27_N0
\rra_servo_base|o_pwm_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rra_servo_base|o_pwm_out~feeder_combout\ = \rra_servo_base|pwm_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rra_servo_base|pwm_out~q\,
	combout => \rra_servo_base|o_pwm_out~feeder_combout\);

-- Location: FF_X21_Y27_N1
\rra_servo_base|o_pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rra_servo_base|o_pwm_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rra_servo_base|o_pwm_out~q\);

-- Location: LCCOMB_X2_Y24_N28
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

-- Location: FF_X2_Y24_N29
\keypad|col_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|col_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|col_count\(0));

-- Location: LCCOMB_X2_Y24_N14
\keypad|col_count[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|col_count[1]~0_combout\ = \keypad|col_count\(1) $ (\keypad|col_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad|col_count\(1),
	datad => \keypad|col_count\(0),
	combout => \keypad|col_count[1]~0_combout\);

-- Location: FF_X2_Y24_N15
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

-- Location: LCCOMB_X2_Y24_N20
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

-- Location: FF_X2_Y24_N21
\keypad|key_col[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_col\(0));

-- Location: LCCOMB_X2_Y24_N10
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

-- Location: FF_X2_Y24_N11
\keypad|key_col[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux52~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_col\(1));

-- Location: LCCOMB_X2_Y24_N0
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

-- Location: FF_X2_Y24_N1
\keypad|key_col[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux49~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_col\(2));

-- Location: LCCOMB_X2_Y24_N18
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

-- Location: FF_X2_Y24_N19
\keypad|key_col[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux49~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_col\(3));

-- Location: IOIBUF_X11_Y0_N15
\i_key_row[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_key_row(3),
	o => \i_key_row[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\i_key_row[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_key_row(2),
	o => \i_key_row[2]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\i_key_row[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_key_row(0),
	o => \i_key_row[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\i_key_row[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_key_row(1),
	o => \i_key_row[1]~input_o\);

-- Location: LCCOMB_X2_Y24_N12
\keypad|Mux48~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux48~2_combout\ = (\i_key_row[3]~input_o\ & (!\i_key_row[2]~input_o\ & (!\i_key_row[0]~input_o\ & !\i_key_row[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_row[3]~input_o\,
	datab => \i_key_row[2]~input_o\,
	datac => \i_key_row[0]~input_o\,
	datad => \i_key_row[1]~input_o\,
	combout => \keypad|Mux48~2_combout\);

-- Location: LCCOMB_X3_Y24_N12
\keypad|Mux48~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux48~3_combout\ = (\keypad|Mux48~2_combout\ & (\keypad|col_count\(0) & !\keypad|col_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|Mux48~2_combout\,
	datac => \keypad|col_count\(0),
	datad => \keypad|col_count\(1),
	combout => \keypad|Mux48~3_combout\);

-- Location: LCCOMB_X3_Y24_N26
\keypad|key_next[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_next[0]~0_combout\ = (\i_key_row[0]~input_o\) # ((\i_key_row[1]~input_o\) # ((\i_key_row[2]~input_o\) # (\i_key_row[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_row[0]~input_o\,
	datab => \i_key_row[1]~input_o\,
	datac => \i_key_row[2]~input_o\,
	datad => \i_key_row[3]~input_o\,
	combout => \keypad|key_next[0]~0_combout\);

-- Location: FF_X3_Y24_N13
\keypad|key_next[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux48~3_combout\,
	ena => \keypad|key_next[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(0));

-- Location: LCCOMB_X3_Y24_N4
\keypad|key_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_out[0]~feeder_combout\ = \keypad|key_next\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad|key_next\(0),
	combout => \keypad|key_out[0]~feeder_combout\);

-- Location: LCCOMB_X2_Y24_N24
\keypad|Mux16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux16~1_combout\ = \i_key_row[2]~input_o\ $ (\i_key_row[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_key_row[2]~input_o\,
	datac => \i_key_row[3]~input_o\,
	combout => \keypad|Mux16~1_combout\);

-- Location: LCCOMB_X2_Y24_N2
\keypad|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux16~0_combout\ = (\i_key_row[3]~input_o\) # ((\keypad|err~q\ & (\i_key_row[1]~input_o\ $ (!\i_key_row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_row[1]~input_o\,
	datab => \i_key_row[0]~input_o\,
	datac => \i_key_row[3]~input_o\,
	datad => \keypad|err~q\,
	combout => \keypad|Mux16~0_combout\);

-- Location: LCCOMB_X2_Y24_N16
\keypad|Mux16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux16~2_combout\ = (\keypad|Mux16~1_combout\ & ((\i_key_row[1]~input_o\) # ((\i_key_row[0]~input_o\)))) # (!\keypad|Mux16~1_combout\ & ((\keypad|Mux16~0_combout\) # ((\i_key_row[1]~input_o\ & \i_key_row[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_row[1]~input_o\,
	datab => \keypad|Mux16~1_combout\,
	datac => \i_key_row[0]~input_o\,
	datad => \keypad|Mux16~0_combout\,
	combout => \keypad|Mux16~2_combout\);

-- Location: FF_X2_Y24_N17
\keypad|err\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|err~q\);

-- Location: FF_X3_Y24_N5
\keypad|key_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[0]~feeder_combout\,
	ena => \keypad|ALT_INV_err~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(0));

-- Location: LCCOMB_X2_Y24_N26
\keypad|Mux47~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux47~0_combout\ = (!\i_key_row[1]~input_o\ & (!\i_key_row[2]~input_o\ & (!\i_key_row[3]~input_o\ & \keypad|Mux52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_row[1]~input_o\,
	datab => \i_key_row[2]~input_o\,
	datac => \i_key_row[3]~input_o\,
	datad => \keypad|Mux52~0_combout\,
	combout => \keypad|Mux47~0_combout\);

-- Location: FF_X2_Y24_N27
\keypad|key_next[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux47~0_combout\,
	ena => \keypad|key_next[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(1));

-- Location: LCCOMB_X1_Y24_N24
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

-- Location: FF_X1_Y24_N25
\keypad|key_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[1]~feeder_combout\,
	ena => \keypad|ALT_INV_err~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(1));

-- Location: LCCOMB_X2_Y24_N4
\keypad|Mux46~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux46~0_combout\ = (!\i_key_row[1]~input_o\ & (!\i_key_row[2]~input_o\ & (!\i_key_row[3]~input_o\ & \keypad|Mux49~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_row[1]~input_o\,
	datab => \i_key_row[2]~input_o\,
	datac => \i_key_row[3]~input_o\,
	datad => \keypad|Mux49~1_combout\,
	combout => \keypad|Mux46~0_combout\);

-- Location: FF_X2_Y24_N5
\keypad|key_next[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux46~0_combout\,
	ena => \keypad|key_next[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(2));

-- Location: LCCOMB_X1_Y24_N30
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

-- Location: FF_X1_Y24_N31
\keypad|key_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[2]~feeder_combout\,
	ena => \keypad|ALT_INV_err~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(2));

-- Location: LCCOMB_X2_Y24_N22
\keypad|Mux45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux45~0_combout\ = (!\i_key_row[1]~input_o\ & (!\i_key_row[2]~input_o\ & (!\i_key_row[3]~input_o\ & \keypad|Mux49~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_row[1]~input_o\,
	datab => \i_key_row[2]~input_o\,
	datac => \i_key_row[3]~input_o\,
	datad => \keypad|Mux49~2_combout\,
	combout => \keypad|Mux45~0_combout\);

-- Location: FF_X2_Y24_N23
\keypad|key_next[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux45~0_combout\,
	ena => \keypad|key_next[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(3));

-- Location: LCCOMB_X1_Y24_N8
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

-- Location: FF_X1_Y24_N9
\keypad|key_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[3]~feeder_combout\,
	ena => \keypad|ALT_INV_err~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(3));

-- Location: LCCOMB_X2_Y24_N30
\keypad|Mux44~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux44~2_combout\ = (!\i_key_row[3]~input_o\ & (!\i_key_row[2]~input_o\ & (!\i_key_row[0]~input_o\ & \i_key_row[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_row[3]~input_o\,
	datab => \i_key_row[2]~input_o\,
	datac => \i_key_row[0]~input_o\,
	datad => \i_key_row[1]~input_o\,
	combout => \keypad|Mux44~2_combout\);

-- Location: LCCOMB_X1_Y24_N28
\keypad|Mux44~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux44~3_combout\ = (\keypad|Mux44~2_combout\ & (!\keypad|col_count\(1) & !\keypad|col_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|Mux44~2_combout\,
	datac => \keypad|col_count\(1),
	datad => \keypad|col_count\(0),
	combout => \keypad|Mux44~3_combout\);

-- Location: FF_X1_Y24_N29
\keypad|key_next[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux44~3_combout\,
	ena => \keypad|key_next[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(4));

-- Location: LCCOMB_X1_Y24_N14
\keypad|key_out[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_out[4]~feeder_combout\ = \keypad|key_next\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad|key_next\(4),
	combout => \keypad|key_out[4]~feeder_combout\);

-- Location: FF_X1_Y24_N15
\keypad|key_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[4]~feeder_combout\,
	ena => \keypad|ALT_INV_err~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(4));

-- Location: LCCOMB_X1_Y24_N18
\keypad|Mux43~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux43~2_combout\ = (\keypad|Mux44~2_combout\ & (!\keypad|col_count\(1) & \keypad|col_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|Mux44~2_combout\,
	datac => \keypad|col_count\(1),
	datad => \keypad|col_count\(0),
	combout => \keypad|Mux43~2_combout\);

-- Location: FF_X1_Y24_N19
\keypad|key_next[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux43~2_combout\,
	ena => \keypad|key_next[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(5));

-- Location: LCCOMB_X1_Y24_N16
\keypad|key_out[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_out[5]~feeder_combout\ = \keypad|key_next\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad|key_next\(5),
	combout => \keypad|key_out[5]~feeder_combout\);

-- Location: FF_X1_Y24_N17
\keypad|key_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[5]~feeder_combout\,
	ena => \keypad|ALT_INV_err~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(5));

-- Location: LCCOMB_X1_Y24_N20
\keypad|Mux42~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux42~2_combout\ = (\keypad|Mux44~2_combout\ & (\keypad|col_count\(1) & !\keypad|col_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|Mux44~2_combout\,
	datac => \keypad|col_count\(1),
	datad => \keypad|col_count\(0),
	combout => \keypad|Mux42~2_combout\);

-- Location: FF_X1_Y24_N21
\keypad|key_next[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux42~2_combout\,
	ena => \keypad|key_next[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(6));

-- Location: LCCOMB_X1_Y24_N2
\keypad|key_out[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_out[6]~feeder_combout\ = \keypad|key_next\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad|key_next\(6),
	combout => \keypad|key_out[6]~feeder_combout\);

-- Location: FF_X1_Y24_N3
\keypad|key_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[6]~feeder_combout\,
	ena => \keypad|ALT_INV_err~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(6));

-- Location: LCCOMB_X3_Y24_N28
\keypad|Mux41~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux41~2_combout\ = (!\i_key_row[0]~input_o\ & (!\i_key_row[1]~input_o\ & (\i_key_row[2]~input_o\ & !\i_key_row[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_row[0]~input_o\,
	datab => \i_key_row[1]~input_o\,
	datac => \i_key_row[2]~input_o\,
	datad => \i_key_row[3]~input_o\,
	combout => \keypad|Mux41~2_combout\);

-- Location: LCCOMB_X1_Y24_N6
\keypad|Mux41~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux41~3_combout\ = (\keypad|Mux41~2_combout\ & (!\keypad|col_count\(1) & !\keypad|col_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|Mux41~2_combout\,
	datac => \keypad|col_count\(1),
	datad => \keypad|col_count\(0),
	combout => \keypad|Mux41~3_combout\);

-- Location: FF_X1_Y24_N7
\keypad|key_next[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux41~3_combout\,
	ena => \keypad|key_next[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(7));

-- Location: LCCOMB_X1_Y24_N4
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

-- Location: FF_X1_Y24_N5
\keypad|key_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[7]~feeder_combout\,
	ena => \keypad|ALT_INV_err~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(7));

-- Location: LCCOMB_X3_Y24_N2
\keypad|Mux40~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux40~2_combout\ = (\keypad|Mux41~2_combout\ & (\keypad|col_count\(0) & !\keypad|col_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad|Mux41~2_combout\,
	datac => \keypad|col_count\(0),
	datad => \keypad|col_count\(1),
	combout => \keypad|Mux40~2_combout\);

-- Location: FF_X3_Y24_N3
\keypad|key_next[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux40~2_combout\,
	ena => \keypad|key_next[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(8));

-- Location: LCCOMB_X3_Y24_N14
\keypad|key_out[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_out[8]~feeder_combout\ = \keypad|key_next\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad|key_next\(8),
	combout => \keypad|key_out[8]~feeder_combout\);

-- Location: FF_X3_Y24_N15
\keypad|key_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[8]~feeder_combout\,
	ena => \keypad|ALT_INV_err~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(8));

-- Location: LCCOMB_X4_Y24_N4
\keypad|Mux39~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux39~2_combout\ = (\keypad|Mux41~2_combout\ & (!\keypad|col_count\(0) & \keypad|col_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad|Mux41~2_combout\,
	datac => \keypad|col_count\(0),
	datad => \keypad|col_count\(1),
	combout => \keypad|Mux39~2_combout\);

-- Location: FF_X4_Y24_N5
\keypad|key_next[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux39~2_combout\,
	ena => \keypad|key_next[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(9));

-- Location: LCCOMB_X3_Y24_N16
\keypad|key_out[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_out[9]~feeder_combout\ = \keypad|key_next\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad|key_next\(9),
	combout => \keypad|key_out[9]~feeder_combout\);

-- Location: FF_X3_Y24_N17
\keypad|key_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[9]~feeder_combout\,
	ena => \keypad|ALT_INV_err~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(9));

-- Location: LCCOMB_X3_Y24_N0
\keypad|Mux38~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux38~2_combout\ = (\keypad|Mux48~2_combout\ & (!\keypad|col_count\(0) & !\keypad|col_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|Mux48~2_combout\,
	datac => \keypad|col_count\(0),
	datad => \keypad|col_count\(1),
	combout => \keypad|Mux38~2_combout\);

-- Location: FF_X3_Y24_N1
\keypad|key_next[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux38~2_combout\,
	ena => \keypad|key_next[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(10));

-- Location: LCCOMB_X3_Y24_N30
\keypad|key_out[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_out[10]~feeder_combout\ = \keypad|key_next\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad|key_next\(10),
	combout => \keypad|key_out[10]~feeder_combout\);

-- Location: FF_X3_Y24_N31
\keypad|key_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[10]~feeder_combout\,
	ena => \keypad|ALT_INV_err~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(10));

-- Location: LCCOMB_X2_Y24_N8
\keypad|Mux37~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux37~2_combout\ = (\keypad|Mux48~2_combout\ & (\keypad|col_count\(1) & !\keypad|col_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad|Mux48~2_combout\,
	datac => \keypad|col_count\(1),
	datad => \keypad|col_count\(0),
	combout => \keypad|Mux37~2_combout\);

-- Location: FF_X2_Y24_N9
\keypad|key_next[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux37~2_combout\,
	ena => \keypad|key_next[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(11));

-- Location: LCCOMB_X3_Y24_N24
\keypad|key_out[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_out[11]~feeder_combout\ = \keypad|key_next\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad|key_next\(11),
	combout => \keypad|key_out[11]~feeder_combout\);

-- Location: FF_X3_Y24_N25
\keypad|key_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[11]~feeder_combout\,
	ena => \keypad|ALT_INV_err~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(11));

-- Location: LCCOMB_X2_Y24_N6
\keypad|Mux36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux36~0_combout\ = (!\i_key_row[1]~input_o\ & (!\i_key_row[2]~input_o\ & (!\i_key_row[3]~input_o\ & \keypad|Mux49~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_key_row[1]~input_o\,
	datab => \i_key_row[2]~input_o\,
	datac => \i_key_row[3]~input_o\,
	datad => \keypad|Mux49~0_combout\,
	combout => \keypad|Mux36~0_combout\);

-- Location: FF_X2_Y24_N7
\keypad|key_next[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux36~0_combout\,
	ena => \keypad|key_next[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(12));

-- Location: LCCOMB_X1_Y24_N26
\keypad|key_out[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_out[12]~feeder_combout\ = \keypad|key_next\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad|key_next\(12),
	combout => \keypad|key_out[12]~feeder_combout\);

-- Location: FF_X1_Y24_N27
\keypad|key_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[12]~feeder_combout\,
	ena => \keypad|ALT_INV_err~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(12));

-- Location: LCCOMB_X1_Y24_N12
\keypad|Mux35~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux35~2_combout\ = (\keypad|Mux44~2_combout\ & (\keypad|col_count\(1) & \keypad|col_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad|Mux44~2_combout\,
	datac => \keypad|col_count\(1),
	datad => \keypad|col_count\(0),
	combout => \keypad|Mux35~2_combout\);

-- Location: FF_X1_Y24_N13
\keypad|key_next[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux35~2_combout\,
	ena => \keypad|key_next[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(13));

-- Location: LCCOMB_X1_Y24_N0
\keypad|key_out[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_out[13]~feeder_combout\ = \keypad|key_next\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad|key_next\(13),
	combout => \keypad|key_out[13]~feeder_combout\);

-- Location: FF_X1_Y24_N1
\keypad|key_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[13]~feeder_combout\,
	ena => \keypad|ALT_INV_err~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(13));

-- Location: LCCOMB_X4_Y24_N6
\keypad|Mux34~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux34~2_combout\ = (\keypad|Mux41~2_combout\ & (\keypad|col_count\(0) & \keypad|col_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad|Mux41~2_combout\,
	datac => \keypad|col_count\(0),
	datad => \keypad|col_count\(1),
	combout => \keypad|Mux34~2_combout\);

-- Location: FF_X4_Y24_N7
\keypad|key_next[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux34~2_combout\,
	ena => \keypad|key_next[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(14));

-- Location: LCCOMB_X3_Y24_N22
\keypad|key_out[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_out[14]~feeder_combout\ = \keypad|key_next\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad|key_next\(14),
	combout => \keypad|key_out[14]~feeder_combout\);

-- Location: FF_X3_Y24_N23
\keypad|key_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[14]~feeder_combout\,
	ena => \keypad|ALT_INV_err~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(14));

-- Location: LCCOMB_X1_Y24_N10
\keypad|Mux33~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|Mux33~2_combout\ = (\keypad|Mux48~2_combout\ & (\keypad|col_count\(1) & \keypad|col_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad|Mux48~2_combout\,
	datac => \keypad|col_count\(1),
	datad => \keypad|col_count\(0),
	combout => \keypad|Mux33~2_combout\);

-- Location: FF_X1_Y24_N11
\keypad|key_next[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|Mux33~2_combout\,
	ena => \keypad|key_next[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_next\(15));

-- Location: LCCOMB_X1_Y24_N22
\keypad|key_out[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keypad|key_out[15]~feeder_combout\ = \keypad|key_next\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad|key_next\(15),
	combout => \keypad|key_out[15]~feeder_combout\);

-- Location: FF_X1_Y24_N23
\keypad|key_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keypad|key_out[15]~feeder_combout\,
	ena => \keypad|ALT_INV_err~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad|key_out\(15));

-- Location: IOIBUF_X5_Y29_N15
\low_u~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_low_u,
	o => \low_u~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\low_d~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_low_d,
	o => \low_d~input_o\);

-- Location: IOIBUF_X26_Y29_N29
\mid_u~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mid_u,
	o => \mid_u~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\mid_d~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mid_d,
	o => \mid_d~input_o\);

-- Location: IOIBUF_X23_Y29_N8
\upp_u~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_upp_u,
	o => \upp_u~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\upp_d~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_upp_d,
	o => \upp_d~input_o\);

-- Location: IOIBUF_X39_Y29_N15
\mode[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(0),
	o => \mode[0]~input_o\);

-- Location: IOIBUF_X5_Y29_N29
\mode[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(1),
	o => \mode[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\store~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_store,
	o => \store~input_o\);

ww_l1 <= \l1~output_o\;

ww_l2 <= \l2~output_o\;

ww_m1 <= \m1~output_o\;

ww_m2 <= \m2~output_o\;

ww_u1 <= \u1~output_o\;

ww_u2 <= \u2~output_o\;

ww_w1 <= \w1~output_o\;

ww_g1 <= \g1~output_o\;

ww_b1 <= \b1~output_o\;

ww_o_key_col(0) <= \o_key_col[0]~output_o\;

ww_o_key_col(1) <= \o_key_col[1]~output_o\;

ww_o_key_col(2) <= \o_key_col[2]~output_o\;

ww_o_key_col(3) <= \o_key_col[3]~output_o\;

ww_o_key_test(0) <= \o_key_test[0]~output_o\;

ww_o_key_test(1) <= \o_key_test[1]~output_o\;

ww_o_key_test(2) <= \o_key_test[2]~output_o\;

ww_o_key_test(3) <= \o_key_test[3]~output_o\;

ww_o_key_test(4) <= \o_key_test[4]~output_o\;

ww_o_key_test(5) <= \o_key_test[5]~output_o\;

ww_o_key_test(6) <= \o_key_test[6]~output_o\;

ww_o_key_test(7) <= \o_key_test[7]~output_o\;

ww_o_key_test(8) <= \o_key_test[8]~output_o\;

ww_o_key_test(9) <= \o_key_test[9]~output_o\;

ww_o_key_test(10) <= \o_key_test[10]~output_o\;

ww_o_key_test(11) <= \o_key_test[11]~output_o\;

ww_o_key_test(12) <= \o_key_test[12]~output_o\;

ww_o_key_test(13) <= \o_key_test[13]~output_o\;

ww_o_key_test(14) <= \o_key_test[14]~output_o\;

ww_o_key_test(15) <= \o_key_test[15]~output_o\;

ww_low_target(0) <= \low_target[0]~output_o\;

ww_low_target(1) <= \low_target[1]~output_o\;

ww_low_target(2) <= \low_target[2]~output_o\;

ww_low_target(3) <= \low_target[3]~output_o\;

ww_low_target(4) <= \low_target[4]~output_o\;

ww_low_target(5) <= \low_target[5]~output_o\;

ww_low_target(6) <= \low_target[6]~output_o\;

ww_low_target(7) <= \low_target[7]~output_o\;

ww_low_target(8) <= \low_target[8]~output_o\;
END structure;


