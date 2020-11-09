#!/bin/bash
set -x

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/3GPP_5G/5G_N_1024_r75_z32_m1.QcId 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f 5G_N_1024_r75_z32_m1.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/3GPP_5G/5G_N_2048_r75_z64_m1.QcId 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f 5G_N_2048_r75_z64_m1.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/3GPP_5G/5G_N_2376_r88_z88_m1.QcId 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f 5G_N_2376_r88_z88_m1.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/3GPP_5G/5G_N_4048_r50_z88_m1.QcId 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f 5G_N_4048_r50_z88_m1.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/3GPP_5G/5G_N_4096_r75_z128_m1.QcId 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f 5G_N_4096_r75_z128_m1.tcl &&

cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
./HTransformer.exe /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/3GPP_5G/5G_N_4752_r88_z176_m1.QcId 
cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
vivado_hls -f 5G_N_4752_r88_z176_m1.tcl 

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/3GPP_5G/5G_N_8096_r50_z176_m1.QcId 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f 5G_N_8096_r50_z176_m1.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/3GPP_5G/5G_N_8192_r75_z256_m1.QcId 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f 5G_N_8192_r75_z256_m1.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/5G/5G_N_648_r50pc.QcId && 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f 802_11_648_50_script.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/5G/5G_N_648_r83pc.QcId && 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f 802_11_648_83_script.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/5G/5G_N_1296_r50pc.QcId && 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f 802_11_1296_50_script.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/5G/5G_N_1296_r83pc.QcId && 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f 802_11_1296_83_script.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/5G/5G_N_1944_r50pc.QcId &&  
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f 802_11_1944_50_script.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/5G/5G_N_1944_r83pc.QcId &&  
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f 802_11_1944_83_script.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/802_11e/802_11e_1152_r1_2.QcId &&  
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f 802_16_1152_50_script.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/802_11e/802_11e_1920_r1_2.QcId && 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f 802_16_1920_50_script.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/802_11e/802_11e_2304_r1_2.QcId && 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f 802_16_2304_50_script.tcl &&

# cd /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/cmake-build-debug/ &&
# ./HTransformer.exe /c/LDPC_decoder_HLS/CodeGenerator_v4_no_flush/matrix/3GPP_5G/5G_N_2376_r88_z88_m1.QcId 
# cd /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush &&
# vivado_hls -f 5G_N_2376_r88_z88_m1.tcl 


