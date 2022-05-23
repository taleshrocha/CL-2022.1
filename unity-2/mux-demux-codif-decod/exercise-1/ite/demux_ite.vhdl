library ieee;
use ieee.std_logic_1164.all;

entity demux_ite is
  port(
        f : in std_logic;
  s0,s1: in std_logic;
  a,b,c,d: out std_logic
);
end demux_ite;

architecture behaviour of demux_ite is
begin
  process (f,s0,s1) is
  begin
    if (s0 ='0' and s1 = '0') then
      a <= f;
    elsif (s0 ='1' and s1 = '0') then
      b <= f;
    elsif (s0 ='0' and s1 = '1') then
      c <= f;
    else
      d <= f;
    end if;

  end process;
end behaviour;
