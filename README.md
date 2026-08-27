 ALU Design in Verilog


Project Overview
This repository contains the implementation of a simple Arithmetic Logic Unit (ALU) in Verilog.
The ALU performs basic arithmetic and logical operations such as addition, subtraction, AND, OR, XOR, NAND-like, NOR, and NOT.

The design was tested and simulated using Xilinx Vivado, and a schematic diagram was generated to visualize the circuit.

 Features
Inputs:

A (4-bit)

B (4-bit)

OP (3-bit control signal)

Output:

alu_out (5-bit to capture carry/borrow in arithmetic operations)

Supported Operations:

000 → Addition

001 → Subtraction

010 → AND

011 → OR

100 → XOR

101 → ~A & B

110 → NOR

111 → NOT

 Tools Used
Vivado Design Suite (for simulation and schematic generation)

Verilog HDL (for hardware description)

Simulation
Testbench provided to verify all ALU operations.

Waveforms generated in Vivado confirm correct functionality.

Each OP code was tested with sample inputs (A=0101, B=0011). 
Schematic Diagram
The schematic was auto-generated in Vivado.

It shows the internal logic gates and connections for each ALU operation.

