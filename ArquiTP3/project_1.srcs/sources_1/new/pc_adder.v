
module adder(

    input [31:0] input_a,
    input [31:0] input_b,
    output [31:0] output_c

);
    assign output_c = input_a + input_b;
endmodule
