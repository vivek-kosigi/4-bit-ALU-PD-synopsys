# Design Compiler (DC) - Synthesis

This folder contains files related to RTL synthesis of the 4-bit ALU using Synopsys Design Compiler.

## 📂 Contents
- `alu.tcl` : Main synthesis script
- `constraints.sdc` : Design constraints file (clock, input/output delays, etc.)
- `library_setup.tcl` : Library and environment setup
- `reports/` : Synthesis reports (area, timing, power)

## 🔧 Flow Summary
1. Read RTL (Verilog)
2. Read technology library (.db)
3. Apply constraints (.sdc)
4. Compile design
5. Generate reports

## 📋 Output Files
- Mapped netlist (`alu_mapped.v`)
- Reports:
  - Area report
  - Timing report
  - Power report
  - Cell usage report

## 🧠 Notes
- Ensure the `.db` and `.sdc` files match the technology used in ICC2
- Use `write -format ddc` to save the synthesized design if needed
