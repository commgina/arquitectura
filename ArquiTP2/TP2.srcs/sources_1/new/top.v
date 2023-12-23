module top #(
    parameter NB_OP = 32,
    parameter NB_OPCode = 6
)
(
    // Inputs
    input wire clk,
    input wire reset,
    output wire tx,
    input wire rx

);
    
    wire [NB_OP-1:0] alu_result;
    wire [NB_OP-1:0] op1;
    wire [NB_OP-1:0] op2;
    wire [NB_OPCode-1:0] opcode;
    
    
    ALU #(
        .BUS_WIDTH(NB_OP),
        .OP_BITS(NB_OPCode)
    ) alu_instance (
        .inputA(op1),
        .inputB(op2),
        .aluOperation(opcode),
        .ALUOutput(alu_result)
    );
 
    // Instanciar UART
    UART #(
        .NB_OP(NB_OP),
        .NB_OPCode(NB_OPCode),
        .SR(16),    
        .M(326),
        .N(9)
    ) uart_instance (
        .clk(clk),
        .reset(reset),
        //.tx_done_tick(tx_done_tick),
        .tx(tx),
        .rx(rx),
        //.rx_done_tick(rx_done_tick),
        .alu_result(alu_result),
        .op1(op1),
        .op2(op2),
        .opcode(opcode)
        //.s_tick(s_tick)  // Asegúrate de conectar esto con la señal adecuada de tu diseño
    );



endmodule
