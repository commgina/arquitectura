`timescale 1ns / 1ps

module EtapaMEM_tb;

    // Inputs
    reg clk;
    reg rst;
    reg block;
    reg [31:0] i_result;
    reg [31:0] i_writeData;
    reg i_memWrite;
    reg [4:0] i_memWidth;
    reg [4:0] i_writeRegister;
    reg i_regWrite;
    reg i_memToReg;

    // Outputs
    wire [4:0] o_writeRegister;
    wire [31:0] o_writeData;
    wire o_regWrite;

    // Instantiate the EtapaMEM module
    EtapaMEM uut (
        .clk(clk), 
        .rst(rst), 
        .block(block), 
        .i_result(i_result), 
        .i_writeData(i_writeData), 
        .i_memWrite(i_memWrite), 
        .i_memWidth(i_memWidth), 
        .i_writeRegister(i_writeRegister), 
        .i_regWrite(i_regWrite), 
        .i_memToReg(i_memToReg), 
        .o_writeRegister(o_writeRegister), 
        .o_writeData(o_writeData), 
        .o_regWrite(o_regWrite)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        // Initialize Inputs
        clk = 0;
        rst = 1;
        block = 0;
        i_result = 32'b0;
        i_writeData = 32'b0;
        i_memWrite = 0;
        i_memWidth = 5'b0;
        i_writeRegister = 5'b0;
        i_regWrite = 0;
        i_memToReg = 0;

        // Apply reset
        #10;
        rst = 0;

        // Test Case 1: Write operation 
        i_result = 32'h00000004;     // Address
        i_writeData = 32'hDEADBEEF;  // Data to write
        i_memWrite = 1;
        i_memWidth = 5'd4;           // 4 bytes
        i_writeRegister = 5'd1;
        i_regWrite = 1;
        i_memToReg = 0;
        #10;
        
        i_result = 32'h00000008;     // Address
        i_writeData = 32'hC4FEC4FE;  // Data to write
        i_memWrite = 1;
        i_memWidth = 5'd4;           // 4 bytes
        i_writeRegister = 5'd1;
        i_regWrite = 1;
        i_memToReg = 0;
        #10;

        // Test Case 2: Read operation with memToReg = 0
        i_memWrite = 0;
        i_result = 32'h00000008;     // Address to read from
        i_memToReg = 0;
        #10;

        // Test Case 3: Read operation with memToReg = 1
        i_memToReg = 1;
        #10;

        // Test Case 4: Blocking signal
        block = 1;
        #10;
        block = 0;
        #10;

        // Finish the simulation
        $stop;
    end

    // Monitor signals
    initial begin
        $monitor("Time = %d, rst = %b, block = %b, i_result = %h, i_writeData = %h, i_memWrite = %b, i_memWidth = %d, i_writeRegister = %d, i_regWrite = %b, i_memToReg = %b, o_writeRegister = %d, o_writeData = %h, o_regWrite = %b",
                 $time, rst, block, i_result, i_writeData, i_memWrite, i_memWidth, i_writeRegister, i_regWrite, i_memToReg, o_writeRegister, o_writeData, o_regWrite);
    end

endmodule
