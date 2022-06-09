library ieee;
use ieee.std_logic_1164.all;

entity ea is
  port(
  M, S_0, S_1, B : in std_logic;
  Y : out std_logic
);
end ea;

architecture bhv of ea is
begin
  Y <= (M and (not S_1 and B)) or (M and (not S_0 and not B));

end bhv;
