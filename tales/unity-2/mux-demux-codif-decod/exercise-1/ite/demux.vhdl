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
  process (i,k) is
  begin
    if (k = "00") then
      a <= i;
    elsif (k ="01") then
      b <= i;
    elsif (k ="10") then
      c <= i;
    else
      d <= i;
    end if;
  end process;
end bhv;
