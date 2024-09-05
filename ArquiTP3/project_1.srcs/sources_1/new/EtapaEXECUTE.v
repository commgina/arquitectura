

module EtapaEXECUTE(

    input wire clk,
    input wire rst,
    input wire block,
    input wire [31:0] i_srcA,
    input wire [31:0] i_srcB,
    input wire [31:0] i_dato2,
    input wire [31:0] i_pcplus4,
    input wire [31:0] i_instruction,
    input wire i_halt,

    // señales de control
    input wire i_regDst,
    input wire i_takeBranch,
    input wire i_typeBranch,
    input wire i_memToReg,
    input wire i_gpr31,
    input wire [5:0] i_ALUOp,
    input wire i_memWrite,
    input wire i_memRead,
    input wire i_takeJumpR,
    input wire i_regWrite,
    input wire [3:0] i_memWidth,
    
    // entradas unidad de forwarding

    input wire [1:0] i_forward_a_sel,
    input wire [31:0] i_forward_a_dato_mem,
    input wire [31:0] i_forward_a_dato_wb,
    input wire [1:0] i_forward_b_sel,
    input wire [31:0] i_forward_b_dato_mem,
    input wire [31:0] i_forward_b_dato_wb,
    input wire [1:0] i_forward_c_sel,
    input wire [31:0] i_forward_c_dato_mem,
    input wire [31:0] i_forward_c_dato_wb,
    // outputs para atras
    output wire o_takeJumpR,
    output wire [31:0] o_jumpAddressR,
    output wire o_takeBranch,
    output wire [31:0] o_branchAddress,

    // outputs para adelante
    output wire [31:0] o_pcplus4,
    output wire [31:0] o_result,
    output wire [4:0] o_writeRegister,
    output wire [31:0] o_dato2,
    output wire o_carry,

    // outputs que pasan derecho al latch EX-MEM
    output wire o_memToReg,
    output wire o_regWrite,
    //output wire o_regDst,
    output wire o_memWrite,
    output wire o_memRead,
    output wire o_halt,
    output wire [3:0] o_memWidth,
    
    //latch
    input wire i_block_latch,
    input wire i_reset_latch
);

    // cables internos
    wire zero;
    wire carry;
    wire [31:0] operando_a, operando_b, dato2_forward;

    wire branch_output_0;
    //wire branch_output_1;

   wire [31:0] resultado;

   wire [17:0] branch_address_shifted;
   wire [31:0] branch_address_extended;

   reg literal_0 = 1'b0;
   reg [4:0] literal_31 = 5'b11111;

   wire [4:0] reg_esc_0;
   wire [4:0] reg_esc_1;

    // señales de control de la ALU
    // Multiplexores para los operandos de la ALU
    mux3 #(.WIDTH(32)) mux_operando1 (
        .in0(i_srcA),
        .in1(i_forward_a_dato_wb),         // Resultado de EX/MEM
        .in2(i_forward_a_dato_mem),        // Resultado de MEM/WB
        .sel(i_forward_a_sel),
        .out(operando_a)
    );

    mux3 #(.WIDTH(32)) mux_operando2 (
        .in0(i_srcB),
        .in1(i_forward_a_dato_wb),         // Resultado de EX/MEM
        .in2(i_forward_b_dato_mem),        // Resultado de MEM/WB
        .sel(i_forward_b_sel),
        .out(operando_b)
    );

    // Mux para el dato 2 (store data)
    mux3 #(.WIDTH(32)) mux_dato2 (
        .in0(i_dato2),
        .in1(i_forward_c_dato_wb),         // Resultado de EX/MEM
        .in2(i_forward_c_dato_mem),        // Resultado de MEM/WB
        .sel(i_forward_c_sel),
        .out(dato2_forward)
    );

    // ALU
    ALU alu (
        .i_srcA(operando_a),
        .i_srcB(operando_b),
        .i_ALUOp(i_ALUOp), //se;al de control q viene del latch anterior
        .ALUResult(resultado),
        .carry(carry),
        .zero(zero)
    );


    assign o_takeJumpR = i_takeJumpR;
    assign o_jumpAddressR = operando_a;


    //jumpR
    mux2 #1 mux_branch_0(i_typeBranch, zero, !zero, branch_output_0);
    mux2 #1 mux_branch_1(i_takeBranch, literal_0, branch_output_0, o_takeBranch);

    

    //branch
    shift2left #16 shift0(i_instruction[15:0], branch_address_shifted);
    sign_extend #18 ext0(branch_address_shifted,branch_address_extended);
    adder sumador0(branch_address_extended,i_pcplus4,o_branchAddress);

    //multiplexores para registro de escritura
    mux2 #5 mux_writereg0(i_regDst,i_instruction[20:16],i_instruction[15:11],reg_esc_0);
    mux2 #5 mux_writereg1(i_gpr31,reg_esc_0,literal_31,reg_esc_1);

    LatchEX_MEM ex_mem (
        .clk(clk),
        .rst(rst),
        .block(block),
        .i_pcplus4(i_pcplus4),
        .i_result(resultado),
        .i_carry(carry),    
        .i_dato2(dato2_forward),
        .i_memWidth(i_memWidth),
        .i_halt(i_halt),

        .i_writeRegister(reg_esc_1),
        .i_memToReg(i_memToReg),
        .i_regWrite(i_regWrite),
        .i_memWrite(i_memWrite),
        .i_memRead(i_memRead),

        .o_halt(o_halt),
        .o_pcplus4(o_pcplus4),
        .o_result(o_result),
        .o_carry(o_carry),
        .o_writeRegister(o_writeRegister),
        .o_dato2(o_dato2),
        .o_memToReg(o_memToReg),
        .o_regWrite(o_regWrite),
        .o_memWrite(o_memWrite),
        .o_memRead(o_memRead),
        .o_memWidth(o_memWidth)
    );


endmodule
