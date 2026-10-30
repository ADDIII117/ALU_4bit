# 4-bit ALU in Verilog

This repository contains a simple 4-bit Arithmetic Logic Unit (ALU) implemented in Verilog. The ALU supports arithmetic and logic operations for 4-bit inputs and produces a 5-bit result to accommodate carry/borrow in arithmetic operations.

## Features

- Inputs:
  - `A` : 4-bit input
  - `B` : 4-bit input
  - `OP` : 3-bit control signal
- Output:
  - `alu_out` : 5-bit result

## Supported operations

| OP (3-bit) | Operation |
| --- | --- |
| `000` | Addition |
| `001` | Subtraction |
| `010` | AND |
| `011` | OR |
| `100` | XOR |
| `101` | `~A & B` |
| `110` | NOR |
| `111` | NOT |

## Repository layout

- `alu.v` — ALU implementation
- `alu_tb.v` — Verilog testbench for functional simulation
- `Makefile` — quick simulation command
- `README.md` — project documentation

## Simulation

The project can be simulated using Icarus Verilog:

```bash
make sim
```

This command compiles the Verilog sources and runs the testbench.

## Notes

The project was originally created as a simple hardware design exercise and was validated with a Vivado-style test flow. The canonical source files in this repository are now organized in a cleaner, more standard structure for easier reuse and testing.
