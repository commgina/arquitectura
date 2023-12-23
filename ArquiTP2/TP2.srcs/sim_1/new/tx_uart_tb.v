module tx_uart_tb;
    // Parameters
    parameter data_bits = 32;
    parameter oversampling = 16;

    // Signals
    reg clk;
    reg reset;
    reg tx_start;
    wire s_tick;
    reg [31:0] data_in;
    reg alu_result_ready;
    wire tx;
    

    mod_m_counter #(
        .M(326),  // Adjust M based on your requirements
        .N(9)     // Adjust N based on your requirements
    ) m_counter (
        .clk(clk),  // Connect clk from the test bench
        .reset(reset),  // Connect reset from the test bench
        .s_tick(s_tick)  // Connect s_tick to your UART transmitter
    );
    // Instantiate the tx_uart module
    tx_uart #(
        .data_bits(data_bits),
        .oversampling(oversampling)
    ) uut (
        .clk(clk),
        .reset(reset),
        .tx_start(tx_start),
        .s_tick(s_tick),
        .data_in(data_in),
        .alu_result_ready(alu_result_ready),
        .tx(tx)
    );
    
    // Clock generation
    always
    begin
        #5 clk = ~clk;
    end

    // Stimulus generation
    initial
    begin
        reset = 1;
        tx_start = 0;
       
        data_in = 32'h00000000; // Example: Set your data to be transmitted here
        clk = 0;


        #10 reset = 0;
        
        // Test case 1: Transmit a 32-bit data
        // Test case 1: Transmit a 32-bit data
        alu_result_ready = 1;
        data_in = 32'b00000011100000101111000011110000; // Set the data to be transmitted
        tx_start = 1; // Initiate transmission   
        
      #53000
      #53000
      #53000
      #53000
      #53000
      #53000
      #53000

     $finish;

    end

endmodule
