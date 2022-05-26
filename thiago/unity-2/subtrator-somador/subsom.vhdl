library ieee;
use ieee.std_logic_1164.all;

entity subsom is
  port(
  a, b : in std_logic_vector (7 downto 0);
  f: out std_logic_vector (7 downto 0);
  s: in std_logic;
  o: out std_logic
);
end subsom;

architecture main of subsom is
  component somcom
    port(
      a, b, cin : in std_logic;
      s, cout: out std_logic
);
  end component;
  signal carry : std_logic_vector(7 downto 0);
  signal aux : std_logic;
  
begin
  aux <= b(0) xor s; 
  som0: somcom port map (a => a(0), b => aux, cin => s, s => f(0), cout => carry(0));
  aux <= b(1) xor s;
  som1: somcom port map (a => a(1), b => aux, cin => s, s => f(1), cout => carry(1));
  aux <= b(2) xor s;
  som2: somcom port map (a => a(2), b => aux, cin => s, s => f(2), cout => carry(2));
  aux <= b(3) xor s;
  som3: somcom port map (a => a(3), b => aux, cin => s, s => f(3), cout => carry(3));
  aux <= b(4) xor s;
  som4: somcom port map (a => a(4), b => aux, cin => s, s => f(4), cout => carry(4));
  aux <= b(5) xor s;
  som5: somcom port map (a => a(5), b => aux, cin => s, s => f(5), cout => carry(5));
  aux <= b(6) xor s;
  som6: somcom port map (a => a(6), b => aux, cin => s, s => f(6), cout => carry(6));
  aux <= b(7) xor s;
  som7: somcom port map (a => a(7), b => aux, cin => s, s => f(7), cout => carry(7));
  
end main;