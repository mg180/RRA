library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity test1 is
  port(clk_50mhz  : in  std_ulogic;
       leds       : out std_logic_vector(9 downto 0);
       segment7_1 : out std_logic_vector(6 downto 0);
       segment7_2 : out std_logic_vector(6 downto 0);
       segment7_3 : out std_logic_vector(6 downto 0);
       segment7_4 : out std_logic_vector(6 downto 0);
       reset      : in  std_logic; -- Active low
	    servo      : out std_logic_vector(5 downto 0);
       buttons    : in  std_logic_vector(9 downto 0)
       );
end test1;

architecture rtl of test1 is
  signal prescaler       : integer                       := 0;  --Bad pratice
  signal random_counter  : integer                       := 0;
  signal random_counter2 : integer                       := 0;
  signal clk_1hz         : std_logic;
  signal clk_10hz        : std_logic;
  signal clk_20ms        : std_logic;
  signal test            : integer                       := 9;
  signal testnumber      : integer                       := 1234;
  signal test7           : std_logic_vector (3 downto 0) := "0110";
  signal pwm1_duty		 : integer := 75000;  --50000 = 1ms, 75000 = 1.5ms, 100000 = 2ms
  
  signal servo5			 : integer;
  signal servo5inv		 : integer; --Servo5 but inverted
  
  signal servo3			 : integer;
  signal servo3inv		 : integer;
  
  signal servo1			 : integer;
  signal servo1inv		 : integer;
  
  signal keypad          : std_logic_vector(15 downto 0);
  
  signal servopositionto7seg : integer;
begin

  -------------------------------------------------
  -- Clock prescalers 
  -- async reset to 0.
  -- input 50Mhz(clk_50mhz)
  -- output 50Hz, 1Hz (clk_20ms, clk_1hz)
  -------------------------------------------------
  process(clk_50mhz,reset)
   variable cnt_1hz : integer;
   variable cnt_10hz : integer;
	variable cnt_20ms: integer;
  begin
    if reset = '0' then
      clk_1hz <= '0';
		clk_10hz <= '0';
      clk_20ms <= '0';
		cnt_10hz := 0;
      cnt_1hz := 0;
		cnt_20ms:= 0;
    elsif rising_edge(clk_50mhz) then
	 
	 --Generate 1Hz clk (1s)
      if (cnt_1hz = 25000000) then
        clk_1hz     <= not(clk_1hz);
        cnt_1hz     := 0;
      else
        cnt_1hz := cnt_1hz+1;
      end if;
		
		--Generate 10Hz clk (0.1s)
      if (cnt_10hz = 2500000) then
        clk_10hz     <= not(clk_10hz);
        cnt_10hz     := 0;
      else
        cnt_10hz := cnt_10hz+1;
      end if;
		
		--Generate 20ms clk (50Hz)
		if (cnt_20ms = 500000) then
		 clk_20ms <= not(clk_20ms);
        cnt_20ms     := 0;
      else
        cnt_20ms := cnt_20ms+1;
      end if;
		
    end if;
  end process;
------------------------------------------------------
-- end of clk generation
------------------------------------------------------


  
  ------------------------------------------------------
  -- Drive Servo
  ------------------------------------------------------
  process (clk_50mhz, reset)
	variable pwm1counter		:integer;
  begin
	if (reset = '0') then
		servo <= (others => '0');	--If reset then all servos will have no signal (zero drive)
	else
		if rising_edge(clk_50mhz)then
			pwm1counter := pwm1counter+1;
			
			if (pwm1counter < servo5) 		then servo(4) <= '1'; else servo(4) <= '0'; end if;
			if (pwm1counter < servo5inv) 	then servo(5) <= '1'; else servo(5) <= '0'; end if;
			if (pwm1counter < servo3) 		then servo(2) <= '1'; else servo(2) <= '0'; end if;
			if (pwm1counter < servo3inv) 	then servo(3) <= '1'; else servo(3) <= '0'; end if;
			if (pwm1counter < servo1) 		then servo(0) <= '1'; else servo(0) <= '0'; end if;
			if (pwm1counter < servo1inv) 	then servo(1) <= '1'; else servo(1) <= '0'; end if;
			
			if pwm1counter = 1000000 then	--This is 20mS, every 20ms reset
				pwm1counter := 0;
			end if;
			
		end if;
	end if;
  end process;
  ----------------END PWM-------------------------------

  --Random counters to drive pwm 0-180..
  process(clk_20ms,reset)
	variable updowncounter:integer:=0;
	variable directionanddistance:integer:=1;
	variable updown :integer :=1; --1 = up 2 = down
  begin
	 if reset = '0' then
		  updowncounter := 90;
		  
	 elsif rising_edge(clk_10hz) then
	 
		  if updowncounter >= 180 then
			updown := 0;
			elsif updowncounter <= 0 then
			updown := 1;
		  end if;
		  
		  if updown = 1 then
		   updowncounter := updowncounter+directionanddistance;
		   else
		   updowncounter := updowncounter-directionanddistance;
		  end if;
		  
		  pwm1_duty <= (updowncounter*277)+50000;
		  servo5 <=(updowncounter*277)+50000;
		  servo3 <=(updowncounter*277)+50000;
		  servo1 <=(updowncounter*277)+50000;
		  
		  servopositionto7seg <= updowncounter;
	  end if;
  end process;
  
  servo5inv <= 150000-servo5;	-- Inverter to drive opposite servo
  servo3inv <= 150000-servo3;	-- Inverter to drive opposite servo
  servo1inv <= 150000-servo1;	-- Inverter to drive opposite servo
  
  ----------------------------------------------------------------------
  -- 10Hz Counter
  ----------------------------------------------------------------------
  process (clk_10hz, reset)
  begin
    if reset = '0' then
      random_counter <= 0;
    elsif(rising_edge(clk_10hz))then
      if random_counter = 9999 then
        random_counter <= 0;
      else
        random_counter <= random_counter +1;
      end if;
    end if;
  end process;
 ---------------------------------------------------------------------

 
