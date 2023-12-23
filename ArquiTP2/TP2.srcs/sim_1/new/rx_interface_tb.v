module rx_interface_tb;

  reg clk;
  reg reset;
  reg set_flag;
  reg [31:0] rx_input;
  wire [31:0] op1;
  wire [31:0] op2;
  wire [5:0] opcode;

  // Instancia del módulo rx_interface
  rx_interface #(
    .NB_BUFFER(32),
    .NB_OPCODE(6)
  ) rx_inst (
    .clk(clk),
    .reset(reset),
    .set_flag(set_flag),
    .rx_input(rx_input),
    .op1(op1),
    .op2(op2),
    .opcode(opcode)
  );

  // Generador de reloj
  always begin
    #5 clk = ~clk;
  end

  // Inicialización
  initial begin
    clk = 0;
    reset = 1;
    set_flag = 0;
    rx_input = 0;

    // Espera un ciclo de reloj
    #5 reset = 0;

    // Envía datos al módulo rx_interface
    // Aquí puedes simular el envío de datos y configurar las señales según tus necesidades
    //envio op1
    set_flag = 1;
    rx_input = 32'h12345678;
    #15;
    set_flag = 0;
    $display("State: %b", rx_inst.state);
    
    #15;
    //envio op2
    set_flag = 1;
    rx_input = 32'hABCDEF01;
    #15
    set_flag = 0;
    $display("State: %b", rx_inst.state);
    #15;
    //envio op code
    set_flag = 1;
    rx_input = 6'b100000;
    $display("State: %b", rx_inst.state);
    #15
    set_flag = 0;
    
   #15
    
    $display("State: %b", rx_inst.state);
    
    
    
    
    
    #1000;
    
   
    // Espera a que el módulo rx_interface complete la recepción (dependiendo de su lógica interna)

    // Puedes continuar enviando más datos según sea necesario

    // Aquí puedes agregar lógica para verificar los resultados comparando op1, op2 y opcode

    $finish;
  end

endmodule
