module instruction_memory (
    input clk,
    input rst,
    
    input [31:0] instructionDir,
    input uart_write_enable,
    input [31:0] uart_data_in,
    output reg [31:0] o_instruction,
    input i_block_read
);

    reg [7:0] memory [255:0];
    integer i;

    always @(posedge clk) begin
        if (rst) begin
            o_instruction <= 32'h00000000;
            for (i = 0; i < 256; i = i + 1) begin
                memory[i] <= 8'h00; // Inicialización de la memoria
            end
        end else begin
            // Escritura en la memoria de instrucciones
            if (uart_write_enable) begin
                {memory[instructionDir[7:0]+2'b11], memory[instructionDir[7:0]+2'b10], memory[instructionDir[7:0]+2'b01], memory[instructionDir[7:0]]} = uart_data_in;
            end else if(!i_block_read) begin
            // Lectura de la instrucción de 32 bits
                o_instruction = {memory[instructionDir[7:0] + 2'b11], memory[instructionDir[7:0] + 2'b10], 
                               memory[instructionDir[7:0] + 2'b01], memory[instructionDir[7:0]]};
            end
        end
    end
endmodule
