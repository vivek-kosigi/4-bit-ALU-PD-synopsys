TCL Synthesis Script for Design Compiler Tool :

# Source library and setup environment
source -echo -verbose ./rm_setup/dc_setup.tcl

# Set RTL source file path
set rtl_source_file ./../rtl/4_bit_alu.v

# Define design library
define_design_lib work -path ./work

# Analyze and elaborate design
analyze -format verilog ${rtl_source_file}
elaborate ${DESIGN_NAME}

# Optional GUI start for interactive synthesis
start_gui

# Compile design with basic and ultra optimizations
compile
compile_ultra

# Generate synthesis reports and save in alu_reports folder
report_qor > alu_reports/alu_report_qor.rpt
report_timing > alu_reports/alu_report_timing.rpt
report_area > alu_reports/alu_report_area.rpt
report_power > alu_reports/alu_report_power.rpt

# Write synthesized outputs to results directory
write -format verilog -hierarchy -output ${RESULTS_DIR}/${DCRM_FINAL_VERILOG_OUTPUT_FILE}
write -format ddc -hierarchy -output ${RESULTS_DIR}/${DCRM_FINAL_DDC_OUTPUT_FILE}
write_sdc ${RESULTS_DIR}/${DCRM_FINAL_SDC_OUTPUT_FILE}

# Notes:
# - ${DCRM_FINAL_VERILOG_OUTPUT_FILE} and other variables should be set in dc_setup.tcl
# - Ensure alu_reports and ${RESULTS_DIR} directories exist to avoid errors
# - mkdir alu_reports and mkdir results should be run in your shell 
