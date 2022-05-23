library ieee;
use ieee.std_logic_1164.all;

entity demux_tb is
  end demux_tb;

architecture behavior of demux_tb is
  signal f  : std_logic_vector (1 downto 0);
  signal s : std_logic_vector (1 downto 0);
  signal a, b, c, d  : std_logic_vector (1 downto 0);
begin

UUT : entity work.demux port map (a => a, b => b, c => c, d => d, f => f, s => s);
stim_proc: process
  begin
  -- hold reset state for 100 ns.

  f <= "00";
  s <= "00";
  wait for 100 ns;
  s <= "01";
  wait for 100 ns;
  s <= "10";
  wait for 100 ns;
  s <= "11";

  wait for 100 ns;
  f <= "01";
  s <= "00";
  wait for 100 ns;
  s <= "01";
  wait for 100 ns;
  s <= "10";
  wait for 100 ns;
  s <= "11";

  wait for 100 ns;
  f <= "10";
  s <= "00";
  wait for 100 ns;
  s <= "01";
  wait for 100 ns;
  s <= "10";
  wait for 100 ns;
  s <= "11";

  wait for 100 ns;
  f <= "11";
  s <= "00";
  wait for 100 ns;
  s <= "01";
  wait for 100 ns;
  s <= "10";
  wait for 100 ns;
  s <= "11";
  wait for 100 ns;

  wait;
  end process;

end;
