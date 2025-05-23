tcl script for synthesis :

      # to source library file and verilog file and synthesising 
      source -echo -verbose ./rm_setup/dc_setup.tcl
      set rtl_source_file ./../rtl/4_bit_alu.v
      define_design_lib work -path ./work
      analyze -format verilog ${rtl_source_file}
      elaborate ${DESIGN_NAME}
      start_gui

      #to make a fake clock
      create_clock -name fake_clk -period 1.0
      set_input_delay 0.1 -clock fake_clk [get_ports B*]
      set_output_delay 0.1 -clock fake_clk [get_ports ALU_Out*]
      compile_ultra

      #for reports generation and saving in file
      report_qor > ./alu_reports/alu_report_qor.rpt
      report_timing > ./alu_reports/alu_report_timing.rpt
      report_area > ./alu_reports/alu_report_area.rpt
      report_power > ./alu_reports/alu_report_power.rpt

      #for output files generations 
      write -format verilog -hierarchy -output ${RESULTS_DIR}/${DCRM_FINAL_VERILOG_OUTPUT_FILE}
      write -format ddc -hierarchy -output ${RESULTS_DIR}/${DCRM_FINAL_DDC_OUTPUT_FILE}
      write -format sdc -hierarchy -output ${RESULTS_DIR}/${DCRM_FINAL_SDC_OUTPUT_FILE}
      write_sdc ${RESULTS_DIR}/${DCRM_FINAL_SDC_OUTPUT_FILE}

      
