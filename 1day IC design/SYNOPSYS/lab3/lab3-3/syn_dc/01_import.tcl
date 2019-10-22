#Create Milkway
sh rm  -rf CS_MW       ;#avoid the dir had existed
create_mw_lib CS_MW -technology lib/tsmc18_CIC.tf  -open -mw_reference_library "lib/tsmc18_fram/ lib/tpz973g/"


# Import Design
read_file -format verilog  "../../design/CS.v"
read_file -format verilog  "../../design/CHIP.v"

current_design [get_designs CHIP]
link

source -echo -verbose ../CHIP_dc.tcl

