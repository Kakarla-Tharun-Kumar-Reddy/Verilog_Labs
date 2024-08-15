### README: 4-Bit ALU Implementation in Verilog

#### Introduction

This project demonstrates the implementation of a 4-bit Arithmetic Logic Unit (ALU) in Verilog. An ALU is a critical component in digital systems, particularly in CPUs, where it performs a variety of arithmetic and logic operations. The ALU in this project is capable of performing operations such as addition, subtraction, multiplication, division, bitwise operations, and logical shifts.

#### Project Structure

- **`alu` Module**: The main module implementing the 4-bit ALU that performs various arithmetic and logic operations based on the `alu_sel` input.
- **`alu_tb` Module**: A testbench module used to simulate and verify the functionality of the ALU.

#### ALU Operations

The ALU supports the following operations based on the `alu_sel` input:

- **0000**: Addition (`a + b`)
- **0001**: Subtraction (`a - b`)
- **0010**: Multiplication (`a * b`)
- **0011**: Division (`a / b`)
- **0100**: Logical Shift Left (`a << 3`)
- **0101**: Logical Shift Right (`a >> 3`)
- **0110**: Logical NOT (`!a`)
- **0111**: Bitwise NOT (`~a`)
- **1000**: Bitwise AND (`a & b`)
- **1001**: Bitwise OR (`a | b`)
- **1010**: Bitwise XOR (`a ^ b`)
- **1011**: Bitwise NAND (`~(a & b)`)
- **1100**: Bitwise NOR (`~(a | b)`)
- **1101**: Bitwise XNOR (`~(a ^ b)`)
- **1110**: Logical AND (`a && b`)
- **1111**: Logical OR (`a || b`)

If an invalid `alu_sel` value is provided, the ALU defaults to performing addition.

#### How It Works

1. **Inputs**:
   - `a`, `b`: 4-bit operands on which the ALU operations are performed.
   - `alu_sel`: 4-bit input that selects the operation to be performed by the ALU.

2. **Output**:
   - `alu_out`: 9-bit output that stores the result of the selected operation.

3. **Operation**:
   - The ALU performs the operation specified by the `alu_sel` input and stores the result in `alu_out`. The use of a 9-bit output ensures that it can accommodate the result of all operations, including multiplication, which may exceed 4 bits.

#### Simulation and Testing

- The `alu_tb` module is used to test the functionality of the ALU. It initializes the ALU with specific values for `a` and `b`, then iterates through all possible operations by changing the `alu_sel` value.

- The testbench applies a variety of inputs to the ALU and verifies that the output matches the expected result for each operation.

#### Running the Simulation

1. **Set Up**:
   - Ensure you have a Verilog simulation tool such as Xilinx Vivado or ModelSim installed.
   - Load the `alu` module and the `alu_tb` testbench.

2. **Run the Simulation**:
   - Compile and run the testbench. The simulation will apply different operations to the inputs `a` and `b` and display the results.

3. **Verify Output**:
   - Check the output of the simulation against the expected results for each `alu_sel` operation.

#### Conclusion

This project provides a basic implementation of a 4-bit ALU using Verilog. The ALU performs a variety of arithmetic and logical operations, making it a fundamental component in the design of digital systems. The testbench verifies the functionality of the ALU, ensuring it behaves as expected across all supported operations.