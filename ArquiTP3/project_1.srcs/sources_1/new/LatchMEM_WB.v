module LatchMEM_WB (
    input wire clk,
    input wire rst,
    input wire block,

    input wire [31:0] i_read_data, // dato leído de la memoria
 
    input wire [4:0] i_writeRegister, // dirección del registro a escribir

    // señales de control
    input wire i_regWrite,

    output reg o_regWrite,
    output reg [31:0] o_read_data,
    
    output reg [4:0] o_writeRegister
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        o_read_data <= 32'h00000000;
        o_writeRegister <= 5'h00;
        o_regWrite <= 1'b0;

    end else if (!block) begin // En caso de que el bit de bloqueo no esté activado, acciono el latch
        o_read_data <= i_read_data;
        o_writeRegister <= i_writeRegister;
        o_regWrite <= i_regWrite;
    end
end

endmodule
