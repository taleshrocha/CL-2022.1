library ieee;
use ieee.std_logic_1164.all;

entity and2 is
  port(
  a, b : in std_logic;
  x : out std_logic
);
end and2;

architecture behaviour of and2 is
begin
  x <= a and b;
end behaviour;
