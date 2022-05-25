library IEEE;
use IEEE.std_logic_1164.all;

ENTITY demux IS
PORT (
  input: IN std_logic_vector(0 to 1);
  key: IN std_logic_vector(0 to 1);
  out1, out2, out3, out4: OUT std_logic_vector(0 to 1)
);
END demux;

ARCHITECTURE if_then OF demux IS
BEGIN
  PROCESS(input, key)
  BEGIN
    IF key = "00" THEN
      out1 <= input;
    ELSIF key = "01" THEN
      out2 <= input;
    ELSIF key = "10" THEN
      out3 <= input;
    ELSE
      out4 <= input;
    END IF;
  END
  PROCESS;
END if_then;