`timescale 1ns / 1ps

module ID_EX(
    input clk,
    input rst,
    input block,
    input [31:0] srcA, 
    input [31:0] srcB, 
    input [31:0] dato2,
    input [31:0] pcplus4,
    input [31:0] instruction,
    input [5:0] ALUOp,
    input takeBranch,
    input typeBranch,
    input GPR31,
    input takeJumpR,
    input memToReg,
    input regDst,    
    input memWrite,
    input memRead,
    input regWrite,
    input halt,
    input [3:0] memWidth,
    
     //De la unidad de deteccion de riesgo
    input wire i_post_bloqueo,
 
    
    output reg [31:0] o_pcplus4,
    output reg [31:0] o_srcA,
    output reg [31:0] o_srcB,
    output reg [31:0] o_dato2,
    output reg [31:0] o_instruction,
    output reg [5:0] o_ALUOp,
    output reg o_takeBranch,
    output reg o_typeBranch,
    output reg o_GPR31,
    output reg o_takeJumpR,
    output reg o_memToReg,
    output reg o_regDst,
    output reg o_memWrite,
    output reg o_memRead,
    output reg o_halt,
    output reg [3:0] o_memWidth,
    output reg o_regWrite,
    
     // Deteccion de riesgo
    output reg o_post_bloqueo
);
    always @(posedge clk) begin
        if (rst) begin
            o_pcplus4 <= 32'h0;
            o_srcA <= 32'h0;
            o_srcB <= 32'h0;
            o_dato2 <= 32'h0;
            o_instruction <= 32'h0;
            o_ALUOp <= 6'b000000;
            o_takeBranch <= 1'b0;
            o_typeBranch <= 1'b0;
            o_GPR31 <= 1'b0;
            o_takeJumpR <= 1'b0;
            o_memToReg <= 1'b0;
            o_regDst <= 1'b0;
            o_memWrite <= 1'b0;
            o_memRead <= 1'b0;
            o_regWrite <= 1'b0;
            o_memWidth <= 4'b0000;
            o_halt <= 1'b0;
            o_post_bloqueo <= 1'b0;
        end else if (!block) begin
            // Asignar las entradas a las salidas
            o_pcplus4 <= pcplus4;
            o_srcA <= srcA;
            o_srcB <= srcB;
            o_dato2 <= dato2;
            o_instruction <= instruction;
            o_ALUOp <= ALUOp;
            o_takeBranch <= takeBranch;
            o_typeBranch <= typeBranch;
            o_GPR31 <= GPR31;
            o_takeJumpR <= takeJumpR;
            o_memToReg <= memToReg;
            o_regDst <= regDst;
            o_memWrite <= memWrite;
            o_memRead <= memRead;
            o_regWrite <= regWrite;
            o_halt <= halt;
            o_memWidth <= memWidth;
            o_post_bloqueo <=  i_post_bloqueo;
        end
    end
endmodule
