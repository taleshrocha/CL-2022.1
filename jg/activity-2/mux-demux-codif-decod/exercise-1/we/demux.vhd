library IEEE;
use IEEE.std_logic_1164.all;

ENTITY demux IS
PORT (
  input: IN std_logic_vector(0 to 1);
  key: IN std_logic_vector(0 to 1);
  out1, out2, out3, out4: OUT std_logic_vector(0 to 1)
);
END demux;

ARCHITECTURE when_else OF demux IS
BEGIN
  out1 <= input when (key = "00") else "00";
  out2 <= input when (key = "01") else "00";
  out3 <= input when (key = "10") else "00";
  out4 <= input when (key = "11") else "00";
END when_else;