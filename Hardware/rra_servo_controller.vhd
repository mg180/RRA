library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rra_servo_controller is
  generic(
      STEP      : integer;
      MAX_STEPS : integer;   --Must divide exactly by 10000
		OFFSET 	 : integer
    );
  port(
      i_clk         : in  std_ulogic;
      i_clk_10mhz   : in  std_ulogic;
		  i_clk_10khz   : in  std_ulogic;
      i_rst         : in  std_ulogic;

      i_speed   	  : in  std_ulogic_vector(3 downto 0);
      o_current 	  : out std_ulogic_vector(11 downto 0);
      o_current_i	  : out std_ulogic_vector(11 downto 0);
      i_target  	  : in  std_ulogic_vector(11 downto 0);
      o_pwm_out 	  : out std_ulogic;
	    o_pwm_out_i	  : out std_ulogic
    );
  
end rra_servo_controller;

architecture rtl of rra_servo_controller is
  signal current:   integer range -900 to 4500;
  signal current_i: integer range -900 to 4500;
  signal target:    integer range -900 to 4500;
  signal speed:     integer range 0 to 15;
  signal pwm_out:   std_ulogic;
  signal pwm_out_i: std_ulogic;

  constant DELAY_MAX: integer:= 10;
  signal  delay:  integer range 1 to DELAY_MAX;

  signal pwm_count:   integer range 0 to 200000;
  signal pwm_count_i: integer range 0 to 200000;

  signal counter_1khz: integer range 1 to 50000;
begin

  move: process(i_clk_10khz)
  begin
      if rising_edge(i_clk_10khz) then
        if i_rst = '1' then
          current <= 0;
          target <= 0;
          speed <= 0;

          o_current <= "000000000000";

          delay <= 10;
        else
          if counter_1khz = 10 then
            --Only execute the following every 1ms
            if delay < DELAY_MAX then
              delay <= delay + 1;
            else
              if current = target then
                --Do nothing
              elsif current < target then
                --Check to see if increment would jump over target
                if (current + (speed*STEP)) > target then
                  --If it does, assign the target (partial step)
                  current <= target;
                else
                  --If not, increment by the full step
                  current <= current + (speed*STEP);
                end if;
              elsif current > target then
                --Check to see if decrement would jump over target
                if (current - (speed*STEP)) < target then
                  --If it does, assign the target (partial step)
                  current <= target;
                else
                  --If not, decrement by the full step
                  current <= current - (speed*STEP);
                end if;
              end if;
              delay <= 1;
            end if;

            speed <= to_integer(unsigned(i_speed));
            target <= to_integer(unsigned(i_target));
            o_current <= std_ulogic_vector(to_unsigned(current, o_current'length));
            o_current_i <= std_ulogic_vector(to_unsigned(current_i, o_current_i'length));
          end if;
        end if;
      end if;
  end process;

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
		  elsif pwm_count < (10000 + ((current*(10000/MAX_STEPS)))) then
			 pwm_count <= pwm_count + 1;
			 pwm_out <= '1';
		  elsif pwm_count < 200000 then
			 pwm_count <= pwm_count + 1;
			 pwm_out <= '0';
		  else
			 pwm_count <= 0;
			 pwm_out <= '0';
		  end if;
		  o_pwm_out <= pwm_out;
      end if;
    end if;
  end process;
  
  pwm_i: process(i_clk_10mhz)
  begin
    if rising_edge(i_clk_10mhz) then
      if i_rst = '1' then
        pwm_out_i <= '0';
        o_pwm_out_i <= '0';
        pwm_count_i <= 0;
      else
	
		  if pwm_count_i < 10000 then
			 --Stay high for at least 1ms
			 pwm_count_i <= pwm_count_i + 1;
			 pwm_out_i <= '1';
		  elsif pwm_count_i < (10000 + ((current_i*(10000/MAX_STEPS))) + OFFSET) then
			 pwm_count_i <= pwm_count_i + 1;
			 pwm_out_i <= '1';
		  elsif pwm_count_i < 200000 then
			 pwm_count_i <= pwm_count_i + 1;
			 pwm_out_i <= '0';
		  else
			 pwm_count_i <= 0;
			 pwm_out_i <= '0';
		  end if;
		  o_pwm_out_i <= pwm_out_i;
      end if;
    end if;
  end process;
  
  cnt_1khz: process(i_clk_10khz)
  begin
	if rising_edge(i_clk_10khz) then
		if counter_1khz < 10 then
			counter_1khz <= counter_1khz + 1;
		else
			counter_1khz <= 1;
		end if;
	end if;
  end process;
  
  current_i <= MAX_STEPS - current;
end rtl;
