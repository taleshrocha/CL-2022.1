-- Testbench for DEMUX
library ieee;
use ieee.std_logic_1164.all;

ENTITY coffee_machine_tb IS
-- empty
END coffee_machine_tb;

ARCHITECTURE tb OF coffee_machine_tb IS

-- DUT component
COMPONENT coffee_machine IS
PORT (
  button: IN std_logic_vector(0 to 7);
  coffee_selected: OUT character
);
END COMPONENT;

SIGNAL input: std_logic_vector(0 to 7);
SIGNAL coffee: character;

BEGIN
  -- Connect DUT
  DUT: coffee_machine PORT MAP (input, coffee);
  
  PROCESS
  BEGIN
    input <= "10000000";
    WAIT FOR 100 ns;
    ASSERT(coffee='A') REPORT "Fail button: 1/coffee: A" SEVERITY error;
    
    input <= "01000000";
    WAIT FOR 100 ns;
    ASSERT(coffee='B') REPORT "Fail button: 2/coffee: B" SEVERITY error;
    
    input <= "00100000";
    WAIT FOR 100 ns;
    ASSERT(coffee='C') REPORT "Fail button: 3/coffee: C" SEVERITY error;
    
    input <= "00010000";
    WAIT FOR 100 ns;
    ASSERT(coffee='D') REPORT "Fail button: 4/coffee: D" SEVERITY error;
    
    input <= "00001000";
    WAIT FOR 100 ns;
    ASSERT(coffee='E') REPORT "Fail button: 5/coffee: E" SEVERITY error;
    
    input <= "00000100";
    WAIT FOR 100 ns;
    ASSERT(coffee='F') REPORT "Fail button: 6/coffee: F" SEVERITY error;
    
    input <= "00000010";
    WAIT FOR 100 ns;
    ASSERT(coffee='G') REPORT "Fail button: 7/coffee: G" SEVERITY error;
    
    input <= "00000001";
    WAIT FOR 100 ns;
    ASSERT(coffee='H') REPORT "Fail button: 8/coffee: H" SEVERITY error;

    -- Clear inputs
    input <= "00000000";

    ASSERT false REPORT "Test done." SEVERITY note;
  WAIT;
  END PROCESS;
END tb;