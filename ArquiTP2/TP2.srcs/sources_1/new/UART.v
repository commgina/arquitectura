module UART
#(
    
    parameter NB_OP = 32,
              NB_OPCode = 6,
              SR = 16,
              M = 326,
              N = 9
)
(

    input wire clk,
    input wire reset,
    input wire rx,
    input wire [NB_OP-1:0] alu_result,

    output wire [NB_OP-1:0] op1,
    output wire [NB_OP-1:0] op2,
    output wire [NB_OPCode-1:0] opcode,
    output wire tx
    
);

    wire s_tick;
    wire rx_done_tick;
    wire alu_result_ready;
    wire [NB_OP-1:0] data_out_rx;

    mod_m_counter #(
        .M(M),
        .N(N)
    ) counter_instance (
        .clk(clk),
        .reset(reset),
        .s_tick(s_tick)    
    );


    interface #(
        .NB_BUFFER(NB_OP),
        .NB_OPCode(NB_OPCode)
    ) rx_intf (
        .clk(clk),
        .reset(reset),
        .set_flag(rx_done_tick), //viene desde rx indica que hay un dato listo
        .rx_input(data_out_rx), //viene desde rx
        .op1(op1), //hacia la ALU
        .op2(op2), //hacia la ALU
        .opcode(opcode), //hacia la ALU
        .alu_result_ready(alu_result_ready)
    );
    
    rx_uart #(
        .NB_OP(NB_OP),
        .SR(SR)
    
    ) rx_uart_instance (
        .clk(clk),
        .reset(reset),
        .rx(rx),
        .s_tick(s_tick),
        .rx_done_tick(rx_done_tick),
        .data_out(data_out_rx)
    
    );
    
    tx_uart #(
        .NB_OP(NB_OP),
        .SR(SR)
    ) tx_uart_instance (
        .clk(clk),
        .reset(reset),
        .s_tick(s_tick),
        .data_in(alu_result), //desde la interfaz
        .tx_start(alu_result_ready), // desde la interfaz   
        .alu_result_ready(alu_result_ready), 
        //.tx_done_tick(tx_done_tick), //para que?
        .tx(tx) //hacia la PC
    
    );
    
               
endmodule
