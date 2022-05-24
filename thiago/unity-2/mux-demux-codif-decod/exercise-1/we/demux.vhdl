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
    a <= f when (s = "00") else
    b <= f when (s ="01") else
    c <= f (s ="10") else
    d <= f;

  end process;
end behaviour;