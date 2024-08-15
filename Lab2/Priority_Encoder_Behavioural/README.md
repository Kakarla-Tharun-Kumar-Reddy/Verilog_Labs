### README: 8-to-3 Priority Encoder Using Behavioral Modeling in Verilog

#### Introduction

This project implements an 8-to-3 priority encoder using behavioral modeling in Verilog. A priority encoder is a type of digital encoder that converts a set of input signals into a binary representation of the highest-priority active input. This design encodes eight inputs into a 3-bit output based on priority.

#### Project Structure

- **`priorityenco` Module**: The main module that implements the 8-to-3 priority encoder.
- **`priorityenco_tb` Module**: A testbench module used to simulate and verify the functionality of the priority encoder.

#### Priority Encoder Functionality

The 8-to-3 priority encoder operates as follows:

- **Inputs**:
  - `i0, i1, i2, i3, i4, i5, i6, i7`: 8 input signals.
- **Outputs**:
  - `a, b, c`: 3-bit output representing the highest-priority active input.

**Priority Encoding**:

- **`i7`** has the highest priority and maps to `3'b111`.
- **`i6`** maps to `3'b110`.
- **`i5`** maps to `3'b101`.
- **`i4`** maps to `3'b100`.
- **`i3`** maps to `3'b011`.
- **`i2`** maps to `3'b010`.
- **`i1`** maps to `3'b001`.
- **`i0`** has the lowest priority and maps to `3'b000`.

If multiple inputs are high, the encoder will output the binary code for the highest-priority active input.

#### Behavioral Modeling

The priority encoder is implemented using behavioral Verilog, which describes the functionality using high-level constructs. The `if-else` statements are used to check the input signals and determine the output based on priority.

#### Simulation and Testing

- The `priorityenco_tb` module is used to test the functionality of the priority encoder. It applies all possible combinations of input signals to the encoder and observes the output.

- **Testbench Workflow**:
  1. The `for` loop sets all possible combinations of input signals (`i0` through `i7`).
  2. The priority encoder's output (`a, b, c`) is observed for each input combination.
  3. The simulation results are monitored to ensure the correct output based on the highest-priority input.

#### Running the Simulation

1. **Set Up**:
   - Ensure you have a Verilog simulation tool such as Xilinx Vivado or ModelSim installed.
   - Load the `priorityenco` module and the `priorityenco_tb` testbench.

2. **Run the Simulation**:
   - Compile and run the testbench. The simulation will apply various input combinations to the priority encoder and display the output.

3. **Verify Output**:
   - The output (`a, b, c`) should match the expected binary code for the highest-priority active input.

#### Conclusion

This project provides an effective implementation of an 8-to-3 priority encoder using behavioral Verilog. The testbench ensures the encoder correctly prioritizes and encodes the highest active input. This priority encoder can be used in various digital systems where priority-based input encoding is required.