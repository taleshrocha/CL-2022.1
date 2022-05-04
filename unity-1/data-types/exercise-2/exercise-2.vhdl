library ieee;
use ieee.std_logic_1164.all;

entity exer2 is
  port ( 
         a: in bit_vector(0 to 3);
         b: in bit_vector(3 downto 0);
         o: out bit_vector(7 downto 0)
       );
end exer2;

architecture behaviour of exer2 is
begin
  o <= (a(3), a(2), a(1), a(0), b(3), b(2), b(1), b(0));
end behaviour;