----------------------------------------------------------------------
-- 7 Seg display - int input max 9999
----------------------------------------------------------------------
  seg7dis : process(servopositionto7seg)
    variable dig : integer;
    variable ten : integer;
    variable hun : integer;
    variable tho : integer;
  begin
    tho := servopositionto7seg /1000;
    hun := (servopositionto7seg -(tho*1000))/100;
    ten := (servopositionto7seg -(tho*1000)-(hun*100))/10;
    dig := servopositionto7seg -(tho*1000)-(hun*100)-(ten*10);

    case std_logic_vector(to_unsigned(dig, 4)) is
      when "0000" => segment7_1 <= "0000001";  --   
      when "0001" => segment7_1 <= "1001111";  -- 
      when "0010" => segment7_1 <= "0010010";  --   
      when "0011" => segment7_1 <= "0000110";  --   
      when "0100" => segment7_1 <= "1001100";  --    
      when "0101" => segment7_1 <= "0100100";  --   
      when "0110" => segment7_1 <= "0100000";  --   
      when "0111" => segment7_1 <= "0001111";  --   
      when "1000" => segment7_1 <= "0000000";  --     
      when "1001" => segment7_1 <= "0000100";  --      
      when others => segment7_1 <= "1111111";  -- when anything other is types
    end case;

    case std_logic_vector(to_unsigned(ten, 4)) is
      when "0000" => segment7_2 <= "0000001";  --   
      when "0001" => segment7_2 <= "1001111";  -- 
      when "0010" => segment7_2 <= "0010010";  --   
      when "0011" => segment7_2 <= "0000110";  --   
      when "0100" => segment7_2 <= "1001100";  --    
      when "0101" => segment7_2 <= "0100100";  --   
      when "0110" => segment7_2 <= "0100000";  --   
      when "0111" => segment7_2 <= "0001111";  --   
      when "1000" => segment7_2 <= "0000000";  --     
      when "1001" => segment7_2 <= "0000100";  --      
      when others => segment7_2 <= "1111111";  -- when anything other is types
    end case;

    case std_logic_vector(to_unsigned(hun, 4)) is
      when "0000" => segment7_3 <= "0000001";  --   
      when "0001" => segment7_3 <= "1001111";  -- 
      when "0010" => segment7_3 <= "0010010";  --   
      when "0011" => segment7_3 <= "0000110";  --   
      when "0100" => segment7_3 <= "1001100";  --    
      when "0101" => segment7_3 <= "0100100";  --   
      when "0110" => segment7_3 <= "0100000";  --   
      when "0111" => segment7_3 <= "0001111";  --   
      when "1000" => segment7_3 <= "0000000";  --     
      when "1001" => segment7_3 <= "0000100";  --      
      when others => segment7_3 <= "1111111";  -- when anything other is types
    end case;

    case std_logic_vector(to_unsigned(tho, 4)) is
      when "0000" => segment7_4 <= "0000001";  --   
      when "0001" => segment7_4 <= "1001111";  -- 
      when "0010" => segment7_4 <= "0010010";  --   
      when "0011" => segment7_4 <= "0000110";  --   
      when "0100" => segment7_4 <= "1001100";  --    
      when "0101" => segment7_4 <= "0100100";  --   
      when "0110" => segment7_4 <= "0100000";  --   
      when "0111" => segment7_4 <= "0001111";  --   
      when "1000" => segment7_4 <= "0000000";  --     
      when "1001" => segment7_4 <= "0000100";  --      
      when others => segment7_4 <= "1111111";  -- when anything other is types
    end case;
  end process seg7dis;
-------------------------------------------------------------------------------
  leds <= std_logic_vector(to_unsigned(random_counter, 10));
  
end rtl;

