### README: 4-to-1 Multiplexer Using Behavioral Modeling in Verilog

#### Introduction

This project involves the implementation of a 4-to-1 multiplexer (MUX) using behavioral modeling in Verilog. A multiplexer is a digital switch that selects one of several input signals and forwards the selected input to a single output line. The selection of the input signal is determined by control signals. In this case, the multiplexer has four data inputs and two control signals.

#### Project Structure

- **`beha4_1mux` Module**: The main module that implements the 4-to-1 multiplexer using behavioral Verilog.
- **`beha4_1mux_tb` Module**: A testbench module used to simulate and verify the functionality of the multiplexer.

#### MUX Functionality

The 4-to-1 multiplexer works as follows:

- **Inputs**:
  - `d0, d1, d2, d3`: 1-bit data inputs.
  - `s0, s1`: 1-bit select inputs that determine which data input is forwarded to the output.

- **Output**:
  - `y`: The selected 1-bit data output.

The multiplexer selects the output `y` based on the combination of select signals `s1` and `s0` as follows:

- **`00`**: `y = d0`
- **`01`**: `y = d1`
- **`10`**: `y = d2`
- **`11`**: `y = d3`

#### Behavioral Modeling

The multiplexer is implemented using behavioral Verilog, which involves describing the circuit's behavior using high-level constructs. The `case` statement is used to determine the output based on the combination of select inputs.

#### Simulation and Testing

- The `beha4_1mux_tb` module is used to test the functionality of the 4-to-1 multiplexer. The testbench includes a task named `inputs` that allows for easy input assignment during testing.

- **Testbench Workflow**:
  1. The `inputs` task sets the values of the select lines (`s1`, `s0`) and data inputs (`d0`, `d1`, `d2`, `d3`).
  2. The multiplexer output is observed for different combinations of select signals and data inputs.
  3. The simulation results are monitored to ensure the correct data input is selected based on the select signals.

#### Running the Simulation

1. **Set Up**:
   - Ensure you have a Verilog simulation tool such as Xilinx Vivado or ModelSim installed.
   - Load the `beha4_1mux` module and the `beha4_1mux_tb` testbench.

2. **Run the Simulation**:
   - Compile and run the testbench. The simulation will apply various combinations of select signals and data inputs to the MUX and display the output.

3. **Verify Output**:
   - The output `y` should match the expected data input based on the select signals.

#### Conclusion

This project provides a simple yet effective implementation of a 4-to-1 multiplexer using behavioral Verilog. The testbench effectively verifies the functionality of the multiplexer, ensuring it selects the correct data input based on the select signals. This multiplexer can be used as a building block in more complex digital systems.