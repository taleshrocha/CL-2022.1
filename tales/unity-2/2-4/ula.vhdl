library ieee;
use ieee.std_logic_1164.all;

entity ula is
  port(
  A, B : in std_logic_vector (7 downto 0);
  M, S_0, S_1 : in std_logic;
  F : out std_logic_vector (7 downto 0);
  C, O: out std_logic
);
end ula;

architecture main of ula is
  component full_adder
    port(
    a, b, cin : in std_logic;
    o, cout: out std_logic
  );
  end component;

  component ea
    port(
    M, S_0, S_1, B : in std_logic;
    Y : out std_logic
  );
  end component;

  component el
    port(
    M, S_0, S_1, A, B : in std_logic;
    X : out std_logic
  );
  end component;

  signal elTemp : std_logic_vector(7 downto 0);
  signal eaTemp : std_logic_vector(7 downto 0);
  signal carry : std_logic_vector(7 downto 0);
  signal aux : std_logic;

begin
  el0: el port map (M, S_0, S_1, A(0), B(0), elTemp(0));
  el1: el port map (M, S_0, S_1, A(1), B(1), elTemp(1));
  el2: el port map (M, S_0, S_1, A(2), B(2), elTemp(2));
  el3: el port map (M, S_0, S_1, A(3), B(3), elTemp(3));
  el4: el port map (M, S_0, S_1, A(4), B(4), elTemp(4));
  el5: el port map (M, S_0, S_1, A(5), B(5), elTemp(5));
  el6: el port map (M, S_0, S_1, A(6), B(6), elTemp(6));
  el7: el port map (M, S_0, S_1, A(7), B(7), elTemp(7));

  ea0: ea port map (M, S_0, S_1, B(0), eaTemp(0));
  ea1: ea port map (M, S_0, S_1, B(1), eaTemp(1));
  ea2: ea port map (M, S_0, S_1, B(2), eaTemp(2));
  ea3: ea port map (M, S_0, S_1, B(3), eaTemp(3));
  ea4: ea port map (M, S_0, S_1, B(4), eaTemp(4));
  ea5: ea port map (M, S_0, S_1, B(5), eaTemp(5));
  ea6: ea port map (M, S_0, S_1, B(6), eaTemp(6));
  ea7: ea port map (M, S_0, S_1, B(7), eaTemp(7));

  aux <= (S_1 and M); 
  som0: full_adder port map (elTemp(0), eaTemp(0), aux, F(0), carry(0));
  som1: full_adder port map (elTemp(1), eaTemp(1), carry(0), F(1), carry(1));
  som2: full_adder port map (elTemp(2), eaTemp(2), carry(1), F(2), carry(2));
  som3: full_adder port map (elTemp(3), eaTemp(3), carry(2), F(3), carry(3));
  som4: full_adder port map (elTemp(4), eaTemp(4), carry(3), F(4), carry(4));
  som5: full_adder port map (elTemp(5), eaTemp(5), carry(4), F(5), carry(5));
  som6: full_adder port map (elTemp(6), eaTemp(6), carry(5), F(6), carry(6));
  som7: full_adder port map (elTemp(7), eaTemp(7), carry(6), F(7), carry(7));

  C <= carry(7);
  O <= carry(7) xnor carry(6);

end main;
