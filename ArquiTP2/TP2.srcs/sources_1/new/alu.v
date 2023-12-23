module ALU
#(
        parameter BUS_WIDTH = 32,
        parameter OP_BITS = 6
)
(

    input  wire[BUS_WIDTH - 1:0] inputA,
    input  wire[BUS_WIDTH - 1:0] inputB,
    input  wire[OP_BITS-1:0] aluOperation,
    output wire[BUS_WIDTH - 1:0] ALUOutput
);


    reg[BUS_WIDTH - 1:0] result = 0;
    always @(*) begin
        case(aluOperation)
            6'b100000:
            begin 
                result = inputA + inputB;
            end
            6'b100010:  
            begin
                result = inputA - inputB;
            end
            6'b100100: 
            begin
                result = inputA & inputB;  
            end
            6'b100101:
            begin 
                result = inputA | inputB;
            end
            6'b100110:
            begin 
                result = inputA ^ inputB;
            end
            6'b000010:
            begin 
                result = $signed(inputA) >>> inputB;
            end
            6'b000011: 
            begin
                result = inputA >> inputB;
            end
            6'b100111: 
            begin
                result = ~(inputA | inputB);
            end
            default: 
            begin
                result = {BUS_WIDTH{1'b0}};
            end

        endcase
    end
    
   
    assign ALUOutput = result;

endmodule