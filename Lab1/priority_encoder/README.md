### README: 8-to-3 Priority Encoder

#### Introduction

This project implements an 8-to-3 priority encoder using Verilog. A priority encoder is a combinational circuit that takes multiple binary inputs and outputs a binary code corresponding to the highest-priority active input. This design also includes a signal that indicates if any input is active.

#### Project Structure

- **`priority_encoder_8_3` Module**: The main module that integrates the priority circuit and priority encoder to create the 8-to-3 priority encoder.
- **`priority_encoder_8_3_tb` Module**: A testbench module used to simulate and verify the functionality of the 8-to-3 priority encoder.

#### How It Works

1. **Inputs and Outputs**:
   - The encoder has eight input lines (`i[7:0]`) and produces a 3-bit binary output (`y[2:0]`) that represents the position of the highest-priority active input. 
   - The output `v` indicates whether any of the inputs are active.

2. **Priority Circuit**:
   - The `priority_circuit` module determines which input has the highest priority by generating an intermediate signal (`h[7:0]`), where only the highest-priority active input is set to `1`.
   - The `IDLE` signal (`v`) is used to indicate if all inputs are inactive.

3. **Priority Encoder**:
   - The `priority_encoder` module takes the output from the priority circuit and generates the 3-bit binary output `y[2:0]`.

4. **Selection Mechanism**:
   - The selection mechanism in the priority circuit ensures that the highest-priority input is encoded, with priority given to the highest indexed input (i.e., input `i[7]` has the highest priority).

#### Simulation and Testing

- The `priority_encoder_8_3_tb` module is used to test the functionality of the priority encoder. It applies different input combinations to the encoder and observes the output.
- The testbench checks various scenarios where different inputs are active to verify that the highest-priority input is correctly encoded.

#### Running the Simulation

1. **Set Up**:
   - Ensure that you have a Verilog simulation tool such as Xilinx Vivado or ModelSim installed.
   - Load the `priority_encoder_8_3` module and the `priority_encoder_8_3_tb` testbench.

2. **Run the Simulation**:
   - Compile and run the testbench. The simulation should produce output values corresponding to the highest-priority active input.

3. **Verify Output**:
   - Check the output of the simulation against expected results. The binary output should correctly represent the position of the highest-priority input.

#### Conclusion

This project demonstrates the implementation of an 8-to-3 priority encoder, which is useful in digital systems where multiple inputs may request access to a resource, and priority must be given to certain inputs. The design ensures that the highest-priority input is always selected, and the output correctly reflects its position.