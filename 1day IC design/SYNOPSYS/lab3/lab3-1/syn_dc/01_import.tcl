# Import Design
read_file -format verilog  "../../design/CS.v"
read_file -format verilog  "../../design/CHIP.v"

current_design [get_designs CS]
link

source -echo -verbose ../CORE_dc.tcl

