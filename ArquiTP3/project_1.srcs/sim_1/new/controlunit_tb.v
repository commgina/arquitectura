`timescale 1ns / 1ps

module control_unit_tb;

    // Inputs
    reg [5:0] opcode;

    // Outputs
    wire regWrite;
    wire takeBranch;
    wire typeBranch;
    wire GPR31;
    wire takeJump;
    wire takeJumpR;
    wire MemToReg;
    wire regDst;
    wire [5:0] AluOP;
    wire MemWrite;
    wire MemRead;
    wire AluSrc;

    // Instantiate the Unit Under Test (UUT)
    control_unit uut (
        .opcode(opcode), 
        .regWrite(regWrite), 
        .takeBranch(takeBranch), 
        .typeBranch(typeBranch), 
        .GPR31(GPR31), 
        .takeJump(takeJump), 
        .takeJumpR(takeJumpR), 
        .memToReg(MemToReg), 
        .regDst(regDst), 
        .ALUOp(AluOP), 
        .memWrite(MemWrite), 
        .memRead(MemRead), 
        .ALUSrc(AluSrc)
    );

    initial begin
        // Initialize Inputs
        opcode = 0;

        // Wait for Global Reset
        #100;
        
        // Add stimulus here

        // Test case for ADD (example: 6'b000001)
        opcode = 6'b000001;
        #10;
        $display("Opcode: 000001, AluOP: %b, regWrite: %b", AluOP, regWrite);

        // Test case for SUB (example: 6'b000010)
        opcode = 6'b000010;
        #10;
        $display("Opcode: 000010, AluOP: %b, regWrite: %b", AluOP, regWrite);

        // Test case for AND (example: 6'b000011)
        opcode = 6'b000011;
        #10;
        $display("Opcode: 000011, AluOP: %b, regWrite: %b", AluOP, regWrite);

        // Test case for OR (example: 6'b000100)
        opcode = 6'b000100;
        #10;
        $display("Opcode: 000100, AluOP: %b, regWrite: %b", AluOP, regWrite);

        // Test case for XOR (example: 6'b000101)
        opcode = 6'b000101;
        #10;
        $display("Opcode: 000101, AluOP: %b, regWrite: %b", AluOP, regWrite);

        // Test ca       se for Load (example: 6'b010000)
        opcode = 6'b010000;
        #10;
        $display("Opcode: 010000, AluOP: %b, MemRead: %b, AluSrc: %b", AluOP, MemRead, AluSrc);

        // Test case for Store (example: 6'b011000)
        opcode = 6'b011000;
        #10;
        $display("Opcode: 011000, AluOP: %b, MemWrite: %b, AluSrc: %b", AluOP, MemWrite, AluSrc);

        // Test case for BEQ (example: 6'b110000)
        opcode = 6'b110000;
        #10;
        $display("Opcode: 110000, AluOP: %b, takeBranch: %b, typeBranch: %b", AluOP, takeBranch, typeBranch);

        // Test case for JAL (example: 6'b111001)
        opcode = 6'b111001;
        #10;
        $display("Opcode: 111001, AluOP: %b, takeJump: %b, GPR31: %b", AluOP, takeJump, GPR31);

        // Test case for JR (example: 6'b111010)
        opcode = 6'b111010;
        #10;
        $display("Opcode: 111010, AluOP: %b, takeJump: %b, takeJumpR: %b", AluOP, takeJump, takeJumpR);

        // Add more test cases as needed

        // End of simulation
        $finish;
    end
      
endmodule
