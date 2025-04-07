# ICC2 - Physical Design

This folder contains scripts and files used for performing physical design of the 4-bit ALU using Synopsys ICC2.

## 📂 Contents
- `floorplan.tcl` : Script to perform floorplanning
- `power_plan.tcl` : Script for power grid creation
- `placement.tcl` : Standard cell placement script
- `cts.tcl` : Clock tree synthesis
- `routing.tcl` : Global + detailed routing
- `signoff.tcl` : Post-route analysis (timing, DRC, LVS)
- `screenshots/` : Images from each stage (floorplan, placement, routing)

## 🧱 Flow Summary
1. Import synthesized netlist and constraints
2. Define floorplan (core/utilization, margins)
3. Power planning
4. Placement of standard cells
5. Clock Tree Synthesis (CTS)
6. Routing (Global + Detailed)
7. Signoff: Timing, power, DRC checks

## 📋 Output Files
- DEF and GDS files for each stage
- Reports: area, timing, power, utilization
- Layout screenshots from GUI

## 💡 Notes
- Scripts are written in TCL and sourced inside `icc2_shell`
- Technology used: [mention here, e.g., Generic 90nm]

