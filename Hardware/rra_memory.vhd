library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rra_memory is
  port(
      clk           : in  std_ulogic;
      rst           : in  std_ulogic;

      addr          : in  std_ulogic_vector(6 downto 0);
      data_in       : in  std_ulogic_vector(71 downto 0);
      data_out      : out std_ulogic_vector(71 downto 0);
      data_out_prev : out std_ulogic_vector(71 downto 0);
      valid_out     : out std_ulogic;
      l_memory      : in  std_ulogic;
      w_memory      : in  std_ulogic
    );
  
end rra_memory;

architecture rtl of rra_memory is
  type MEMORY is array (127 downto 0) of std_ulogic_vector(71 downto 0); 
  type ENABLE is array (127 downto 0) of std_ulogic;
  signal data: MEMORY;
  signal valid: ENABLE;

begin

  process(clk, rst)
  begin
    if rst = '1' then
      for i in 0 to 127 loop
        data(i) <= (others => '0');
        valid(i) <= '0';
      end loop;
    else
      if rising_edge(clk) then
        if w_memory = '1' then
          data(to_integer(unsigned(addr))) <= data_in; --Set data bits
          valid(to_integer(unsigned(addr))) <= '1';  --Set enable bit
        end if;

        data_out <= data(to_integer(unsigned(addr)))(71 downto 0);
        valid_out <= valid(to_integer(unsigned(addr)));

        --Use data_out_prev to check if arm has moved from the last position
        if addr = "0000000" then
          data_out_prev <= (others => '0');
        else
          data_out_prev <= data(to_integer(unsigned(addr))-1)(71 downto 0);
        end if;
      end if;
    end if;

    
  end process;
end rtl;
