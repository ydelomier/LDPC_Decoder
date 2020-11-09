############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project -reset sc_LDPC_QC
set_top my_module
add_files src/module/my_module.h
add_files src/module/my_module.cpp

set all_solution [list 1024_75_V7_100 1024_75_V7_333]
set all_period [list 10 3]

foreach solution $all_solution p $all_period {

	#Solution
	open_solution -reset $solution
	set_part {xc7vx690tffg1761-2}
	create_clock -period $p
	set_clock_uncertainty 1

	csynth_design
	
	export_design -flow impl -rtl vhdl -format ip_catalog

}

exit

#vivado_hls -f script_tcl_ldpc_qc.tcl