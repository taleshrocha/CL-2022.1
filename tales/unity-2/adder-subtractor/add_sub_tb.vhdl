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

  k <= '0', '1' after 50 ns;
  a <= "00010001";
  b <= "00000011";
  wait for 100 ns;

  k <= '0', '1' after 50 ns;
  a <= "00010001";
  b <= "00000000";
  wait for 100 ns;

  k <= '0', '1' after 50 ns;
  a <= "10000000";
  b <= "10000000";
  wait for 100 ns;


  k <= '0', '1' after 50 ns;
  a <= "00001011";
  b <= "00100000";
  wait for 100 ns;

  wait;
  end process;

end;
