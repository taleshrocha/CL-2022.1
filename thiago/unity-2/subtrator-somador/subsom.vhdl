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
  
begin
  som0: somcom port map (a => a(0), b => (b(0) xor s), cin => s, s => f(0), cout => carry());
  som1: somcom port map (a(1), b(1) xor s, carry, f(1), carry);
  som2: somcom port map (a(2), b(2) xor s, carry, f(2), carry);
  som3: somcom port map (a(3), b(3) xor s, carry, f(3), carry);
  som4: somcom port map (a(4), b(4) xor s, carry, f(4), carry);
  som5: somcom port map (a(5), b(5) xor s, carry, f(5), carry);
  som6: somcom port map (a(6), b(6) xor s, carry, f(6), carry);
  som7: somcom port map (a(7), b(7) xor s, carry, f(7), carry);
  aux <= b(0) xor s; som0: somcom port map (a => a(0), b => aux, cin => s, s => f(0), cout => carry(0));
end main;