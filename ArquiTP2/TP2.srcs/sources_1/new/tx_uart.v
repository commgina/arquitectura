module tx_uart
#(
    parameter NB_OP = 32,
              SR = 16
)
(
    input wire clk,
    input wire reset,
    input wire tx_start,
    input wire s_tick,     
    //output reg tx_done_tick, // dato q se le asigna a 
    input wire alu_result_ready,
    input wire [NB_OP-1:0] data_in,
    output wire tx
);

    reg [NB_OP-1:0] alu_result_reg ;
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
     reg [5:0] n_reg, n_next; //n_next se va incrementando en 1 para ir avanzando por los bits
     reg [31:0] b_reg, b_next; //registro para almacenar los bits que se van recibiendo
     reg tx_reg, tx_next;
   
// estado de la maquina y registros
     always @(posedge clk, posedge reset)
        if (reset)
            begin
                state_reg <= idle;
                s_reg <= 0;
                n_reg <= 0;
                b_reg <= 0;
                tx_reg <= 0;
                alu_result_reg <= 0;
            end
        else
            begin
                state_reg <= state_next;
                s_reg <= s_next;
                n_reg <= n_next;
                b_reg <= b_next;
                tx_reg <= tx_next;
                if(alu_result_ready)
                begin
                    alu_result_reg <= data_in;
                end
            end
            
            
//logica de la maquina de estados finita            
     always @*
     begin
        state_next = state_reg;
        //tx_done_tick = 1'b0;
        s_next = s_reg;
        n_next = n_reg;
        b_next = b_reg;
        tx_next = tx_reg;
        case (state_reg)
            idle:
                begin
                    tx_next = 1'b1;
                    if(tx_start)
                    begin
                        state_next = start;
                        s_next = 0;
                        b_next = alu_result_reg;
                    end                
                end                
            start:
                begin
                    tx_next = 1'b0;
                if(s_tick)
                    if(s_reg == 7)
                        begin
                            state_next = data;
                            s_next = 0;
                            n_next = 0;
                        end
                    else
                        s_next = s_reg + 1;
                end
            data:
                begin
                    tx_next = b_reg[0];
                    if(s_tick)
                        if(s_reg == 15)
                            begin
                                s_next = 0;
                                b_next = b_reg >>1;
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
                    tx_next = 1'b1; 
                    if(s_tick)
                        if(s_reg==(SR-1))
                            begin
                                state_next = idle;
                                //tx_done_tick = 1;
                            end
                        else
                            s_next = s_reg + 1;
                end
        endcase                   
     end
       
     // salida
     assign tx = tx_reg;  

endmodule
