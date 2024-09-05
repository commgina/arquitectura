`timescale 1ns / 1ps

module EtapaFETCH_tb;

    reg clk;
    reg rst;
    reg block;
    reg takeBranch;
    reg takeJump;
    reg takeJumpR;
    reg [31:0] takeBranchAddress;
    reg [31:0] takeJumpAddressR;
    reg [31:0] takeJumpAddress;
    reg uart_write_enable;
    reg [31:0] uart_data_in;
    reg debugAddressEnable;
    reg [31:0] debugAddress;

    wire [31:0] o_instruction;
    wire [31:0] o_pcplus4;
    wire [31:0] o_pc;

    // Instantiate the EtapaFETCH module
    EtapaFETCH uut (
        .clk(clk),
        .rst(rst),
        .block(block),
        .takeBranch(takeBranch),
        .takeJump(takeJump),
        .takeJumpR(takeJumpR),
        .takeBranchAddress(takeBranchAddress),
        .takeJumpAddressR(takeJumpAddressR),
        .takeJumpAddress(takeJumpAddress),
        .uart_write_enable(uart_write_enable),
        .uart_data_in(uart_data_in),
        .debugAddressEnable(debugAddressEnable),
        .debugAddress(debugAddress),
        .o_instruction(o_instruction),
        .o_pcplus4(o_pcplus4),
        .o_pc(o_pc)
    );

    initial begin
        // Initialize inputs
        clk = 1;
       
        block = 0;
        takeBranch = 0;
        takeJump = 0;
        takeJumpR = 0;
        takeBranchAddress = 32'h00000000;
        takeJumpAddressR = 32'h00000000;
        takeJumpAddress = 32'h00000000;
        uart_write_enable = 0;
        uart_data_in = 32'h00000000;
        debugAddressEnable = 0;
        debugAddress = 32'h00000000;
        rst = 1;
        

        // Release reset
        #10 rst = 0;
        // Test case 1: Normal PC increment
        #150;
        

        // Test case 2: Branch taken
        takeBranch = 1;
        takeBranchAddress = 32'h00000010;
        #50;
        takeBranch = 0;
        if (o_pc != 32'h00000010) $display("Test case 2 failed: PC did not branch correctly. PC = %h", o_pc);

        // Test case 3: Jump taken
        takeJump = 1;
        takeJumpAddress = 32'h00000020;
        #50;
        takeJump = 0;
        if (o_pc != 32'h00000020) $display("Test case 3 failed: PC did not jump correctly. PC = %h", o_pc);

        // Test case 4: Jump register taken
        takeJumpR = 1;
        takeJumpAddressR = 32'h00000030;
        #50;
        takeJumpR = 0;
        if (o_pc != 32'h00000030) $display("Test case 4 failed: PC did not jump correctly. PC = %h", o_pc);

        $stop;
    end

    // Clock generation
    always #5 clk = ~clk;

endmodule
