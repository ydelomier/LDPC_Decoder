#!/bin/bash
set -x

rm mesure.txt

cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_648_I3_S7_333/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_648_I3_S7_333/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_648_I3_S7_333/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_296  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&

cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_648_I3_S7_333_opt/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_648_I3_S7_333_opt/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_648_I3_S7_333_opt/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_272  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&


cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_648_I5_V7_333/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_648_I5_V7_333/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_648_I5_V7_333/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_296  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&

cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_648_I5_V7_333_opt/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_648_I5_V7_333_opt/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_648_I5_V7_333_opt/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_272  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&


cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_648_I6_V7_333/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_648_I6_V7_333/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_648_I6_V7_333/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_296  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&

cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_648_I6_V7_333_opt/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_648_I6_V7_333_opt/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_648_I6_V7_333_opt/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_272  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&


cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_672_I5_V7_333/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_672_I5_V7_333/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_672_I5_V7_333/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_296  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&

cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_672_I5_V7_333_opt/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_672_I5_V7_333_opt/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_672_I5_V7_333_opt/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_272  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&


cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_768_I5_V7_333/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_768_I5_V7_333/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_768_I5_V7_333/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_296  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&

cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_768_I5_V7_333_opt/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_768_I5_V7_333_opt/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_768_I5_V7_333_opt/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_272  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&


cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1152_I5_V7_333/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1152_I5_V7_333/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1152_I5_V7_333/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_296  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&

cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1152_I5_V7_333_opt/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1152_I5_V7_333_opt/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1152_I5_V7_333_opt/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_272  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&


cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1920_I5_V7_333/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1920_I5_V7_333/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1920_I5_V7_333/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_296  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&

cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1920_I5_V7_333_opt/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1920_I5_V7_333_opt/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1920_I5_V7_333_opt/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_272  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&


cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1944_I5_V7_333/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1944_I5_V7_333/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1944_I5_V7_333/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_296  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&

cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1944_I5_V7_333_opt/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1944_I5_V7_333_opt/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1944_I5_V7_333_opt/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_272  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&


cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1944_I8_K7_333/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1944_I8_K7_333/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1944_I8_K7_333/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_296  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&

cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1944_I8_K7_333_opt/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1944_I8_K7_333_opt/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_1944_I8_K7_333_opt/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_272  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&


cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_2304_I10_V7_333/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_2304_I10_V7_333/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_2304_I10_V7_333/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_296  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt &&

cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_2304_I10_V7_333_opt/impl/report/vhdl/my_module_export.rpt| egrep "Solution|SLICE|LUT|FF|DSP|BRAM|SRL" | awk '{ print $2 }'  >> mesure.txt && 
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_2304_I10_V7_333_opt/impl/report/vhdl/my_module_export.rpt | grep "CP achieved post-implementation" | awk '{ print $4 }' >> mesure.txt &&
cat /c/LDPC_decoder_HLS/LDPC_QC_v4_no_flush/sc_LDPC_QC/COMP_2304_I10_V7_333_opt/syn/report/my_module_csynth.rpt | grep "grp_read_write_fu_272  |read_write  |    0|" | awk '{ print $5 }' >> mesure.txt 


