library ieee;
use ieee.std_logic_1164.all;

entity comparator_tb is
  end comparator_tb;

architecture behavior of comparator_tb is
  signal a, b, c : std_logic_vector(7 downto 0) ;
  signal o : std_logic_vector(7 downto 0);
begin

UUT : entity work.comparator port map (a => a, b => b, c => c, o => o);
stim_proc: process
  begin

  a <= "10000000";
  b <= "00000000";
  c <= "00000000";
  wait for 100 ns;
  a <= "00000001";
  b <= "00000001";
  c <= "00000000";
  wait for 100 ns;
  a <= "10000000";
  b <= "10000000";
  c <= "10000000";
  wait for 100 ns;

  wait;
  end process;

end;
