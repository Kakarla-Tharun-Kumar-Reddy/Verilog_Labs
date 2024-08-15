

# 4-to-1 Multiplexer in Verilog

## Overview

This project demonstrates the implementation of a 4-to-1 Multiplexer (MUX) using Verilog. A 4-to-1 MUX is a combinational circuit that selects one of four input signals and forwards the selected input to a single output line based on the values of two selection lines.

## Project Structure

- **mux4_1.v**: This file contains the Verilog code for the 4-to-1 MUX module.
- **mux4x1_tb.v**: This file contains the testbench for simulating and verifying the 4-to-1 MUX.

## Design Explanation

### 4-to-1 Multiplexer Module

The 4-to-1 MUX module has the following inputs and output:
- **Inputs:**
  - `i[3:0]`: Four input signals.
  - `s[1:0]`: Two selection lines.
- **Output:**
  - `y`: The selected output signal.

#### Internal Structure

The 4-to-1 MUX is constructed using three 2-to-1 MUX modules:
1. **First level**:
   - The first 2-to-1 MUX (`mu1`) selects between the first two inputs (`i[0]` and `i[1]`) based on the first selection line (`s[0]`).
   - The second 2-to-1 MUX (`mu2`) selects between the next two inputs (`i[2]` and `i[3]`) based on the first selection line (`s[0]`).
2. **Second level**:
   - The third 2-to-1 MUX (`mu3`) selects between the outputs of the first two MUXes (`w0` and `w1`) based on the second selection line (`s[1]`), producing the final output (`y`).

### Testbench

The testbench for the 4-to-1 MUX applies various combinations of input signals and selection lines to verify the MUX's functionality.

- **Input signals**: `i[3:0]` (input data) and `s[1:0]` (selection lines).
- **Output signal**: `y` (selected output).
- **Simulation**: The testbench systematically loops through all possible combinations of inputs and selection lines, checking that the output matches the expected selected input.

## How to Run the Simulation

1. **Open your Verilog simulator**: Use any preferred Verilog simulator such as ModelSim, Xilinx Vivado, or others.
2. **Compile the 4-to-1 MUX module** (`mux4_1.v`).
3. **Compile the Testbench module** (`mux4x1_tb.v`).
4. **Run the simulation**: Execute the simulation to observe how the output (`y`) changes based on the inputs and selection lines.
5. **Analyze the results**: The testbench will display the behavior of the MUX for each combination of inputs and selection lines.

## Expected Output

For each combination of the selection lines (`s[1:0]`), the 4-to-1 MUX will forward the corresponding input (`i[0]`, `i[1]`, `i[2]`, or `i[3]`) to the output (`y`). The testbench will verify that the MUX behaves as expected for all possible input and selection line combinations.

## Conclusion

This project provides an understanding of how a 4-to-1 Multiplexer works and how to implement it using Verilog. By simulating the design, you can observe the MUX's operation in real-time and confirm its correct functionality.

---
