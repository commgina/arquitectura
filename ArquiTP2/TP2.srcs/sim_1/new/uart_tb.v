
module tb_uart;
 
    // Parámetros del módulo UART
    parameter NB_OP = 8;
    parameter NB_OPCode = 6;
    parameter SR = 16;
    parameter M = 326;
    parameter N = 9;
    
    // Señales de reloj y reset
    reg clk = 0;
    reg reset = 0;
    
    // Señales de entrada
    reg rx;
    wire [NB_OP-1:0] alu_result;
    wire alu_result_ready;
    
    // Señales de salida
    wire [NB_OP-1:0] opA;
    wire [NB_OP-1:0] opB;
    wire [NB_OPCode-1:0] opcode;
    wire tx;
    wire data_sent_led;
    wire [NB_OP-1:0] data_out_rx;
    wire rx_done_tick;
    
    reg [NB_OP-1:0] test_data;
  // Instancia del módulo UART
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
      
      
    ALU #(
        .BUS_WIDTH(NB_OP),
        .OP_BITS(NB_OPCode)
    
    ) alu_instance (
        .inputA(opA),
        .inputB(opB),
        .aluOperation(opcode),
        .ALUOutput(alu_result)
    );

    always
    begin
        #5 clk = ~clk;
    end
    
      // Testbench inicial
    initial begin  
    rx=0;  
    reset = 1;
    #10 reset = 0;
    
    // Enviar datos a la Interfaz
    
    //bit de start
    rx=0;
    #52000
    
    rx=1;
    #52000
    rx=1;
    #52000
    rx=0;
    #52000
    rx=0;
    #52000
    rx=1;
    #52000
    rx=1;
    #52000
    rx=0;
    #52000
    rx=0;
    #52000
    
    //bit de stop
    rx=1;
    #52000
    
    #10000
    
    //bit te start
    rx=0;
    #52000
    
    rx=1;
    #52000
    rx=1;
    #52000
    rx=0;
    #52000
    rx=0;
    #52000
    rx=1;
    #52000
    rx=1;
    #52000
    rx=0;
    #52000
    rx=0;
    #52000
    
    //bit de stop
    rx=1;
    #52000
    
     #10000
     //bit de start 
    rx=0;
    #52000
    
    rx=0;
    #52000
    rx=0;
    #52000
    rx=0;
    #52000
    rx=0;
    #52000
    rx=0;
    #52000
    rx=1;
    #52000
    rx=0;
    #52000
    rx=0;
    #52000
    
     //bit de stop
    rx=1;
    #52000
    
     #10000
    
    
    
    // Terminar la simulación
    $finish;
    end
    
endmodule
