library ieee;
use ieee.std_logic_1164.all;

entity exer1b is
  port ( 
         a: in std_logic;
         b: in std_logic;
         s: out std_logic
       );
end exer1b;

architecture behaviour of exer1b is
begin
  s <= a nand b;
end behaviour;
