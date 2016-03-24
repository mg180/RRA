library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rra_7seg4 is
	port(
		i_clk   	: in  std_ulogic;
		i_rst   	: in  std_ulogic;

		i_bcd	 	: in  std_ulogic_vector(15 downto 0);

		o_7seg1		: out std_ulogic_vector(6 downto 0);
		o_7seg2		: out std_ulogic_vector(6 downto 0);
		o_7seg3		: out std_ulogic_vector(6 downto 0);
		o_7seg4		: out std_ulogic_vector(6 downto 0)
    );
end entity;

architecture rtl of rra_7seg4 is
	
begin

display : process(i_clk, i_rst)
	begin
		if rising_edge(i_clk) then
			if i_rst = '1' then
				o_7seg1 <= (others => '0');
				o_7seg2 <= (others => '0');
				o_7seg3 <= (others => '0');
				o_7seg4 <= (others => '0');
		  	else

			    case i_bcd(3 downto 0) is
					when "0000" => o_7seg1 <= "0000001";     
					when "0001" => o_7seg1 <= "1001111";   
					when "0010" => o_7seg1 <= "0010010";     
					when "0011" => o_7seg1 <= "0000110";     
					when "0100" => o_7seg1 <= "1001100";      
					when "0101" => o_7seg1 <= "0100100";     
					when "0110" => o_7seg1 <= "0100000";     
					when "0111" => o_7seg1 <= "0001111";     
					when "1000" => o_7seg1 <= "0000000";       
					when "1001" => o_7seg1 <= "0000100";        
					when others => o_7seg1 <= "1111111";
			    end case;

			    case i_bcd(7 downto 4) is
					when "0000" => o_7seg2 <= "0000001";     
					when "0001" => o_7seg2 <= "1001111";   
					when "0010" => o_7seg2 <= "0010010";     
					when "0011" => o_7seg2 <= "0000110";     
					when "0100" => o_7seg2 <= "1001100";      
					when "0101" => o_7seg2 <= "0100100";     
					when "0110" => o_7seg2 <= "0100000";     
					when "0111" => o_7seg2 <= "0001111";     
					when "1000" => o_7seg2 <= "0000000";       
					when "1001" => o_7seg2 <= "0000100";        
					when others => o_7seg2 <= "1111111";
			    end case;

			    case i_bcd(11 downto 8) is
					when "0000" => o_7seg3 <= "0000001";     
					when "0001" => o_7seg3 <= "1001111";   
					when "0010" => o_7seg3 <= "0010010";     
					when "0011" => o_7seg3 <= "0000110";     
					when "0100" => o_7seg3 <= "1001100";      
					when "0101" => o_7seg3 <= "0100100";     
					when "0110" => o_7seg3 <= "0100000";     
					when "0111" => o_7seg3 <= "0001111";     
					when "1000" => o_7seg3 <= "0000000";       
					when "1001" => o_7seg3 <= "0000100";        
					when others => o_7seg3 <= "1111111";
			    end case;

			    case i_bcd(15 downto 12) is
					when "0000" => o_7seg4 <= "0000001";     
					when "0001" => o_7seg4 <= "1001111";   
					when "0010" => o_7seg4 <= "0010010";     
					when "0011" => o_7seg4 <= "0000110";     
					when "0100" => o_7seg4 <= "1001100";      
					when "0101" => o_7seg4 <= "0100100";     
					when "0110" => o_7seg4 <= "0100000";     
					when "0111" => o_7seg4 <= "0001111";     
					when "1000" => o_7seg4 <= "0000000";       
					when "1001" => o_7seg4 <= "0000100";        
					when others => o_7seg4 <= "1111111";
			    end case;
			end if;
		end if;
  	end process display;
end rtl;
