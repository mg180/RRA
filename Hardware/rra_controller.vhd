library ieee;
use IEEE.std_logic_1164.all;

entity controller is
port (
        clk       : in  std_ulogic;
        rst       : in  std_ulogic;
        
        mode      : in  std_ulogic_vector(1 downto 0);
        moving    : in  std_ulogic;
        store     : in  std_ulogic;
        l_keypad  : out std_ulogic;
        l_memory  : out std_ulogic;
        w_memory  : out std_ulogic
);
end controller;

architecture v1 of controller is

  type STATE is (s_WAITING, s_LOAD_KEYPAD, s_CHECK_KEYPAD, 
                 s_SET_MEMORY_NEXT, s_GET_MEMORY_NEXT,
                 s_MOVING);
  signal c_state, n_state: STATE;

begin

  process (clk, rst)
  begin
    if (rst = '1') then
      c_state <= s_WAITING;
  elsif (rising_edge(clk)) then
      c_state <= n_state;
  end if;
  end process;

  process (c_state)
  begin
    if rising_edge(clk) then
      case c_state is
        when s_WAITING =>
          case mode is
            when "00" =>  --Manual
              l_keypad <= '1';
              l_memory <= '0';
              n_state  <= s_LOAD_KEYPAD;
            when "01" =>  --Record
              l_keypad <= '0';
              l_memory <= '0';
              n_state  <= s_CHECK_KEYPAD;
            when "10" =>  --Playback
              l_keypad <= '0';
              l_memory <= '1';
              n_state  <= s_GET_MEMORY_NEXT;
            when others=> --Unknown
              l_keypad <= '0';
              l_memory <= '0';
              n_state  <= s_WAITING;
          end case;

          w_memory <= '0';

        when s_LOAD_KEYPAD =>
          l_keypad <= '0';
          l_memory <= '0';
          w_memory <= '0';
          if moving = '1' then
            n_state <= s_MOVING;
          else 
            n_state <= s_WAITING;
          end if;

        when s_CHECK_KEYPAD =>
          if store = '1' then
            l_keypad <= '0';
            w_memory <= '1';
            n_state  <= s_SET_MEMORY_NEXT;
          else 
            l_keypad <= '1';
            w_memory <= '0';
            n_state  <= s_LOAD_KEYPAD;
          end if;

          l_memory <= '0';

        when s_GET_MEMORY_NEXT =>
          l_keypad <= '0';
          l_memory <= '0';
          w_memory <= '0';
          if moving = '1' then
            n_state <= s_MOVING;
          else 
            n_state <= s_WAITING;
          end if;

        when s_SET_MEMORY_NEXT =>
          l_keypad <= '0';
          l_memory <= '0';
          w_memory <= '0';
          n_state <= s_WAITING;

        when s_MOVING =>
          l_keypad <= '0';
          l_memory <= '0';
          w_memory <= '0';
          if moving = '1' then
            n_state <= s_MOVING;
          else 
            n_state <= s_WAITING;
          end if;
      end case;
    end if;

  end process;

end v1;