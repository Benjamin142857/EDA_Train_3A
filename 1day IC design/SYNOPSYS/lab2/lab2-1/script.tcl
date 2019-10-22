#Read Design File
read_file -format pla converter.pla

sh mkdir COOK_TEMP
define_design_lib COOK_TEMP -path ./COOK_TEMP
analyze -library COOK_TEMP -format verilog "timer.v microwave.v micro_st.v loader.v display.v top.v"
elaborate top -architecture verilog -library COOK_TEMP


#Setting Clock Constraints
create_clock -name clk -period 4  [get_ports clk] 
set_dont_touch_network  [get_clocks clk]
set_fix_hold            [get_clocks clk]
set_clock_uncertainty       0.1   [get_clocks clk]
set_clock_latency   -source 0     [get_clocks clk]
set_clock_latency           1     [get_clocks clk] 
#set_input_transition        0.5   [all_inputs]
#set_clock_transition        0.2   [all_clocks]


#Setting Design Environment
set_operating_conditions -min BCCOM  -max WCCOM
set_wire_load_model -name G5K -library fsd0a_a_generic_core_wc
set_wire_load_mode  top

set_driving_cell -library fsd0a_a_generic_core_wc -lib_cell BUFX4   -pin {O}  [get_ports clk]
set_driving_cell -library fsd0a_a_generic_core_wc -lib_cell DFFX1   -pin {Q}  [remove_from_collection [all_inputs] [get_ports clk]]
set_load  [load_of "fsd0a_a_generic_core_wc/DFFX1/D"]       [all_outputs]
set_input_delay   -max 1    -clock clk   [all_inputs]
set_input_delay   -min 0.2  -clock clk   [all_inputs]
set_output_delay  -max 1    -clock clk   [all_outputs]
set_output_delay  -min 0.1  -clock clk   [all_outputs]


#Setting DRC Constraint
set_max_area        0
set_max_fanout      2    [all_inputs]
set_max_transition  0.3  [all_inputs]


#Solve Multiple Instance
uniquify


#Synthesis all design
compile -boundary_optimization -map_effort high -area_effort high


#Optimize Power
report_power

set_max_total_power 0 uw
compile -inc

report_power

 
