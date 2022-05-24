library ieee;
use ieee.std_logic_1164.all;

entity coffee_tb is
  end coffee_tb;

architecture behavior of coffee_tb is
        signal i : std_logic_vector (7 downto 0);
        signal o : character;
begin

UUT : entity work.coffee port map (i => i, o => o);
stim_proc: process
  begin

  i <= "10000000";
  wait for 100 ns;
  i <= "01000000";
  wait for 100 ns;
  i <= "00100000";
  wait for 100 ns;
  i <= "00010000";
  wait for 100 ns;
  i <= "00001000";
  wait for 100 ns;
  i <= "00000100";
  wait for 100 ns;
  i <= "00000010";
  wait for 100 ns;
  i <= "00000001";
  wait for 100 ns;

  wait;
  end process;

end;
