onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Tag_ram_1_opt

do {wave.do}

view wave
view structure
view signals

do {Tag_ram_1.udo}

run -all

quit -force
