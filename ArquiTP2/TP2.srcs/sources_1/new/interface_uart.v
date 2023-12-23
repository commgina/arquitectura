/*
 Interfaz para gestionar datos entre el sistema principal y los módulos UART, 
 permitiendo establecer y borrar una bandera, así como almacenar y recuperar datos en un búfer. 
 La bandera indica la disponibilidad de datos para su lectura,
 y los datos se almacenan en el búfer para su posterior recuperación.
*/

module interface_uart
#(
    parameter buffer_bits = 32
)
(
    input wire clk, reset,
    input wire clr_flag, set_flag,
    input wire [buffer_bits - 1 : 0] data_in,
    output wire flag,
    output wire [buffer_bits - 1: 0] data_out
);

    reg [buffer_bits -1 : 0] buf_reg, buf_next;
    reg flag_reg, flag_next;
    
        //en cada flanco de clock se actualiza el flag y el buffer
        always@(posedge clk, posedge reset)
            if(reset)
                begin
                    buf_reg <= 0;
                    flag_reg <= 1'b0;
                end
            else
                begin
                    flag_reg <= flag_next;
                    buf_reg <= buf_next;
                end
         
        always @*
        begin
        //si no se esta escribiendo set flag o clr flag, se mantienen los valores actuales
        //en buf reg y flag reg
            buf_next <= buf_reg;
            flag_next <= flag_reg;
            //set_flag debe estar conectado a alguna se;al del receptor o transmisor
            //para indicar que se va a comenzar la transmision
            if (set_flag)
                begin
                    buf_next <= data_in; //si esta seteado el flag guardo los datos en el buffer
                    flag_next <= 1'b1; //pongo en uno la bandera
                end
            else if(clr_flag)
                flag_next <= 1'b0;
        end  
    
    assign data_out = buf_reg; //los datos de salida con iguales a los del buffer actual
    assign flag = flag_reg; //la bandera es igual a la bandera actual
endmodule
