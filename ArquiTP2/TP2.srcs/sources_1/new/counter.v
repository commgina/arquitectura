module mod_m_counter
#(
    parameter M = 326,
              N = 9 //bits para representar M
)
(
    input wire clk, reset,
    output wire s_tick
    
);

    reg[N-1:0] counter; //9 bits para representar el 326

    always @(posedge clk, posedge reset) 
    begin
        if(reset)
            counter <= 1'b0;
        else
            if (counter < M)
                counter <= counter + 1'b1; // Incrementa el contador
            else
                counter <= 0; // Reinicia el contador
    end


    assign s_tick = (counter == M) ? 1'b1 : 1'b0;

endmodule


