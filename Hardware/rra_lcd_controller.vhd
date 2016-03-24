--------------------------------------------------------------------------------
--
--   FileName:         lcd_controller.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 32-bit Veo_rsion 11.1 Build 173 SJ Full Veo_rsion
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Veo_rsion History
--   Veo_rsion 1.0 6/2/2006 Scott Lao_rson
--     Initial Public Release
--    Veo_rsion 2.0 6/13/2012 Scott Lao_rson
--
--   CLOCK FREQUENCY: to change system clock frequency, change Line 65
--
--   LCD INITIALIZATION SETTINGS: to change, comment/uncomment lines:
--
--   Function Set  
--      2-line mode, display on             Line 93    o_lcd_data <= "00111100";
--      1-line mode, display on             Line 94    o_lcd_data <= "00110100";
--      1-line mode, display off            Line 95    o_lcd_data <= "00110000";
--      2-line mode, display off            Line 96    o_lcd_data <= "00111000";
--   Display ON/OFF
--      display on, cuo_rsor off, blink off   Line 104   o_lcd_data <= "00001100";
--      display on, cuo_rsor off, blink on    Line 105   o_lcd_data <= "00001101";
--      display on, cuo_rsor on, blink off    Line 106   o_lcd_data <= "00001110";
--      display on, cuo_rsor on, blink on     Line 107   o_lcd_data <= "00001111";
--      display off, cuo_rsor off, blink off  Line 108   o_lcd_data <= "00001000";
--      display off, cuo_rsor off, blink on   Line 109   o_lcd_data <= "00001001";
--      display off, cuo_rsor on, blink off   Line 110   o_lcd_data <= "00001010";
--      display off, cuo_rsor on, blink on    Line 111   o_lcd_data <= "00001011";
--   Entry Mode Set
--      increment mode, entire shift off    Line 127   o_lcd_data <= "00000110";
--      increment mode, entire shift on     Line 128   o_lcd_data <= "00000111";
--      decrement mode, entire shift off    Line 129   o_lcd_data <= "00000100";
--      decrement mode, entire shift on     Line 130   o_lcd_data <= "00000101";
--    
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY rra_lcd_controller IS
  PORT(
    i_clk           : in    STD_LOGIC;  --system clock
    i_reset         : in    STD_LOGIC;  --active low reinitializes lcd
    i_enable        : in    STD_LOGIC;  --latches data into lcd controller
    i_lcd_bus       : in    STD_LOGIC_VECTOR(9 DOWNTO 0);  --data and control signals
    o_busy          : out   STD_LOGIC := '1';  --lcd controller o_busy/idle feedback
    o_rw, o_rs, o_e : out   STD_LOGIC;  --read/write, setup/data, and enable for lcd
    o_lcd_data        : out   STD_LOGIC_VECTOR(7 DOWNTO 0)); --data signals for lcd
END rra_lcd_controller;

ARCHITECTURE controller OF rra_lcd_controller IS
  TYPE CONTROL IS(power_up, initialize, ready, send);
  SIGNAL    state      : CONTROL;
  CONSTANT  freq       : INTEGER := 50; --system clock frequency in MHz
