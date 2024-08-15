### README: Synchronous D Flip-Flop in Verilog

#### Introduction

This project implements a synchronous D flip-flop (DFF) with an active-high reset in Verilog. The D flip-flop is a basic sequential logic component used in digital circuits for storing a single bit of data. It changes its output based on the clock signal and the input data while considering a reset condition.

#### Project Structure

- **`dff_synch` Module**: The main module implementing the synchronous D flip-flop.
- **`dff_synch_tb` Module**: A testbench module used to simulate and verify the functionality of the D flip-flop.

#### D Flip-Flop Functionality

The D flip-flop operates as follows:

- **Inputs**:
  - `clk`: Clock signal.
  - `rst`: Active-high reset signal.
  - `d`: Data input.

- **Outputs**:
  - `q`: Output of the flip-flop.
  - `qb`: Complement of the output.

**Behavior**:

- On the rising edge of the clock (`posedge clk`):
  - If `rst` is high, the output `q` is set to `0`.
  - Otherwise, the output `q` is set to `1`.

- The complement of the output, `qb`, is computed as `~q`.

#### Behavioral Modeling

The D flip-flop is implemented using synchronous logic. The `always` block is triggered on the rising edge of the clock signal. Inside the block, the reset condition is checked first. If `rst` is high, the output is set to `0`; otherwise, it is set to `1`.

#### Testbench

The `dff_synch_tb` module is used to test the functionality of the D flip-flop. It generates a clock signal and applies various input conditions to the flip-flop to verify its behavior.

**Testbench Workflow**:

1. **Clock Generation**:
   - The clock signal (`clk`) is toggled every 5 time units using a `forever` loop.

2. **Reset and Data Input Tasks**:
   - `rst_dut()`: A task to apply a reset signal to the flip-flop.
   - `din(i)`: A task to apply data inputs to the flip-flop.

3. **Simulation**:
   - The initial block applies a series of reset and data inputs to the flip-flop.
   - The simulation ends after 10 time units.

4. **Monitoring**:
   - The `$monitor` statement prints the values of `clk`, `rst`, `d`, `q`, and `qb` during simulation to observe the behavior of the D flip-flop.

#### Running the Simulation

1. **Set Up**:
   - Ensure you have a Verilog simulation tool such as Xilinx Vivado or ModelSim installed.
   - Load the `dff_synch` module and the `dff_synch_tb` testbench.

2. **Run the Simulation**:
   - Compile and run the testbench. The simulation will generate the clock signal and apply the reset and data inputs to the D flip-flop.

3. **Verify Output**:
   - Check the output values of `q` and `qb` to ensure they match the expected results based on the input conditions and reset signals.

#### Conclusion

This project provides an effective implementation of a synchronous D flip-flop with an active-high reset in Verilog. The testbench ensures that the flip-flop behaves correctly under various input conditions. This D flip-flop can be used as a building block in more complex sequential logic circuits.