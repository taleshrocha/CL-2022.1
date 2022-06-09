library ieee;
use ieee.std_logic_1164.all;

entity comparator is
  port(
  a, b, x_i, y_i, z_i : in std_logic;
  x_o, y_o, z_o: out std_logic
);
end comparator;

architecture behavior of comparator is
begin

  x_o <= x_i and (a xnor b);
  y_o <= y_i or (x_i and ((a and (not b))));
  z_o <= z_i or (x_i and ((not a) and b));

end behavior;
