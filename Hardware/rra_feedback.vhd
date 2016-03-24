library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rra_feedback is
	port(
		i_clk   		: in  std_ulogic;
		i_rst   		: in  std_ulogic;

		i_select   	: in  std_ulogic_vector(2 downto 0);
		i_ch1	 			: in  std_ulogic_vector(13 downto 0);
		i_ch2	 			: in  std_ulogic_vector(13 downto 0);
		i_ch3	 			: in  std_ulogic_vector(13 downto 0);
		i_ch4	 			: in  std_ulogic_vector(13 downto 0);
		i_ch5	 			: in  std_ulogic_vector(13 downto 0);
		i_ch6	 			: in  std_ulogic_vector(13 downto 0);

		o_7seg1			: out std_ulogic_vector(6 downto 0);
		o_7seg2			: out std_ulogic_vector(6 downto 0);
		o_7seg3			: out std_ulogic_vector(6 downto 0);
		o_7seg4			: out std_ulogic_vector(6 downto 0);

		--LCD
		o_rw				: out std_ulogic;  
		o_rs				: out std_ulogic;  
		o_e 				: out std_ulogic;  
    o_lcd_data  : out std_ulogic_vector(7 DOWNTO 0)
    );
end entity;

architecture rtl of rra_feedback is
	function to_bcd ( bin : std_ulogic_vector(12 downto 0) ) return std_ulogic_vector is
		variable i : integer:=0;
		variable bcd : std_ulogic_vector(15 downto 0) := (others => '0');
		variable bint : std_ulogic_vector(12 downto 0) := bin;

		begin
			for i in 0 to 12 loop  -- repeating 12 times.
				bcd(15 downto 1) := bcd(14 downto 0);  --shifting the bits.
				bcd(0) := bint(12);
				bint(12 downto 1) := bint(11 downto 0);
				bint(0) :='0';


				if(i < 12 and bcd(3 downto 0) > "0100") then --add 3 if BCD digit is greater than 4.
					bcd(3 downto 0) := std_ulogic_vector(unsigned(bcd(3 downto 0)) + 3);
				end if;

				if(i < 12 and bcd(7 downto 4) > "0100") then --add 3 if BCD digit is greater than 4.
					bcd(7 downto 4) := std_ulogic_vector(unsigned(bcd(7 downto 4)) + 3);
				end if;

				if(i < 12 and bcd(11 downto 8) > "0100") then  --add 3 if BCD digit is greater than 4.
					bcd(11 downto 8) := std_ulogic_vector(unsigned(bcd(11 downto 8)) + 3);
				end if;

				if(i < 12 and bcd(15 downto 12) > "0100") then  --add 3 if BCD digit is greater than 4.
					bcd(15 downto 12) := std_ulogic_vector(unsigned(bcd(15 downto 12)) + 3);
				end if;
			end loop;
		return bcd;
	end to_bcd;

	component rra_7seg4
	port(
		i_clk   	: in  std_ulogic;
		i_rst   	: in  std_ulogic;

		i_bcd	 		: in  std_ulogic_vector(15 downto 0);

		o_7seg1		: out std_ulogic_vector(6 downto 0);
		o_7seg2		: out std_ulogic_vector(6 downto 0);
		o_7seg3		: out std_ulogic_vector(6 downto 0);
		o_7seg4		: out std_ulogic_vector(6 downto 0)
    );
	end component;

	component rra_lcd_controller
  port(
    i_clk           : in    std_ulogic;
    i_reset         : in    std_ulogic;
    i_enable        : in    std_ulogic;
    i_lcd_bus       : in    std_ulogic_vector(9 DOWNTO 0);
    o_busy          : out   std_ulogic := '1';  
    o_rw, o_rs, o_e : out   std_ulogic;  
    o_lcd_data      : out   std_ulogic_vector(7 DOWNTO 0));
	end component;

	signal segVal 	: std_ulogic_vector(15 downto 0);
	signal seg1 	: std_ulogic_vector(6 downto 0);
	signal seg2 	: std_ulogic_vector(6 downto 0);
	signal seg3 	: std_ulogic_vector(6 downto 0);
	signal seg4 	: std_ulogic_vector(6 downto 0);

	--LCD
	signal enable : std_ulogic;
	signal busy : std_ulogic;
	signal lcd_bus : std_ulogic_vector(9 downto 0);

	signal ch1_bcd  	: std_ulogic_vector(15 downto 0);
	signal ch2_bcd  	: std_ulogic_vector(15 downto 0);

