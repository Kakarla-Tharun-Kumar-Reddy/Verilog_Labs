### README: Mod-12 Counter in Verilog

#### Introduction

This project implements a Mod-12 counter in Verilog. The Mod-12 counter counts from 0 to 11 (binary `0000` to `1011`) and then resets back to 0. It includes functionality for asynchronous reset, loading a specific count value, and automatic incrementing.

#### Project Structure

- **`mod12_count` Module**: The main counter module.
- **`mod12_count_tb` Module**: The testbench for verifying the functionality of the counter.

#### `mod12_count` Module

**Functionality**:

- **Inputs**:
  - `clk`: Clock signal.
  - `rst`: Asynchronous reset signal.
  - `load`: Load enable signal.
  - `in`: 4-bit input value for loading.

- **Outputs**:
  - `q`: 4-bit output representing the current count value.

**Behavior**:

- On the rising edge of the clock (`posedge clk`):
  - If `rst` is high, the counter is reset to `4'b0000`.
  - If the current count (`q`) is greater than or equal to `4'b1011` (11 in decimal), the counter is reset to `4'b0000`.
  - If `load` is high and `in` is less than or equal to `4'b1011`, the counter value `q` is set to `in`.
  - If `load` is not high and `rst` is not high, the counter increments by `1`.

#### `mod12_count_tb` Module

**Functionality**:

The testbench applies various input conditions to the `mod12_count` module and monitors its behavior.

**Tasks**:

- **`initialize`**: Initializes input signals to default values.
- **`reset`**: Applies an asynchronous reset signal.
- **`en_load`**: Enables loading of the input value.
- **`dis_load`**: Disables loading of the input value.
- **`inputs`**: Sets the `in` input value.

**Simulation Flow**:

1. **Initialize**: Set initial values for the signals.
2. **Reset**: Apply reset to initialize the counter.
3. **Enable Load**: Set the load signal and apply a value.
4. **Disable Load**: Disable the load signal.
5. **Apply More Test Inputs**: Test the counter with various input values.
6. **Finish**: End the simulation after verifying the functionality.

#### Running the Simulation

1. **Set Up**:
   - Ensure you have a Verilog simulation tool such as Xilinx Vivado or ModelSim installed.
   - Load the `mod12_count` module and its testbench into the simulation environment.

2. **Compile**:
   - Compile the Verilog files to ensure there are no syntax errors.

3. **Run the Testbench**:
   - Execute the testbench to simulate the behavior of the `mod12_count` module.

4. **Verify Outputs**:
   - Check the output `q` and monitor the `rst`, `load`, and `in` signals to ensure the counter behaves as expected according to the test scenarios.

#### Conclusion

This project provides a Mod-12 counter implemented in Verilog with features for asynchronous reset, load functionality, and automatic incrementing. The accompanying testbench verifies the correct operation of the counter by applying various input conditions and observing the results.