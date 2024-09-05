module MIPS (
    input wire clk,
 
    input wire rst,
    
    input wire i_rx,
    
    output wire o_tx,
    
    output wire [3:0] o_state
);

    // Señales internas entre etapas
    // Fetch-Decode
    wire [31:0] pc, pc_IFID, instruction_IFID;
    
    
    // Decode-Execute
    wire [31:0] pc_IDEX, srcA_IDEX, srcB_IDEX, dato2_IDEX, instruction_IDEX, jumpAddress_IDEX;
    wire [5:0] ALUOp_IDEX;
    wire [3:0] memWidth_IDEX, writeRegister_IDEX;
    wire halt_IDEX, regWrite_IDEX, regDst_IDEX, takeBranch_IDEX, takeJump_IDEX, typeBranch_IDEX, memToReg_IDEX, gpr31_IDEX, memWrite_IDEX, memRead_IDEX, takeJumpR_IDEX;
    
    
    
    // Execute-Memory
    wire [31:0] result_EXMEM, jumpAddressR_EXMEM, branchAddress_EXMEM;
    wire [31:0] pc_EXMEM, dato2_EXMEM;
    wire [4:0] writeRegister_EXMEM;
    wire [3:0] memWidth_EXMEM;
    wire memToReg_EXMEM, regWrite_EXMEM, memWrite_EXMEM, memRead_EXMEM;
    wire carry_EXMEM, takeBranch_EXMEM, takeJumpR_EXMEM;
    wire halt_EXMEM;

    // Memory-Write Back
    wire [31:0] writeData_MEMWB;
    wire [4:0] writeRegister_MEMWB;
    wire regWrite_MEMWB, memToReg_MEMWB;
    wire post_bloqueo_1_0, post_bloqueo_1;
    // Unidad de forwarding
    wire [1:0] forward_a_sel, forward_b_sel, forward_c_sel;

    wire reset_signals;
    wire reset_latch_exmem;
    wire block_pc_udr, block_latch_1_udr, block_latch_2_udr;

    wire reset_out_debug;
    wire sel_dir_mem_instr_debug;
    wire flag_esc_mem_instr_debug;
    wire [31:0] dir_mem_instr_debug;
    wire [31:0] dato_mem_instr_debug;
    wire sel_dir_un_reg_debug; 
    wire [4:0] dir_un_reg_debug;
    wire [31:0] lec_reg_debug;
    wire sel_dir_mem_datos_debug;
    wire [31:0] dir_mem_datos_debug;
    wire [31:0] lec_mem_datos_debug;
    wire send_start_debug;
    wire [7:0] send_byte_debug;
    wire reset_pc_debug;
    wire block_latchs_debug;
    
    assign o_send_start = send_start_debug;
    assign o_send_byte = send_byte_debug;
    
    wire eor, sending_flag;
    wire [7:0] recept_byte;
    
    // Para solucionar asincronia en UnidadDeRegistros 
    
    wire [31:0] dato_wb_reg;
    wire [4:0] reg_esc_reg;
    wire reg_write_reg;

// Instancia de la etapa Fetch
EtapaFETCH etapaFETCH (
    .clk(clk),
    .rst(reset_out_debug),  
    .block_pc((block_latchs_debug | block_pc_udr)),
    .rst_pc(reset_pc_debug),
    .i_block_read((block_latchs_debug | block_latch_1_udr)),
    .i_block_latch( (block_latchs_debug | block_latch_1_udr)),
    .takeBranch(takeBranch_EXMEM),
    .takeJumpR(takeJumpR_EXMEM),
    .takeJump(takeJump_IDEX),
    .takeBranchAddress(branchAddress_EXMEM),
    .takeJumpAddress(jumpAddress_IDEX),
    .takeJumpAddressR(jumpAddressR_EXMEM),
    .uart_write_enable(flag_esc_mem_instr_debug), //habilitar la escritura de uart en la memoria de instrucciones
    .uart_data_in(dato_mem_instr_debug), //dato a escribir osea instruccion
    .debugAddressEnable(sel_dir_mem_instr_debug),
    .debugAddress(dir_mem_instr_debug),
    .o_instruction(instruction_IFID),
    .o_pcplus4(pc_IFID),
    .o_pc(pc)
);

