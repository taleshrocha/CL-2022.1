library ieee;
use ieee.std_logic_1164.all;

entity comparator is
  port(
  a, b, c : in std_logic_vector(7 downto 0) ;
  o : out std_logic_vector(7 downto 0)
);
end comparator;

architecture behavior of comparator is
begin

  o <= a when ((a = b and b = c) or (a > b and a > c)) else
       b when (b > c) else
       c;

end behavior;
