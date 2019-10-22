#Create Milkway
sh rm  -rf COOK_MW       ;#avoid the dir had existed
create_mw_lib COOK_MW -technology lib/umc_90nm_1p9m126_CIC.tf  -open -mw_reference_library "lib/FSD0A_A_GENERIC_CORE lib/FOD0A_B33_T33_GENERIC_IO"

#Read Design File
read_file -format pla converter.pla

sh mkdir COOK_TEMP
define_design_lib COOK_TEMP -path ./COOK_TEMP
analyze -library COOK_TEMP -format verilog "timer.v microwave.v micro_st.v loader.v display.v top.v"
elaborate top -architecture verilog -library COOK_TEMP


#Setting Clock Constraints
create_clock -name clk -period 4  [get_ports clk] 
set_dont_touch_network            [get_clocks clk]
set_fix_hold                      [get_clocks clk]
set_clock_uncertainty       0.1   [get_clocks clk]
set_clock_latency   -source 0     [get_clocks clk]
set_clock_latency           1     [get_clocks clk] 
#set_input_transition        0.5   [all_inputs]
#set_clock_transition        0.2   [all_clocks]


#Setting Design Environment
set_operating_conditions -min BCCOM  -max WCCOM

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
compile_ultra -no_auto