// Instancia de la etapa Decode
EtapaDECODE etapaDECODE (
    .clk(clk),
    .rst(reset_out_debug),
    .i_instruction(instruction_IFID),   // Instrucción de entrada
    .pcplus4(pc_IFID),         // PC + 4
    
    .i_block_latch((block_latchs_debug | block_latch_2_udr)),
    .i_post_bloqueo( post_bloqueo_1_0),
    .i_reset_signals(reset_signals),
    .i_sel_reg_lec_1(sel_dir_un_reg_debug), //selector q va al multiplexor
    .i_reg_lec_1(dir_un_reg_debug), // 5 bits
    .o_post_bloqueo(post_bloqueo_1_1),
    .o_take_jump_r_uc(take_jump_r_uc), 
    .o_take_branch_uc(take_branch_uc), 
    .o_lec_reg_debug(lec_reg_debug),
    
    // Archivo de registros
    .write_reg(writeRegister_MEMWB),        // Registro destino para la escritura
    .write_data(writeData_MEMWB),      // Datos a escribir en el registro destino
    .i_regWrite(regWrite_MEMWB),             // señal que habilita la escritura en el register file
    .i_block_escritura(block_latchs_debug),
    // Outputs para jumps a etapa IF 
    .takeJump(takeJump_IDEX),
    .jumpAddress(jumpAddress_IDEX),
    
    // Outputs hacia etapa EX
    .o_srcA(srcA_IDEX),
    .o_srcB(srcB_IDEX),
    .o_dato2(dato2_IDEX),
    .o_pcplus4(pc_IDEX),
    .o_instruction(instruction_IDEX),
    
    // Outputs de señales de control
    .o_takeBranch(takeBranch_IDEX),
    .o_typeBranch(typeBranch_IDEX),
    .o_gpr31(gpr31_IDEX),
    .o_memtoreg(memToReg_IDEX),
    .o_takejumpR(takeJumpR_IDEX),
    .o_regDst(regDst_IDEX),
    .o_ALUOp(ALUOp_IDEX),
    .o_memWrite(memWrite_IDEX),
    .o_memRead(memRead_IDEX),
    .o_regWrite(regWrite_IDEX),
    .o_halt(halt_IDEX),
    .o_memWidth(memWidth_IDEX)
);

// Instancia de la etapa Execute
EtapaEXECUTE etapaEXECUTE (
    .clk(clk),
    .rst(reset_out_debug),
    .block(block_latchs_debug),
    .i_srcA(srcA_IDEX),
    .i_srcB(srcB_IDEX),
    .i_dato2(dato2_IDEX),
    .i_pcplus4(pc_IDEX),
    .i_instruction(instruction_IDEX),
    .i_halt(halt_IDEX),

    // señales de control
    .i_regDst(regDst_IDEX),
    .i_takeBranch(takeBranch_IDEX),
    .i_typeBranch(typeBranch_IDEX),
    .i_memToReg(memToReg_IDEX),
    .i_gpr31(gpr31_IDEX),
    .i_ALUOp(ALUOp_IDEX),
    .i_memWrite(memWrite_IDEX),
    .i_memRead(memRead_IDEX),
    .i_takeJumpR(takeJumpR_IDEX),
    .i_regWrite(regWrite_IDEX),
    .i_memWidth(memWidth_IDEX),

    // entradas unidad de forwarding
    .i_forward_a_sel(forward_a_sel),
    .i_forward_a_dato_mem(result_EXMEM),
    .i_forward_a_dato_wb(writeData_MEMWB),
    .i_forward_b_sel(forward_b_sel),
    .i_forward_b_dato_mem(result_EXMEM),
    .i_forward_b_dato_wb(writeData_MEMWB),
    .i_forward_c_sel(forward_c_sel),
    .i_forward_c_dato_mem(result_EXMEM),
    .i_forward_c_dato_wb(writeData_MEMWB),
    
    .i_block_latch(block_latchs_debug),
    .i_reset_latch(reset_latch_exmem),

    // outputs para atras
    .o_takeJumpR(takeJumpR_EXMEM),
    .o_jumpAddressR(jumpAddressR_EXMEM),
    .o_takeBranch(takeBranch_EXMEM),
    .o_branchAddress(branchAddress_EXMEM),

    // outputs para adelante
    .o_pcplus4(pc_EXMEM),
    .o_result(result_EXMEM),
    .o_writeRegister(writeRegister_EXMEM),
    .o_dato2(dato2_EXMEM),
    .o_carry(carry_EXMEM),
    .o_halt(halt_EXMEM),

    // outputs que pasan derecho al latch EX-MEM
    .o_memToReg(memToReg_EXMEM),
    .o_regWrite(regWrite_EXMEM),
    //.o_regDst(regDst_EXMEM),
    .o_memWrite(memWrite_EXMEM),
    .o_memRead(memRead_EXMEM),
    .o_memWidth(memWidth_EXMEM)
    
);

