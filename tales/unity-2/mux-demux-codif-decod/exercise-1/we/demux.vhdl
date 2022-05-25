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
  a <= f when (s = "00") else
       "00";
  b <= f when (s = "01") else
       "00";
  c <= f when (s = "10") else
       "00";
  d <= f when (s = "11") else
       "00";
end behaviour;
