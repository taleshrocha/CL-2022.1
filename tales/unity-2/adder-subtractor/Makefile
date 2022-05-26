.PHONY: all
CVHDL = ghdl

all: create

create:
	@echo "Compiling and executing the circuit..."
	${CVHDL} -a full_adder.vhdl
	${CVHDL} -m full_adder

	${CVHDL} -a add_sub.vhdl
	${CVHDL} -m add_sub

tb:
	@echo "Compiling and executing the testbench. Making the wave.ghw file."
	${CVHDL} -a add_sub_tb.vhdl
	${CVHDL} -m add_sub_tb
	${CVHDL} -r add_sub_tb --wave=wave.ghw
	${CVHDL} -a full_adder_tb.vhdl
	${CVHDL} -m full_adder_tb
	${CVHDL} -r full_adder_tb --wave=wave2.ghw

c:
	@echo "Cleaning all auxiliate files..."
	${CVHDL} --clean
