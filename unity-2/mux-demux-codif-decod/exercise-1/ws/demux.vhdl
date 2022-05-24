library ieee;
use ieee.std_logic_1164.all;

entity demux is
  port(
  f : in std_logic_vector (1 downto 0);
  s: in std_logic_vector (1 downto 0);
  a, b, c, d: out std_logic_vector (1 downto 0)
);
end demux;

architecture behaviour of demux is
begin
  process (f,s) is
  begin
    with s select
    a <= f when "00";
    b <= f when "01",
    c <= f when "10",
    d <= f when others;

  end process;
end behaviour;
