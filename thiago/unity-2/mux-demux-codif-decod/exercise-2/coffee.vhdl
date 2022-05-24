library ieee;
use ieee.std_logic_1164.all;

entity coffee is
  port(
        i : in std_logic_vector (7 downto 0);
        o : out character
      );
end coffee;

architecture behaviour of coffee is
  component encoder
    port(
          i : in std_logic_vector (7 downto 0);
          o : out std_logic_vector (2 downto 0)
        );
  end component;
  signal temp : std_logic_vector (2 downto 0);

begin
  enc : encoder port map (i, temp);

  with temp select
    o <= 'A' when "001",
         'B' when "010",
         'C' when "011",
         'D' when "100",
         'E' when "101",
         'F' when "110",
         'G' when "111",
         'H' when others;
end behaviour;
