module tx_uart
#(
    parameter NB_OP = 8,
              NB_OPCode = 6,
              SR = 16
)
(
    input wire clk,
    input wire reset,
    input wire tx_start,
    input wire s_tick,
    input wire [NB_OP-1:0] data_in,
    output reg data_sent,
    output wire tx
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
                              // una vez se almacena un bit, se reinicia a 0 y se espera el 16 para volver a transmitir el siguiente
     reg [2:0] n_reg, n_next; //n_next se va incrementando en 1 para ir avanzando por los bits
     reg [NB_OP-1:0] send_byte, send_byte_next; //registro para almacenar los bits que se van recibiendo
     reg tx_reg, tx_next;
   
// estado de la maquina y registros
     always @(posedge clk, posedge reset)
     begin
        if (reset)
            begin
                state_reg <= idle;
                s_reg <= 0;
                n_reg <= 0;
                send_byte <= 0;
                tx_reg <= 1;
            end
        else
            begin
                state_reg <= state_next;
                s_reg <= s_next;
                n_reg <= n_next;
                send_byte <= send_byte_next;
                tx_reg <= tx_next;
            end
      end
            
            
//logica de la maquina de estados finita            
     always @*
     begin
        state_next = state_reg;
        s_next = s_reg;
        n_next = n_reg;
        tx_next = tx_reg;
        send_byte_next = send_byte;
        data_sent = 0;
        case (state_reg)
            idle:
                begin
                tx_next = 1'b1; //estado por defecto
                    if(tx_start) begin   
                        state_next = start;
                        s_next = 0;
                        send_byte_next = data_in;
                    end                
                    
                end                
            start:
                begin
                tx_next = 1'b0; //bit de start
                if(s_tick)
                
                    if(s_reg == 7)
                        begin
                            state_next = data;
                            s_next = 0;
                            n_next = 0;
                        end
                    else
                        begin
                            s_next = s_reg + 1;
                        end
                end
            data:
                begin
                    tx_next = send_byte[0];
                    if(s_tick)
                        if(s_reg == 15)
                            begin
                                s_next = 0;
                                send_byte_next = send_byte >> 1;
                                if(n_reg == (NB_OP -1)) //si ya se transmitieron los 32 bits hago un stop
                                    state_next = stop;
                                else
                                    n_next = n_reg + 1;    
                            end
                        else
                            s_next = s_reg + 1;
                 end
            stop:
                begin             
                    tx_next = 1'b1; //bit de stop
                    if(s_tick)
                        if(s_reg==(SR-1))
                        begin
                            state_next = idle;
                            data_sent = 1'b1;
                        end
                        else
                            s_next = s_reg + 1;
                end
        endcase                   
     end
     
       
     // salida
     assign tx = tx_reg;  


endmodule
