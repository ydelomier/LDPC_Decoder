#!/bin/bash
set -x

declare -a NAME
declare -a ITER 
declare -a PMAT
declare -a QLLR
declare -a QMSG
declare -a FPGA

NAME=("Exp2-N_648_I3_S7" "Exp3-N_672_I10_v7" "Exp4-N_1944_I4_K7" "Exp5-N_648_I6_V7" "Exp6-N_648_I5_V7" "Exp7-N_16384_I10_V7" "Exp8-N_576_I10_V7" "Exp9-N_2304_I10_v7" "Exp11-N_2560_I30_V7" "Exp12-N_1944_I4_K7" "Exp13-N_2304_I10_V7")
ITER=(3 10 4 6 5 10 10 10 30 4 10)
PMAT=("5G/5G_N_648_r50pc.QcId" "802_15_3c/802_15_3c_672_r3_4.QcId" "5G/5G_N_1944_r50pc.QcId" "5G/5G_N_648_r50pc.QcId" "5G/5G_N_648_r50pc.QcId" "Vincent/N_16384_r75.QcId" "802_11e/802_11e_576_r1_2.QcId" "802_11e/802_11e_2304_r1_2.QcId" "CCSDS/LDPC_k_1024_n_2560.QcId" "5G/5G_N_1944_r50pc.QcId" "802_11e/802_11e_2304_r1_2.QcId")
QLLR=(8 8 8 8 8 8 7 8 8 8 6)
QMSG=(6 6 6 6 6 6 5 6 6 6 4)
FPGA=("xc7s50csga324-1" "xc7vx690tffg1761-2" "xc7k410tfbg676-1" "xc7vx690tffg1761-2" "xc7vx690tffg1761-2" "xc7vx690tffg1761-2" "xc7vx690tffg1761-2" "xc7vx690tffg1761-2" "xc7vx690tffg1761-2" "xc7k410tfbg676-1" "xc7vx485tffg1157-2")

for cnt in 0 1 2 3 4 5 6 7 8 9 10
do

	cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/
	
	# Write HLS script
	echo "
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

open_solution \"solution_100MHz\"
set_part {${FPGA[$cnt]}} -tool vivado
create_clock -period 10 -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
set_clock_uncertainty 1

csynth_design
cosim_design -rtl vhdl -tool xsim

exit" > HLS_script1.tcl

	echo "
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

open_solution \"solution_200MHz\"
set_part {${FPGA[$cnt]}} -tool vivado
create_clock -period 5 -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
set_clock_uncertainty 1

csynth_design
cosim_design -rtl vhdl -tool xsim

exit" > HLS_script2.tcl

	# Write config file
	echo "
#include \"ldpc_parameters.h\"

#define Q 			QC

#define LLR_BITS	${QLLR[$cnt]}
#define LLR_MAXV    (+127)
#define LLR_MINV    (-127)

#define MSG_BITS	${QMSG[$cnt]}
#define MSG_MAXV    (+31)
#define MSG_MINV    (-31)

#define TYPE_LLRS   sc_bigint<Q * LLR_BITS>
#define TYPE_MSGS   sc_bigint<Q * MSG_BITS>
#define TYPE_BITS   sc_biguint<Q>

#define LLR 		sc_bigint<LLR_BITS>
#define MSG 		sc_bigint<MSG_BITS>
#define BIT 		sc_uint<1>

#define _MONITORING_" > src/module/config.h
	
	# Write LDPC parameters files
	cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug
	./HTransformer.exe ${ITER[$cnt]} 3 0 ../matrix/${PMAT[$cnt]}
		
	# # Launch synthesis
	cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/
	vivado_hls -f HLS_script1.tcl
	vivado_hls -f HLS_script2.tcl

#Solution 100MHz 
	# Copy the synthesis report files for Solution 100MHz
	mkdir -p Implementation_Results/Relative_Results/${NAME[$cnt]}/Solution_100MHz/syn 
	cp sc_LDPC_QC/solution_100MHz/syn/report/*.rpt Implementation_Results/Relative_Results/${NAME[$cnt]}/Solution_100MHz/syn 

	# Copy the vhdl files for Solution 100MHz
	cp -R sc_LDPC_QC/solution_100MHz/syn/vhdl Implementation_Results/Relative_Results/${NAME[$cnt]}/Solution_100MHz/syn

	# Copy the cosim log for Solution 100MHz
	mkdir -p Implementation_Results/Relative_Results/${NAME[$cnt]}/Solution_100MHz/cosim 
	cp sc_LDPC_QC/solution_100MHz/sim/report/vhdl/my_module.log Implementation_Results/Relative_Results/${NAME[$cnt]}/Solution_100MHz/cosim  
	
	# Copy the implementation report for Solution 100MHz
	mkdir -p Implementation_Results/Relative_Results/${NAME[$cnt]}/Solution_100MHz/impl 
	cp sc_LDPC_QC/solution_100MHz/impl/report/vhdl/my_module_export.rpt Implementation_Results/Relative_Results/${NAME[$cnt]}/Solution_100MHz/impl 

#Solution 200MHz  
	# Copy the synthesis report files for Solution 300MHz
	mkdir -p Implementation_Results/Relative_Results/${NAME[$cnt]}/solution_200MHz/syn 
	cp sc_LDPC_QC/solution_200MHz/syn/report/*.rpt Implementation_Results/Relative_Results/${NAME[$cnt]}/solution_200MHz/syn 

	# Copy the vhdl files for Solution 300MHz
	cp -R sc_LDPC_QC/solution_200MHz/syn/vhdl Implementation_Results/Relative_Results/${NAME[$cnt]}/solution_200MHz/syn
	
	# Copy the cosim log for Solution 300MHz
	mkdir -p Implementation_Results/Relative_Results/${NAME[$cnt]}/solution_200MHz/cosim 
	cp sc_LDPC_QC/solution_200MHz/sim/report/vhdl/my_module.log Implementation_Results/Relative_Results/${NAME[$cnt]}/solution_200MHz/cosim  

	# Copy the implementation report for Solution 300MHz
	mkdir -p Implementation_Results/Relative_Results/${NAME[$cnt]}/solution_200MHz/impl 
	cp sc_LDPC_QC/solution_200MHz/impl/report/vhdl/my_module_export.rpt Implementation_Results/Relative_Results/${NAME[$cnt]}/solution_200MHz/impl 
	
# Erase the Solution for new test
	cd sc_LDPC_QC/ 
	rm -r solution_100MHz/ 
	rm -r solution_200MHz/

done

exit 0