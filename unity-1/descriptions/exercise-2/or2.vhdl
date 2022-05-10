library ieee;
use ieee.std_logic_1164.all;

entity or2 is
  port(
  a, b : in std_logic;
  x : out std_logic
);
end or2;

architecture behaviour of or2 is
begin
  x <= a or b;
end behaviour;
