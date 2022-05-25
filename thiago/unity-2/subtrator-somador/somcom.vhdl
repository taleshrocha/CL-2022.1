library ieee;
use ieee.std_logic_1164.all;

entity somcom is
  port(
  a, b, cin : in std_logic;
  s, cout: out std_logic
);
end somcom;

architecture main of somcom is
begin
    s <= a xor b xor cin;
    cout <= ((a xor b) and cin) or (a and b);

end main;