vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../Cache.srcs/sources_1/ip/Tag_ram_1/Tag_ram.v" \
"../../../../Cache.srcs/sources_1/ip/Tag_ram_1/sim/Tag_ram_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

