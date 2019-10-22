# Import Design
read_file -format verilog  "../../design/CS.v"
read_file -format verilog  "../../design/CHIP.v"

current_design [get_designs CHIP]
link

source -echo -verbose ../CHIP_dc.tcl

