library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rra_servo_controller is
  generic(
      STEP      : integer;
      MAX_STEPS : integer   --Must divide exactly by 10000
    );
  port(
      i_clk   : in  std_ulogic;
      i_rst   : in  std_ulogic;

      i_speed   	: in  std_ulogic_vector(3 downto 0);
		  i_offset 	  : in  std_ulogic_vector(7 downto 0);
      o_current 	: out std_ulogic_vector(11 downto 0);
      o_current_i	: out std_ulogic_vector(11 downto 0);
      i_target  	: in  std_ulogic_vector(11 downto 0);
      o_pwm_out 	: out std_ulogic;
	    o_pwm_out_i	: out std_ulogic
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

  signal pwm_count: integer range 0 to 200000;
  signal pwm_count_i: integer range 0 to 200000;

  signal clk_10mhz: std_ulogic;
  signal clk_1khz: std_ulogic;
  signal clk_10mhz_count: integer range 0 to 4;
  signal clk_1khz_count: integer range 0 to 9999;

begin

  move: process(i_rst, clk_1khz)
  begin
    if i_rst = '1' then
      current <= 0;
      target <= 0;
      speed <= 0;

      o_current <= (others => '0');

      delay <= 10;
    else
      if rising_edge(clk_1khz) then

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
        end if;

        speed <= to_integer(unsigned(i_speed));
        target <= to_integer(unsigned(i_target));
        o_current <= std_ulogic_vector(to_unsigned(current, o_current'length));
		    o_current_i <= std_ulogic_vector(to_unsigned(current_i, o_current_i'length));
      end if;
  end process;


  clocks: process(i_clk)  
  begin
    if rising_edge(i_clk) then
      if i_rst = '1' then
        clk_10mhz_count <= 0;
        clk_10mhz <= '0';
        clk_1khz_count <= 0;
        clk_1khz <= '0';
      else
      --1mhz clock
        if clk_10mhz_count < 4 then
          clk_10mhz_count <= clk_10mhz_count + 1;
          clk_10mhz <= '0';
        else
          clk_10mhz_count <= 0;
          clk_10mhz <= '1';

          --1kHz clock
          if clk_1khz_count < 9999 then
            clk_1khz_count <= clk_1khz_count + 1;
            clk_1khz <= '0';
          else  
            clk_1khz_count <= 0;
            clk_1khz <= '1';
          end if;
        end if;
      end if;
    end if;
  end process;

  pwm: process(i_clk, clk_10mhz)
  begin

    if i_rst = '1' then
      pwm_out <= '0';
      o_pwm_out <= '0';
      pwm_count <= 0;
    else
      if rising_edge(clk_10mhz) then
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
      end if;

      if rising_edge(i_clk) then
        o_pwm_out <= pwm_out;
      end if;
    end if;
  end process;
  
  pwm_i: process(i_clk, clk_10mhz)
  begin

    if i_rst = '1' then
      pwm_out_i <= '0';
      o_pwm_out_i <= '0';
      pwm_count_i <= 0;
    else
      if rising_edge(clk_10mhz) then
        if pwm_count_i < 10000 then
          --Stay high for at least 1ms
          pwm_count_i <= pwm_count_i + 1;
          pwm_out_i <= '1';
        elsif pwm_count_i < (10000 + ((current_i*(10000/MAX_STEPS))) + (to_integer(signed(i_offset)))) then
          pwm_count_i <= pwm_count_i + 1;
          pwm_out_i <= '1';
        elsif pwm_count_i < 200000 then
          pwm_count_i <= pwm_count_i + 1;
          pwm_out_i <= '0';
        else
          pwm_count_i <= 0;
          pwm_out_i <= '0';
        end if;
      end if;

      if rising_edge(i_clk) then
        o_pwm_out_i <= pwm_out_i;
      end if;
    end if;
  end process;
  
  current_i <= MAX_STEPS - current;
end rtl;
