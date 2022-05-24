.PHONY: all
CVHDL = ghdl

all: create

create:
	@echo "Compiling and executing the circuit..."
	${CVHDL} -a coffee.vhdl
	${CVHDL} -m coffee
	${CVHDL} -a encoder.vhdl
	${CVHDL} -m encoder

tb:
	@echo "Compiling and executing the testbench. Making the wave.ghw file."
	${CVHDL} -a coffee_tb.vhdl
	${CVHDL} -m coffee_tb
	${CVHDL} -r coffee_tb --wave=wave.ghw

c:
	@echo "Cleaning all auxiliate files..."
	${CVHDL} --clean
