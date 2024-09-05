module PC(
    input clk,
    input rst,
    input block_pc,
    input [31:0] next_pc,
    output reg [31:0] pc
    
);


always @(negedge clk) begin
    if (rst) begin
        pc <= 32'h00000000;
    end else begin
        if(!block_pc) begin
            pc <= next_pc;
        end
    end
end

endmodule
