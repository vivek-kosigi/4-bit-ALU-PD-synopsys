# 📌 4-Bit ALU Physical Design Project using Synopsys Tools

---

## 📘 1. Introduction

This project involves the **RTL to GDSII implementation** of a 4-bit Arithmetic Logic Unit (ALU) using Synopsys tools like Design Compiler and ICC2.  
The ALU performs arithmetic and logical operations and is a fundamental building block of processors.

- ✅ Aimed at applying physical design knowledge in a hands-on project
- 🎯 Objective: Complete synthesis and full backend flow of a 4-bit ALU

---

## 🛠️ 2. Tools Used

- **Synopsys Design Compiler** – For RTL Synthesis  
- **Synopsys ICC2** – For Physical Design (floorplan to routing)  
- **File Types Used**:
  - `.v` – Verilog RTL of 4-bit ALU  
  - `.lib` – Standard cell library file  
  - `.sdc` – Design constraints  
  - `.tcl` – Synthesis and PD automation scripts  
- **Platform**: Linux-based VLSI server

---

## 🧭 3. Flow Summary

End-to-end flow followed in this project:

1. **RTL Design** – Written in Verilog  
2. **Synthesis** – Using Design Compiler (`.lib` + `.sdc`)  
3. **Floorplanning** – Die/core settings, I/O placements  
4. **Power Planning** – Creating rings and straps  
5. **Placement** – Cell placement and legalization  
6. **Clock Tree Synthesis** – Insertion of clock buffers  
7. **Routing** – Full connection of nets  
8. **Signoff** – Final analysis of area, timing, and power

---

## 💻 4. Key Commands / Scripts

All commands were written in `.tcl` scripts and executed in respective tool shells:

- 📁 `scripts/dc_synthesis.tcl` – Synthesis flow in Design Compiler  
- 📁 `scripts/icc2_flow.tcl` – Complete ICC2 flow (FP → Signoff)  
- 📁 `setup/` – Contains `.lib`, `.sdc`, and environment setup files

---

## 📊 5. Results

Final reports and graphical outputs:

- 📁 `reports/` – Timing, area, power (post-synthesis & post-route)  
- 📁 `results/` – Screenshots of floorplan, placement, routing

### 📌 Summary (example values – replace with your actual results):

| Metric           | Value     |
|------------------|-----------|
| Area             | 1234.56 µm² |
| Total Power      | 2.45 mW   |
| WNS              | 0.00 ns   |
| TNS              | 0.00 ns   |

---

## 🧠 6. Challenges & Learnings

- 🔍 **Synthesis Warnings**: Resolved by fine-tuning the `.sdc`  
- 🔌 **Power Planning**: Learned the strategy to avoid IR drop  
- ⏱️ **Timing Optimization**: Explored buffer insertion and net delay fixing  
- 🎯 Key Learning: Understanding how each PD step affects performance and layout

---

## 🌱 7. Final Thoughts

This project helped me:

- Strengthen backend design skills using industry tools  
- Learn script-driven PD workflows  
- Build confidence in reporting and debugging timing/power issues  

### 🚀 What's Next?

- Automate the PD flow using Make/Python  
- Try different ALU widths or integrate with a processor  
- Explore formal verification and DRC/LVS in more detail

---
