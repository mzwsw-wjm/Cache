`timescale 1ns/1ps

module cache_tb();
//input
    reg clk;
    reg rst;
    reg wt_cpu;
    reg rd_cpu;
    reg mem_ready;
    reg[31:0] addr_cpu;
    reg[31:0] data_cpu_wt;
    reg[127:0] data_mem_rd;
//output
    wire wt_mem;              //memory write enable
    wire rd_mem;             //memory read enable
    wire[127:0] data_mem_wt;  //data to mem
    wire[31:0] data_cpu_rd;    //data to cpu


    cache cache_U(
        //input
        .clk(clk),
        .rst(rst),
        .wt_cpu(wt_cpu),
        .rd_cpu(rd_cpu),
        .mem_ready(mem_ready),
        .addr_cpu(addr_cpu),
        .data_cpu_wt(data_cpu_wt),
        .data_mem_rd(data_mem_rd),
        //output
        .wt_mem(wt_mem),
        .rd_mem(rd_mem),
        .data_mem_wt(data_mem_wt),
        .data_cpu_rd(data_cpu_rd)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        mem_ready = 1;
        #5;
        rst = 0;
        //read miss
        #10;
        addr_cpu = 32'hA000_0000;
        wt_cpu = 0;
        rd_cpu = 1;
        data_mem_rd = 128'h11111111_22222222_33333333_44444444;
        #50;
        addr_cpu = 32'hB000_0000;
        wt_cpu = 0;
        rd_cpu = 1;
        data_mem_rd = 128'h55555555_66666666_77777777_88888888;
        //write hit
        #50;
        addr_cpu = 32'hA000_0002;
        wt_cpu = 1;
        rd_cpu = 0;
        data_cpu_wt = 32'hAAAAAAAA;
        //read hit
        #50;
        addr_cpu = 32'hB000_0003;
        wt_cpu = 0;
        rd_cpu = 1;
        //write back + write allocate
        #50;
        addr_cpu = 32'hF000_0000;
        data_cpu_wt = 32'hDDDDDDDD;
        wt_cpu = 1;
        rd_cpu = 0;
        data_mem_rd = 128'h99999999_aaaaaaaa_bbbbbbbb_cccccccc;
    end
    endmodule

