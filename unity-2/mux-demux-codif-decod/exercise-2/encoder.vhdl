library ieee;
use ieee.std_logic_1164.all;

entity encoder is
  port(
        i : in std_logic_vector (7 downto 0);
        o : out std_logic_vector (2 downto 0)
      );
end encoder;

architecture behaviour of encoder is
begin
  with i select
    o <= "001" when "10000000",
         "010" when "01000000",
         "011" when "00100000",
         "100" when "00010000",
         "101" when "00001000",
         "110" when "00000100",
         "111" when "00000010",
         "111" when others;
end behaviour;
