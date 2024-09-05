
module register_file(

    input clk,
    input rst,
    input [4:0] register_A1_dir, //direccion del registro rs
    input [4:0] register_A2_dir, //direccion del registro rt
    input [4:0] write_register_dir, //A3
    input [31:0] write_data, //wd3
    input write_enable,
    input i_block_write,
    output reg [31:0] read_data1, //dato leido 1 osea srcA
    output reg [31:0] read_data2 // dato leido 2 o srcB
);

    //
    reg [31:0] registers [31:0];
    integer i;

    always @(posedge clk) begin
        if (rst) begin
            // Reinicio de los registros
            for (i = 0; i < 32; i = i + 1) begin
                registers[i] <= 32'h00000000;
            end
        end else begin
            
            // Escritura en el registro de escritura si está habilitada
            if (write_enable  & (write_register_dir != 5'b00000 ) & !i_block_write) begin
                registers[write_register_dir] <= write_data;
            end 
        end
    end
    
    always @(negedge clk) begin
        if(rst) begin
            read_data1 <= 32'h00000000;
            read_data2 <= 32'h00000000;
            
        end else begin
            read_data1 <= registers[register_A1_dir];
            read_data2 <= registers[register_A2_dir];    
        end
    
    end


endmodule
