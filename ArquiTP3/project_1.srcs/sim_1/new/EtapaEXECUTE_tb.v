`timescale 1ns / 1ps

module EtapaEXECUTE_tb;

    // Inputs
    reg clk;
    reg rst;
    reg block;
    reg [31:0] i_srcA;
    reg [31:0] i_srcB;
    reg [31:0] i_dato2;
    reg [31:0] i_pcplus4;
    reg [31:0] i_instruction;
    reg i_regDst;
    reg i_takeBranch;
    reg i_typeBranch;
    reg i_memToReg;
    reg i_gpr31;
    reg [5:0] i_ALUOp;
    reg i_memWrite;
    reg i_memRead;
    reg i_takeJumpR;
    reg [1:0] i_forward_a_sel;
    reg [31:0] i_forward_a_dato_mem;
    reg [31:0] i_forward_a_dato_wb;
    reg [1:0] i_forward_b_sel;
    reg [31:0] i_forward_b_dato_mem;
    reg [31:0] i_forward_b_dato_wb;
    reg [1:0] i_forward_c_sel;
    reg [31:0] i_forward_c_dato_mem;
    reg [31:0] i_forward_c_dato_wb;

    // Outputs
    wire o_takeJumpR;
    wire [31:0] o_jumpAddressR;
    wire o_takeBranch;
    wire [31:0] o_branchAddress;
    wire [31:0] o_pcplus4;
    wire [31:0] o_result;
    wire [4:0] o_writeRegister;
    wire [31:0] o_dato2;
    wire o_carry;
    wire o_zero;
    wire o_memToReg;
    wire o_regWrite;
    wire o_memWrite;
    wire o_memRead;

    // Instantiate the Unit Under Test (UUT)
    EtapaEXECUTE uut (
        .clk(clk),
        .rst(rst),
        .block(block),
        .i_srcA(i_srcA),
        .i_srcB(i_srcB),
        .i_dato2(i_dato2),
        .i_pcplus4(i_pcplus4),
        .i_instruction(i_instruction),
        .i_regDst(i_regDst),
        .i_takeBranch(i_takeBranch),
        .i_typeBranch(i_typeBranch),
        .i_memToReg(i_memToReg),
        .i_gpr31(i_gpr31),
        .i_ALUOp(i_ALUOp),
        .i_memWrite(i_memWrite),
        .i_memRead(i_memRead),
        .i_takeJumpR(i_takeJumpR),
        .i_forward_a_sel(i_forward_a_sel),
        .i_forward_a_dato_mem(i_forward_a_dato_mem),
        .i_forward_a_dato_wb(i_forward_a_dato_wb),
        .i_forward_b_sel(i_forward_b_sel),
        .i_forward_b_dato_mem(i_forward_b_dato_mem),
        .i_forward_b_dato_wb(i_forward_b_dato_wb),
        .i_forward_c_sel(i_forward_c_sel),
        .i_forward_c_dato_mem(i_forward_c_dato_mem),
        .i_forward_c_dato_wb(i_forward_c_dato_wb),
        .o_takeJumpR(o_takeJumpR),
        .o_jumpAddressR(o_jumpAddressR),
        .o_takeBranch(o_takeBranch),
        .o_branchAddress(o_branchAddress),
        .o_pcplus4(o_pcplus4),
        .o_result(o_result),
        .o_writeRegister(o_writeRegister),
        .o_dato2(o_dato2),
        .o_carry(o_carry),
        .o_zero(o_zero),
        .o_memToReg(o_memToReg),
        .o_regWrite(o_regWrite),
        .o_memWrite(o_memWrite),
        .o_memRead(o_memRead)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test vectors
    initial begin
        // Initialize Inputs
        rst = 1;
        block = 0;
        i_srcA = 0;
        i_srcB = 0;
        i_dato2 = 0;
        i_pcplus4 = 0;
        i_instruction = 0;
        i_regDst = 0;
        i_takeBranch = 0;
        i_typeBranch = 0;
        i_memToReg = 0;
        i_gpr31 = 0;
        i_ALUOp = 0;
        i_memWrite = 0;
        i_memRead = 0;
        i_takeJumpR = 0;
        i_forward_a_sel = 0;
        i_forward_a_dato_mem = 0;
        i_forward_a_dato_wb = 0;
        i_forward_b_sel = 0;
        i_forward_b_dato_mem = 0;
        i_forward_b_dato_wb = 0;
        i_forward_c_sel = 0;
        i_forward_c_dato_mem = 0;
        i_forward_c_dato_wb = 0;

        // Wait for reset to be deasserted
        #10;
        rst = 0;

        // Test Case 1: Simple ADD operation
        i_srcA = 32'd10;
        i_srcB = 32'd20;
        i_ALUOp = 6'b000001; // ADD operation
        #10;

        // Test Case 2: Branch operation
        i_srcA = 32'd30;
        i_srcB = 32'd30;
        i_takeBranch = 1;
        i_typeBranch = 1;
        i_ALUOp = 6'b000010; // BEQ operation
        #10;
        
        // Test Case 3: Testing regDst control signal
        i_instruction = 32'b000000_00001_00010_00011_00000_100000; // Example instruction (ADD r3, r1, r2)
        i_regDst = 1; // Should select bits 15:11 (rd) as write register
        #10;

        i_instruction = 32'b000000_00001_00010_00011_00000_100000; // Same instruction (ADD r3, r1, r2)
        i_regDst = 0; // Should select bits 20:16 (rt) as write register
        #10;

        // Test Case 4: Testing gpr31 control signal (jal or jalr)
        i_instruction = 32'b000000_00001_00010_00011_00000_100000; // Example instruction (ADD r3, r1, r2)
        i_gpr31 = 1; // Should select $31 as write register
        #10;

        // Additional test cases can be added here

        // Finish simulation
        $finish;
    end
endmodule
