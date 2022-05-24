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
      case (s) is
        when ("00") => a <= f; 
        when ("01") => b <= f ;
        when ("10") => c <= f;
        when others => d <= f;
      end case;
  end process;
end behaviour;
