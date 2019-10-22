current_design [get_designs CHIP]

set high_fanout_net_threshold 0

uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]

set_dont_touch [get_cell ipad*]
set_dont_touch [get_cell opad*]

compile -scan -boundary_optimization

set_scan_configuration  -internal_clocks  single -chain_count  1 -clock_mixing no_mix

set_dft_signal -view exist -type ScanClock -timing {45 55} -port {clk}
set_dft_signal -view exist -type Reset -active 1 -port  reset

set_dft_signal -view spec -type ScanEnable -active 1 -port se
set_dft_signal -view spec -port si -type ScanDataIn
set_dft_signal -view spec -port so -type ScanDataOut
set_scan_path  chain1 -view spec -scan_data_in si -scan_data_out so

create_test_protocol
preview_dft -show all
dft_drc

set_false_path -from [get_ports se]

insert_dft
dft_drc -coverage_estimate
report_scan_path -view existing_dft -chain all
report_scan_path -view existing_dft -cell  all

write_test_protocol -output chip_syn.spf


