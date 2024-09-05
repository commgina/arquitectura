module EtapaFETCH(

   //inputs comunes
    
    input clk,
    input rst,
    input block_pc,
    input rst_pc,
    

    input i_block_read,
    //Latch_IF
    input i_block_latch,
    
    //Next-pc-logic
    input takeBranch,
    input takeJump,
    input takeJumpR,
    input [31:0] takeBranchAddress,
    input [31:0] takeJumpAddressR,
    input [31:0] takeJumpAddress,
    
    //memoria de instrucciones
    input uart_write_enable,
    input [31:0] uart_data_in,
    input debugAddressEnable,
    input [31:0] debugAddress, //direccion proporcionada por la unidad de debug para escribir la memoria de inst.
    
    output [31:0] o_instruction,
    output [31:0] o_pcplus4,
    
    output wire [31:0] o_pc
    
    );
    
    
    wire [31:0] pc_p4;
    wire [31:0] next_pc;       
    wire [31:0] address; 
    wire [31:0] instruction;   
    wire [31:0] mux_0;
    wire [31:0] mux_1;
    
    
    reg [31:0] cuatro = 31'h00000004;
    
    PC program_counter (clk,(rst | rst_pc),block_pc,next_pc,o_pc);
    
    mux2 muxAddrSource (debugAddressEnable,o_pc,debugAddress,address);
    
    instruction_memory instruction_memory(clk,rst,address,uart_write_enable,uart_data_in,instruction,i_block_read);
    
    IF_ID latchIFID(clk,rst,i_block_latch,instruction,pc_p4,o_instruction,o_pcplus4);
    
    adder sumador_pc(o_pc,cuatro,pc_p4);
    
    mux2 mux0(takeJump, pc_p4,  takeJumpAddress, mux_0);
    
    mux2 mux1(takeJumpR, mux_0, takeJumpAddressR,mux_1);
    
    mux2 mux3(takeBranch, mux_1,takeBranchAddress,next_pc);
    

endmodule
