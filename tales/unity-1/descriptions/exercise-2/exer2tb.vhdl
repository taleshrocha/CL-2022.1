library ieee;
use ieee.std_logic_1164.all;

entity exer2tb is
end exer2tb;

architecture tb of exer2tb is
    signal a, b, c, d : std_logic;
    signal x: std_logic;
begin
    UUT : entity work.exer2df port map (a => a, b => b, c => c, d => d, x => x);

    a <= '0', '1' after 20 ns, '0' after 100 ns;

    b <= '0', '1' after 40 ns, '0' after 120 ns;

    c <= '0', '1' after 60 ns, '0' after 140 ns;

    d <= '0', '1' after 80 ns, '0' after 160 ns;
end tb;