begin

	segments : rra_7seg4 
	port map(
		i_clk 	=> i_clk,
		i_rst 	=> i_rst,

		i_bcd 	=> segVal,

		o_7seg1 	=> seg1,
		o_7seg2 	=> seg2,
		o_7seg3 	=> seg3,
		o_7seg4 	=> seg4
	);

	lcd : rra_lcd_controller
	port map(
		i_clk           => i_clk,
    i_reset         => i_rst,
    i_enable        => enable,
    i_lcd_bus       => lcd_bus,
    o_busy          => busy,  
    o_rw						=> o_rw,
    o_rs						=> o_rs,
    o_e 						=> o_e,
    o_lcd_data      => o_lcd_data
	);

	conv_bcd : process(i_clk)
	begin
		if rising_edge(i_clk) then
			ch1_bcd <= to_bcd(i_ch1(12 downto 0));
			ch2_bcd <= to_bcd(i_ch2(12 downto 0));
		end if;
	end process;

	seg_display: process(i_clk)
	begin
		if rising_edge(i_clk) then
			case i_select is
		  		when "000" =>
		  			segVal <= ch1_bcd;
		  		when "001" =>
		  			segVal <= ch2_bcd;
		  		when "010" =>
		  			segVal <= ch1_bcd;
		  		when "011" =>
		  			segVal <= ch1_bcd;
		  		when "100" =>
		  			segVal <= ch1_bcd;
		  		when "101" =>
		  			segVal <= ch1_bcd;
		  		when others =>
		  			segVal <= (others => '0');
		  	end case;

		  	o_7seg1 <= seg1;
		  	o_7seg2 <= seg2;
		  	o_7seg3 <= seg3;
		  	o_7seg4 <= seg4;
			end if;
  	end process seg_display;

  write_lcd : process(i_clk)
    variable char  :  integer range 0 to 15 := 0;
  begin
    if rising_edge(i_clk) then
      if(busy = '0' and enable = '0') then
        enable <= '1';
        if(char < 15) then
          char := char + 1;
        else 
        	char := 0;
        end if;
        case char is
        	when 0  => lcd_bus <= "0000000010";  -- Move to first character

        	when 1  => lcd_bus <= "1001001100";	-- 'L'
        	when 2  => lcd_bus <= "1000111010";	-- ':'
          when 3  => lcd_bus(9 downto 4) <= "100011"; lcd_bus(3 downto 0) <= ch1_bcd(15 downto 12);
          when 4  => lcd_bus(9 downto 4) <= "100011"; lcd_bus(3 downto 0) <= ch1_bcd(11 downto 8);
          when 5  => lcd_bus(9 downto 4) <= "100011"; lcd_bus(3 downto 0) <= ch1_bcd(7 downto 4);
          when 6  => lcd_bus(9 downto 4) <= "100011"; lcd_bus(3 downto 0) <= ch1_bcd(3 downto 0);

          when 7  => lcd_bus <= "1000100000";	-- ' '
          when 8  => lcd_bus <= "1000100000";	-- ' '
          when 9  => lcd_bus <= "1000100000";	-- ' '

					when 10  => lcd_bus <= "1001001101";	-- 'M'
        	when 11  => lcd_bus <= "1000111010";	-- ':'
          when 12  => lcd_bus(9 downto 4) <= "100011"; lcd_bus(3 downto 0) <= ch2_bcd(15 downto 12);
          when 13  => lcd_bus(9 downto 4) <= "100011"; lcd_bus(3 downto 0) <= ch2_bcd(11 downto 8);
          when 14  => lcd_bus(9 downto 4) <= "100011"; lcd_bus(3 downto 0) <= ch2_bcd(7 downto 4);
          when 15  => lcd_bus(9 downto 4) <= "100011"; lcd_bus(3 downto 0) <= ch2_bcd(3 downto 0);

          
          when others => 
          --enable <= '0';
          lcd_bus <= "0000000010";
        end case;
      else
        enable <= '0';
      end if;
    end if;
  end process;
end rtl;
