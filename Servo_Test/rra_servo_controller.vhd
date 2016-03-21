library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rra_servo_controller is
  generic(
      STEP      : integer;
      MAX_STEPS : integer   --Must divide exactly by 10000
    );
  port(
      i_clk         : in  std_ulogic;
      i_clk_1khz   : in  std_ulogic;
      i_clk_10mhz   : in  std_ulogic;
      i_rst         : in  std_ulogic;

      i_speed   	  : in  std_ulogic_vector(3 downto 0);
		i_offset 		: in  std_ulogic_vector(7 downto 0);
  
      i_target  	  : in  std_ulogic_vector(9 downto 0);
      o_pwm_out 	  : out std_ulogic
    );
  
end rra_servo_controller;

architecture rtl of rra_servo_controller is
  signal target:    integer range 0 to 1023;
  signal speed:     integer range 0 to 15;
  signal pwm_out:   std_ulogic;
  signal pwm_out_i: std_ulogic;

  constant DELAY_MAX: integer:= 10;
  signal  delay:  integer range 1 to DELAY_MAX;

  signal pwm_count: integer range 0 to 200000;
  signal pwm_count_i: integer range 0 to 200000;
begin

  pwm: process(i_clk_10mhz)
  begin
    if rising_edge(i_clk_10mhz) then
      if i_rst = '1' then
        pwm_out <= '0';
        o_pwm_out <= '0';
        pwm_count <= 0;
      else
        if pwm_count < 10000 then
          --Stay high for at least 1ms
          pwm_count <= pwm_count + 1;
          pwm_out <= '1';
        elsif pwm_count < (10000 + (55*target)) then
          pwm_count <= pwm_count + 1;
          pwm_out <= '1';
        elsif pwm_count < 200000 then
          pwm_count <= pwm_count + 1;
          pwm_out <= '0';
        else
          pwm_count <= 0;
          pwm_out <= '1';
        end if;

        o_pwm_out <= pwm_out;
		  target <= to_integer(unsigned(i_target));
      end if;
    end if;
  end process;
end rtl;
