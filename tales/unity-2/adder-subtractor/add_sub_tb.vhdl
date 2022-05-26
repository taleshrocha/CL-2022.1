library ieee;
use ieee.std_logic_1164.all;

entity add_sub_tb is
  end add_sub_tb;

architecture behavior of add_sub_tb is
  signal a, b : std_logic_vector (7 downto 0);
  signal k: std_logic;
  signal o: std_logic_vector (7 downto 0);
  signal over: std_logic;
begin

UUT : entity work.add_sub port map (a => a, b => b, k => k, o => o, over => over);
stim_proc: process
  begin

  k <= '0';
  a <= "00000001";
  b <= "00000001";
  wait for 100 ns;
  k <= '1';
  wait for 100 ns;

  wait;
  end process;

end;
