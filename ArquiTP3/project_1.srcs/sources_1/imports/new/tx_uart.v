module tx_uart(
    input wire clk,
    input wire reset,
    input wire s_tick,
    input wire tx_start,
    input wire [7:0] data_in,
    output reg tx,
    output reg data_sent
);

    // Estados
    localparam STATE_WAITING = 3'b001;
    localparam STATE_START   = 3'b010;
    localparam STATE_SEND    = 3'b011;
    localparam STATE_STOP    = 3'b100;

    reg [2:0] state;
    reg [3:0] tick_counter;
    reg [3:0] bit_counter;

    reg [7:0] t_word;  // Dato a transmitir
    reg start_flag;

    always @(posedge clk) begin
        // Reset: regresa a estado de espera
        if (reset) begin
            state <= STATE_WAITING;
            tick_counter <= 4'h0;
            bit_counter <= 4'h0;
            t_word <= 8'h00;
            tx <= 1;
            start_flag <= 0;
            data_sent <= 0;
        end else begin

            if (tx_start && (!data_sent)) begin
                start_flag <= 1;
                data_sent <= 1;
                t_word <= data_in;
            end

            if (s_tick) begin

                // Contador de ticks
                if (tick_counter < 15) begin
                    tick_counter <= tick_counter + 1'b1;
                end else begin
                    tick_counter <= 4'h0;
                end          

                // Máquina de estados del transmisor
                case (state)
                    STATE_WAITING: begin
                        if (start_flag) begin
                            tick_counter <= 4'h0;
                            start_flag <= 0;
                            state <= STATE_START; 
                            tx <= 1'b0;   // Envío bit de start
                        end
                    end
                    
                    STATE_START: begin
                        if (tick_counter == 14) begin
                            state <= STATE_SEND;   
                        end
                    end
                    
                    STATE_SEND: begin
                        if (tick_counter == 15) begin
                            tx <= t_word[bit_counter];
                            bit_counter <= bit_counter + 1'b1;
                            if (bit_counter == 8) begin // Si se enviaron los 8 bits
                                bit_counter <= 4'd0;
                                state <= STATE_STOP;
                            end
                        end
                    end
                    
                    STATE_STOP: begin 
                        if (tick_counter == 15) begin
                            tx <= 1;  // Bit de stop
                            data_sent <= 0;
                            state <= STATE_WAITING;
                        end
                    end
                    
                    default: begin
                        state <= STATE_WAITING;
                    end
                    
                endcase
            end
        end
    end
     
endmodule
