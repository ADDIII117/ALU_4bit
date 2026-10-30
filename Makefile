IVERILOG = iverilog
VVP = vvp
SIM = alu_tb
SRC = alu.v alu_tb.v

all: sim

sim:
	$(IVERILOG) -g2012 -o $(SIM).out $(SRC)
	$(VVP) $(SIM).out

clean:
	rm -f $(SIM).out

.PHONY: all sim clean
