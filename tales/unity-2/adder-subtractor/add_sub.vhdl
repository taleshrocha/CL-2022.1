library ieee;
use ieee.std_logic_1164.all;

entity add_sub is
  port(
  a, b : in std_logic_vector (7 downto 0);
  k: in std_logic;
  o: out std_logic_vector (7 downto 0);
  over: out std_logic
);
end add_sub;

architecture main of add_sub is
  component full_adder
    port(
    a, b, cin : in std_logic;
    o, cout: out std_logic
  );
  end component;
  signal carry : std_logic_vector(7 downto 0);
  signal aux : std_logic_vector(7 downto 0);

begin
  aux(0) <= b(0) xor k; 
  som0: full_adder port map (a(0), aux(0), k, o(0), carry(0));
  aux(1) <= b(1) xor k; 
  som1: full_adder port map (a(1), aux(1), carry(0), o(1), carry(1));
  aux(2) <= b(2) xor k; 
  som2: full_adder port map (a(2), aux(2), carry(1), o(2), carry(2));
  aux(3) <= b(3) xor k; 
  som3: full_adder port map (a(3), aux(3), carry(2), o(3), carry(3));
  aux(4) <= b(4) xor k; 
  som4: full_adder port map (a(4), aux(4), carry(3), o(4), carry(4));
  aux(5) <= b(5) xor k; 
  som5: full_adder port map (a(5), aux(5), carry(4), o(5), carry(5));
  aux(6) <= b(6) xor k; 
  som6: full_adder port map (a(6), aux(6), carry(5), o(6), carry(6));
  aux(7) <= b(7) xor k; 
  som7: full_adder port map (a(7), aux(7), carry(6), o(7), carry(7));
  over <= carry(7);

end main;
