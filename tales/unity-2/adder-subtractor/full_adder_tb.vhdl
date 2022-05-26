library ieee;
use ieee.std_logic_1164.all;

entity full_adder_tb is
  end full_adder_tb;

architecture behavior of full_adder_tb is
  signal a, b, cin : std_logic;
  signal o, cout: std_logic;
begin

UUT : entity work.full_adder port map (a => a, b => b, cin => cin, o => o, cout => cout);
stim_proc: process
  begin

  cin <= '0';
  a <= '1';
  b <= '1';
  wait for 100 ns;

  wait;
  end process;

end;
