library ieee;
use ieee.std_logic_1164.all;

entity table is
  port ( 
    a : in bit_vector(0 to 3);
    b : in bit_vector(0 to 3);
    c : out bit_vector(0 to 3)
       );
end table;

architecture behaviour of table is
begin
  c <= not (a and b);
end behaviour;
