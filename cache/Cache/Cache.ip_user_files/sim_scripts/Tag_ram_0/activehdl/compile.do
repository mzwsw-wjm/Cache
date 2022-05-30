vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Cache.srcs/sources_1/ip/Tag_ram_0/Tag_ram.v" \
"../../../../Cache.srcs/sources_1/ip/Tag_ram_0/sim/Tag_ram_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

