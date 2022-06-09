library ieee;
use ieee.std_logic_1164.all;

entity ula_tb is
  end ula_tb;

architecture behavior of ula_tb is
  signal A, B : std_logic_vector (7 downto 0);
  signal M, S_0, S_1 : std_logic;
  signal F : std_logic_vector (7 downto 0);
  signal C, O: std_logic;
begin

UUT : entity work.ula port map (A => A, B => B, M => M, S_0 => S_0, S_1 => S_1, F => F, C => C, O => O);
stim_proc: process
  begin

  M <= '0', '1' after 80 ns;
  S_1 <= '0', '1' after 40 ns, '0' after 80 ns, '1' after 120 ns;
  S_0 <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns, '0' after 80 ns, '1' after 100 ns, '0' after 120 ns, '1' after 140 ns;
  A <= "00010001";
  B <= "00000011";
  wait for 100 ns;

  wait;
  end process;

end;
