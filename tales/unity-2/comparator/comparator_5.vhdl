library ieee;
use ieee.std_logic_1164.all;

entity comparator_5 is
  port(
  a, b : in std_logic_vector(4 downto 0);
  x_i, y_i, z_i : in std_logic;
  x_o, y_o, z_o: out std_logic
);
end comparator_5;

architecture behavior of comparator_5 is
  component comparator
    port(
    a, b, x_i, y_i, z_i : in std_logic;
    x_o, y_o, z_o: out std_logic
  );
  end component;
  signal x_temp : std_logic_vector(4 downto 0);
  signal y_temp : std_logic_vector(4 downto 0);
  signal z_temp : std_logic_vector(4 downto 0);
begin

  com0: comparator port map (a(0), b(0), x_i, y_i, z_i, x_temp(0), y_temp(0), z_temp(0));
  com1: comparator port map (a(1), b(1), x_temp(0), y_temp(0), z_temp(0), x_temp(1), y_temp(1), z_temp(1));
  com2: comparator port map (a(2), b(2), x_temp(1), y_temp(1), z_temp(1), x_temp(2), y_temp(2), z_temp(2));
  com3: comparator port map (a(3), b(3), x_temp(2), y_temp(2), z_temp(2), x_temp(3), y_temp(3), z_temp(3));
  com4: comparator port map (a(4), b(4), x_temp(3), y_temp(3), z_temp(3), x_temp(4), y_temp(4), z_temp(4));
  x_o <= x_temp(4);
  y_o <= y_temp(4);
  z_o <= z_temp(4);

end behavior;
