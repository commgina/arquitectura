`timescale 1ns/1ns

module tb_top;

    reg clk;
    reg reset;
    reg rx;
    wire tx;
 

    // Instancia del top
    top #(
        .NB_OP(32),
        .NB_OPCode(6)
    ) uut (
        .clk(clk),
        .reset(reset),
        .rx(rx),
        .tx(tx)
       
    );

    // Generador de pulsos de reloj
    always #5 clk = ~clk;

    // Testbench
    initial begin
        clk = 0;
        reset = 1;
        rx = 0;

        // Desactivar el reset
        #10 reset = 0;

        // Esperar un poco
        #10;

        // Configurar valores de entrada
        rx = 1;
        #10 rx = 0;

        // Esperar procesamiento
        #100;

        // Mostrar resultados
        $display("Resultado de la ALU: %h", uut.alu_result);

        // Finalizar simulación
        $finish;
    end

endmodule
