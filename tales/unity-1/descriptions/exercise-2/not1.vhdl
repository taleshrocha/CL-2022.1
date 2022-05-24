library ieee;
use ieee.std_logic_1164.all;

entity not1 is
  port(
  a: in std_logic;
  x : out std_logic
);
end not1;

architecture behaviour of not1 is
begin
  x <= not a;
end behaviour;
