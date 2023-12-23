module rx_uart_tb;

  reg clk;
  reg reset;
  reg rx;
  wire s_tick;
  wire rx_done_tick;
  wire [31:0] data_out;
  reg [31:0] test_data; // Datos de prueba

  // Instancia del receptor UART que se está probando
  rx_uart #(
    .data_bits(32),
    .oversampling(16)
  ) uart_inst (
    .clk(clk),
    .reset(reset),
    .rx(rx),
    .s_tick(s_tick),
    .rx_done_tick(rx_done_tick),
    .data_out(data_out)
  );

  mod_m_counter #(
        .M(326),  // Adjust M based on your requirements
        .N(9)     // Adjust N based on your requirements
    ) m_counter (
        .clk(clk),  // Connect clk from the test bench
        .reset(reset),  // Connect reset from the test bench
        .s_tick(s_tick)  // Connect s_tick to your UART transmitter
    );

  // Generador de reloj
  always begin
    #5 clk = ~clk;
    
   
  end
  
  

  // Inicialización
  initial begin
    clk = 0;
    reset = 1;
    rx = 0;
    test_data = 32'h00000000;
     // Datos de prueba (puedes ajustar esto)
    
    // Espera un ciclo de reloj
    #5 reset = 0;
    
    rx = 1; //bit de start
    #52000;
  
    repeat (32) begin
        // Esperar el tiempo entre bits
        

        // Cambiar el valor de rx (asumiendo que 1 es el nivel alto y 0 es el nivel bajo)
        rx = ~rx;
        
        #52000;
    end

    // Simula la recepción de datos
    // Recibe un byte de datos

    //s_tick = 1;
    
  
    // Espera a que se complete la recepción
    // Cuando rx_done_tick sea alto, puedes verificar los resultados
    // Aquí puedes agregar lógica para verificar los resultados, por ejemplo,
    // comparando data_out con los datos de prueba originales.
    
    //#1000     
    //#5 s_tick = 1;
    
    
    $finish;
  end

endmodule
