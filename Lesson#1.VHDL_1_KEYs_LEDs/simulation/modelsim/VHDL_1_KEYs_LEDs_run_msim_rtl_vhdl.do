transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/nr.new/Desktop/VHDL_1_KEYs_LEDs/KEYsLEDs.vhd}

vcom -2008 -work work {C:/Users/nr.new/Desktop/VHDL_1_KEYs_LEDs/simulation/modelsim/KEYsLED_tst.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxii -L rtl_work -L work -voptargs="+acc"  KEYsLEDs_vhd_tst

add wave *
view structure
view signals
run -all
