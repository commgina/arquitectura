module tb_mips_uart;

// Señales de reloj y reset
reg clk = 0;
reg reset = 0;

// Señal de entrada
reg i_rx;

// Señal de salida
wire o_tx, o_state;

// Parámetros
parameter BAUD_RATE = 9200;
parameter CLK_FREQ = 50000000; // 100 MHz
parameter SAMPLE_RATE = 16;

// Calcular tiempo para un bit
localparam BIT_TIME = CLK_FREQ / (BAUD_RATE * SAMPLE_RATE); // Tiempo por bit para el sampleo

// Instancia del MIPS
MIPS mips_inst (
    .clk(clk),
    .rst(reset),
    .i_rx(i_rx),
    .o_tx(o_tx),
    .o_state(o_state)
);

// Generador de reloj
always begin
    #5 clk = ~clk; // Reloj de 100 MHz (periodo = 10 ns)
end

// Testbench inicial
initial begin
    // Inicialización
    i_rx = 1'b1; // Línea de recepción en estado idle
    reset = 1;
    #100;
    reset = 0;

    // Enviar carácter 'P' (0x50) por UART
    send_byte(8'h50);

   //------------------------------------------PROGRAMA 3---------------------------------
    
    send_byte(8'h0B);
    //04 -- jump a PC 14
    send_byte(8'b11100000); 
    send_byte(8'b00000000);
    send_byte(8'b00000000); 
    send_byte(8'b00000011);
    
    //08 -- no deberia ejecutarse PC 08
    send_byte(8'b10000000); 
    send_byte(8'b10000101); 
    send_byte(8'b00000000); 
    send_byte(8'b00000001); 
    
    //0C -- halt pc 0c
    send_byte(8'b11111111); 
    send_byte(8'b00000000);
    send_byte(8'b00000000); 
    send_byte(8'b00000000);
    
    //10 --no deberia ejecutarse PC 08
    send_byte(8'b10000000); 
    send_byte(8'b10000111); 
    send_byte(8'b00000000); 
    send_byte(8'b00000001);
    
    
    //14 -- t1 = t0 + 1 PC 14
    send_byte(8'b10000000); 
    send_byte(8'b00000001); 
    send_byte(8'b00000000); 
    send_byte(8'b00000001);


    //18 -- t2 = t0 + 1 PC 18
    send_byte(8'b10000000); 
    send_byte(8'b00000010); 
    send_byte(8'b00000000); 
    send_byte(8'b00000001); 
        
    //1C -- beq si t1 == t2 PC 1c salto dos palabras
    send_byte(8'b11000000); 
    send_byte(8'b01000001); 
    send_byte(8'b00000000);
    send_byte(8'b00000010);
    
    //20 -- si no aslta t3 es 3
    send_byte(8'b10000000); 
    send_byte(8'b00000000);
    send_byte(8'b00000000); 
    send_byte(8'b00000000);
    
     //24 --t20 es 0x14  
    send_byte(8'b10000000); 
    send_byte(8'b00010100);
    send_byte(8'b00000000); 
    send_byte(8'b00010100);
    
    //28 --t5 es 5   
    send_byte(8'b10000000); 
    send_byte(8'b00000101);
    send_byte(8'b00000000); 
    send_byte(8'b00000101);
    
    //2c --t7 es 7 
    send_byte(8'b10000000); 
    send_byte(8'b00000111);
    send_byte(8'b00000000); 
    send_byte(8'b00000111);
        
    //30 halt      
    send_byte(8'b11111100); 
    send_byte(8'b00000000);
    send_byte(8'b00000000); 
    send_byte(8'b00000000);
        
 
    send_byte(8'h43); // Byte 4 03
    // Simular pausa
   #1000
    
    // Terminar la simulación
    $finish;
end

// Tarea para enviar un byte a través de UART, bit a bit
task send_byte(input [7:0] byte);
    integer i;
    begin
        // Bit de start
        i_rx = 1'b0;
        #54240;

        // Enviar cada bit del bytea
        for (i = 0; i < 8; i = i + 1) begin
            i_rx = byte[i];
            #54240;
        end

        // Bit de stop
        i_rx = 1'b1;
        #54240;
        //#(BIT_TIME * SAMPLE_RATE * 10ns);
        
       
    end
endtask

endmodule
