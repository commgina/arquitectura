module rx_uart
#(
    parameter NB_OP = 8,
              NB_OPCode = 6,
              SR = 16
)
(
    input wire clk,
    input wire reset,
    input wire rx, // bit que va a ir transmitiendose cada 16 ticks
    input wire s_tick, // cuando se detecta un ciclo de reloj (stick verdadero) se ingrementa s_reg
                        //una vez s_reg lleva a 16, se transmite un bit
    output reg rx_done_tick, // termino de recibir los bits
    output reg [NB_OP-1:0] data_out //datos a enviar a interfaz
);

    //declaracion de los cuatro estados
    //localparam se usa para variables constantes
    localparam [1:0]
        idle = 2'b00,
        start = 2'b01,
        data =  2'b10,
        stop = 2'b11;
        
     //declaracion de se;ales
     reg [1:0] state_reg, state_next; // para cambiar de estado
     reg [3:0] s_reg, s_next; // en start s_reg se comienza a incrementar
                              //una vez llega a 16 se cambia al estado data para transmitir el primer bit
                              // una vez se almacena un bit, se reinicia hasta 0 y se espera el 16 para volver a transmitir el siguiente
     reg [5:0] n_reg, n_next; //n_next se va incrementando en 1 para ir avanzando por los bits
     reg [NB_OP-1:0] b_reg, b_next; //registro para almacenar los bits que se van recibiendo
     
    
   
// estado de la maquina y registros
     always @(posedge clk)
     begin
        if (reset)
            begin
                state_reg <= idle;
                s_reg <= 0;
                n_reg <= 0;
                b_reg <= 0;
                
            end
        else
            begin
                state_reg <= state_next;
                s_reg <= s_next;
                n_reg <= n_next;
                b_reg <= b_next;      
            end
     end
            
            
//logica de la maquina de estados finita            
     always @(*)
     begin
        state_next = state_reg;
        rx_done_tick = 1'b0;
        s_next = s_reg;
        n_next = n_reg;
        b_next = b_reg;
        case (state_reg)
            idle:
                if(~rx)
                    begin
                        state_next = start;
                        s_next = 0;
                    end
            start:
                if(s_tick)
                    if(s_reg == 7)
                        begin
                            state_next = data;
                            s_next = 0;
                            n_next = 0;
                        end
                    else
                        s_next = s_reg + 1;
            data:
                if(s_tick)
                    if(s_reg == 15)
                        begin
                            s_next = 0;
                            b_next = {rx, b_reg[NB_OP-1:1]};
                            if(n_reg == (NB_OP-1)) //si ya se transmitieron los 8 bits hago un stop
                                state_next = stop;
                            else 
                                n_next = n_reg + 1;   
                        end
                    else
                        begin
                            s_next = s_reg + 1;
                             // Reiniciar b_next aquí cuando no estás en el último ciclo de bits
                        end
            stop:
                if(s_tick)
                    if(s_reg==(SR-1))
                        begin
                            state_next = idle;
                            if(rx)
                                rx_done_tick = 1'b1;
                                data_out = b_reg;
                        end
                    else
                        s_next = s_reg + 1;
        endcase                   
     end
     

endmodule
