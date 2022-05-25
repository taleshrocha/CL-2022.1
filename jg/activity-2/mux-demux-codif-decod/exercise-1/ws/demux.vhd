library IEEE;
use IEEE.std_logic_1164.all;

ENTITY demux IS
PORT (
  input: IN std_logic_vector(0 to 1);
  key: IN std_logic_vector(0 to 1);
  out1, out2, out3, out4: OUT std_logic_vector(0 to 1)
);
END demux;

ARCHITECTURE with_select OF demux IS
BEGIN
  WITH key SELECT
    out1 <= input WHEN "00",
      "00" WHEN OTHERS;
  WITH key SELECT
    out2 <= input WHEN "01",
      "00" WHEN OTHERS;
  WITH key SELECT
    out3 <= input WHEN "10",
      "00" WHEN OTHERS;
  WITH key SELECT
    out4 <= input WHEN "11",
      "00" WHEN OTHERS;
END with_select;