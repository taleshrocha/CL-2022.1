library ieee;
use ieee.std_logic_1164.all;

entity circuito is
  port(
  a, b, c ,d : in std_logic;
  x : out std_logic
);
end circuito;

architecture behaviour of circuito is
begin
  x <= ((b and c) or not (a and b)) or (not ((not b and not c) or c) and not d);
end behaviour;
