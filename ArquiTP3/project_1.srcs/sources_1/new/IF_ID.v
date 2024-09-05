module IF_ID(
    input clk,
    input rst,
    input block,
    input [31:0] i_instruction,
    input [31:0] i_pc,

    output reg [31:0] o_instruction,
    output reg [31:0] o_pc

);

    

    always @(posedge clk) begin
        if(rst) begin  
            o_pc <= 32'h00000000;
            o_instruction <= 0;
        end else begin
        if(!block) begin
            o_pc <= i_pc; 
            o_instruction <= i_instruction;
            end
        end
   
    end
    
    
    
endmodule