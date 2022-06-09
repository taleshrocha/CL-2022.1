.PHONY: all
CVHDL = ghdl

all: create

create:
	@echo "Compiling and executing the circuit..."
	${CVHDL} -a full_adder.vhdl
	${CVHDL} -m full_adder
	${CVHDL} -a el.vhdl
	${CVHDL} -m el
	${CVHDL} -a ea.vhdl
	${CVHDL} -m ea
	${CVHDL} -a ula.vhdl
	${CVHDL} -m ula

tb:
	@echo "Compiling and executing the testbench. Making the wave.ghw file."
	${CVHDL} -a ula_tb.vhdl
	${CVHDL} -m ula_tb
	${CVHDL} -r ula_tb --wave=wave.ghw

c:
	@echo "Cleaning all auxiliate files..."
	${CVHDL} --clean
