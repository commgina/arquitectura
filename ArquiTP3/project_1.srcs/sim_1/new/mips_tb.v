module tb2;

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
   
    //Cantidad de instrucciones
    
  
  //PROGRAMA 1
  
  
    /*
    //------------------------------------------PROGRAMA 0---------------------------------
    
    // t1 = t0 + 0
    send_byte(8'b10000000); // Byte 1 80
    send_byte(8'b00000001); // Byte 2 01
    send_byte(8'b00000000); // Byte 3 00
    send_byte(8'b00000001); // Byte 4 00


    // t2 = t1 + 1
    send_byte(8'b10000000); // Byte 1 80
    send_byte(8'b00100010); // Byte 2 22
    send_byte(8'b00000000); // Byte 3 00
    send_byte(8'b00000001); // Byte 4 01

    // t3 = t2 + 1
    send_byte(8'b10000000); // Byte 1 80
    send_byte(8'b01000011); // Byte 2 43
    send_byte(8'b00000000); // Byte 3 00
    send_byte(8'b00000001); // Byte 4 01

    // t4 = t3 + 1
    send_byte(8'b10000000); // Byte 1 80
    send_byte(8'b01100100); // Byte 2 64
    send_byte(8'b00000000); // Byte 3 00
    send_byte(8'b00000001); // Byte 4 01
    
    // t5 = t4 + 1
    send_byte(8'b10000000); // Byte 1 80
    send_byte(8'b10000101); // Byte 2 85       
    send_byte(8'b00000000); // Byte 3 00
    send_byte(8'b00000001); // Byte 4 01
        
    // SW t1 en dirección 0
    send_byte(8'b01100000); //60
    send_byte(8'b00000001); // 01
    send_byte(8'b00000000); //00
    send_byte(8'b00000000); // 00
    
    // SW t2 en dirección 4
    send_byte(8'b01100000); // 60
    send_byte(8'b00000010); // 02
    send_byte(8'b00000000); // 00
    send_byte(8'b00000100); // 04
    
    // SW t3 en dirección 8
    send_byte(8'b01100000); // 60
    send_byte(8'b00000011); // 03
    send_byte(8'b00000000); // 00
    send_byte(8'b00001000); // 08
    
    // SW t4 en dirección 12
    send_byte(8'b01100000); // 60
    send_byte(8'b00000100); // 04
    send_byte(8'b00000000); // 00
    send_byte(8'b00001100); // 0C
    
    // SW t5 en dirección 16
    send_byte(8'b01100000); // 60
    send_byte(8'b00000101); // 05
    send_byte(8'b00000000); // 00
    send_byte(8'b00010000); // 10
    
    // LW t6 desde dirección 0
    send_byte(8'b01001000); // 48
    send_byte(8'b00000110); // 06
    send_byte(8'b00000000); //00
    send_byte(8'b00000000); // 00
    
    // LW t7 desde dirección 4
    send_byte(8'b01001000); // 48
    send_byte(8'b00000111); // 07
    send_byte(8'b00000000); // 00
    send_byte(8'b00000100); // 04
    
    // LW t8 desde dirección 8
    send_byte(8'b01001000); // 48
    send_byte(8'b00001000); // 08
    send_byte(8'b00000000); // 00
    send_byte(8'b00001000); // 08
    
    // LW t9 desde dirección 12
    send_byte(8'b01001000); // 48
    send_byte(8'b00001001); // 09
    send_byte(8'b00000000); // 00
    send_byte(8'b00001100); // 0C
    
    // LW t10 desde dirección 16
    send_byte(8'b01001000); // 48
    send_byte(8'b00001010); // 0A
    send_byte(8'b00000000); // 00
    send_byte(8'b00010000); // 10
    
    
    send_byte(8'b00000100); // 04
    send_byte(8'b01001010); // 4A
    send_byte(8'b01011000); // 58
    send_byte(8'b00000000); // 00
    
    
    send_byte(8'b00001001); // 09
    send_byte(8'b00100111); // 27
    send_byte(8'b01100000); // 60
    send_byte(8'b00000000); // 00
   

    send_byte(8'b11111111); //halt
    send_byte(8'b00000000);
    send_byte(8'b00000000); 
    send_byte(8'b00000000); 

    
   */
    
   //------------------------------------------PROGRAMA 1---------------------------------
    
    // t1 = t0 + 1
    
    /*
    send_byte(8'b10000000); // Byte 1 80
    send_byte(8'b00000001); // Byte 2 20
    send_byte(8'b00000000); // Byte 3 00
    send_byte(8'b00000001); // Byte 4 00

    // t2 = t0 + 1
    send_byte(8'b10000000);
    send_byte(8'b00000010); 
    send_byte(8'b00000000); 
    send_byte(8'b00000001); 
    
    send_byte(8'b11000000); 
    send_byte(8'b01000001); 
    send_byte(8'b00000000);
    send_byte(8'b00001000); 
       
        */
    
   
    /*
    //------------------------------------------PROGRAMA 2---------------------------------
    // t1 = t0 + 0
    send_byte(8'b10000000); // Byte 1 80
    send_byte(8'b00000001); // Byte 2 01
    send_byte(8'b00100000); // Byte 3 00
    send_byte(8'b00000001); // Byte 4 00

    // t2 = t1 + 1
    send_byte(8'b10000000); // Byte 1 80
    send_byte(8'b00100010); // Byte 2 22
    send_byte(8'b00000000); // Byte 3 00
    send_byte(8'b00000001); // Byte 4 01

    // t3 = t2 + 1
    send_byte(8'b10000000); // Byte 1 80
    send_byte(8'b01000011); // Byte 2 43
    send_byte(8'b00000000); // Byte 3 00
    send_byte(8'b00000001); // Byte 4 01
    
    send_byte(8'b10000000); // Byte 1 80
    send_byte(8'b01100100); // Byte 2 64
    send_byte(8'b00100000); // Byte 3 00
    send_byte(8'b00000001); // Byte 4 01 
      
    // SW t1 en dirección 0
    send_byte(8'b01111100); //60
    send_byte(8'b00000001); // 01
    send_byte(8'b00000000); //00
    send_byte(8'b00000000); // 00
    
    // SW t2 en dirección 4
    send_byte(8'b01111100); // 60
    send_byte(8'b00000010); // 02
    send_byte(8'b00000000); // 00
    send_byte(8'b00000100); // 04
    
    // SW t3 en dirección 8
    send_byte(8'b01111100); // 60
    send_byte(8'b00000011); // 03
    send_byte(8'b00000000); // 00
    send_byte(8'b00001000); // 08
   
    
    send_byte(8'b11111111); 
    send_byte(8'b00000000);
    send_byte(8'b00000000); 
    send_byte(8'b00000000); 
    
    */
  
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
    send_byte(8'b00000010); 
        
    //1C -- beq si t1 == t2 PC 1c salto a pc 24
    send_byte(8'b11000000); 
    send_byte(8'b01000001); 
    send_byte(8'b00000000);
    send_byte(8'b00000010);
    
    //20 -- si no aslta t3 es 3
    send_byte(8'b10000000); 
    send_byte(8'b00000000);
    send_byte(8'b00000000); 
    send_byte(8'b00000000);
    
     //24 --t4 es 4  aca llego si se ejecuta el beq y da 1   
    send_byte(8'b10000000); 
    send_byte(8'b00010100);
    send_byte(8'b00000000); 
    send_byte(8'b00010100);
    
    //24 --t4 es 4  aca llego si se ejecuta el beq y da 1   
    send_byte(8'b10000000); 
    send_byte(8'b00000101);
    send_byte(8'b00000000); 
    send_byte(8'b00000101);
    
    send_byte(8'b10000000); 
    send_byte(8'b00000111);
    send_byte(8'b00000000); 
    send_byte(8'b00000111);
        
    send_byte(8'b11111100); 
    send_byte(8'b00000111);
    send_byte(8'b00000000); 
    send_byte(8'b00000111);
        
 
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
