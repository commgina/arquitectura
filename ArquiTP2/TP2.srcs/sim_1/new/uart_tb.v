
module tb_uart;
 // Parámetros del módulo UART
  parameter NB_OP = 32;
  parameter NB_OPCode = 6;
  parameter SR = 16;
  parameter M = 326;
  parameter N = 9;

  // Señales de reloj y reset
  reg clk = 0;
  reg reset = 0;

  // Señales de entrada
  reg rx;
  reg [NB_OP-1:0] alu_result;

  // Señales de salida
  wire [NB_OP-1:0] op1;
  wire [NB_OP-1:0] op2;
  wire [NB_OPCode-1:0] opcode;
  wire tx;

  reg [NB_OP-1:0] test_data;
  // Instancia del módulo UART
  UART #(
    .NB_OP(NB_OP),
    .NB_OPCode(NB_OPCode),
    .SR(SR),
    .M(M),
    .N(N)
  ) uart_instance (
    .clk(clk),
    .reset(reset),
    .rx(rx),
    .alu_result(alu_result),
    .op1(op1),
    .op2(op2),
    .opcode(opcode),
    .tx(tx)
  );

  always
    begin
        #5 clk = ~clk;
        
    end

      // Testbench inicial
  initial begin
    // Inicializar señales
    rx = 0;
    alu_result = 0;

    // Iniciar reloj
    clk = 0;

    // Aplicar reset
    reset = 1;
    #10 reset = 0;

    // Simular transmisión de datos
    rx = 1;
    #20 rx = 0;
    #20 rx = 1;

    // Enviar datos a la ALU
    alu_result = 32'b11001100110011001100110011001100;

    // Esperar un tiempo
    #100;
    
    

    // Terminar la simulación
    $finish;
  end

endmodule
