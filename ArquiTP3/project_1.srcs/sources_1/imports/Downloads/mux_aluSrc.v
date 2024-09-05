module mux_aluSrc(
    input [31:0] rd2, //entrada con el valor de RD2
    input [31:0] inmOperand, //entrada con dato inmediato
    input ALUSrc,
    output [31:0] srcB
);

	//si sel es 1 selecciona la unidad de debug, si no el PC
	assign srcB = ALUSrc ? inmOperand : rd2;
    
endmodule
