library ieee;
use ieee.std_logic_1164.all;

entity circuito2 is
  port(
  a, b, c ,d : in std_logic;
  x : out std_logic
);
end circuito2;

architecture behaviour of circuito2 is
  component and2
    port(
    a, b : in std_logic;
    c : out std_logic
  );
end component;

  component or2
    port(
    a, b : in std_logic;
    c : out std_logic
  );
end component;

  component not1
    port(
    a : in std_logic;
    c : out std_logic
  );
end component;

  signal ta : std_logic_vector(3 downto 0);
  signal tn : std_logic_vector(4 downto 0);
  signal tor : std_logic_vector(3 downto 0);

begin
  a0 : and2 port map (a, b, ta(0));
  a1 : and2 port map (c, b, ta(1));
  n0 : not1 port map (b, tn(0));
  n1 : not1 port map (c, tn(1));
  n2 : not1 port map (d, tn(2));
  a2 : and2 port map(tn(0), tn(1), ta(2));
  n3 : not1 port map(ta(1), tn(3));
  o0 : or2 port map(ta(0), tn(3), tor(0));
  o1 : or2 port map(ta(2), c, tor(1));
  n4 : not1 port map(tor(1), tn(4));
  a3 : and2 port map(tn(4), tn(2), ta(3));
  sai : or2 port map(tor(0), ta(3), x);
end behaviour;
