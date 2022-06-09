.PHONY: all
CVHDL = ghdl

all: create

create:
	@echo "Compiling and executing the circuit..."
	${CVHDL} -a comparator.vhdl
	${CVHDL} -m comparator
	${CVHDL} -a comparator_5.vhdl
	${CVHDL} -m comparator_5

tb:
	@echo "Compiling and executing the testbench. Making the wave.ghw file."
	${CVHDL} -a comparator_5_tb.vhdl
	${CVHDL} -m comparator_5_tb
	${CVHDL} -r comparator_5_tb --wave=wave.ghw

c:
	@echo "Cleaning all auxiliate files..."
	${CVHDL} --clean
