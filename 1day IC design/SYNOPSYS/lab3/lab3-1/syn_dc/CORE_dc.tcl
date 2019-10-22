# CORE Level Constraint

set cycle 20          ;	#clock period defined by designer
set t_in  10 	      ;	#input delay defined by designer
set t_out 0.5	      ;	#output delay defined by designer
set in_pad_delay  0.85
set out_pad_delay 4.91

set_operating_conditions -min fast  -max slow
set_wire_load_model -name tsmc18_wl10 -library slow
set_wire_load_mode  top


create_clock -period $cycle [get_ports clk]
set_dont_touch_network      [get_clocks clk]
set_fix_hold                [get_clocks clk]
set_clock_uncertainty  0.1  [get_clocks clk]
set_clock_latency      0.5  [get_clocks clk]

set_input_delay  [expr $t_in+$in_pad_delay]    -clock clk [remove_from_collection [all_inputs] [get_ports clk]]
set_output_delay [expr $t_out+$out_pad_delay]  -clock clk [all_outputs]
 
set_load   [load_of  "tpz973gwc/PDO08CDG/I"]  [all_outputs]    
set_drive  [drive_of "tpz973gwc/PDIDGZ/C"]    [all_inputs]
                       
set_max_fanout 6        [get_designs CS]


