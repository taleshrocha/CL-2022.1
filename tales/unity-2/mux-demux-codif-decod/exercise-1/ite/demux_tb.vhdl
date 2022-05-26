library ieee;
use ieee.std_logic_1164.all;

entity demux_tb is
  end demux_tb;

architecture behavior of demux_tb is
  signal i  : std_logic_vector (1 downto 0);
  signal k : std_logic_vector (1 downto 0);
  signal a, b, c, d  : std_logic_vector (1 downto 0);
begin

UUT : entity work.demux port map (a => a, b => b, c => c, d => d, i => i, k => k);
stim_proc: process
  begin

  i <= "00";
  k <= "00";
  wait for 100 ns;
  k <= "01";
  wait for 100 ns;
  k <= "10";
  wait for 100 ns;
  k <= "11";

  wait for 100 ns;
  i <= "01";
  k <= "00";
  wait for 100 ns;
  k <= "01";
  wait for 100 ns;
  k <= "10";
  wait for 100 ns;
  k <= "11";

  wait for 100 ns;
  i <= "10";
  k <= "00";
  wait for 100 ns;
  k <= "01";
  wait for 100 ns;
  k <= "10";
  wait for 100 ns;
  k <= "11";

  wait for 100 ns;
  i <= "11";
  k <= "00";
  wait for 100 ns;
  k <= "01";
  wait for 100 ns;
  k <= "10";
  wait for 100 ns;
  k <= "11";
  wait for 100 ns;

  wait;
  end process;

end;
