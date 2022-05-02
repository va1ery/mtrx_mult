onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib matrix_out_opt

do {wave.do}

view wave
view structure
view signals

do {matrix_out.udo}

run -all

quit -force
