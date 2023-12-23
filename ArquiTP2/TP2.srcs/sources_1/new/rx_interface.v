module interface
#(
    parameter NB_BUFFER = 32,
              NB_OPCode = 6
)
(
    input wire clk,
    input wire reset,
    input wire set_flag, // Señal para indicar que hay un dato disponible en el receptor
    input wire [NB_BUFFER-1:0] rx_input,

    output wire [NB_BUFFER-1:0] op1,
    output wire [NB_BUFFER-1:0] op2,
    output wire [NB_OPCode-1:0] opcode,
    output wire alu_result_ready
);

    // Registros para almacenar operandos y operador
    
    reg [NB_BUFFER-1:0] op1_reg; 
    reg [NB_BUFFER-1:0] op2_reg;
    reg [NB_OPCode-1:0] opcode_reg;
    reg alu_ready_reg;
    
    // Variables para rastrear el estado
    reg [1:0] state;

    always @(posedge clk, posedge reset)
    begin
        if (reset)
        begin
            op1_reg <= 0;
            op2_reg <= 0;
            opcode_reg <= 0;
            state <= 2'b00;
            alu_ready_reg <= 0;
        end
        else
        begin
            if (set_flag) // Si hay un dato disponible en el receptor
            begin
                case (state)
                    2'b00:
                    begin 
                        op1_reg <= {op1_reg[NB_BUFFER-1:0], rx_input};
                        state <= state + 1'b1;
                    end
                    2'b01:
                    begin 
                        op2_reg <= {op2_reg[NB_BUFFER-1:0], rx_input};
                        state <= state + 1'b1;
                    end
                    2'b10:
                    begin
                        opcode_reg <= rx_input[NB_OPCode-1:0];
                        state <= state + 1'b1;
                    end        
                endcase         
            end
            else if (state == 2'b11)
            begin
                op1_reg <= 0;
                op2_reg <= 0;
                opcode_reg <= 0;
                state = 2'b00;
                alu_ready_reg <= 1'b1;
            end
        end
    end

    // Cuando los tres elementos están listos, establece op_ready
    assign op1 = op1_reg;
    assign op2 = op2_reg;
    assign opcode = opcode_reg;
    assign alu_result_ready = alu_ready_reg;
    
        
   
    
endmodule
