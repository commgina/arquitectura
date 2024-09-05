module sign_extend #(

	parameter BUS_WIDTH = 16

)(
    input wire [BUS_WIDTH-1:0] dato,
    output wire [31:0] dato_extendido
);
    
    assign dato_extendido = (dato[BUS_WIDTH-1] == 1) ? {{32-BUS_WIDTH{1'b1}}, dato} : {{32-BUS_WIDTH{1'b0}}, dato};

endmodule