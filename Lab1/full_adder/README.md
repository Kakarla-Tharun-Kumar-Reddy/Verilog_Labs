

# Full Adder in Verilog

## Overview

This project demonstrates the implementation of a Full Adder using Verilog. A Full Adder is a fundamental digital circuit that computes the sum of three binary bits, including a carry-in bit, and produces a sum and a carry-out bit. It is commonly used in arithmetic circuits such as binary addition.

## Project Structure

- **full_adder.v**: This file contains the Verilog code for the Full Adder module.
- **full_adder_tb.v**: This file contains the testbench for simulating and verifying the Full Adder.

## Design Explanation

### Full Adder Module

The Full Adder module takes three inputs:
- `a_in`: First input bit.
- `b_in`: Second input bit.
- `c_in`: Carry-in bit.

It produces two outputs:
- `sum_out`: The sum of the three input bits.
- `carry_out`: The carry-out from the addition.

The Full Adder is implemented using two Half Adders:
1. The first Half Adder adds `a_in` and `b_in` to produce an intermediate sum and carry.
2. The second Half Adder adds the intermediate sum and `c_in` to produce the final sum.
3. An OR gate combines the carry outputs of the two Half Adders to produce the final carry-out.

### Testbench

The testbench simulates the Full Adder by applying all possible combinations of the three input bits (000 to 111). For each combination, the testbench verifies the correctness of the sum and carry outputs.

- **Input signals**: `a`, `b`, `cin` (binary inputs to the Full Adder).
- **Output signals**: `sum`, `carry` (outputs from the Full Adder).
- **Simulation**: The testbench loops through all possible input combinations and displays the corresponding sum and carry results.

## How to Run the Simulation

1. **Open your Verilog simulator**: You can use any Verilog simulator such as ModelSim, Xilinx Vivado, or any other preferred tool.
2. **Compile the Full Adder module** (`full_adder.v`).
3. **Compile the Testbench module** (`full_adder_tb.v`).
4. **Run the simulation**: Execute the simulation to observe the outputs for different input combinations.
5. **Analyze the results**: The monitor statement in the testbench will display the input and output values during the simulation.

## Expected Output

For each combination of inputs `(a, b, cin)`, the Full Adder will produce a corresponding `sum` and `carry`. The results will be printed in the simulation console, and you can verify the correctness of the Full Adder logic.

## Conclusion

This project provides a basic understanding of how a Full Adder works and how to implement it using Verilog. By simulating the design, you can see the Full Adder's operation in real-time and verify its functionality.

