
current_design top
set_operating_conditions  -max WCCOM   -min BCCOM
set_wire_load_model -name G50K -library fsd0a_a_generic_core_wc
set_wire_load_mode  top


create_clock  -name clk  -period 4      [get_ports clk]
set_dont_touch_network                  [get_clocks clk]
set_fix_hold                            [get_clocks clk]
set_clock_uncertainty     0.1           [get_clocks clk]
set_clock_latency         0.5             [get_clocks clk]

set_input_delay  0.5  -clock clk [remove_from_collection [all_inputs] [get_ports clk]]
set_output_delay 0.5  -clock clk [all_outputs]

set_load   [load_of  "fod0a_b33_t33_generic_io_wc/ZMP0CAA/I"]    [all_outputs]
set_drive  [drive_of "fod0a_b33_t33_generic_io_wc/ZMP0CAA/O"]    [all_inputs]

set_max_fanout 6    [all_inputs]

uniquify
compile -boundary_optimization  -map_effort high -area_effort high 