// Instancia de la etapa Memory
EtapaMEM etapaMEM (
    .clk(clk),
    .rst(reset_out_debug),
    .block( block_latchs_debug),
    
    // entradas a la memoria de datos
    .i_result(result_EXMEM),
    .i_writeData(dato2_EXMEM),
    .i_memWrite(memWrite_EXMEM),
    .i_memWidth(memWidth_EXMEM),

    // entradas al latch
    .i_writeRegister(writeRegister_EXMEM),
    .i_regWrite(regWrite_EXMEM),
    
    //unidad de debug
    .i_sel_dir_mem(sel_dir_mem_datos_debug),
    .i_dir_mem(dir_mem_datos_debug),
    .o_lec_mem(lec_mem_datos_debug),

    // mux
    .i_memToReg(memToReg_EXMEM),

    // salidas del latch
    .o_writeRegister(writeRegister_MEMWB),
    .o_writeData(writeData_MEMWB),
    .o_regWrite(regWrite_MEMWB)
    
);


UnidadDeForwarding unidadForwarding (
    .i_rs(instruction_IDEX[25:21]),
    .i_rt(instruction_IDEX[20:16]),
    .i_rd_exmem(writeRegister_EXMEM),
    .i_reg_write_exmem(regWrite_EXMEM),
    .i_rd_memwb(writeRegister_MEMWB),
    .i_reg_write_memwb(regWrite_MEMWB),
    .i_reg_dst(regDst_IDEX),
    .i_mem_write_idex(memWrite_IDEX),
    
    .o_forward_a(forward_a_sel),
    .o_forward_b(forward_b_sel),
    .o_forward_c(forward_c_sel)
);

UnidadDeteccionDeRiesgos udr(reset_out_debug, take_jump_r_uc, take_branch_uc, memToReg_EXMEM, regDst_IDEX, instruction_IDEX[25:21], instruction_IDEX[20:16], writeRegister_EXMEM, post_bloqueo_1_1,
                                        block_pc_udr, block_latch_1_udr, block_latch_2_udr, reset_signals, reset_latch_exmem, post_bloqueo_1_0);
    
UnidadDeDebug udd(clk, rst, eor, recept_byte, sending_flag, pc, lec_reg_debug, lec_mem_datos_debug, halt_EXMEM,
                        send_start_debug, send_byte_debug, reset_out_debug, reset_pc_debug, block_latchs_debug, sel_dir_mem_instr_debug, flag_esc_mem_instr_debug,
                        dir_mem_instr_debug, dato_mem_instr_debug, sel_dir_un_reg_debug, dir_un_reg_debug, sel_dir_mem_datos_debug, dir_mem_datos_debug, o_state);
    

UART uart (
    .clk(clk),
    .reset(rst),
    .rx(i_rx), // entra rx desde la PC
    
    //estos son los bytes que va a enviar la unidad de debug que ahora es la nueva interfaz entre mips y PC
    .data_in(send_byte_debug), //entra el dato de la unidad de debug para ser transmitido
    .alu_result_ready(send_start_debug), // senial que indica que ese dato ya esta disponible

    .tx(o_tx), //sale la senial del transmisor hacia la PC
    .rx_done_tick(eor), //sale la senial que el dato en el receptor esta listo, hacia la interfaz
    .data_sent(sending_flag), // senial que el transmisor usa para indicar a la udd que el dato ya fue enviado
    .data_out_rx(recept_byte) // el dato completo que sale del receptor
);

endmodule
