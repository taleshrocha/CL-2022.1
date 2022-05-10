library ieee;
use ieee.std_logic_1164.all;

entity exer1a_bench is
end exer1a_bench;

architecture tb of exer1a_bench is
    signal a, b : bit_vector(0 to 3);  -- inputs 
    signal s: bit_vector(0 to 3);  -- outputs
begin
    -- connecting testbench signals with half_adder.vhd
    UUT : entity work.exer1a port map (a => a, b => b, s => s);

    a(0) <= '0', '1' after 20 ns, '0' after 100 ns;
    a(1) <= '0', '1' after 40 ns, '0' after 120 ns;
    a(2) <= '0', '1' after 60 ns, '0' after 140 ns;
    a(3) <= '0', '1' after 80 ns, '0' after 160 ns;

    b(0) <= '0', '1' after 20 ns, '0' after 100 ns;
    b(1) <= '0', '1' after 40 ns, '0' after 120 ns;
    b(2) <= '0', '1' after 60 ns, '0' after 140 ns;
    b(3) <= '0', '1' after 80 ns, '0' after 160 ns;
end tb;
