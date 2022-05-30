`timescale 1ns / 1ps

module Tag_ram(
input clk,
input en,
input wt,
input rst,
input[6:0] addr,
input[25:0] din,
output[25:0] dout
    );
    
reg[25:0] cache_tag[0:127];//length:26bits, number:128

assign dout = cache_tag[addr];



always @ (posedge clk or posedge rst) begin
if(en) begin
if(wt) begin cache_tag[addr]<=din; end
end
end
endmodule   