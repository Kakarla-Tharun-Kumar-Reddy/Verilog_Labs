
# Bidirectional Buffer (BidBuffer) in Verilog

## Overview

This project implements a Bidirectional Buffer (BidBuffer) in Verilog. A bidirectional buffer allows data to be transferred in both directions between two nodes. The direction of data flow is controlled by a control signal. Bidirectional buffers are commonly used in bus systems where multiple devices share a common bus, and only one device can transmit data at a time.

## Project Structure

The project consists of two primary modules:

1. **bidbuffer**: This is the main module that implements the bidirectional buffer logic.
2. **bidbuffer_tb**: This is the testbench module used to simulate and verify the functionality of the bidirectional buffer.

## Module Description

### 1. Bidirectional Buffer (`bidbuffer`)

**Ports:**
- `a`: A bidirectional inout port.
- `b`: A bidirectional inout port.
- `control`: An input port that controls the direction of data flow.

**Functionality:**
- The `control` signal determines the direction of data transfer.
- If `control` is high (`1`), data flows from `a` to `b`.
- If `control` is low (`0`), data flows from `b` to `a`.

**Verilog Implementation:**
```verilog
module bidbuffer(a,b,control);
inout a,b;
input control;
bufif1(b,a,control);
bufif0(a,b,control);
endmodule
```

### 2. Testbench (`bidbuffer_tb`)

**Purpose:**
- The testbench is used to verify the correctness of the bidirectional buffer module.
- It generates stimulus signals for `a`, `b`, and `control`, and observes the outputs to ensure the bidirectional buffer behaves as expected.

**Testbench Implementation:**
```verilog
module bidbuffer_tb();
wire a,b;
reg control;
reg tempa,tempb;
bidbuffer b1(a,b,control);

initial begin 
    tempa = 1'b0;
    tempb = 1'b0;
    control = 1'b0;
end 

always #10 tempa = ~tempa;
always #20 tempb = ~tempb;
always #50 control = ~control;

assign a = (control == 1) ? tempa : 1'bz;
assign b = (control == 0) ? tempb : 1'bz;

initial begin 
    #1000;
    $finish;
end 
endmodule
```

## Simulation

To simulate the bidirectional buffer, the testbench toggles the `tempa`, `tempb`, and `control` signals at different intervals. The signals `a` and `b` are driven based on the value of `control`. 
![alt text](<Screenshot 2024-08-15 234219.png>)

### Steps to Run Simulation:

1. Compile the Verilog files (`bidbuffer.v` and `bidbuffer_tb.v`).
2. Run the simulation using a Verilog simulator (e.g., ModelSim, Xilinx Vivado).
3. Observe the waveforms or output to verify the functionality of the bidirectional buffer.

## Conclusion

This project demonstrates a simple yet essential digital circuit design— the bidirectional buffer. The testbench verifies the correct operation of the bidirectional data transfer depending on the control signal, making it a useful reference for similar designs in digital systems.

