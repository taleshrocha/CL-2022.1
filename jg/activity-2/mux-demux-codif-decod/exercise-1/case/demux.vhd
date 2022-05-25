library IEEE;
use IEEE.std_logic_1164.all;

ENTITY demux IS
PORT (
  input: IN std_logic_vector(0 to 1);
  key: IN std_logic_vector(0 to 1);
  out1, out2, out3, out4: OUT std_logic_vector(0 to 1)
);
END demux;

ARCHITECTURE case_dm OF demux IS
BEGIN
  PROCESS(input, key) IS
  BEGIN
    CASE key IS
      WHEN "00" =>
        out1 <= input;
      WHEN "01" =>
        out2 <= input;
      WHEN "10" =>
        out3 <= input;
      WHEN OTHERS =>
        out4 <= input;
    END CASE;
  END PROCESS;
END case_dm;