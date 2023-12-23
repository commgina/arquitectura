module tx_interface_tb;

    parameter data_bits = 32;
    
    
    reg clk; 
    reg reset;
    reg alu_result_ready;
    reg [data_bits-1:0] alu_result;
    wire tx_start;
    wire [data_bits-1:0] tx_data;
    
    tx_interface #(
        .data_bits(32)   
    ) tx_interface_inst (
        .clk(clk),
        .reset(reset),
        .alu_result_ready(alu_result_ready),
        .alu_result(alu_result),
        .tx_start(tx_start),
        .tx_data(tx_data)      
    );
    
    always begin
        #5 clk = ~clk;
    end
    
    initial begin
        clk = 0;
        reset = 0;
        alu_result_ready = 0;
        alu_result = 32'h10101010; //valor de ejemplo para la ALU
        
        // espera un ciclo de reloj
        
        #5 reset = 1;
        
        // desactivo el reset
        
        #5 reset = 0;
        
        // activa alu_result_ready
        
        alu_result_ready = 1;
        
        
        
        $finish;
    
    end
    
    
endmodule