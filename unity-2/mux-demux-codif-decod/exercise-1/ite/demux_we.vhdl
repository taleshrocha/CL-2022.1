library ieee;
use ieee.std_logic_1164.all;

entity demux is
  port ( 
    a : in bit_vector(0 to 3);
    b : in bit_vector(0 to 3);
    s : out bit_vector(0 to 3)
       );
end demux;

-- WHEN-ELSE
-- WITH-SELECT
-- IF-THEN-ELSE
-- CASE

architecture behaviour of demux is
begin
  s(0) <= (not a(0)) and (not b(0));
  s(1) <= (not a(1)) and b(1);
  s(2) <= a(2) and (not b(2));
  s(3) <= not (a(3) and b(3));
end behaviour;
