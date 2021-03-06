transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/github/FPGA.VHDL/VHDL_1_KEYs_LEDs/Lesson#2.LVHDL_1_KEYs_LEDs_TestBench/KEYsLEDs.vhd}

vcom -93 -work work {D:/github/FPGA.VHDL/VHDL_1_KEYs_LEDs/Lesson#2.LVHDL_1_KEYs_LEDs_TestBench/simulation/modelsim/KEYsLED_tst.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxii -L rtl_work -L work -voptargs="+acc"  KEYsLEDs_vhd_tst

add wave *
view structure
view signals
run -all
