vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Cache.srcs/sources_1/ip/Data_ram_0/Data_ram.v" \
"../../../../Cache.srcs/sources_1/ip/Data_ram_0/sim/Data_ram_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

