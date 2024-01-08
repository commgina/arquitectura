module UART
#(
    
    parameter NB_OP = 8,
              NB_OPCode = 6,
              SR = 16,
              M = 326,
              N = 9
)
(


    input wire clk,
    input wire reset,
    input wire rx, // entra rx desde la PC
    input wire [NB_OP-1:0] data_in, //entra el dato de la interfaz
    input wire alu_result_ready, // senial que indica que ese dato ya esta disponible

    output wire tx, //sale la senial del transmisor hacia la PC
    output wire rx_done_tick, //sale la senial que el dato en el receptor esta listo, hacia la interfaz
    output wire data_sent, // senial que el transmisor usa para indicar a la interfaz que el dato ya fue enviado
    output wire [NB_OP-1:0] data_out_rx // el dato completo que sale del receptor
    
    
    
);

    wire s_tick;
    //wire [NB_OP-1:0] o_alu_result;
    

    mod_m_counter #(
        .M(M),
        .N(N)
    ) counter_instance (
        .clk(clk),
        .reset(reset),
        .s_tick(s_tick)    
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
        .data_in(data_in), //desde la interfaz
        .tx_start(alu_result_ready), // desde la interfaz   
        .tx(tx), //hacia la PC
        .data_sent(data_sent)
    
    );
    
               
endmodule
