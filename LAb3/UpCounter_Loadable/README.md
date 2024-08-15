### README: Binary Up Counter in Verilog

#### Introduction

This project implements a 4-bit binary up counter in Verilog, along with a corresponding testbench. The counter can be loaded with a specific value and can increment its value on each clock cycle when not in load mode.

#### Project Structure

- **`binary_up_counter` Module**: Implements the 4-bit binary up counter.
- **`binary_up_counter_tb` Module**: The testbench to verify the functionality of the counter.

#### `binary_up_counter` Module

**Functionality**:

- **Inputs**:
  - `data_in`: 4-bit input data used for loading the counter.
  - `clk`: Clock signal.
  - `rst`: Reset signal (active low).
  - `load`: Load signal to load `data_in` into the counter.

- **Outputs**:
  - `count`: 4-bit output representing the current count of the counter.

**Behavior**:

- **Reset**:
  - When `rst` is low, the counter is reset to 0.
- **Load**:
  - When `load` is high, the counter is set to the value of `data_in`.
- **Counting**:
  - When `load` is low and `rst` is high, the counter increments by 1 on each positive edge of the clock.

**Logic**:

- The counter value is updated on the rising edge of the clock.
- If `rst` is low, `count` is set to 0.
- If `load` is high, `count` is set to `data_in`.
- Otherwise, `count` is incremented by 1.

#### `binary_up_counter_tb` Module

**Functionality**:

The testbench applies various input conditions to the `binary_up_counter` module to ensure its functionality.

**Test Sequence**:

1. **Clock Generation**:
   - Generate a clock signal with a period defined by the `CYCLE` parameter (10 time units).

2. **Reset and Load Operations**:
   - Apply a reset signal to initialize the counter.
   - Apply load and data_in values to set the counter to specific values.
   - Observe the counter’s behavior for a specified duration.

**Tasks**:

- **`reset_t`**:
  - Applies and deactivates the reset signal.
- **`load_t`**:
  - Sets the `load` signal and `data_in` value.

**Monitoring**:

- The testbench uses `$monitor` to display the values of `data_in`, `rst`, `clk`, `load`, and `count` to verify the correct operation of the counter.

#### Running the Simulation

1. **Set Up**:
   - Ensure you have a Verilog simulation tool such as Xilinx Vivado or ModelSim installed.
   - Load the `binary_up_counter` module and its testbench into the simulation environment.

2. **Compile**:
   - Compile the Verilog files to check for syntax errors.

3. **Run the Testbench**:
   - Execute the testbench to simulate the behavior of the binary up counter.

4. **Verify Outputs**:
   - Check the output `count` and monitor the `data_in`, `rst`, `clk`, and `load` inputs to ensure the counter increments and loads values correctly.

#### Conclusion

This project provides a 4-bit binary up counter implemented in Verilog, with a testbench to validate its functionality. The counter can be loaded with a specific value and increments on each clock cycle, with the behavior verified through various test cases.