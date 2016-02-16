library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rra_servo_controller is
  generic(
      STEP    : integer
    );
  port(
      i_clk   : in  std_ulogic;
      i_rst   : in  std_ulogic;

      i_speed   : in  std_ulogic_vector(3 downto 0);
      o_current : out std_ulogic_vector(8 downto 0);
      i_target  : in  std_ulogic_vector(8 downto 0);
      o_pwm_out : out std_ulogic
    );
  
end rra_servo_controller;

architecture rtl of rra_servo_controller is
  signal current: integer range 0 to 991;
  signal target: integer range 0 to 991;
  signal speed: unsigned(3 downto 0);
  signal pwm_out: std_ulogic;

  signal interval: integer range 0 to 991;
  signal interval_count: integer range 0 to 991;

  signal pwm_count: integer range 0 to 20000;

  signal clk_1mhz: std_ulogic;
  signal clk_1khz: std_ulogic;
  signal clk_1mhz_count: integer range 0 to 49;
  signal clk_1khz_count: integer range 0 to 999;

begin

  move: process(i_rst, clk_1khz)
  begin
    if i_rst = '1' then
      current <= 0;
      target <= 0;
      speed <= (others => '0');

      o_current <= (others => '0');

      interval_count <= 0;
      interval <= 991;
    else
      if rising_edge(clk_1khz) then

          interval <= (((to_integer(unsigned(i_speed)) * 62) + 62) - 1);

          if interval_count < interval then
            interval_count <= interval_count + 1;
          else
            if current = target then
              --Do nothing
            elsif current < target then
              current <= current + STEP;
            elsif current > target then
              current <= current - STEP;
            end if;
            interval_count <= 0;
          end if;
        end if;

        speed <= unsigned(i_speed);
        target <= to_integer(unsigned(i_target));
        o_current <= std_ulogic_vector(to_unsigned(current, o_current'length));
      end if;
  end process;


  clocks: process(i_clk)  
  begin
    if rising_edge(i_clk) then
      if i_rst = '1' then
        clk_1mhz_count <= 0;
        clk_1mhz <= '0';
        clk_1khz_count <= 0;
        clk_1khz <= '0';
      else
      --1mhz clock
        if clk_1mhz_count < 49 then
          clk_1mhz_count <= clk_1mhz_count + 1;
          clk_1mhz <= '0';
        else
          clk_1mhz_count <= 0;
          clk_1mhz <= '1';

          --1kHz clock
          if clk_1khz_count < 999 then
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

  pwm: process(i_clk, clk_1mhz)
  begin

    if i_rst = '1' then
      pwm_out <= '0';
      o_pwm_out <= '0';
      pwm_count <= 0;
    else
      if rising_edge(clk_1mhz) then
        if pwm_count < 1000 then
          --Stay high for atleast 1ms
          pwm_count <= pwm_count + 1;
          pwm_out <= '1';
        elsif pwm_count < (1000 + (current)) then
          pwm_count <= pwm_count + 1;
          pwm_out <= '1';
        elsif pwm_count < 20000 then
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
end rtl;
