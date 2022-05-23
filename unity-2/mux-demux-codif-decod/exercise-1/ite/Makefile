.PHONY: all
CVHDL = ghdl

all: create

create:
	@echo "Compiling and executing the circuit..."
	${CVHDL} -m demux_ite

tb:
	@echo "Compiling and executing the testbench. Making the wave.ghw file."
	${CVHDL} -m demux_ite_tb
	${CVHDL} -r demux_ite_tb --wave=wave.ghw

clean:
	@echo "Cleaning all auxiliate files..."
	${CVHDL} --clean
