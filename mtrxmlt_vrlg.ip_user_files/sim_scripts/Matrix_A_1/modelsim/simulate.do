onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.Matrix_A xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {Matrix_A.udo}

run -all

quit -force
