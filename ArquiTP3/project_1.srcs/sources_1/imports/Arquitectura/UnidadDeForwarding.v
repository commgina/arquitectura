module UnidadDeForwarding(
    input wire [4:0] i_rs, // registro source 1
    input wire [4:0] i_rt, // registro source 2
    input wire [4:0] i_rd_exmem, //registro destino de la etapa de EX/MEM
    input wire i_reg_write_exmem, // indica si se escribe en el registro
    input wire [4:0] i_rd_memwb, //registro destino de la etapa de MEM/WB
    input wire i_reg_write_memwb, // indica si se escribe en el registro
    input wire i_reg_dst, // si es 0 el registro destino esta en la direccion almacenada en rt, si es 1, en rd
    input wire i_mem_write_idex, // indica si se escribe en memoria
    
    output reg [1:0] o_forward_a,
    output reg [1:0] o_forward_b,
    output reg [1:0] o_forward_c
);
    
    always @(*) begin
        // Forwarding para o_forward_a
        if(i_reg_write_exmem && (i_rd_exmem == i_rs)) begin
            o_forward_a <= 2'b10;  // Forward desde EX/MEM
        end else if(i_reg_write_memwb && (i_rd_memwb == i_rs)) begin
            o_forward_a <= 2'b01;  // Forward desde MEM/WB
        end else begin
            o_forward_a <= 2'b00;  // No hay forwarding
        end
    end
    
    always @(*) begin
        // Forwarding para o_forward_b
        if(!i_reg_dst) begin //el registro destino es rt
            if(i_reg_write_exmem && (i_rd_exmem == i_rt)) begin
                o_forward_b <= 2'b10;  // Forward desde EX/MEM
            end else if(i_reg_write_memwb && (i_rd_memwb == i_rt)) begin
                o_forward_b <= 2'b01;  // Forward desde MEM/WB
            end else begin
                o_forward_b <= 2'b00;  // No hay forwarding
            end
        end else begin
            o_forward_b <= 2'b00;  // No hay forwarding
        end
    end
    
    always @(*) begin
        // Forwarding para o_forward_c, cuando se va a escribir la memoria store
        //con un dato que aun esta en exmem, es decir aun no esta en el registro
        if(i_mem_write_idex && (i_rd_exmem == i_rt)) begin
            o_forward_c <= 2'b10;  // Forward desde EX/MEM
        end else if(i_mem_write_idex && (i_rd_memwb == i_rt)) begin
            o_forward_c <= 2'b01;  // Forward desde MEM/WB
        end else begin
            o_forward_c <= 2'b00;  // No hay forwarding
        end
    end
    
endmodule
