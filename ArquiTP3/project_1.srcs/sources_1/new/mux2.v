
module mux2 #(
    parameter BUS_WIDTH = 32
    )(
    input wire i_sel,
    input wire [BUS_WIDTH-1:0] i_dato_0,
    input wire [BUS_WIDTH-1:0] i_dato_1,
        
    output reg [BUS_WIDTH-1:0] o_dato  
    );

    // No lleva clock
    always @(*) begin
        case (i_sel)
            0: o_dato = i_dato_0;
            1: o_dato = i_dato_1; 

        default: o_dato = i_dato_0;
     endcase
end
   
endmodule