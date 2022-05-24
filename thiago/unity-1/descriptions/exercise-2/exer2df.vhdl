library ieee;
use ieee.std_logic_1164.all;

entity exer2df is
  port(
  a, b, c ,d : in std_logic;
  x : out std_logic
);
end exer2df;

architecture behaviour of exer2df is
begin
  x <= ((b and c) or not (a and b)) or (not ((not b and not c) or c) and not d);
end behaviour;
