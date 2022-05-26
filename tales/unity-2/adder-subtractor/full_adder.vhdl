library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
  port(
  a, b, cin : in std_logic;
  o, cout: out std_logic
);
end full_adder;

architecture main of full_adder is
begin
    o <= a xor b xor cin;
    cout <= ((a xor b) and cin) or (a and b);

end main;
