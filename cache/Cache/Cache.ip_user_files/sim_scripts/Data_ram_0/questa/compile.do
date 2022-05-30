vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../Cache.srcs/sources_1/ip/Data_ram_0/Data_ram.v" \
"../../../../Cache.srcs/sources_1/ip/Data_ram_0/sim/Data_ram_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

