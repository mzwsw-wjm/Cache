`timescale 1ns / 1ps

module Data_ram(
input clk,
input en,
input wt,
input rst,
input[6:0] addr,
input[127:0] din,
output[127:0] dout
);
reg[127:0] cache_data[0:127];

assign dout = cache_data[addr];


always @ (posedge clk) begin
if(en) begin
if(wt) begin cache_data[addr]<=din; end
end
end
endmodule