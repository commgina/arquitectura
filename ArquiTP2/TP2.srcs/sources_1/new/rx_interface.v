module uart_alu_interface 
#(
    parameter NB_OP = 8,
              NB_OPCode = 6
)
(
    input wire clk,
    input wire reset,
    input wire [NB_OP-1:0] uart_data_in,
    input wire uart_data_ready,
    output reg alu_data_ready,
    output wire [NB_OP-1:0] alu_opA,
    output wire [NB_OP-1:0] alu_opB,
    output wire [NB_OPCode-1:0] alu_opCode
);

    // Definir aquí las señales y registros necesarios para la interfaz
    reg [2:0] uart_state, uart_state_next; // Estado de la máquina de estados para la interfaz
    reg [NB_OP-1:0] opA_reg, opA_reg_next;
    reg [NB_OP-1:0] opB_reg, opB_reg_next;
    reg [NB_OPCode-1:0] opCode_reg, opCode_reg_next;
    
    always @(posedge clk, posedge reset)
    begin
        if(reset)
        begin
            uart_state <= 3'b000;
            opA_reg <= 0;
            opB_reg <= 0;
            opCode_reg <= 0;
        end 
        else
        begin
            uart_state <= uart_state_next;
            opA_reg <= opA_reg_next;
            opB_reg <= opB_reg_next;
            opCode_reg <= opCode_reg_next;
        end
    end
    

    always @* begin
        // Lógica de la interfaz
        alu_data_ready = 0;
        uart_state_next = uart_state;
        opA_reg_next = opA_reg;
        opB_reg_next = opB_reg;
        opCode_reg_next = opCode_reg;
        case (uart_state)
            3'b000: // Estado de espera de datos de opA de UART
            if (uart_data_ready) begin               
                opA_reg_next = uart_data_in;
                uart_state_next = 3'b001; // Moverse al siguiente estado
            end
            3'b001: // Estado de espera de datos de opB de UART
            if (uart_data_ready) begin
                opB_reg_next = uart_data_in;
                uart_state_next = 3'b010; // Moverse al siguiente estado
            end
            3'b010: // Estado de espera de datos de opCode de UART
            if (uart_data_ready) begin
                opCode_reg_next =  uart_data_in;                
                // Señal para indicar a la ALU que puede operar                             
                uart_state_next = 3'b011; // Moverse al siguiente estado
            end
            3'b011:
            begin
                alu_data_ready = 1; 
                uart_state_next = 3'b000; // Volver al estado inicial
            end
            default
            begin
                alu_data_ready = 0;
                uart_state_next = 0;
                opA_reg_next = 0;
                opB_reg_next = 0;
                opCode_reg_next = 0;
            end
                
        endcase
    end
    
    assign alu_opA = opA_reg;
    assign alu_opB = opB_reg;
    assign alu_opCode = opCode_reg;

    // Otras lógicas y asignaciones necesarias

endmodule
    