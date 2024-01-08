module top #(
    parameter NB_OP = 8,
    parameter NB_OPCode = 6
)
(
    // Inputs
    input wire clk,
    input wire reset,
    output wire tx,
    input wire rx,
    output wire data_sent_led
    
);
    
    wire [NB_OP-1:0] alu_result;
    wire [NB_OP-1:0] opA;
    wire [NB_OP-1:0] opB;
    wire [NB_OPCode-1:0] opcode;
    wire [NB_OP-1:0] data_out_rx;
    wire rx_done_tick;
    
    
    ALU #(
        .BUS_WIDTH(NB_OP),
        .OP_BITS(NB_OPCode)
    ) alu_instance (
        .inputA(opA),
        .inputB(opB),
        .aluOperation(opcode),
        .ALUOutput(alu_result)
    );
 
    
    uart_alu_interface #(
        .NB_OP(NB_OP),
        .NB_OPCode(NB_OPCode)
    ) rx_intf (
        .clk(clk),
        .reset(reset),
        .uart_data_in(data_out_rx),
        .uart_data_ready(rx_done_tick),
        .alu_data_ready(alu_result_ready),
        .alu_opA(opA),
        .alu_opB(opB),
        .alu_opCode(opcode)
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
        .tx(tx),
        .rx(rx),
        .data_in(alu_result),  
        .alu_result_ready(alu_result_ready),      
        .data_sent(data_sent_led),
        .data_out_rx(data_out_rx),
        .rx_done_tick(rx_done_tick)
       
    );
    
endmodule
