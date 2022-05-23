library ieee;
use ieee.std_logic_1164.all;

entity demux_ite_tb is
  end demux_ite_tb;

architecture behavior of demux_ite_tb is
  component demux_ite
    port(
          f : in std_logic;
          s0 : in std_logic;
          s1 : in std_logic;
          a : out std_logic;
          b : out std_logic;
          c : out std_logic;
          d : out std_logic
        );
  end component;

--inputs
  signal f : std_logic := '0';
  signal s0 : std_logic := '0';
  signal s1 : std_logic := '0';

--outputs
  signal a : std_logic;
  signal b : std_logic;
  signal c : std_logic;
  signal d : std_logic;

begin

  uut: demux_ite port map 
  (
    f => f,
    s0 => s0,
    s1 => s1,
    a => a,
    b => b,
    c => c,
    d => d
  );

  stim_proc: process
  begin
    -- hold reset state for 100 ns.
    wait for 100 ns;
    f <= '1';
    s0 <= '0'; s1 <= '0';
    wait for 100 ns;
    s0 <= '1'; s1 <= '0';
    wait for 100 ns;
    s0 <= '0'; s1 <= '1';
    wait for 100 ns;
    s0 <= '1'; s1 <= '1';
    wait for 100 ns;

    wait;
  end process;

end;
