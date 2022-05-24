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
  with s select
    a <= f when "00",
         "00" when others;
  with s select
    b <= f when "01",
         "00" when others;
  with s select
    c <= f when "10",
         "00" when others;
  with s select
    d <= f when "11",
         "00" when others;
end behaviour;
