# Verilog - 4-bit ALU

This folder contains the RTL description of a 4-bit Arithmetic Logic Unit (ALU) written in Verilog.

## 📌 Features Implemented
- 4-bit inputs: A and B
- Output: 4-bit Result and 1-bit Carry/Overflow
- Operations supported:
  - 000: AND
  - 001: OR
  - 010: ADD
  - 011: SUB
  - 100: XOR
  - 101: Shift Left
  - 110: Shift Right
  - 111: Pass-through A

## 📂 Files
- `alu.v` : Main ALU module
- `alu_tb.v` : Testbench to simulate functionality (optional)

## ✅ To-Do
- [ ] Simulate using ModelSim/Icarus Verilog
- [ ] Add waveform image (optional)

## 💡 Notes
This RTL will be used for synthesis using Synopsys Design Compiler and further Physical Design using ICC2.
