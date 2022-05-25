# That's just a Makefile template for your projects.
# Thanks José Davi!

.PHONY: all
CVHDL = ghdl
FILE =
ENTITY = ${FILE} # If ENTITY is not defined, it gets the FILE value.

all: create

create:
	@echo "Compiling and executing the circuit..."
	${CVHDL} -a ${FILE}.vhdl
	${CVHDL} -m ${ENTITY}

tb: create
	@echo "Compiling and executing the testbench. Making the wave.ghw file."
	${CVHDL} -a ${FILE}_tb.vhdl
	${CVHDL} -m ${ENTITY}_tb
	${CVHDL} -r ${ENTITY}_tb --wave=${FILE}.ghw

c:
	@echo "Cleaning all auxiliate files..."
	${CVHDL} --clean
