# 4-bit ALU Design in Verilog

This project implements a 4-bit Arithmetic Logic Unit (ALU) in Verilog. It supports both arithmetic and logical operations and produces a 5-bit output so that carry/borrow behavior is handled correctly in arithmetic operations.

## Overview

The ALU takes two 4-bit inputs, `A` and `B`, and uses a 3-bit control signal, `OP`, to select the operation. The designed module is suitable for simulation and digital logic verification in tools such as Icarus Verilog and Vivado.

## Inputs and Output

- `A` : 4-bit input
- `B` : 4-bit input
- `OP` : 3-bit operation selector
- `alu_out` : 5-bit output

## Supported Operations

| OP | Function |
| --- | --- |
| `000` | Addition |
| `001` | Subtraction |
| `010` | AND |
| `011` | OR |
| `100` | XOR |
| `101` | `~A & B` |
| `110` | NOR |
| `111` | NOT |

## Repository Structure

- `alu.v` — ALU implementation
- `alu_tb.v` — Testbench for functional verification
- `Makefile` — Utility script to compile and run the simulation
- `README.md` — Project documentation

## Simulation

This project can be simulated with Icarus Verilog using the following command:

```bash
make sim
```

This command compiles the Verilog files and runs the testbench to verify the ALU behavior.

## Example Testbench Behavior

The testbench assigns:

- `A = 0101`
- `B = 0011`

and cycles through all available operation codes to validate the ALU output for each case.

## Notes

This repository was created as a simple digital design exercise for learning and implementing ALU logic in HDL. The project is intentionally lightweight and easy to run in a standard Verilog simulation environment.
