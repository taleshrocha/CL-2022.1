library ieee;
use ieee.std_logic_1164.all;

entity demux is
  port(
        i : in std_logic_vector (1 downto 0);
        k: in std_logic_vector (1 downto 0);
  a, b, c, d: out std_logic_vector (1 downto 0)
);
end demux;

architecture bhv of demux is
begin
  with k select
    a <= i when "00",
         "00" when others;
  with k select
    b <= i when "01",
         "00" when others;
  with k select
    c <= i when "10",
         "00" when others;
  with k select
    d <= i when "11",
         "00" when others;
end bhv;
