module control_unit(
    input wire rst,
    input [5:0] opcode,
    output reg regWrite,
    output reg takeBranch,
    output reg typeBranch,
    output reg GPR31,
    output reg takeJump,
    output reg takeJumpR,
    output reg memToReg,
    output reg regDst,
    output reg [5:0] ALUOp,
    output reg memWrite,
    output reg memRead,
    output reg ALUSrc,
    output reg halt,
    output reg [3:0] memWidth
);

    always @(*) begin
        // Reiniciar todas las señales a valores predeterminados
        if (rst) begin
            regWrite = 0;
            takeBranch = 0;
            typeBranch = 0;
            GPR31 = 0;
            takeJump = 0;
            takeJumpR = 0;
            memToReg = 0;
            regDst = 0;
            memWrite = 0;
            memRead = 0;
            ALUSrc = 0;
            ALUOp = 6'b000000; // Valor por defecto
            halt = 0;
            memWidth = 4'b0000;
        end else begin
            // Configuración de señales básicas
            regWrite = 1;
            takeBranch = 0;
            typeBranch = 0;
            GPR31 = 0;
            takeJump = 0;
            takeJumpR = 0;
            memToReg = 0;
            regDst = 0;
            memWrite = 0;
            memRead = 0;
            ALUSrc = 0;
            ALUOp = 6'b000000; // Valor por defecto
            memWidth = 4'b0000;
            halt = 0;

            // HALT
            if (opcode == 6'b111111) begin
                halt = 1;
                regWrite = 0;
                regDst = 0;
                ALUSrc =  0;
                memWrite = 0; 
                memWidth = 4'b0000;
                GPR31 = 0;
                takeJump = 0;
                takeJumpR = 0;
                takeBranch = 0;
                typeBranch = 0;
            end else begin
                case (opcode[5:3])
                    // Tipo R
                    3'b000, 3'b001: begin
                        regWrite = 1;
                        regDst = 1;
                    end
                    3'b100: begin
                        regWrite = 1;
                        ALUSrc = 1;
                    end
                    3'b010: begin // Load
                        regWrite = 1;
                        memToReg = 1;
                        memRead = 1;
                        ALUSrc = 1;
                        // Decodificación de la anchura de la memoria para Load
                        case (opcode[2:0])
                            3'b000, 3'b100: memWidth = 4'b0001; // Byte (8 bits)
                            3'b001, 3'b101: memWidth = 4'b0010; // Half word (16 bits)
                            3'b010, 3'b011: memWidth = 4'b0100; // Word (32 bits)
                            default: memWidth = 4'b0000; // Default a 0 por si acaso
                        endcase
                    end
                    3'b011: begin // Store
                        memWrite = 1;
                        ALUSrc = 1;
                        regWrite = 0;
                        // Decodificación de la anchura de la memoria para Store
                        case (opcode[2:0])
                            3'b110: memWidth = 4'b0001; // Byte (8 bits)
                            3'b111: memWidth = 4'b0010; // Half word (16 bits)
                            3'b000: memWidth = 4'b0100; // Word (32 bits)
                            default: memWidth = 4'b0000; // Default a 0 por si acaso
                        endcase
                    end
                    3'b110: begin // Branch
                        takeBranch = 1;
                        regWrite = 0;
                        if (opcode == 6'b110000) begin
                            typeBranch = 0;
                        end else begin
                            typeBranch = 1;
                        end
                    end
                    3'b111: begin // Jumps
                        takeJump = 1; // jump
                        regWrite = 0;
                        if (opcode == 6'b111001) begin // jal
                            GPR31 = 1;
                            
                            regWrite = 1;
                        end else if (opcode == 6'b111010) begin // jr
                            takeJump = 0;
                            takeJumpR = 1;
                        end else if (opcode == 6'b111011) begin // jalr
                            regDst = 1;
                            regWrite = 1;
                            takeJumpR = 1;
                            takeJump = 0;
                        end
                    end
                    default: begin
                        regWrite = 0;
                        takeBranch = 0;
                        typeBranch = 0;
                        GPR31 = 0;
                        takeJump = 0;
                        takeJumpR = 0;
                        memToReg = 0;
                        regDst = 0;
                        memWrite = 0;
                        memRead = 0;
                        ALUSrc = 0;
                        memWidth = 4'b0000;
                        ALUOp = 6'b000000;
                    end
                endcase

                // Configuración específica para ALUOp
                case (opcode)
                    6'b000001, 6'b010000, 6'b010001, 6'b010010, 6'b010011,
                    6'b010100, 6'b010101, 6'b010110, 6'b010111, 6'b011000,
                    6'b100000, 6'b011110, 6'b011111, 6'b011000 : ALUOp = 6'b000001; // ADD
                    6'b000010, 6'b100101, 6'b110000, 6'b110001: ALUOp = 6'b000010; // SUB
                    6'b000011, 6'b100001: ALUOp = 6'b000011; // AND
                    6'b000100, 6'b100010: ALUOp = 6'b000100; // OR
                    6'b000101, 6'b100011: ALUOp = 6'b000101; // XOR
                    6'b000110: ALUOp = 6'b000110; // NOR
                    6'b001000: ALUOp = 6'b000111; // SRL
                    6'b000111: ALUOp = 6'b001000; // SRA
                    6'b001001: ALUOp = 6'b001001; // SLL
                    6'b001010: ALUOp = 6'b001010; // SLL16
                    default: ALUOp = 6'b000000; // Default
                endcase
            end
        end
    end
endmodule
