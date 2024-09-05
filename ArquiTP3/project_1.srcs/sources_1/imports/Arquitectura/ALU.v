module ALU(

	input wire [31:0] i_srcA,
	input wire [31:0] i_srcB,
	input wire [5:0] i_ALUOp,

	output wire [31:0] ALUResult,
    output wire carry,
	output wire zero
);

    reg [32:0] result;

    assign zero = ~|result;
    assign carry = result[32];		
    assign ALUResult = result;


    always @(*) begin
        case (i_ALUOp)
            6'b000001: result = i_srcA + i_srcB; //ADD
            6'b000010: result = i_srcA - i_srcB; //SUB
            6'b000011: result = i_srcA & i_srcB; //AND
            6'b000100: result = i_srcA | i_srcB; //OR
            6'b000101: result = i_srcA ^ i_srcB; //XOR
            6'b000110: result = ~(i_srcA | i_srcB);//NOR
            6'b000111: result = i_srcA >> i_srcB; //SRL
            6'b001000: result = $signed(i_srcA) >>> i_srcB;  //SRA
            6'b001001: result = i_srcA << i_srcB; //SLL
            6'b001010: result = i_srcB << 16; //SLL16
            default: result = {32{1'b0}};
        endcase
    end

endmodule