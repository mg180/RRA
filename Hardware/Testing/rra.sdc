## Generated SDC file "rra.sdc"

## Copyright (C) 1991-2013 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

## DATE    "Mon Mar 21 02:00:11 2016"

##
## DEVICE  "EP3C16F484C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clk} -period 20.000 -waveform { 0.000 10.000 } [get_ports {clk}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]} -source [get_pins {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|inclk[0]}] -duty_cycle 50.000 -multiply_by 1 -divide_by 5 -master_clock {clk} [get_pins {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}] 
create_generated_clock -name {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]} -source [get_pins {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|inclk[0]}] -duty_cycle 50.000 -multiply_by 1 -divide_by 5000 -master_clock {clk} [get_pins {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -rise_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -fall_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -rise_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -fall_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -rise_to [get_clocks {clk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -rise_to [get_clocks {clk}] -hold 0.070  
set_clock_uncertainty -rise_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -fall_to [get_clocks {clk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -fall_to [get_clocks {clk}] -hold 0.070  
set_clock_uncertainty -fall_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -rise_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -fall_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -rise_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -fall_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -rise_to [get_clocks {clk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -rise_to [get_clocks {clk}] -hold 0.070  
set_clock_uncertainty -fall_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -fall_to [get_clocks {clk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -fall_to [get_clocks {clk}] -hold 0.070  
set_clock_uncertainty -rise_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {clk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {clk}] -hold 0.070  
set_clock_uncertainty -rise_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {clk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {clk}] -hold 0.070  
set_clock_uncertainty -fall_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {clk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {clk}] -hold 0.070  
set_clock_uncertainty -fall_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {clk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {clk}] -hold 0.070  
set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -setup 0.070  
set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -hold 0.100  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -setup 0.070  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -hold 0.100  
set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -setup 0.070  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -hold 0.100  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -setup 0.070  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {rra_clk_10mhz_10kh|altpll_component|auto_generated|pll1|clk[1]}] -hold 0.100  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

