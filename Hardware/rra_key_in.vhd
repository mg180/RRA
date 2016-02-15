library ieee;
use ieee.std_logic_1164.all;

entity rra_memory is
  port(
      clk       : in  std_ulogic;
      rst       : in  std_ulogic;

      key_col   : in  std_ulogic_vector(3 downto 0);
      key_row   : in  std_ulogic_vector(3 downto 0);
      key_out   : out std_ulogic_vector(15 downto 0)
    );
  
end rra_memory;

architecture rtl of rra_memory is
  type MEMORY is array (255 downto 0) of std_ulogic_vector(63 downto 0);
  signal data: MEMORY;

begin

  process(clk, rst)
  begin
    if rst = '1' then
      for i in 0 to 255 loop
        data(i) <= (others => '0');
      end loop;
    else
      if rising_edge(clk) then
        if w_memory = '1' then
          data(to_integer(unsigned(addr))) <= data_in;
        end if;

        data_out <= data(to_integer(unsigned(addr)));
      end if;
    end if;

    
  end process;
end rtl;
