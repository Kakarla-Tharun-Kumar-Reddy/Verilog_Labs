### README: T Flip-Flop Using D Flip-Flop in Verilog

#### Introduction

This project implements a T (Toggle) Flip-Flop using a D Flip-Flop in Verilog. A T Flip-Flop toggles its output state on each clock cycle when the T input is high. This design uses a D Flip-Flop to achieve the T Flip-Flop behavior.

#### Project Structure

- **`tff_using_dff` Module**: Implements the T Flip-Flop using a D Flip-Flop.
- **`tff_using_dff_tb` Module**: The testbench for verifying the functionality of the T Flip-Flop.

#### `tff_using_dff` Module

**Functionality**:

- **Inputs**:
  - `clk`: Clock signal.
  - `rst`: Reset signal.
  - `t`: T input for the T Flip-Flop.

- **Outputs**:
  - `q`: Output of the T Flip-Flop.
  - `qb`: Inverted output of the T Flip-Flop.

**Behavior**:

- The module uses an XOR gate to generate the `d_in` signal, which is the input to the D Flip-Flop.
- The XOR gate takes `t` and the current output `q` as inputs to produce `d_in`. The `d_in` signal toggles the state of the D Flip-Flop based on the T input.
- The D Flip-Flop (`dff_synch` module) is used to store and toggle the state based on `d_in`.
- The `q` output represents the current state, and `qb` is its complement.

**Logic**:

- `d_in` is computed as the XOR of `t` and `q`.
- The D Flip-Flop captures the `d_in` value on the positive edge of the clock and updates `q` and `qb`.

#### `tff_using_dff_tb` Module

**Functionality**:

The testbench applies various input conditions to the `tff_using_dff` module and monitors its behavior to ensure correct operation of the T Flip-Flop.

**Test Sequence**:

1. **Clock Generation**:
   - Generate a clock signal with a period of 20 time units (10 time units high, 10 time units low).

2. **Reset and Input Application**:
   - Apply a reset signal to initialize the T Flip-Flop.
   - Provide T input data to test the toggling behavior of the flip-flop.

3. **Simulation Duration**:
   - Run the simulation for 10 time units after applying the final input condition.

**Tasks**:

- **`rst_dut`**:
  - Applies and deactivates the reset signal.
- **`tin`**:
  - Applies T input values on the negative edge of the clock.

**Monitoring**:

- The testbench uses `$monitor` to display the values of `clk`, `rst`, `t`, `q`, and `qb` at each time step to verify the T Flip-Flop's behavior.

#### Running the Simulation

1. **Set Up**:
   - Ensure you have a Verilog simulation tool such as Xilinx Vivado or ModelSim installed.
   - Load the `tff_using_dff` module and its testbench into the simulation environment.

2. **Compile**:
   - Compile the Verilog files to check for syntax errors.

3. **Run the Testbench**:
   - Execute the testbench to simulate the behavior of the T Flip-Flop.

4. **Verify Outputs**:
   - Check the output values `q` and `qb`, and monitor the `clk`, `rst`, and `t` inputs to ensure the T Flip-Flop toggles its state correctly according to the T input.

#### Conclusion

This project provides a T Flip-Flop implemented using a D Flip-Flop in Verilog, along with a testbench to verify its functionality. The testbench applies various T input conditions and monitors the outputs to ensure the T Flip-Flop behaves as expected.