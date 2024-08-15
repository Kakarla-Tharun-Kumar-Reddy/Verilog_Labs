### README: SR Latch in Verilog

#### Introduction

This project implements an SR (Set-Reset) latch in Verilog. The SR latch is a basic memory element used in digital circuits to store a single bit of information. It is built using NOR gates and has two inputs (`S` for Set and `R` for Reset) and two outputs (`Q` and `Qb`).

#### Project Structure

- **`sr_latch` Module**: Implements the SR latch functionality.
- **`sr_latch_tb` Module**: The testbench for verifying the functionality of the SR latch.

#### `sr_latch` Module

**Functionality**:

- **Inputs**:
  - `s`: Set input.
  - `r`: Reset input.

- **Outputs**:
  - `q`: Output representing the stored value.
  - `qb`: Complement of the output.

**Behavior**:

- The SR latch is constructed using two NOR gates. The output `q` is set when `s` is high and `r` is low, and `qb` is set when `r` is high and `s` is low.
- The latch maintains its state until changed by the inputs.

**Logic**:

- `q` is driven by the NOR gate with inputs `r` and `w2`.
- `qb` is driven by the NOR gate with inputs `s` and `w1`.
- `w1` and `w2` are internal wires that connect `q` and `qb`, respectively, to the inputs of the NOR gates.

#### `sr_latch_tb` Module

**Functionality**:

The testbench applies various input conditions to the `sr_latch` module and monitors its behavior to ensure correct operation.

**Test Sequence**:

1. **Initial State**:
   - Set both `r` and `s` to 0.

2. **Test Cases**:
   - Apply `r=0`, `s=1` to test the Set condition.
   - Apply `r=1`, `s=0` to test the Reset condition.
   - Apply `r=1`, `s=1` to test the invalid condition.

3. **Simulation Duration**:
   - Run the simulation for 50 time units before finishing.

**Monitoring**:

- The testbench uses `$monitor` to display the values of `r`, `s`, `q`, and `qb` at each time step, helping verify the correct operation of the SR latch.

#### Running the Simulation

1. **Set Up**:
   - Ensure you have a Verilog simulation tool such as Xilinx Vivado or ModelSim installed.
   - Load the `sr_latch` module and its testbench into the simulation environment.

2. **Compile**:
   - Compile the Verilog files to check for syntax errors.

3. **Run the Testbench**:
   - Execute the testbench to simulate the behavior of the SR latch.

4. **Verify Outputs**:
   - Check the output values `q` and `qb` and monitor the `r` and `s` inputs to ensure the latch behaves as expected according to the test scenarios.

#### Conclusion

This project provides an SR latch implemented in Verilog using NOR gates, along with a testbench to verify its functionality. The testbench applies various input conditions and monitors the outputs to ensure the SR latch operates correctly and maintains the expected state.