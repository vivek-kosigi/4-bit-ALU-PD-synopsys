# Design Compiler (DC) - Synthesis

This folder contains all files and documentation related to the RTL synthesis of the 4-bit Arithmetic Logic Unit (ALU) using Synopsys Design Compiler.

## 📂 Contents

- `alu.tcl` : Main synthesis TCL script to run analysis, elaboration, compilation, and output generation.
- `constraints.sdc` : Design constraints file defining timing and physical constraints such as input/output delays.
- `library_setup.tcl` : Library and environment setup script for Synopsys Design Compiler.
- `images/` : Visual snapshots documenting key synthesis stages:
  - ALU block diagram
  - Post-elaboration hierarchy
  - Compile step
  - Compile Ultra step
- `reports/` : Detailed synthesis reports covering:
  - Area utilization
  - Timing analysis
  - Power estimation
  - Quality of Results (QoR) summary

## 🔧 Synthesis Flow Summary

1. Read RTL source files (Verilog).
2. Load technology library files (`.db`).
3. Apply constraints from the `.sdc` file.
4. Elaborate and compile the design, including advanced optimizations.
5. Generate synthesis reports and output netlists.

## 📋 Output Files

- Synthesized netlist (e.g., `alu_mapped.v`), suitable for further backend flow.
- Multiple reports describing synthesis results for area, timing, power, and cell usage.

## 🧠 Notes & Recommendations

- Verify `.db` library and `.sdc` constraints match your target technology and implementation tool (e.g., ICC2).
- Use `write -format ddc` to generate design checkpoint files for downstream tools.
- Review the images folder to understand synthesis progression visually.
- Always check reports for potential timing violations or optimization opportunities early in the flow.

---

This organized setup facilitates clarity and ease of use for synthesis engineers and reviewers working with the 4-bit ALU RTL in Synopsys DC.
