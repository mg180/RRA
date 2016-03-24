restart -force
force -freeze sim:/rra_test/uut/rra_servo_lower/i_clk_10mhz 1 0, 0 {50 ns} -r 100ns
force -freeze sim:/rra_test/uut/rra_servo_lower/i_clk_10khz 1 0, 0 {50000 ns} -r 100us