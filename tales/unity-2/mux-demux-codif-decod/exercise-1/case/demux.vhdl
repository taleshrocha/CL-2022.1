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
      case (k) is
        when ("00") => a <= i; 
        when ("01") => b <= i ;
        when ("10") => c <= i;
        when others => d <= i;
      end case;
  end process;
end bhv;