BEGIN
  PROCESS(i_clk)
    VARIABLE clk_count : INTEGER := 0; --event counter for timing
  BEGIN
  IF(i_clk'EVENT and i_clk = '1') THEN
    
      CASE state IS
        
        --wait 50 ms to ensure Vdd has risen and required LCD wait is met
        WHEN power_up =>
          o_busy <= '1';
          IF(clk_count < (50000 * freq)) THEN    --wait 50 ms
            clk_count := clk_count + 1;
            state <= power_up;
          ELSE                                   --power-up complete
            clk_count := 0;
            o_rs <= '0';
            o_rw <= '0';
            o_lcd_data <= "00110000";
            state <= initialize;
          END IF;
          
        --cycle through initialization sequence  
        WHEN initialize =>
          o_busy <= '1';
          clk_count := clk_count + 1;
          IF(clk_count < (10 * freq)) THEN       --function set
            o_lcd_data <= "00111100";      --2-line mode, display on
            --o_lcd_data <= "00110100";    --1-line mode, display on
            --o_lcd_data <= "00110000";    --1-line mdoe, display off
            --o_lcd_data <= "00111000";    --2-line mode, display off
            o_e <= '1';
            state <= initialize;
          ELSIF(clk_count < (60 * freq)) THEN    --wait 50 us
            o_lcd_data <= "00000000";
            o_e <= '0';
            state <= initialize;
          ELSIF(clk_count < (70 * freq)) THEN    --display on/off control
            o_lcd_data <= "00001100";      --display on, cuo_rsor off, blink off
            --o_lcd_data <= "00001101";    --display on, cuo_rsor off, blink on
            --o_lcd_data <= "00001110";    --display on, cuo_rsor on, blink off
            --o_lcd_data <= "00001111";    --display on, cuo_rsor on, blink on
            --o_lcd_data <= "00001000";    --display off, cuo_rsor off, blink off
            --o_lcd_data <= "00001001";    --display off, cuo_rsor off, blink on
            --o_lcd_data <= "00001010";    --display off, cuo_rsor on, blink off
            --o_lcd_data <= "00001011";    --display off, cuo_rsor on, blink on            
            o_e <= '1';
            state <= initialize;
          ELSIF(clk_count < (120 * freq)) THEN   --wait 50 us
            o_lcd_data <= "00000000";
            o_e <= '0';
            state <= initialize;
          ELSIF(clk_count < (130 * freq)) THEN   --display clear
            o_lcd_data <= "00000001";
            o_e <= '1';
            state <= initialize;
          ELSIF(clk_count < (2130 * freq)) THEN  --wait 2 ms
            o_lcd_data <= "00000000";
            o_e <= '0';
            state <= initialize;
          ELSIF(clk_count < (2140 * freq)) THEN  --entry mode set
            o_lcd_data <= "00000110";      --increment mode, entire shift off
            --o_lcd_data <= "00000111";    --increment mode, entire shift on
            --o_lcd_data <= "00000100";    --decrement mode, entire shift off
            --o_lcd_data <= "00000101";    --decrement mode, entire shift on
            o_e <= '1';
            state <= initialize;
          ELSIF(clk_count < (2200 * freq)) THEN  --wait 60 us
            o_lcd_data <= "00000000";
            o_e <= '0';
            state <= initialize;
          ELSE                                   --initialization complete
            clk_count := 0;
            o_busy <= '0';
            state <= ready;
          END IF;    
       
        --wait for the enable signal and then latch in the instruction
        WHEN ready =>
          IF(i_enable = '1') THEN
            o_busy <= '1';
            o_rs <= i_lcd_bus(9);
            o_rw <= i_lcd_bus(8);
            o_lcd_data <= i_lcd_bus(7 DOWNTO 0);
            clk_count := 0;            
            state <= send;
          ELSE
            o_busy <= '0';
            o_rs <= '0';
            o_rw <= '0';
            o_lcd_data <= "00000000";
            clk_count := 0;
            state <= ready;
          END IF;
        
        --send instruction to lcd        
        WHEN send =>
        o_busy <= '1';
        IF(clk_count < (50 * freq)) THEN  --do not exit for 50us
           o_busy <= '1';
           IF(clk_count < freq) THEN      --negative enable
            o_e <= '0';
           ELSIF(clk_count < (14 * freq)) THEN  --positive enable half-cycle
            o_e <= '1';
           ELSIF(clk_count < (27 * freq)) THEN  --negative enable half-cycle
            o_e <= '0';
           END IF;
           clk_count := clk_count + 1;
           state <= send;
        ELSE
          clk_count := 0;
          state <= ready;
        END IF;

      END CASE;    
    
      --reset
      IF(i_reset = '1') THEN
          state <= power_up;
      END IF;
    
    END IF;
  END PROCESS;
END controller;
