library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rra_test is

end entity;

architecture test1 of rra_test is
	component rra
		port(
			clk			: in  std_ulogic;
			rst			: in  std_ulogic;

			--Servo Positions
			l1,l2		: out std_ulogic;	
			m1,m2		: out std_ulogic;
			u1,u2		: out std_ulogic;
			w1,g1 		: out std_ulogic;
			b1			: out std_ulogic;

			--Keypad
			i_key_row	: in  std_ulogic_vector(3 downto 0);
			o_key_col 	: out std_ulogic_vector(3 downto 0);

			--7 segment
			display_id : in  std_ulogic_vector(2 downto 0);
			segment7_1 : out std_ulogic_vector(6 downto 0);
	       	segment7_2 : out std_ulogic_vector(6 downto 0);
	       	segment7_3 : out std_ulogic_vector(6 downto 0);
	       	segment7_4 : out std_ulogic_vector(6 downto 0);

			--Control
			led_sel 	: in std_ulogic;
			speed		: in std_ulogic_vector(3 downto 0);
			mode		: in std_ulogic_vector(1 downto 0)
		);
	end component;

	signal clk:		std_ulogic;
	signal rst: 	std_ulogic;

	signal l1,l2:	std_ulogic;	
	signal m1,m2:	std_ulogic;
	signal u1,u2:	std_ulogic;
	signal w1,g1:	std_ulogic;
	signal b1:		std_ulogic;

	signal i_key_row: 	std_ulogic_vector(3 downto 0);
	signal o_key_col: 	std_ulogic_vector(3 downto 0);
	signal o_key_test: 	std_ulogic_vector(15 downto 0);

	signal low_u		: std_ulogic;
	signal low_d		: std_ulogic;
	signal mid_u		: std_ulogic;
	signal mid_d		: std_ulogic;
	signal upp_u		: std_ulogic;
	signal upp_d		: std_ulogic;
	signal store 		: std_ulogic;
	signal speed		: std_ulogic_vector(3 downto 0);
	signal mode			: std_ulogic_vector(1 downto 0);

	constant clk_period : time := 20 ns;
begin

	uut: rra
	port map(
		clk		=> clk,
		rst 	=> rst,
		l1 		=> l1,
		l2 		=> l2,
		m1 		=> m1,
		m2 		=> m2,
		u1 		=> u1,
		u2 		=> u2,
		w1 		=> w1,
		g1 		=> g1,
		b1 		=> b1,
		i_key_row 	=> i_key_row,
		o_key_col 	=> o_key_col,

		display_id => (others => '0'),
		segment7_1 => open,
		segment7_2 => open,
		segment7_3 => open,
		segment7_4 => open,

		led_sel 	=> '0',
		speed 		=> speed,
		mode 		=> mode
	);

	clk_process: process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process;

	test1: process
	begin
		--Set initial values
		speed <= "1111";
		mode <= "01";
		store <= '0';
		--Reset
		rst <= '0';
		wait for clk_period*8001;
		rst <= '1';

		wait for clk_period*1;

		for i in 0 to 800000 loop
			i_key_row <= "0000";
			wait for clk_period*2;
			i_key_row <= "0001";
			wait for clk_period*1;
			i_key_row <= "0010";
			wait for clk_period*1;		
		end loop;

			i_key_row <= "0000";

		--wait for clk_period*4;
		--i_key_row <= "0000";
		
		--wait for clk_period*4;
		--i_key_row <= "0010";
		--wait for clk_period*4;
		--i_key_row <= "0100";
		--wait for clk_period*4;
		--i_key_row <= "1000";

		wait;
	end process;

end;