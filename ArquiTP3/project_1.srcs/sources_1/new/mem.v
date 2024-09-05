module EtapaMEM (
    input wire clk,
    input wire rst,
    input wire block,

    // entradas a la memoria de datos
    input wire [31:0] i_result, // dirección de memoria/resultado de la ALU
    input wire [31:0] i_writeData,
    input wire i_memWrite,
    input wire [3:0] i_memWidth,

    // entradas al latch
    input wire [4:0] i_writeRegister,
    input wire i_regWrite,
    

    //UnidadDeDebug
    input wire i_sel_dir_mem,
    input wire [31:0] i_dir_mem, 

    // mux
    input wire i_memToReg,
    
     //UnidadDeDebug
    output wire [31:0] o_lec_mem,

    // salidas
    output wire [4:0] o_writeRegister,
    output wire [31:0] o_writeData,
    output wire o_regWrite
    
    //output wire [31:0] o_dato_wb_reg
    //output wire [4:0] o_reg_esc_reg,
    //output wire o_reg_write_reg
   
    
);

    wire [31:0] read_data;
    wire [31:0] mux_output;
    
    wire [3:0] mem_width;
    
    wire [31:0] direccion_memoria;
    wire mem_write;
    wire literal_0;
    wire [3:0] literal_1100;
    
    assign literal_1100 = 4'b1100;
    assign literal_0 = 1'b0;
    assign o_lec_mem = read_data;

    mux2 Mux_1(i_sel_dir_mem,i_result, i_dir_mem, direccion_memoria); //para especificar si la dir memoria proviene de la udd o del resultado de la alu
    
    mux2 #1 Mux_3(i_sel_dir_mem,i_memWrite , literal_0, mem_write);
    
    mux2 #4 Mux_2(i_sel_dir_mem,i_memWidth, literal_1100, mem_width);
    
    

    // Instancia del multiplexor
    //si mem to reg es 1, la salida es el dato leido de memoria, si no, es el resultado que viene de la alu
    

    // Instancia de la memoria de datos
    MemoriaDeDatos mem (
        .clk(clk),
        .rst(rst),
        .i_direccion(direccion_memoria),
        .i_escritura(i_writeData),
        .i_mem_write(mem_write),
        .i_mem_width(mem_width),
        .o_dato(read_data)
    );
    
    //con este multiplexor selecciono si quiero leer un dato de memoria o el resultado de la alu
    mux2 mux (
        .i_sel(i_memToReg),
        .i_dato_0(i_result),
        .i_dato_1(read_data),
        .o_dato(mux_output)
    );

    // Instancia del latch MEM_WB
    LatchMEM_WB latch (
        .clk(clk),
        .rst(rst),
        .block(block),
        .i_read_data(mux_output), //esto puede ser tanto el dato leido de memoria como e l resultado de la alu
        .i_writeRegister(i_writeRegister),
        .i_regWrite(i_regWrite),
        .o_regWrite(o_regWrite),
        .o_read_data(o_writeData), // salida combinada del latch y del multiplexor
        .o_writeRegister(o_writeRegister)
    );

endmodule
