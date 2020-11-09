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

for cnt in 2 #0 1 2 3 4 5 6 7 8 9 10
do

	cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/
	
	# Write LDPC parameters files
	cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug
	./HTransformer.exe ${ITER[$cnt]} 3 0 ../matrix/${PMAT[$cnt]}
	
	# # Launch synthesis
	cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/

	mkdir -p Implementation_Results/Relative_Results/${NAME[$cnt]}/Solution_100MHz/syn 

done

exit 0