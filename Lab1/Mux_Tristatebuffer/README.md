### README: 4x1 Multiplexer using Tri-State Buffers

#### Introduction

This project implements a 4x1 multiplexer using tri-state buffers and a 2-to-4 decoder in Verilog. A multiplexer is a combinational circuit that selects one of many inputs and forwards the selected input to a single output line. This specific implementation utilizes tri-state buffers to control the flow of data, which is selected based on the input control signals.

#### Project Structure

- **`mux4_1tri` Module**: The main module that implements the 4x1 multiplexer using tri-state buffers.
- **`mux4x1_tb` Module**: A testbench module used to simulate and verify the functionality of the 4x1 multiplexer.

#### How It Works

1. **Inputs and Outputs**:
   - The multiplexer has four data inputs (`i[3:0]`), two select lines (`s[1:0]`), and one output (`y`).

2. **Decoder**:
   - A 2-to-4 decoder is used to decode the select lines into four control signals (`w[3:0]`). Each control signal corresponds to one of the four data inputs.

3. **Tri-State Buffers**:
   - Four tri-state buffers are used, each associated with one of the data inputs. The decoder's output controls these buffers, ensuring that only the selected data input is passed to the output.

4. **Selection Mechanism**:
   - The select lines determine which of the data inputs is connected to the output. For example, when `s = 00`, the first data input `i[0]` is connected to the output `y`.

#### Simulation and Testing

- The `mux4x1_tb` module is used to test the functionality of the multiplexer. It applies different combinations of inputs and select lines to the multiplexer and observes the output.
- The testbench iterates through all possible input combinations, ensuring that the multiplexer behaves as expected for each case.

#### Running the Simulation

1. **Set Up**:
   - Ensure that you have a Verilog simulation tool such as Xilinx Vivado or ModelSim installed.
   - Load the `mux4_1tri` module and the `mux4x1_tb` testbench.

2. **Run the Simulation**:
   - Compile and run the testbench. The simulation should produce output values corresponding to the selected data inputs.

3. **Verify Output**:
   - Check the output of the simulation against expected results. Each select line combination should correspond to one of the data inputs being passed to the output.

#### Conclusion

This project demonstrates a simple yet effective way to implement a 4x1 multiplexer using tri-state buffers. The use of a decoder ensures that only one data input is selected at any time, and the tri-state buffers control the data flow based on the select lines. This design can be extended or modified for other applications requiring data selection and multiplexing.