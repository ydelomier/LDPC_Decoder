#!/bin/bash
set -x

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe 3 3 0 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/5G/5G_N_648_r50pc.QcId 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f COMP_648_I3_S7.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe 3 3 1 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/5G/5G_N_648_r50pc.QcId 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f COMP_648_I3_S7_opt.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe 5 3 0 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/5G/5G_N_648_r50pc.QcId 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f COMP_648_I5_V7.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe 5 3 1 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/5G/5G_N_648_r50pc.QcId 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f COMP_648_I5_V7_opt.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe 6 3 0 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/5G/5G_N_648_r50pc.QcId 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f COMP_648_I6_V7.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe 6 3 1 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/5G/5G_N_648_r50pc.QcId 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f COMP_648_I6_V7_opt.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe 5 3 0 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/802_15_3c/802_15_3c_672_r3_4.QcId 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f COMP_672_I5_V7.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe 5 3 1 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/802_15_3c/802_15_3c_672_r3_4.QcId 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f COMP_672_I5_V7_opt.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe 5 3 0 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/802_11e/802_11e_768_r1_2.QcId 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f COMP_768_I5_V7.tcl &&

cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
./HTransformer.exe 5 3 1 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/802_11e/802_11e_768_r1_2.QcId 
cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
vivado_hls -f COMP_768_I5_V7_opt.tcl &&

cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
./HTransformer.exe 5 3 0 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/802_11e/802_11e_1152_r1_2.QcId 
cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
vivado_hls -f COMP_1152_I5_V7.tcl &&

cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
./HTransformer.exe 5 3 1 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/802_11e/802_11e_1152_r1_2.QcId 
cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
vivado_hls -f COMP_1152_I5_V7_opt.tcl &&

cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
./HTransformer.exe 5 3 0 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/802_11e/802_11e_1920_r1_2.QcId 
cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
vivado_hls -f COMP_1920_I5_V7.tcl &&

cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
./HTransformer.exe 5 3 1 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/802_11e/802_11e_1920_r1_2.QcId 
cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
vivado_hls -f COMP_1920_I5_V7_opt.tcl &&

cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
./HTransformer.exe 5 3 0 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/5G/5G_N_1944_r50pc.QcId 
cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
vivado_hls -f COMP_1944_I5_V7.tcl &&

cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
./HTransformer.exe 5 3 1 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/5G/5G_N_1944_r50pc.QcId 
cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
vivado_hls -f COMP_1944_I5_V7_opt.tcl &&

cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
./HTransformer.exe 8 3 0 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/5G/5G_N_1944_r50pc.QcId 
cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
vivado_hls -f COMP_1944_I8_K7.tcl &&

cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
./HTransformer.exe 8 3 1 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/5G/5G_N_1944_r50pc.QcId 
cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
vivado_hls -f COMP_1944_I8_K7_opt.tcl &&

cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
./HTransformer.exe 10 3 0 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/802_11e/802_11e_2304_r1_2.QcId 
cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
vivado_hls -f COMP_2304_I10_V7.tcl &&

cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
./HTransformer.exe 10 3 1 /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/802_11e/802_11e_2304_r1_2.QcId 
cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
vivado_hls -f COMP_2304_I10_V7_opt.tcl 

