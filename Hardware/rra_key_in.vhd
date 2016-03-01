library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rra_key_in is
  port(
      clk       : in  std_ulogic;

      key_col   : out std_ulogic_vector(3 downto 0);
      key_row   : in  std_ulogic_vector(3 downto 0);
      key_out   : out std_ulogic_vector(15 downto 0);
      key_err   : out std_ulogic
    );
  
end rra_key_in;

architecture rtl of rra_key_in is
  signal col_count:   integer range 0 to 3;
  signal key_count:  integer range 0 to 3;    -- Used to determine if no key has been pressed on any column
  signal delay: 		integer range 0 to 50000;

  signal key_next:    std_ulogic_vector(15 downto 0);
  signal err:         std_ulogic;
begin

  read_row: process(clk)
  begin
    if rising_edge(clk) then
		if delay = 0 then
			case col_count is
			  when 0 =>
				 case key_row is
					when "0000"=>
					  err <= '0';
					  key_count <= 1;
					  key_next <= key_next;
					when "0001" =>
					  --Key 1
					  err <= '0';
					  key_count <= 0;
					  key_next <= "0000000000000010";
					when "0010" =>
					  --Key 4
					  err <= '0';
					  key_count <= 0;
					  key_next <= "0000000000010000";
					when "0100" =>
					  --Key 7
					  err <= '0';
					  key_count <= 0;
					  key_next <= "0000000010000000";
					when "1000" =>
					  --Key *
					  err <= '0';
					  key_count <= 0;
					  key_next <= "0000010000000000";
					when others =>
					  --Invalid 
					  err <= '1';
					  key_count <= 0;
					  key_next <= (others => '0');
				 end case;
				 col_count <= 1;
				 key_col <= "0010";
			  when 1 =>
				 case key_row is
					when "0000"=>
					  err <= '0';
					  key_count <= key_count + 1;
					  key_next <= key_next;
					when "0001" =>
					  --Key 2
					  err <= '0';
					  key_count <= key_count;
					  key_next <= "0000000000000100";
					when "0010" =>
					  --Key 5
					  err <= '0';
					  key_count <= key_count;
					  key_next <= "0000000000100000";
					when "0100" =>
					  --Key 8
					  err <= '0';
					  key_count <= key_count;
					  key_next <= "0000000100000000";
					when "1000" =>
					  --Key 0
					  err <= '0';
					  key_count <= key_count;
					  key_next <= "0000000000000001";
					when others =>
					  --Invalid
					  err <= '1';
					  key_count <= key_count;
					  key_next <= (others => '0');
				 end case;
				 col_count <= 2;
				 key_col <= "0100";
			  when 2 =>        
				 case key_row is
					when "0000"=>
					  err <= '0';
					  key_count <= key_count + 1;
					  key_next <= key_next;
					when "0001" =>
					  --Key 3
					  err <= '0';
					  key_count <= key_count;
					  key_next <= "0000000000001000";
					when "0010" =>
					  --Key 6
					  err <= '0';
					  key_count <= key_count;
					  key_next <= "0000000001000000";
					when "0100" =>
					  --Key 9
					  err <= '0';
					  key_count <= key_count;
					  key_next <= "0000001000000000";
					when "1000" =>
					  --Key #
					  err <= '0';
					  key_count <= key_count;
					  key_next <= "0000100000000000";
					when others =>
					  --Invalid
					  err <= '1';
					  key_count <= key_count;
					  key_next <= (others => '0');
				 end case;
				 col_count <= 3;
				 key_col <= "1000";
			  when 3 =>
				 case key_row is
					when "0000"=>
					  err <= '0';
					  if key_count = 3 then
						 key_next <= (others => '0');
					  end if;
					  key_next <= key_next;
					when "0001" =>
					  --Key A
					  err <= '0';
					  key_count <= key_count;
					  key_next <= "0001000000000000";
					when "0010" =>
					  --Key B
					  err <= '0';
					  key_count <= key_count;
					  key_next <= "0010000000000000";
					when "0100" =>
					  --Key C
					  err <= '0';
					  key_count <= key_count;
					  key_next <= "0100000000000000";
					when "1000" =>
					  --Key D
					  err <= '0';
					  key_count <= key_count;
					  key_next <= "1000000000000000";
					when others =>
					  --Invalid
					  err <= '1';
					  key_count <= key_count;
					  key_next <= (others => '0');
				 end case;
				 col_count <= 0;
				 key_col <= "0001";
			  when others =>
				 col_count <= 0;
				 key_col <= "0001";
			end case;
			if err = '0' then
			  key_out <= key_next;
			  key_err <= '0';
			else 
			  key_err <= '1';
			end if;
		 end if;
	end if;
  end process;
  
  clock_divider: process(clk)
  begin
	if rising_edge(clk) then
		if delay < 50000 then
			delay <= delay + 1;
		else
			delay <= 0;
		end if;
	end if;
  end process;
end rtl;
