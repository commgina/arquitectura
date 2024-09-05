module LatchEX_MEM (
    input wire clk,
    input wire rst,
    input wire block,
    input wire i_halt,

    input wire [31:0] i_pcplus4,
    input wire [31:0] i_result,
    input wire i_carry,
    input wire [31:0] i_dato2,
    input wire [4:0] i_writeRegister,
    //seniales de control entrada
    input wire i_memToReg,
    input wire i_regWrite,
    input wire i_memWrite,
    input wire i_memRead,
    input wire [3:0 ]i_memWidth,
    
    output reg o_halt,

    output reg [31:0] o_pcplus4,
    output reg [31:0] o_result,
    output reg o_carry,
    output reg [4:0] o_writeRegister,
    output reg [31:0] o_dato2,

    //seniales de control salida
    output reg o_memToReg,
    output reg o_regWrite,
    output reg o_memWrite,
    output reg o_memRead,
    output reg [3:0 ]o_memWidth
);

    always @(posedge clk) begin
        if (rst) begin
            o_pcplus4 <= 0;
            o_result <= 0;
            o_writeRegister <= 0;
            o_dato2 <= 0;
            o_memToReg <= 0;
            o_regWrite <= 0;
            o_memWrite <= 0;
            o_memRead <= 0;
            o_carry <= 0;
            o_memWidth <= 0;
            o_halt <= 0;
        end else begin
        if(! block) begin
            o_pcplus4 <= i_pcplus4;
            o_result <= i_result;
            o_carry <= i_carry;
            o_writeRegister <= i_writeRegister;
            o_dato2 <= i_dato2;
            o_memToReg <= i_memToReg;
            o_regWrite <= i_regWrite;
            o_memWrite <= i_memWrite;
            o_memRead <= i_memRead;
            o_memWidth <= i_memWidth;
            o_halt <= i_halt;
        end
        end
    end

endmodule
