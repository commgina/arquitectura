`timescale 1ns / 1ps


module word_extender #(
    parameter BUS_WIDTH = 16
)(
    input wire [BUS_WIDTH-1:0] i_dato,
    output wire [31:0] o_dato
);
    
    assign o_dato = {{32-BUS_WIDTH{1'b0}}, i_dato};
    
endmodule
