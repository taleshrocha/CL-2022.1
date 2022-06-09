library ieee;
use ieee.std_logic_1164.all;

entity comparator_5_tb is
  end comparator_5_tb;

architecture behavior of comparator_5_tb is
  signal a, b : std_logic_vector (4 downto 0);
  signal x_i, y_i, z_i : std_logic;
  signal x_o, y_o, z_o: std_logic;
begin

UUT : entity work.comparator_5 port map (a => a, b => b, x_i => x_i, y_i => y_i, z_i => z_i, x_o => x_o, y_o => y_o, z_o => z_o);
stim_proc: process
  begin

  a <= "00000";
  b <= "00000";
  x_i <= '1';
  y_i <= '0';
  z_i <= '0';
  wait for 100 ns;
  a <= "10000";
  b <= "00000";
  x_i <= '1';
  y_i <= '0';
  z_i <= '0';
  wait for 100 ns;
  a <= "10000";
  b <= "00010";
  x_i <= '1';
  y_i <= '0';
  z_i <= '0';
  wait for 100 ns;

  wait;
  end process;

end;
