# 2-Bit Comparator

## Overview
This project implements a 2-bit digital comparator in Verilog. It compares two 2-bit binary inputs (A and B) and generates outputs indicating whether A is greater than B, equal to B, or less than B.

## Features
- Compares two 2-bit inputs
- Outputs A > B, A == B, and A < B
- Fully verified using a Verilog testbench
- Compatible with Icarus Verilog and GTKWave

## Truth Table

| A | B | A>B | A=B | A<B |
|---|---|-----|-----|-----|
|00|00|0|1|0|
|00|01|0|0|1|
|01|00|1|0|0|
|10|10|0|1|0|
|11|10|1|0|0|

## Project Structure

```
src/            Verilog source code
testbench/      Testbench for verification
simulation/     Waveforms and simulation output
docs/           Project documentation
```

## Simulation

Compile:

```bash
iverilog -o comparator src/comparator_2bit.v testbench/comparator_2bit_tb.v
```

Run:

```bash
vvp comparator
```

View Waveform:

```bash
gtkwave comparator.vcd
```

## Tools Used
- Verilog HDL
- Icarus Verilog
- GTKWave

## Author
Your Name