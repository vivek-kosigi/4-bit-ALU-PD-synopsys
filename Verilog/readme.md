# Verilog - 4-bit ALU

This repository contains the RTL design code and testbench code for a 4-bit Arithmetic Logic Unit (ALU) written in Verilog, along with simulation waveform images demonstrating its functionality.

## 📌 Features Implemented

- 4-bit inputs: `A` and `B`
- Outputs:
  - 4-bit ALU result (`ALU_Out`)
  - 1-bit carry/borrow (`CarryOut`) output
- Supported operations selected via a 4-bit selector `ALU_Sel`:
  | ALU_Sel (binary) | Operation          | Description                          |
  |------------------|--------------------|------------------------------------|
  | 0000             | Addition           | `ALU_Out = A + B`                   |
  | 0001             | Subtraction        | `ALU_Out = A - B`                   |
  | 0010             | AND                | Bitwise AND of A and B              |
  | 0011             | OR                 | Bitwise OR of A and B               |
  | 0100             | XOR                | Bitwise XOR of A and B              |
  | 0101             | NAND               | Bitwise NAND of A and B             |
  | 0110             | NOR                | Bitwise NOR of A and B              |
  | 0111             | Less Than Compare  | `ALU_Out = (A < B) ? 1 : 0`        |
  | 1000             | Multiplication     | Lower 4 bits of A * B               |
  | 1001             | Division           | Integer division A / B (B != 0)    |

## 📂 Files

- `4_bit_alu.v` : Main 4-bit ALU Verilog module implementing the above operations
- `4_bit_alu_tb.v` : Testbench driving the ALU inputs and exercising all operations
- `dump.vcd` (generated) : Simulation waveform file created during testbench run
- Waveform screenshots 

## 🚀 How to Simulate

1. Compile the design and testbench using Synopsys VCS (full 64-bit support):
    ```
    vcs 4_bit_alu.v 4_bit_alu_tb.v -full64 -kbd -debug_access+all
    ```
2. Run the simulation:
    ```
    ./simv -verdi
    ```
3. View the waveform with Verdi:
    ```
    verdi -ssf dump.vcd -nologo
    ```

## ✅ To-Do

- [x] Functional ALU Verilog design and testbench
- [x] Generate waveform `.vcd` for verification
- [x] Add detailed waveform image annotations

## 💡 Notes

- This project is intended for learning and demonstration of ALU design in Verilog.
- The carry out (`CarryOut`) signal is valid mainly for addition and subtraction operations.
- Multiplication and division outputs are limited to 4 bits (lower bits or quotient).
- The code is suitable for synthesis with Synopsys Design Compiler and implementation in ASIC or FPGA flows.

---

Feel free to open issues or pull requests for improvements or clarifications!

---

