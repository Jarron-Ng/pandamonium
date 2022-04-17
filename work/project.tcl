set projDir "C:/Users/jarro/Documents/alchitry/PandaMonium/work/vivado"
set projName "PandaMonium"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/au_top_0.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/reset_conditioner_1.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/multi_seven_seg_2.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/button_conditioner_3.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/edge_detector_4.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/alu_5.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/regfile_6.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/wdselmux_7.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/aselmux_8.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/bselmux_9.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/led_output_10.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/orientation_unit_11.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/control_unit_12.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/ledstrip_13.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/counter_14.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/seven_seg_15.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/decoder_16.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/pipeline_17.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/adder2_18.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/bool2_19.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/shifter_20.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/compare_21.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/multiply_22.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/divide2_23.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/sixteen_bit_2s_complement_24.v" "C:/Users/jarro/Documents/alchitry/PandaMonium/work/verilog/maps_25.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/jarro/Documents/alchitry/PandaMonium/work/constraint/alchitry.xdc" "C:/Users/jarro/Documents/alchitry/PandaMonium/constraint/au.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
