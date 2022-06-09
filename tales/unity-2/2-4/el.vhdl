library ieee;
use ieee.std_logic_1164.all;

entity el is
  port( 
  M, S_0, S_1, A, B : in std_logic;
  X : out std_logic
);
end el;

architecture bhv of el is
  signal aux : std_logic_vector(4 downto 0);
begin
  aux(0) <= (not M) and (not S_1) and (not S_0) and (not A);
  aux(1) <= (not M) and S_1 and S_0 and B;
  aux(2) <= (not M) and S_0 and A and B;
  aux(3) <= A and (not M) and S_1;
  aux(4) <= A and M;

  X <= aux(0) or aux(1) or aux(2) or aux(3) or aux(4);

end bhv;
