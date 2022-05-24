library ieee;
use ieee.std_logic_1164.all;

entity exer1 is
  port ( 
         I: in std_logic;
         O: in std_logic
       );
end exer1;

architecture behaviour of exer1 is
  type byte is array (0 to 7) of std_logic_vector(7 downto 0);
  type barramento is array (0 to 3) of byte;
begin
  --I <= O;
end behaviour;
