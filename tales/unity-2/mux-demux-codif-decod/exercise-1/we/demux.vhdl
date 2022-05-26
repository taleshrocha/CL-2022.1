library ieee;
use ieee.std_logic_1164.all;

entity demux is
  port(
  i : in std_logic_vector (1 downto 0);
  k: in std_logic_vector (1 downto 0);
  a, b, c, d: out std_logic_vector (1 downto 0)
);
end demux;

architecture behaviour of demux is
begin
  a <= i when (k = "00") else
       "00";
  b <= i when (k = "01") else
       "00";
  c <= i when (k = "10") else
       "00";
  d <= i when (k = "11") else
       "00";
end behaviour;
