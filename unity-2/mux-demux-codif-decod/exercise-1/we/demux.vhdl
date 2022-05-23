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
    if (s = "00") then
      a <= f;
    elsif (s ="01") then
      b <= f;
    elsif (s ="10") then
      c <= f;
    else
      d <= f;
    end if;

  end process;
end behaviour;
