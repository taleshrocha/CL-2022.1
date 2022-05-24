library ieee;
use ieee.std_logic_1164.all;

entity exer3 is
  port ( 
         a: in std_logic;
         b: in std_logic;
         c: out std_logic
       );
end exer3;

architecture behaviour of exer3 is
begin
  c <= not a and b;
end behaviour;
