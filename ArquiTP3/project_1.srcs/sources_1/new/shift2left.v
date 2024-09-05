`timescale 1ns / 1ps

module shift2left #(
    parameter BUS_WIDTH = 16
)(
    input wire [BUS_WIDTH-1:0] i_dato,
    output wire [BUS_WIDTH+1:0] o_dato
);
    
    assign o_dato = i_dato << 2;
 
endmodule
