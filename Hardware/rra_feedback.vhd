library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rra_feedback is
	port(
		i_clk   	: in  std_ulogic;
		i_rst   	: in  std_ulogic;

		i_select   	: in  std_ulogic_vector(2 downto 0);
		i_ch1	 	: in  std_ulogic_vector(13 downto 0);
		i_ch2	 	: in  std_ulogic_vector(13 downto 0);
		i_ch3	 	: in  std_ulogic_vector(13 downto 0);
		i_ch4	 	: in  std_ulogic_vector(13 downto 0);
		i_ch5	 	: in  std_ulogic_vector(13 downto 0);
		i_ch6	 	: in  std_ulogic_vector(13 downto 0);

		o_7seg1		: out std_ulogic_vector(6 downto 0);
		o_7seg2		: out std_ulogic_vector(6 downto 0);
		o_7seg3		: out std_ulogic_vector(6 downto 0);
		o_7seg4		: out std_ulogic_vector(6 downto 0)
    );
end entity;

architecture rtl of rra_feedback is
	component rra_7seg4
	port(
		i_clk   	: in  std_ulogic;
		i_rst   	: in  std_ulogic;

		i_num	 	: in  std_ulogic_vector(13 downto 0);

		o_7seg1		: out std_ulogic_vector(6 downto 0);
		o_7seg2		: out std_ulogic_vector(6 downto 0);
		o_7seg3		: out std_ulogic_vector(6 downto 0);
		o_7seg4		: out std_ulogic_vector(6 downto 0)
    );
	end component;

	signal segVal 	: std_ulogic_vector(13 downto 0);
	signal seg1 	: std_ulogic_vector(6 downto 0);
	signal seg2 	: std_ulogic_vector(6 downto 0);
	signal seg3 	: std_ulogic_vector(6 downto 0);
	signal seg4 	: std_ulogic_vector(6 downto 0);

begin

	segments : rra_7seg4 
	port map(
		i_clk 	=> i_clk,
		i_rst 	=> i_rst,

		i_num 	=> segVal,

		o_7seg1 	=> seg1,
		o_7seg2 	=> seg2,
		o_7seg3 	=> seg3,
		o_7seg4 	=> seg4
	);

	seg_display: process(i_clk)
	begin
		if rising_edge(i_clk) then
			case i_select is
		  		when "000" =>
		  			segVal <= i_ch1;
		  		when "001" =>
		  			segVal <= i_ch2;
		  		when "010" =>
		  			segVal <= i_ch3;
		  		when "011" =>
		  			segVal <= i_ch4;
		  		when "100" =>
		  			segVal <= i_ch5;
		  		when "101" =>
		  			segVal <= i_ch6;
		  		when others =>
		  			segVal <= (others => '0');
		  	end case;

		  	o_7seg1 <= seg1;
		  	o_7seg2 <= seg2;
		  	o_7seg3 <= seg3;
		  	o_7seg4 <= seg4;
		end if;
  	end process seg_display;

end rtl;
