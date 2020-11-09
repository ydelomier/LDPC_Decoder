
open_project sc_LDPC_QC
set_top my_module
add_files src/module/process_s2.h
add_files src/module/process_s1.h
add_files src/module/process_read_write.h
add_files src/module/my_module.h
add_files src/module/my_module.cpp
add_files src/module/barrel_shifter.h
add_files -tb ../shared/src/vector.h 
add_files -tb ../shared/src/scalar.h 
add_files -tb src/rtl_simu_testbench/sc_top_module.h 
add_files -tb src/rtl_simu_testbench/sc_monitor/sc_monitor.h 
add_files -tb src/rtl_simu_testbench/sc_generator/sc_generator.h 
add_files -tb src/rtl_simu_testbench/main.cpp 
add_files -tb src/module/ldpc_parameters.h 
add_files -tb src/module/ldpc_code.h 
add_files -tb src/module/config.h 

open_solution "solution_200MHz"
set_part {xc7vx485tffg1157-2} -tool vivado
create_clock -period 5 -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
set_clock_uncertainty 1

csynth_design
cosim_design -rtl vhdl -tool xsim

exit
