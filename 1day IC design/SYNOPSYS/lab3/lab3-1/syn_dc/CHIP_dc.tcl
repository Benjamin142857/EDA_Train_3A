# CHIP Level Constraint

set cycle 20          ;	#clock period defined by designer
set t_in  10 	      ;	#input delay defined by designer
set t_out 0.5	      ;	#output delay defined by designer


set_operating_conditions  -min fast   -max slow
set_wire_load_model -name tsmc18_wl10 -library slow
set_wire_load_mode  top

create_clock -period $cycle    [get_ports clk]
set_clock_uncertainty  0.1     [get_clocks clk]
set_clock_latency      0.5     [get_clocks clk]
set_input_transition   0.5     [all_inputs]
set_clock_transition   0.2     [all_clocks]

set_input_delay  $t_in  -clock clk [remove_from_collection [all_inputs] [get_clocks clk]]
set_output_delay $t_out -clock clk [all_outputs]
 
set_load   40    [all_outputs]    
                       
set_case_analysis 0 [get_ports se]

#set_propagated_clock [get_clocks clk]
#set_operating_conditions -min fast -max slow

