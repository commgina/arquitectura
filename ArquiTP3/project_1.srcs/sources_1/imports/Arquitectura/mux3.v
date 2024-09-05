module mux3 #(parameter WIDTH = 32) (
    input wire [WIDTH-1:0] in0,
    input wire [WIDTH-1:0] in1,
    input wire [WIDTH-1:0] in2,
    input wire [1:0] sel,
    output wire [WIDTH-1:0] out
);

    assign out = (sel == 2'b00) ? in0 :
                 (sel == 2'b01) ? in1 :
                 (sel == 2'b10) ? in2 : //
                 in0;

endmodule