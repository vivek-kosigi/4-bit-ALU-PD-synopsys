
# ALU_4bit.sdc - Combinational ALU constraints for Synopsys Design Compiler

# No clock is defined since ALU is purely combinational

# Set maximum delay between inputs and outputs to guide timing analysis
set_max_delay 10.0 -from [get_ports {A[*] B[*] ALU_Sel[*]}] -to [get_ports {ALU_Out[*] CarryOut}]

# Optional: set max transition (slew) on inputs and outputs (example value)
set_max_transition 0.1 [get_ports {A[*] B[*] ALU_Sel[*]}]
set_max_transition 0.1 [get_ports {ALU_Out[*] CarryOut}]

# Optional: set max load capacitance on outputs (example value in picofarads)
set_load 0.5 [get_ports {ALU_Out[*] CarryOut}]
