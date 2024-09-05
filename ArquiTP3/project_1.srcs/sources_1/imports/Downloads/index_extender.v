

module index_extender(
	input [31:0] pcplus4,
    input [25:0] index, 
    output [31:0] jump_dir
);

	wire [27:0] shifted_index;  // Índice desplazado a la izquierda dos veces
    wire [31:0] extended_index; // Índice con extensión de signo
	
	assign shifted_index = index << 2;
	sign_extend #(
		.BUS_WIDTH(28)
	) signextend (
		.dato(shifted_index),
		.dato_extendido(extended_index)	
	);
	
	assign jump_dir = pcplus4 + extended_index;
    
endmodule
