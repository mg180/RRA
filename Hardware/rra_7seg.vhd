library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rra_7seg4 is
	port(
		i_clk   	: in  std_ulogic;
		i_rst   	: in  std_ulogic;

		i_num	 	: in  std_ulogic_vector(13 downto 0);

		o_7seg1		: out std_ulogic_vector(6 downto 0);
		o_7seg2		: out std_ulogic_vector(6 downto 0);
		o_7seg3		: out std_ulogic_vector(6 downto 0);
		o_7seg4		: out std_ulogic_vector(6 downto 0)
    );
end entity;

architecture rtl of rra_7seg4 is
	
begin

display : process(i_clk, i_rst)
  	variable num: std_ulogic_vector(11 downto 0);

    variable dig: integer;
    variable ten: integer;
    variable hun: integer;
    variable tho: integer;

	begin
		if i_rst = '1' then
			o_7seg1 <= (others => '0');
			o_7seg2 <= (others => '0');
			o_7seg3 <= (others => '0');
			o_7seg4 <= (others => '0');
	  	elsif rising_edge(i_clk) then
		  	num := i_num(11 downto 0);

		  	tho := to_integer(unsigned(num))/1000;
		    hun := (to_integer(unsigned(num))-(tho*1000))/100;
		    ten := (to_integer(unsigned(num))-(tho*1000)-(hun*100))/10;
		    dig := to_integer(unsigned(num))-(tho*1000)-(hun*100)-(ten*10);

		    case dig is
				when 0 => o_7seg1 <= "0000001";     
				when 1 => o_7seg1 <= "1001111";   
				when 2 => o_7seg1 <= "0010010";     
				when 3 => o_7seg1 <= "0000110";     
				when 4 => o_7seg1 <= "1001100";      
				when 5 => o_7seg1 <= "0100100";     
				when 6 => o_7seg1 <= "0100000";     
				when 7 => o_7seg1 <= "0001111";     
				when 8 => o_7seg1 <= "0000000";       
				when 9 => o_7seg1 <= "0000100";        
				when others => o_7seg1 <= "1111111";
		    end case;

		    case ten is
				when 0 => o_7seg2 <= "0000001";     
				when 1 => o_7seg2 <= "1001111";   
				when 2 => o_7seg2 <= "0010010";     
				when 3 => o_7seg2 <= "0000110";     
				when 4 => o_7seg2 <= "1001100";      
				when 5 => o_7seg2 <= "0100100";     
				when 6 => o_7seg2 <= "0100000";     
				when 7 => o_7seg2 <= "0001111";     
				when 8 => o_7seg2 <= "0000000";       
				when 9 => o_7seg2 <= "0000100";        
				when others => o_7seg2 <= "1111111";
		    end case;

		    case hun is
				when 0 => o_7seg3 <= "0000001";     
				when 1 => o_7seg3 <= "1001111";   
				when 2 => o_7seg3 <= "0010010";     
				when 3 => o_7seg3 <= "0000110";     
				when 4 => o_7seg3 <= "1001100";      
				when 5 => o_7seg3 <= "0100100";     
				when 6 => o_7seg3 <= "0100000";     
				when 7 => o_7seg3 <= "0001111";     
				when 8 => o_7seg3 <= "0000000";       
				when 9 => o_7seg3 <= "0000100";        
				when others => o_7seg3 <= "1111111";
		    end case;

		    case tho is
				when 0 => o_7seg4 <= "0000001";    
				when 1 => o_7seg4 <= "1001111";   
				when 2 => o_7seg4 <= "0010010";     
				when 3 => o_7seg4 <= "0000110";     
				when 4 => o_7seg4 <= "1001100";      
				when 5 => o_7seg4 <= "0100100";     
				when 6 => o_7seg4 <= "0100000";     
				when 7 => o_7seg4 <= "0001111";     
				when 8 => o_7seg4 <= "0000000";
				when 9 => o_7seg4 <= "0000100";        
				when others => o_7seg4 <= "1111111";
		    end case;
	end if;
  end process display;
end rtl;
