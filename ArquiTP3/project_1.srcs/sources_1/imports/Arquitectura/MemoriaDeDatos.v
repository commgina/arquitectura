`timescale 1ns / 1ps



module MemoriaDeDatos(
    input wire clk,
    input wire rst,
    input wire [31:0] i_direccion,
    input wire [31:0] i_escritura,
    input wire i_mem_write,
    
    input wire [3:0] i_mem_width,
        
    output reg [31:0] o_dato
);

    reg [7:0] mem [127:0];
    integer i;
    
    always @(negedge clk) begin
    
        if(rst) begin                   // En caso de reset pongo memoria y salidas a cero
            o_dato <= 32'h00000000;
            for(i=0; i<128; i=i+1) begin
                mem[i] <= 8'h00;
            end
        end else begin
        
            if(!i_mem_write) begin          // Si no se va a escribir
            
                if(!i_mem_width[3]) begin   // Si es un load sin signo
                
                    case(i_mem_width[2:0])
                    
                        3'b001: begin
                            o_dato <= {24'd0,  mem[i_direccion[6:0]]};
                        end
                        3'b010: begin
                            o_dato <= {16'd0, mem[i_direccion[6:0]+2'b01], mem[i_direccion[6:0]]}; 
                        end
                        3'b100: begin
                            o_dato <= {mem[i_direccion[6:0]+2'b11], mem[i_direccion[6:0]+2'b10], mem[i_direccion[6:0]+2'b01], mem[i_direccion[6:0]]};
                        end
                        
                    endcase
                
                end else begin              // Si es un load con signo
                
                    case(i_mem_width[2:0])
                    
                        3'b001: begin
                            o_dato <= {{24{mem[i_direccion[6:0]][7]}},  mem[i_direccion[6:0]]};
                        end
                        3'b010: begin
                            o_dato <= {{16{mem[i_direccion[6:0]+2'b01][7]}}, mem[i_direccion[6:0]+2'b01], mem[i_direccion[6:0]]}; 
                        end
                        3'b100: begin
                            o_dato <= {mem[i_direccion[6:0]+2'b11], mem[i_direccion[6:0]+2'b10], mem[i_direccion[6:0]+2'b01], mem[i_direccion[6:0]]};
                        end
                        
                    endcase
                
                end
            
            end else begin                  //Si es un store
            
                case(i_mem_width[2:0])
                    
                    3'b001: begin
                        mem[i_direccion[6:0]] <= i_escritura[6:0];
                    end
                    3'b010: begin
                        {mem[i_direccion[6:0]+2'b01], mem[i_direccion[6:0]]} <= i_escritura[15:0];
                    end
                    3'b100: begin
                        {mem[i_direccion[6:0]+2'b11], mem[i_direccion[6:0]+2'b10], mem[i_direccion[6:0]+2'b01], mem[i_direccion[6:0]]} <= i_escritura;
                    end
                    
                endcase
            
            end
        
        end
    
    end


endmodule