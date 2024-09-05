module UnidadDeteccionDeRiesgos(
    input wire i_reset,
    input wire i_take_jump_r,
    input wire i_take_branch,
    input wire i_mem_to_reg,
    input wire i_reg_dst,
    input wire [4:0] i_rs,
    input wire [4:0] i_rt,
    input wire [4:0] i_rd,
    input wire i_post_bloqueo_1,
        
    output wire o_bloqueo_pc,
    output wire o_bloqueo_latch_ifid,
    output reg o_bloqueo_latch_idex,
    output reg o_reset_signals,
    output reg o_reset_latch_exmem,
    output reg o_post_bloqueo_1
    );
    
    reg bloqueo_pc_1, bloqueo_pc_2, bloqueo_ifid_1, bloqueo_ifid_2;
    
    assign o_bloqueo_pc = bloqueo_pc_1 | bloqueo_pc_2;
    assign o_bloqueo_latch_ifid = bloqueo_ifid_1 | bloqueo_ifid_2;
    
    always @* begin
        
        if(i_reset) begin
            
            bloqueo_pc_1 <= 0;
            bloqueo_pc_2 <= 0;
            bloqueo_ifid_1 <= 0;
            bloqueo_ifid_2 <= 0;
            o_bloqueo_latch_idex <= 0;
            o_reset_signals <= 0;
            o_reset_latch_exmem <= 0;
            o_post_bloqueo_1 <= 0;
            
        end else begin
            
            //debo cargar un registro ocn un dato q aun no ha sido leido
            if(i_mem_to_reg & ((i_rd == i_rs) | (i_reg_dst & (i_rd == i_rt)))) begin //para cuando un load tiene como destino
            //el source de la instruccion en la etapa exmem, se introduce una burbuja. se bloquea el PC y el latch IF ID para
            //que el load actualice el registro
                
                bloqueo_pc_2 <= 1;
                bloqueo_ifid_2 <= 1;
                o_bloqueo_latch_idex <= 1;
                o_reset_latch_exmem <= 1;
                
            end else begin
                
                bloqueo_pc_2 <= 0;
                bloqueo_ifid_2 <= 0;
                o_bloqueo_latch_idex <= 0;
                o_reset_latch_exmem <= 0;
                
            end
            
            if(!i_post_bloqueo_1) begin                 // Si en el ciclo anterior no hubo riesgo por jump o branch
            //para evitar un bloqueo permanente
                o_reset_signals <= 0;
                
                if(i_take_jump_r | i_take_branch) begin
                    
                    bloqueo_pc_1 <= 1;
                    bloqueo_ifid_1 <= 1;
                    o_post_bloqueo_1 <= 1;
                    
                end
                
            end else begin                              // Si en el ciclo anterior hubo riesgo por jump o branch
                
                bloqueo_pc_1 <= 0;
                bloqueo_ifid_1 <= 0;
                o_post_bloqueo_1 <= 0;
                o_reset_signals <= 1;
                    //el reset es para la unidad de control
                    //como solo una etapa del procesador se detiene
                    //la etapa de ejecucion volvera a recibir los mismos valores
                    //de la unidad de control si no la reseteo, por lo  q repetira el procedimiento
            end
        
        end
            
    end
    
    
endmodule