// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sun Dec 24 13:21:22 2023
// Host        : gina-Lenovo-V14-ADA running 64-bit Linux Mint 21.2
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/gina/Arqui/ArquiTP2/TP2.sim/sim_1/impl/func/xsim/tb_uart_func_impl.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ALU
   (\op1_reg_reg[30] ,
    \op1_reg_reg[15] ,
    \op1_reg_reg[19] ,
    \op1_reg_reg[19]_0 ,
    \op1_reg_reg[23] ,
    \op1_reg_reg[23]_0 ,
    \op1_reg_reg[23]_1 ,
    \op1_reg_reg[27] ,
    \op1_reg_reg[27]_0 ,
    Q,
    \alu_result_reg[0]_i_4 ,
    S,
    \alu_result_reg[4]_i_4 ,
    \alu_result_reg[8]_i_4 ,
    \alu_result_reg[12]_i_4 ,
    \alu_result_reg[16]_i_3_0 ,
    \alu_result_reg[20]_i_5_0 ,
    \alu_result_reg[24]_i_5 ,
    \alu_result_reg[28]_i_3 ,
    \alu_result_reg_reg[15] );
  output [23:0]\op1_reg_reg[30] ;
  output \op1_reg_reg[15] ;
  output \op1_reg_reg[19] ;
  output \op1_reg_reg[19]_0 ;
  output \op1_reg_reg[23] ;
  output \op1_reg_reg[23]_0 ;
  output \op1_reg_reg[23]_1 ;
  output \op1_reg_reg[27] ;
  output \op1_reg_reg[27]_0 ;
  input [30:0]Q;
  input [0:0]\alu_result_reg[0]_i_4 ;
  input [3:0]S;
  input [3:0]\alu_result_reg[4]_i_4 ;
  input [3:0]\alu_result_reg[8]_i_4 ;
  input [3:0]\alu_result_reg[12]_i_4 ;
  input [3:0]\alu_result_reg[16]_i_3_0 ;
  input [3:0]\alu_result_reg[20]_i_5_0 ;
  input [3:0]\alu_result_reg[24]_i_5 ;
  input [3:0]\alu_result_reg[28]_i_3 ;
  input \alu_result_reg_reg[15] ;

  wire [30:0]Q;
  wire [3:0]S;
  wire _carry__0_n_0;
  wire _carry__1_n_0;
  wire _carry__2_n_0;
  wire _carry__3_n_0;
  wire _carry__4_n_0;
  wire _carry__5_n_0;
  wire _carry_n_0;
  wire [0:0]\alu_result_reg[0]_i_4 ;
  wire [3:0]\alu_result_reg[12]_i_4 ;
  wire [3:0]\alu_result_reg[16]_i_3_0 ;
  wire [3:0]\alu_result_reg[20]_i_5_0 ;
  wire [3:0]\alu_result_reg[24]_i_5 ;
  wire [3:0]\alu_result_reg[28]_i_3 ;
  wire [3:0]\alu_result_reg[4]_i_4 ;
  wire [3:0]\alu_result_reg[8]_i_4 ;
  wire \alu_result_reg_reg[15] ;
  wire [27:15]data0;
  wire \op1_reg_reg[15] ;
  wire \op1_reg_reg[19] ;
  wire \op1_reg_reg[19]_0 ;
  wire \op1_reg_reg[23] ;
  wire \op1_reg_reg[23]_0 ;
  wire \op1_reg_reg[23]_1 ;
  wire \op1_reg_reg[27] ;
  wire \op1_reg_reg[27]_0 ;
  wire [23:0]\op1_reg_reg[30] ;
  wire [2:0]NLW__carry_CO_UNCONNECTED;
  wire [2:0]NLW__carry__0_CO_UNCONNECTED;
  wire [2:0]NLW__carry__1_CO_UNCONNECTED;
  wire [2:0]NLW__carry__2_CO_UNCONNECTED;
  wire [2:0]NLW__carry__3_CO_UNCONNECTED;
  wire [2:0]NLW__carry__4_CO_UNCONNECTED;
  wire [2:0]NLW__carry__5_CO_UNCONNECTED;
  wire [3:0]NLW__carry__6_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,NLW__carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(Q[0]),
        .DI({Q[3:1],\alu_result_reg[0]_i_4 }),
        .O(\op1_reg_reg[30] [3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({_carry__0_n_0,NLW__carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(\op1_reg_reg[30] [7:4]),
        .S(\alu_result_reg[4]_i_4 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__1
       (.CI(_carry__0_n_0),
        .CO({_carry__1_n_0,NLW__carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(\op1_reg_reg[30] [11:8]),
        .S(\alu_result_reg[8]_i_4 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__2
       (.CI(_carry__1_n_0),
        .CO({_carry__2_n_0,NLW__carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O({data0[15],\op1_reg_reg[30] [14:12]}),
        .S(\alu_result_reg[12]_i_4 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__3
       (.CI(_carry__2_n_0),
        .CO({_carry__3_n_0,NLW__carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O({\op1_reg_reg[30] [16],data0[18],\op1_reg_reg[30] [15],data0[16]}),
        .S(\alu_result_reg[16]_i_3_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__4
       (.CI(_carry__3_n_0),
        .CO({_carry__4_n_0,NLW__carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O({data0[23],\op1_reg_reg[30] [17],data0[21:20]}),
        .S(\alu_result_reg[20]_i_5_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__5
       (.CI(_carry__4_n_0),
        .CO({_carry__5_n_0,NLW__carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O({data0[27],\op1_reg_reg[30] [19],data0[25],\op1_reg_reg[30] [18]}),
        .S(\alu_result_reg[24]_i_5 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 _carry__6
       (.CI(_carry__5_n_0),
        .CO(NLW__carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,Q[30:28]}),
        .O(\op1_reg_reg[30] [23:20]),
        .S(\alu_result_reg[28]_i_3 ));
  LUT2 #(
    .INIT(4'h2)) 
    \alu_result_reg[15]_i_5 
       (.I0(data0[15]),
        .I1(\alu_result_reg_reg[15] ),
        .O(\op1_reg_reg[15] ));
  LUT2 #(
    .INIT(4'h2)) 
    \alu_result_reg[16]_i_3 
       (.I0(data0[16]),
        .I1(\alu_result_reg_reg[15] ),
        .O(\op1_reg_reg[19] ));
  LUT2 #(
    .INIT(4'h2)) 
    \alu_result_reg[18]_i_3 
       (.I0(data0[18]),
        .I1(\alu_result_reg_reg[15] ),
        .O(\op1_reg_reg[19]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \alu_result_reg[20]_i_5 
       (.I0(data0[20]),
        .I1(\alu_result_reg_reg[15] ),
        .O(\op1_reg_reg[23] ));
  LUT2 #(
    .INIT(4'h2)) 
    \alu_result_reg[21]_i_3 
       (.I0(data0[21]),
        .I1(\alu_result_reg_reg[15] ),
        .O(\op1_reg_reg[23]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \alu_result_reg[23]_i_3 
       (.I0(data0[23]),
        .I1(\alu_result_reg_reg[15] ),
        .O(\op1_reg_reg[23]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \alu_result_reg[25]_i_3 
       (.I0(data0[25]),
        .I1(\alu_result_reg_reg[15] ),
        .O(\op1_reg_reg[27] ));
  LUT2 #(
    .INIT(4'h2)) 
    \alu_result_reg[27]_i_3 
       (.I0(data0[27]),
        .I1(\alu_result_reg_reg[15] ),
        .O(\op1_reg_reg[27]_0 ));
endmodule

module UART
   (tx_OBUF,
    Q,
    \opcode_reg_reg[0] ,
    \opcode_reg_reg[1] ,
    S,
    \op2_reg_reg[7] ,
    \op2_reg_reg[11] ,
    \op2_reg_reg[15] ,
    \op2_reg_reg[19] ,
    \op2_reg_reg[23] ,
    \op2_reg_reg[27] ,
    \op2_reg_reg[31] ,
    CLK,
    reset_IBUF,
    \alu_result_reg_reg[15] ,
    \alu_result_reg_reg[16] ,
    \alu_result_reg_reg[18] ,
    \alu_result_reg_reg[20] ,
    \alu_result_reg_reg[21] ,
    \alu_result_reg_reg[23] ,
    \alu_result_reg_reg[25] ,
    \alu_result_reg_reg[27] ,
    \alu_result_reg_reg[31] ,
    D);
  output tx_OBUF;
  output [30:0]Q;
  output \opcode_reg_reg[0] ;
  output [0:0]\opcode_reg_reg[1] ;
  output [3:0]S;
  output [3:0]\op2_reg_reg[7] ;
  output [3:0]\op2_reg_reg[11] ;
  output [3:0]\op2_reg_reg[15] ;
  output [3:0]\op2_reg_reg[19] ;
  output [3:0]\op2_reg_reg[23] ;
  output [3:0]\op2_reg_reg[27] ;
  output [3:0]\op2_reg_reg[31] ;
  input CLK;
  input reset_IBUF;
  input \alu_result_reg_reg[15] ;
  input \alu_result_reg_reg[16] ;
  input \alu_result_reg_reg[18] ;
  input \alu_result_reg_reg[20] ;
  input \alu_result_reg_reg[21] ;
  input \alu_result_reg_reg[23] ;
  input \alu_result_reg_reg[25] ;
  input \alu_result_reg_reg[27] ;
  input [23:0]\alu_result_reg_reg[31] ;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire [30:0]Q;
  wire [3:0]S;
  wire [31:0]\alu_instance/result ;
  wire alu_result_ready;
  wire \alu_result_reg_reg[15] ;
  wire \alu_result_reg_reg[16] ;
  wire \alu_result_reg_reg[18] ;
  wire \alu_result_reg_reg[20] ;
  wire \alu_result_reg_reg[21] ;
  wire \alu_result_reg_reg[23] ;
  wire \alu_result_reg_reg[25] ;
  wire \alu_result_reg_reg[27] ;
  wire [23:0]\alu_result_reg_reg[31] ;
  wire counter_instance_n_0;
  wire [31:6]op1_reg;
  wire [3:0]\op2_reg_reg[11] ;
  wire [3:0]\op2_reg_reg[15] ;
  wire [3:0]\op2_reg_reg[19] ;
  wire [3:0]\op2_reg_reg[23] ;
  wire [3:0]\op2_reg_reg[27] ;
  wire [3:0]\op2_reg_reg[31] ;
  wire [3:0]\op2_reg_reg[7] ;
  wire \opcode_reg_reg[0] ;
  wire [0:0]\opcode_reg_reg[1] ;
  wire reset_IBUF;
  wire rx_uart_instance_n_26;
  wire rx_uart_instance_n_27;
  wire rx_uart_instance_n_28;
  wire rx_uart_instance_n_29;
  wire rx_uart_instance_n_30;
  wire rx_uart_instance_n_31;
  wire rx_uart_instance_n_32;
  wire tx_OBUF;

  mod_m_counter counter_instance
       (.CLK(CLK),
        .\counter_reg[8]_0 (counter_instance_n_0),
        .reset_IBUF(reset_IBUF));
  interface rx_intf
       (.CLK(CLK),
        .D(\alu_instance/result ),
        .Q(Q),
        .S(S),
        .alu_result_ready(alu_result_ready),
        .\alu_result_reg_reg[15] (\alu_result_reg_reg[15] ),
        .\alu_result_reg_reg[16] (\alu_result_reg_reg[16] ),
        .\alu_result_reg_reg[18] (\alu_result_reg_reg[18] ),
        .\alu_result_reg_reg[20] (\alu_result_reg_reg[20] ),
        .\alu_result_reg_reg[21] (\alu_result_reg_reg[21] ),
        .\alu_result_reg_reg[23] (\alu_result_reg_reg[23] ),
        .\alu_result_reg_reg[25] (\alu_result_reg_reg[25] ),
        .\alu_result_reg_reg[27] (\alu_result_reg_reg[27] ),
        .\alu_result_reg_reg[31] (\alu_result_reg_reg[31] ),
        .\op2_reg_reg[11]_0 (\op2_reg_reg[11] ),
        .\op2_reg_reg[15]_0 (\op2_reg_reg[15] ),
        .\op2_reg_reg[19]_0 (\op2_reg_reg[19] ),
        .\op2_reg_reg[23]_0 (\op2_reg_reg[23] ),
        .\op2_reg_reg[27]_0 (\op2_reg_reg[27] ),
        .\op2_reg_reg[31]_0 (\op2_reg_reg[31] ),
        .\op2_reg_reg[31]_1 ({op1_reg,rx_uart_instance_n_26,rx_uart_instance_n_27,rx_uart_instance_n_28,rx_uart_instance_n_29,rx_uart_instance_n_30,rx_uart_instance_n_31}),
        .\op2_reg_reg[7]_0 (\op2_reg_reg[7] ),
        .\opcode_reg_reg[0]_0 (\opcode_reg_reg[0] ),
        .\opcode_reg_reg[1]_0 (\opcode_reg_reg[1] ),
        .reset_IBUF(reset_IBUF),
        .\state_reg[1]_0 (rx_uart_instance_n_32));
  rx_uart rx_uart_instance
       (.CLK(CLK),
        .D(D),
        .\FSM_sequential_state_reg_reg[0]_0 (counter_instance_n_0),
        .\FSM_sequential_state_reg_reg[1]_0 (rx_uart_instance_n_32),
        .\b_reg_reg[31]_0 ({op1_reg,rx_uart_instance_n_26,rx_uart_instance_n_27,rx_uart_instance_n_28,rx_uart_instance_n_29,rx_uart_instance_n_30,rx_uart_instance_n_31}),
        .reset_IBUF(reset_IBUF));
  tx_uart tx_uart_instance
       (.CLK(CLK),
        .D(\alu_instance/result ),
        .\FSM_sequential_state_reg_reg[0]_0 (counter_instance_n_0),
        .alu_result_ready(alu_result_ready),
        .reset_IBUF(reset_IBUF),
        .tx_OBUF(tx_OBUF));
endmodule

module interface
   (alu_result_ready,
    D,
    Q,
    \opcode_reg_reg[0]_0 ,
    \opcode_reg_reg[1]_0 ,
    S,
    \op2_reg_reg[7]_0 ,
    \op2_reg_reg[11]_0 ,
    \op2_reg_reg[15]_0 ,
    \op2_reg_reg[19]_0 ,
    \op2_reg_reg[23]_0 ,
    \op2_reg_reg[27]_0 ,
    \op2_reg_reg[31]_0 ,
    CLK,
    reset_IBUF,
    \alu_result_reg_reg[15] ,
    \alu_result_reg_reg[16] ,
    \alu_result_reg_reg[18] ,
    \alu_result_reg_reg[20] ,
    \alu_result_reg_reg[21] ,
    \alu_result_reg_reg[23] ,
    \alu_result_reg_reg[25] ,
    \alu_result_reg_reg[27] ,
    \alu_result_reg_reg[31] ,
    \state_reg[1]_0 ,
    \op2_reg_reg[31]_1 );
  output alu_result_ready;
  output [31:0]D;
  output [30:0]Q;
  output \opcode_reg_reg[0]_0 ;
  output [0:0]\opcode_reg_reg[1]_0 ;
  output [3:0]S;
  output [3:0]\op2_reg_reg[7]_0 ;
  output [3:0]\op2_reg_reg[11]_0 ;
  output [3:0]\op2_reg_reg[15]_0 ;
  output [3:0]\op2_reg_reg[19]_0 ;
  output [3:0]\op2_reg_reg[23]_0 ;
  output [3:0]\op2_reg_reg[27]_0 ;
  output [3:0]\op2_reg_reg[31]_0 ;
  input CLK;
  input reset_IBUF;
  input \alu_result_reg_reg[15] ;
  input \alu_result_reg_reg[16] ;
  input \alu_result_reg_reg[18] ;
  input \alu_result_reg_reg[20] ;
  input \alu_result_reg_reg[21] ;
  input \alu_result_reg_reg[23] ;
  input \alu_result_reg_reg[25] ;
  input \alu_result_reg_reg[27] ;
  input [23:0]\alu_result_reg_reg[31] ;
  input \state_reg[1]_0 ;
  input [31:0]\op2_reg_reg[31]_1 ;

  wire CLK;
  wire [31:0]D;
  wire [30:0]Q;
  wire [3:0]\^S ;
  wire alu_ready_reg_i_1_n_0;
  wire alu_result_ready;
  wire \alu_result_reg[0]_i_10_n_0 ;
  wire \alu_result_reg[0]_i_2_n_0 ;
  wire \alu_result_reg[0]_i_3_n_0 ;
  wire \alu_result_reg[0]_i_4_n_0 ;
  wire \alu_result_reg[0]_i_5_n_0 ;
  wire \alu_result_reg[0]_i_6_n_0 ;
  wire \alu_result_reg[0]_i_7_n_0 ;
  wire \alu_result_reg[0]_i_8_n_0 ;
  wire \alu_result_reg[0]_i_9_n_0 ;
  wire \alu_result_reg[10]_i_2_n_0 ;
  wire \alu_result_reg[10]_i_3_n_0 ;
  wire \alu_result_reg[10]_i_4_n_0 ;
  wire \alu_result_reg[10]_i_5_n_0 ;
  wire \alu_result_reg[10]_i_6_n_0 ;
  wire \alu_result_reg[10]_i_7_n_0 ;
  wire \alu_result_reg[10]_i_8_n_0 ;
  wire \alu_result_reg[11]_i_2_n_0 ;
  wire \alu_result_reg[11]_i_3_n_0 ;
  wire \alu_result_reg[11]_i_4_n_0 ;
  wire \alu_result_reg[11]_i_5_n_0 ;
  wire \alu_result_reg[11]_i_6_n_0 ;
  wire \alu_result_reg[11]_i_7_n_0 ;
  wire \alu_result_reg[11]_i_8_n_0 ;
  wire \alu_result_reg[12]_i_10_n_0 ;
  wire \alu_result_reg[12]_i_2_n_0 ;
  wire \alu_result_reg[12]_i_3_n_0 ;
  wire \alu_result_reg[12]_i_4_n_0 ;
  wire \alu_result_reg[12]_i_5_n_0 ;
  wire \alu_result_reg[12]_i_6_n_0 ;
  wire \alu_result_reg[12]_i_7_n_0 ;
  wire \alu_result_reg[12]_i_8_n_0 ;
  wire \alu_result_reg[12]_i_9_n_0 ;
  wire \alu_result_reg[13]_i_2_n_0 ;
  wire \alu_result_reg[13]_i_3_n_0 ;
  wire \alu_result_reg[13]_i_4_n_0 ;
  wire \alu_result_reg[13]_i_5_n_0 ;
  wire \alu_result_reg[13]_i_6_n_0 ;
  wire \alu_result_reg[13]_i_7_n_0 ;
  wire \alu_result_reg[14]_i_10_n_0 ;
  wire \alu_result_reg[14]_i_11_n_0 ;
  wire \alu_result_reg[14]_i_12_n_0 ;
  wire \alu_result_reg[14]_i_2_n_0 ;
  wire \alu_result_reg[14]_i_3_n_0 ;
  wire \alu_result_reg[14]_i_4_n_0 ;
  wire \alu_result_reg[14]_i_5_n_0 ;
  wire \alu_result_reg[14]_i_6_n_0 ;
  wire \alu_result_reg[14]_i_7_n_0 ;
  wire \alu_result_reg[14]_i_8_n_0 ;
  wire \alu_result_reg[14]_i_9_n_0 ;
  wire \alu_result_reg[15]_i_2_n_0 ;
  wire \alu_result_reg[15]_i_3_n_0 ;
  wire \alu_result_reg[15]_i_4_n_0 ;
  wire \alu_result_reg[15]_i_6_n_0 ;
  wire \alu_result_reg[15]_i_7_n_0 ;
  wire \alu_result_reg[15]_i_8_n_0 ;
  wire \alu_result_reg[15]_i_9_n_0 ;
  wire \alu_result_reg[16]_i_2_n_0 ;
  wire \alu_result_reg[16]_i_4_n_0 ;
  wire \alu_result_reg[16]_i_5_n_0 ;
  wire \alu_result_reg[16]_i_6_n_0 ;
  wire \alu_result_reg[16]_i_7_n_0 ;
  wire \alu_result_reg[16]_i_8_n_0 ;
  wire \alu_result_reg[16]_i_9_n_0 ;
  wire \alu_result_reg[17]_i_10_n_0 ;
  wire \alu_result_reg[17]_i_11_n_0 ;
  wire \alu_result_reg[17]_i_12_n_0 ;
  wire \alu_result_reg[17]_i_13_n_0 ;
  wire \alu_result_reg[17]_i_2_n_0 ;
  wire \alu_result_reg[17]_i_3_n_0 ;
  wire \alu_result_reg[17]_i_4_n_0 ;
  wire \alu_result_reg[17]_i_5_n_0 ;
  wire \alu_result_reg[17]_i_6_n_0 ;
  wire \alu_result_reg[17]_i_7_n_0 ;
  wire \alu_result_reg[17]_i_8_n_0 ;
  wire \alu_result_reg[17]_i_9_n_0 ;
  wire \alu_result_reg[18]_i_10_n_0 ;
  wire \alu_result_reg[18]_i_2_n_0 ;
  wire \alu_result_reg[18]_i_4_n_0 ;
  wire \alu_result_reg[18]_i_5_n_0 ;
  wire \alu_result_reg[18]_i_6_n_0 ;
  wire \alu_result_reg[18]_i_7_n_0 ;
  wire \alu_result_reg[18]_i_8_n_0 ;
  wire \alu_result_reg[18]_i_9_n_0 ;
  wire \alu_result_reg[19]_i_10_n_0 ;
  wire \alu_result_reg[19]_i_11_n_0 ;
  wire \alu_result_reg[19]_i_12_n_0 ;
  wire \alu_result_reg[19]_i_2_n_0 ;
  wire \alu_result_reg[19]_i_3_n_0 ;
  wire \alu_result_reg[19]_i_4_n_0 ;
  wire \alu_result_reg[19]_i_5_n_0 ;
  wire \alu_result_reg[19]_i_6_n_0 ;
  wire \alu_result_reg[19]_i_7_n_0 ;
  wire \alu_result_reg[19]_i_8_n_0 ;
  wire \alu_result_reg[19]_i_9_n_0 ;
  wire \alu_result_reg[1]_i_2_n_0 ;
  wire \alu_result_reg[1]_i_3_n_0 ;
  wire \alu_result_reg[1]_i_4_n_0 ;
  wire \alu_result_reg[1]_i_5_n_0 ;
  wire \alu_result_reg[1]_i_6_n_0 ;
  wire \alu_result_reg[1]_i_7_n_0 ;
  wire \alu_result_reg[1]_i_8_n_0 ;
  wire \alu_result_reg[1]_i_9_n_0 ;
  wire \alu_result_reg[20]_i_10_n_0 ;
  wire \alu_result_reg[20]_i_2_n_0 ;
  wire \alu_result_reg[20]_i_3_n_0 ;
  wire \alu_result_reg[20]_i_4_n_0 ;
  wire \alu_result_reg[20]_i_6_n_0 ;
  wire \alu_result_reg[20]_i_7_n_0 ;
  wire \alu_result_reg[20]_i_8_n_0 ;
  wire \alu_result_reg[20]_i_9_n_0 ;
  wire \alu_result_reg[21]_i_2_n_0 ;
  wire \alu_result_reg[21]_i_4_n_0 ;
  wire \alu_result_reg[21]_i_5_n_0 ;
  wire \alu_result_reg[21]_i_6_n_0 ;
  wire \alu_result_reg[21]_i_7_n_0 ;
  wire \alu_result_reg[21]_i_8_n_0 ;
  wire \alu_result_reg[21]_i_9_n_0 ;
  wire \alu_result_reg[22]_i_10_n_0 ;
  wire \alu_result_reg[22]_i_11_n_0 ;
  wire \alu_result_reg[22]_i_2_n_0 ;
  wire \alu_result_reg[22]_i_3_n_0 ;
  wire \alu_result_reg[22]_i_4_n_0 ;
  wire \alu_result_reg[22]_i_5_n_0 ;
  wire \alu_result_reg[22]_i_6_n_0 ;
  wire \alu_result_reg[22]_i_7_n_0 ;
  wire \alu_result_reg[22]_i_8_n_0 ;
  wire \alu_result_reg[22]_i_9_n_0 ;
  wire \alu_result_reg[23]_i_2_n_0 ;
  wire \alu_result_reg[23]_i_4_n_0 ;
  wire \alu_result_reg[23]_i_5_n_0 ;
  wire \alu_result_reg[23]_i_6_n_0 ;
  wire \alu_result_reg[23]_i_7_n_0 ;
  wire \alu_result_reg[23]_i_8_n_0 ;
  wire \alu_result_reg[23]_i_9_n_0 ;
  wire \alu_result_reg[24]_i_2_n_0 ;
  wire \alu_result_reg[24]_i_3_n_0 ;
  wire \alu_result_reg[24]_i_4_n_0 ;
  wire \alu_result_reg[24]_i_5_n_0 ;
  wire \alu_result_reg[24]_i_6_n_0 ;
  wire \alu_result_reg[24]_i_7_n_0 ;
  wire \alu_result_reg[24]_i_8_n_0 ;
  wire \alu_result_reg[24]_i_9_n_0 ;
  wire \alu_result_reg[25]_i_10_n_0 ;
  wire \alu_result_reg[25]_i_11_n_0 ;
  wire \alu_result_reg[25]_i_12_n_0 ;
  wire \alu_result_reg[25]_i_2_n_0 ;
  wire \alu_result_reg[25]_i_4_n_0 ;
  wire \alu_result_reg[25]_i_5_n_0 ;
  wire \alu_result_reg[25]_i_6_n_0 ;
  wire \alu_result_reg[25]_i_7_n_0 ;
  wire \alu_result_reg[25]_i_8_n_0 ;
  wire \alu_result_reg[25]_i_9_n_0 ;
  wire \alu_result_reg[26]_i_10_n_0 ;
  wire \alu_result_reg[26]_i_11_n_0 ;
  wire \alu_result_reg[26]_i_2_n_0 ;
  wire \alu_result_reg[26]_i_3_n_0 ;
  wire \alu_result_reg[26]_i_4_n_0 ;
  wire \alu_result_reg[26]_i_5_n_0 ;
  wire \alu_result_reg[26]_i_6_n_0 ;
  wire \alu_result_reg[26]_i_7_n_0 ;
  wire \alu_result_reg[26]_i_8_n_0 ;
  wire \alu_result_reg[26]_i_9_n_0 ;
  wire \alu_result_reg[27]_i_2_n_0 ;
  wire \alu_result_reg[27]_i_4_n_0 ;
  wire \alu_result_reg[27]_i_5_n_0 ;
  wire \alu_result_reg[27]_i_6_n_0 ;
  wire \alu_result_reg[27]_i_7_n_0 ;
  wire \alu_result_reg[28]_i_2_n_0 ;
  wire \alu_result_reg[28]_i_3_n_0 ;
  wire \alu_result_reg[28]_i_4_n_0 ;
  wire \alu_result_reg[28]_i_5_n_0 ;
  wire \alu_result_reg[28]_i_6_n_0 ;
  wire \alu_result_reg[28]_i_7_n_0 ;
  wire \alu_result_reg[28]_i_8_n_0 ;
  wire \alu_result_reg[28]_i_9_n_0 ;
  wire \alu_result_reg[29]_i_10_n_0 ;
  wire \alu_result_reg[29]_i_2_n_0 ;
  wire \alu_result_reg[29]_i_3_n_0 ;
  wire \alu_result_reg[29]_i_4_n_0 ;
  wire \alu_result_reg[29]_i_5_n_0 ;
  wire \alu_result_reg[29]_i_6_n_0 ;
  wire \alu_result_reg[29]_i_7_n_0 ;
  wire \alu_result_reg[29]_i_8_n_0 ;
  wire \alu_result_reg[29]_i_9_n_0 ;
  wire \alu_result_reg[2]_i_10_n_0 ;
  wire \alu_result_reg[2]_i_2_n_0 ;
  wire \alu_result_reg[2]_i_3_n_0 ;
  wire \alu_result_reg[2]_i_4_n_0 ;
  wire \alu_result_reg[2]_i_5_n_0 ;
  wire \alu_result_reg[2]_i_6_n_0 ;
  wire \alu_result_reg[2]_i_7_n_0 ;
  wire \alu_result_reg[2]_i_8_n_0 ;
  wire \alu_result_reg[2]_i_9_n_0 ;
  wire \alu_result_reg[30]_i_10_n_0 ;
  wire \alu_result_reg[30]_i_11_n_0 ;
  wire \alu_result_reg[30]_i_2_n_0 ;
  wire \alu_result_reg[30]_i_3_n_0 ;
  wire \alu_result_reg[30]_i_4_n_0 ;
  wire \alu_result_reg[30]_i_5_n_0 ;
  wire \alu_result_reg[30]_i_6_n_0 ;
  wire \alu_result_reg[30]_i_7_n_0 ;
  wire \alu_result_reg[30]_i_8_n_0 ;
  wire \alu_result_reg[30]_i_9_n_0 ;
  wire \alu_result_reg[31]_i_10_n_0 ;
  wire \alu_result_reg[31]_i_11_n_0 ;
  wire \alu_result_reg[31]_i_13_n_0 ;
  wire \alu_result_reg[31]_i_14_n_0 ;
  wire \alu_result_reg[31]_i_15_n_0 ;
  wire \alu_result_reg[31]_i_16_n_0 ;
  wire \alu_result_reg[31]_i_17_n_0 ;
  wire \alu_result_reg[31]_i_18_n_0 ;
  wire \alu_result_reg[31]_i_19_n_0 ;
  wire \alu_result_reg[31]_i_2_n_0 ;
  wire \alu_result_reg[31]_i_3_n_0 ;
  wire \alu_result_reg[31]_i_4_n_0 ;
  wire \alu_result_reg[31]_i_5_n_0 ;
  wire \alu_result_reg[31]_i_6_n_0 ;
  wire \alu_result_reg[31]_i_7_n_0 ;
  wire \alu_result_reg[31]_i_8_n_0 ;
  wire \alu_result_reg[31]_i_9_n_0 ;
  wire \alu_result_reg[3]_i_2_n_0 ;
  wire \alu_result_reg[3]_i_3_n_0 ;
  wire \alu_result_reg[3]_i_4_n_0 ;
  wire \alu_result_reg[3]_i_5_n_0 ;
  wire \alu_result_reg[3]_i_6_n_0 ;
  wire \alu_result_reg[3]_i_7_n_0 ;
  wire \alu_result_reg[3]_i_8_n_0 ;
  wire \alu_result_reg[4]_i_2_n_0 ;
  wire \alu_result_reg[4]_i_3_n_0 ;
  wire \alu_result_reg[4]_i_4_n_0 ;
  wire \alu_result_reg[4]_i_5_n_0 ;
  wire \alu_result_reg[4]_i_6_n_0 ;
  wire \alu_result_reg[4]_i_7_n_0 ;
  wire \alu_result_reg[4]_i_8_n_0 ;
  wire \alu_result_reg[5]_i_10_n_0 ;
  wire \alu_result_reg[5]_i_11_n_0 ;
  wire \alu_result_reg[5]_i_12_n_0 ;
  wire \alu_result_reg[5]_i_13_n_0 ;
  wire \alu_result_reg[5]_i_14_n_0 ;
  wire \alu_result_reg[5]_i_15_n_0 ;
  wire \alu_result_reg[5]_i_2_n_0 ;
  wire \alu_result_reg[5]_i_3_n_0 ;
  wire \alu_result_reg[5]_i_4_n_0 ;
  wire \alu_result_reg[5]_i_5_n_0 ;
  wire \alu_result_reg[5]_i_6_n_0 ;
  wire \alu_result_reg[5]_i_7_n_0 ;
  wire \alu_result_reg[5]_i_8_n_0 ;
  wire \alu_result_reg[5]_i_9_n_0 ;
  wire \alu_result_reg[6]_i_2_n_0 ;
  wire \alu_result_reg[6]_i_3_n_0 ;
  wire \alu_result_reg[6]_i_4_n_0 ;
  wire \alu_result_reg[6]_i_5_n_0 ;
  wire \alu_result_reg[6]_i_6_n_0 ;
  wire \alu_result_reg[6]_i_7_n_0 ;
  wire \alu_result_reg[6]_i_8_n_0 ;
  wire \alu_result_reg[7]_i_2_n_0 ;
  wire \alu_result_reg[7]_i_3_n_0 ;
  wire \alu_result_reg[7]_i_4_n_0 ;
  wire \alu_result_reg[7]_i_5_n_0 ;
  wire \alu_result_reg[7]_i_6_n_0 ;
  wire \alu_result_reg[7]_i_7_n_0 ;
  wire \alu_result_reg[8]_i_2_n_0 ;
  wire \alu_result_reg[8]_i_3_n_0 ;
  wire \alu_result_reg[8]_i_4_n_0 ;
  wire \alu_result_reg[8]_i_5_n_0 ;
  wire \alu_result_reg[8]_i_6_n_0 ;
  wire \alu_result_reg[8]_i_7_n_0 ;
  wire \alu_result_reg[8]_i_8_n_0 ;
  wire \alu_result_reg[8]_i_9_n_0 ;
  wire \alu_result_reg[9]_i_2_n_0 ;
  wire \alu_result_reg[9]_i_3_n_0 ;
  wire \alu_result_reg[9]_i_4_n_0 ;
  wire \alu_result_reg[9]_i_5_n_0 ;
  wire \alu_result_reg[9]_i_6_n_0 ;
  wire \alu_result_reg[9]_i_7_n_0 ;
  wire \alu_result_reg[9]_i_8_n_0 ;
  wire \alu_result_reg_reg[15] ;
  wire \alu_result_reg_reg[16] ;
  wire \alu_result_reg_reg[18] ;
  wire \alu_result_reg_reg[20] ;
  wire \alu_result_reg_reg[21] ;
  wire \alu_result_reg_reg[23] ;
  wire \alu_result_reg_reg[25] ;
  wire \alu_result_reg_reg[27] ;
  wire [23:0]\alu_result_reg_reg[31] ;
  wire [31:31]op1;
  wire \op1_reg[31]_i_1_n_0 ;
  wire [31:0]op2;
  wire op2_reg;
  wire [3:0]\op2_reg_reg[11]_0 ;
  wire [3:0]\op2_reg_reg[15]_0 ;
  wire [3:0]\op2_reg_reg[19]_0 ;
  wire [3:0]\op2_reg_reg[23]_0 ;
  wire [3:0]\op2_reg_reg[27]_0 ;
  wire [3:0]\op2_reg_reg[31]_0 ;
  wire [31:0]\op2_reg_reg[31]_1 ;
  wire [3:0]\op2_reg_reg[7]_0 ;
  wire opcode_reg;
  wire \opcode_reg_reg[0]_0 ;
  wire [0:0]\opcode_reg_reg[1]_0 ;
  wire \opcode_reg_reg_n_0_[0] ;
  wire \opcode_reg_reg_n_0_[2] ;
  wire \opcode_reg_reg_n_0_[3] ;
  wire \opcode_reg_reg_n_0_[4] ;
  wire \opcode_reg_reg_n_0_[5] ;
  wire reset_IBUF;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;

  assign S[3:1] = \^S [3:1];
  assign S[0] = op2[0];
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_1
       (.I0(op2[7]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[7]),
        .O(\op2_reg_reg[7]_0 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_2
       (.I0(op2[6]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[6]),
        .O(\op2_reg_reg[7]_0 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_3
       (.I0(op2[5]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[5]),
        .O(\op2_reg_reg[7]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__0_i_4
       (.I0(op2[4]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[4]),
        .O(\op2_reg_reg[7]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__1_i_1
       (.I0(op2[11]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[11]),
        .O(\op2_reg_reg[11]_0 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__1_i_2
       (.I0(op2[10]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[10]),
        .O(\op2_reg_reg[11]_0 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__1_i_3
       (.I0(op2[9]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[9]),
        .O(\op2_reg_reg[11]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__1_i_4
       (.I0(op2[8]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[8]),
        .O(\op2_reg_reg[11]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__2_i_1
       (.I0(op2[15]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[15]),
        .O(\op2_reg_reg[15]_0 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__2_i_2
       (.I0(op2[14]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[14]),
        .O(\op2_reg_reg[15]_0 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__2_i_3
       (.I0(op2[13]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[13]),
        .O(\op2_reg_reg[15]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__2_i_4
       (.I0(op2[12]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[12]),
        .O(\op2_reg_reg[15]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__3_i_1
       (.I0(op2[19]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[19]),
        .O(\op2_reg_reg[19]_0 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__3_i_2
       (.I0(op2[18]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[18]),
        .O(\op2_reg_reg[19]_0 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__3_i_3
       (.I0(op2[17]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[17]),
        .O(\op2_reg_reg[19]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__3_i_4
       (.I0(op2[16]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[16]),
        .O(\op2_reg_reg[19]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__4_i_1
       (.I0(op2[23]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[23]),
        .O(\op2_reg_reg[23]_0 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__4_i_2
       (.I0(op2[22]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[22]),
        .O(\op2_reg_reg[23]_0 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__4_i_3
       (.I0(op2[21]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[21]),
        .O(\op2_reg_reg[23]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__4_i_4
       (.I0(op2[20]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[20]),
        .O(\op2_reg_reg[23]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__5_i_1
       (.I0(op2[27]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[27]),
        .O(\op2_reg_reg[27]_0 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__5_i_2
       (.I0(op2[26]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[26]),
        .O(\op2_reg_reg[27]_0 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__5_i_3
       (.I0(op2[25]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[25]),
        .O(\op2_reg_reg[27]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__5_i_4
       (.I0(op2[24]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[24]),
        .O(\op2_reg_reg[27]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__6_i_1
       (.I0(op2[31]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(op1),
        .O(\op2_reg_reg[31]_0 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__6_i_2
       (.I0(op2[30]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[30]),
        .O(\op2_reg_reg[31]_0 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__6_i_3
       (.I0(op2[29]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[29]),
        .O(\op2_reg_reg[31]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry__6_i_4
       (.I0(op2[28]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[28]),
        .O(\op2_reg_reg[31]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_1
       (.I0(op2[3]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[3]),
        .O(\^S [3]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_2
       (.I0(op2[2]),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(Q[2]),
        .O(\^S [2]));
  LUT3 #(
    .INIT(8'h96)) 
    _carry_i_3
       (.I0(\opcode_reg_reg[1]_0 ),
        .I1(op2[1]),
        .I2(Q[1]),
        .O(\^S [1]));
  (* \PinAttr:I3:HOLD_DETOUR  = "178" *) 
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    alu_ready_reg_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg[1]_0 ),
        .I3(alu_result_ready),
        .O(alu_ready_reg_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    alu_ready_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(alu_ready_reg_i_1_n_0),
        .Q(alu_result_ready));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF45)) 
    \alu_result_reg[0]_i_1 
       (.I0(\alu_result_reg[0]_i_2_n_0 ),
        .I1(\alu_result_reg[0]_i_3_n_0 ),
        .I2(op2[0]),
        .I3(\alu_result_reg[28]_i_2_n_0 ),
        .I4(\alu_result_reg[0]_i_4_n_0 ),
        .I5(\alu_result_reg[0]_i_5_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h503F5F3F)) 
    \alu_result_reg[0]_i_10 
       (.I0(Q[24]),
        .I1(Q[8]),
        .I2(op2[3]),
        .I3(op2[4]),
        .I4(Q[16]),
        .O(\alu_result_reg[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF2FFF2F2F2FFF2FF)) 
    \alu_result_reg[0]_i_2 
       (.I0(\alu_result_reg[31]_i_8_n_0 ),
        .I1(\alu_result_reg[30]_i_11_n_0 ),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(\alu_result_reg[0]_i_6_n_0 ),
        .I4(\alu_result_reg[0]_i_7_n_0 ),
        .I5(op2[1]),
        .O(\alu_result_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h50305F30503F5F3F)) 
    \alu_result_reg[0]_i_3 
       (.I0(\alu_result_reg[5]_i_7_n_0 ),
        .I1(\alu_result_reg[2]_i_9_n_0 ),
        .I2(op2[1]),
        .I3(op2[2]),
        .I4(\alu_result_reg[5]_i_6_n_0 ),
        .I5(\alu_result_reg[0]_i_8_n_0 ),
        .O(\alu_result_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC00AC00AFFFFC00A)) 
    \alu_result_reg[0]_i_4 
       (.I0(\alu_result_reg[31]_i_13_n_0 ),
        .I1(\alu_result_reg[29]_i_10_n_0 ),
        .I2(Q[0]),
        .I3(op2[0]),
        .I4(\alu_result_reg_reg[31] [0]),
        .I5(\opcode_reg_reg[0]_0 ),
        .O(\alu_result_reg[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFC28)) 
    \alu_result_reg[0]_i_5 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[0]),
        .I2(op2[0]),
        .I3(\alu_result_reg[31]_i_4_n_0 ),
        .O(\alu_result_reg[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hCCDCCCDF)) 
    \alu_result_reg[0]_i_6 
       (.I0(\alu_result_reg[4]_i_8_n_0 ),
        .I1(\alu_result_reg[0]_i_9_n_0 ),
        .I2(op2[2]),
        .I3(op2[1]),
        .I4(\alu_result_reg[0]_i_10_n_0 ),
        .O(\alu_result_reg[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_result_reg[0]_i_7 
       (.I0(\alu_result_reg[6]_i_7_n_0 ),
        .I1(op2[2]),
        .I2(\alu_result_reg[1]_i_7_n_0 ),
        .O(\alu_result_reg[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5533000F5533FF0F)) 
    \alu_result_reg[0]_i_8 
       (.I0(Q[25]),
        .I1(Q[9]),
        .I2(Q[1]),
        .I3(op2[4]),
        .I4(op2[3]),
        .I5(Q[17]),
        .O(\alu_result_reg[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \alu_result_reg[0]_i_9 
       (.I0(op2[0]),
        .I1(op2[4]),
        .I2(op2[3]),
        .I3(op2[2]),
        .I4(op2[1]),
        .I5(Q[0]),
        .O(\alu_result_reg[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \alu_result_reg[10]_i_1 
       (.I0(\alu_result_reg[10]_i_2_n_0 ),
        .I1(\alu_result_reg[10]_i_3_n_0 ),
        .I2(\alu_result_reg[10]_i_4_n_0 ),
        .I3(\alu_result_reg[28]_i_2_n_0 ),
        .I4(\alu_result_reg[12]_i_5_n_0 ),
        .I5(\alu_result_reg[10]_i_5_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hCCCCCCCDCCCCCFCD)) 
    \alu_result_reg[10]_i_2 
       (.I0(\alu_result_reg[10]_i_6_n_0 ),
        .I1(\alu_result_reg[10]_i_7_n_0 ),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(op2[0]),
        .I4(\alu_result_reg[31]_i_8_n_0 ),
        .I5(\alu_result_reg[11]_i_6_n_0 ),
        .O(\alu_result_reg[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \alu_result_reg[10]_i_3 
       (.I0(\alu_result_reg[30]_i_11_n_0 ),
        .I1(op2[0]),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(\alu_result_reg[9]_i_5_n_0 ),
        .O(\alu_result_reg[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC00AC00AFFFFC00A)) 
    \alu_result_reg[10]_i_4 
       (.I0(\alu_result_reg[31]_i_13_n_0 ),
        .I1(\alu_result_reg[29]_i_10_n_0 ),
        .I2(Q[10]),
        .I3(op2[10]),
        .I4(\alu_result_reg_reg[31] [10]),
        .I5(\opcode_reg_reg[0]_0 ),
        .O(\alu_result_reg[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0CCFFAAF0CC00AA)) 
    \alu_result_reg[10]_i_5 
       (.I0(\alu_result_reg[10]_i_8_n_0 ),
        .I1(\alu_result_reg[12]_i_10_n_0 ),
        .I2(\alu_result_reg[17]_i_9_n_0 ),
        .I3(op2[1]),
        .I4(op2[2]),
        .I5(\alu_result_reg[12]_i_9_n_0 ),
        .O(\alu_result_reg[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \alu_result_reg[10]_i_6 
       (.I0(\alu_result_reg[16]_i_9_n_0 ),
        .I1(\alu_result_reg[5]_i_11_n_0 ),
        .I2(op2[1]),
        .I3(op2[2]),
        .I4(\alu_result_reg[14]_i_12_n_0 ),
        .I5(\alu_result_reg[5]_i_12_n_0 ),
        .O(\alu_result_reg[10]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFC28)) 
    \alu_result_reg[10]_i_7 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[10]),
        .I2(op2[10]),
        .I3(\alu_result_reg[31]_i_4_n_0 ),
        .O(\alu_result_reg[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5030503F5F305F3F)) 
    \alu_result_reg[10]_i_8 
       (.I0(op1),
        .I1(Q[19]),
        .I2(op2[3]),
        .I3(op2[4]),
        .I4(Q[11]),
        .I5(Q[27]),
        .O(\alu_result_reg[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \alu_result_reg[11]_i_1 
       (.I0(\alu_result_reg[11]_i_2_n_0 ),
        .I1(\alu_result_reg[11]_i_3_n_0 ),
        .I2(\alu_result_reg[11]_i_4_n_0 ),
        .I3(\alu_result_reg[28]_i_2_n_0 ),
        .I4(\alu_result_reg[12]_i_5_n_0 ),
        .I5(\alu_result_reg[11]_i_5_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hCCCCCCCDCCCCCFCD)) 
    \alu_result_reg[11]_i_2 
       (.I0(\alu_result_reg[11]_i_6_n_0 ),
        .I1(\alu_result_reg[11]_i_7_n_0 ),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(op2[0]),
        .I4(\alu_result_reg[31]_i_8_n_0 ),
        .I5(\alu_result_reg[12]_i_7_n_0 ),
        .O(\alu_result_reg[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \alu_result_reg[11]_i_3 
       (.I0(\alu_result_reg[30]_i_11_n_0 ),
        .I1(op2[0]),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(\alu_result_reg[10]_i_5_n_0 ),
        .O(\alu_result_reg[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF44444FFF4444444)) 
    \alu_result_reg[11]_i_4 
       (.I0(\opcode_reg_reg[0]_0 ),
        .I1(\alu_result_reg_reg[31] [11]),
        .I2(\alu_result_reg[29]_i_10_n_0 ),
        .I3(Q[11]),
        .I4(op2[11]),
        .I5(\alu_result_reg[31]_i_13_n_0 ),
        .O(\alu_result_reg[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \alu_result_reg[11]_i_5 
       (.I0(\alu_result_reg[14]_i_8_n_0 ),
        .I1(\alu_result_reg[14]_i_10_n_0 ),
        .I2(\alu_result_reg[14]_i_11_n_0 ),
        .I3(op2[1]),
        .I4(op2[2]),
        .I5(\alu_result_reg[11]_i_8_n_0 ),
        .O(\alu_result_reg[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFA0CFAFC0A0C0)) 
    \alu_result_reg[11]_i_6 
       (.I0(\alu_result_reg[17]_i_13_n_0 ),
        .I1(\alu_result_reg[13]_i_7_n_0 ),
        .I2(op2[1]),
        .I3(op2[2]),
        .I4(\alu_result_reg[15]_i_9_n_0 ),
        .I5(\alu_result_reg[5]_i_9_n_0 ),
        .O(\alu_result_reg[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFC28)) 
    \alu_result_reg[11]_i_7 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[11]),
        .I2(op2[11]),
        .I3(\alu_result_reg[31]_i_4_n_0 ),
        .O(\alu_result_reg[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h50305F30503F5F3F)) 
    \alu_result_reg[11]_i_8 
       (.I0(op1),
        .I1(Q[28]),
        .I2(op2[4]),
        .I3(op2[3]),
        .I4(Q[20]),
        .I5(Q[12]),
        .O(\alu_result_reg[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \alu_result_reg[12]_i_1 
       (.I0(\alu_result_reg[12]_i_2_n_0 ),
        .I1(\alu_result_reg[12]_i_3_n_0 ),
        .I2(\alu_result_reg[12]_i_4_n_0 ),
        .I3(\alu_result_reg[28]_i_2_n_0 ),
        .I4(\alu_result_reg[12]_i_5_n_0 ),
        .I5(\alu_result_reg[12]_i_6_n_0 ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h50535F53)) 
    \alu_result_reg[12]_i_10 
       (.I0(op1),
        .I1(Q[15]),
        .I2(op2[4]),
        .I3(op2[3]),
        .I4(Q[23]),
        .O(\alu_result_reg[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCDCCCCCFCD)) 
    \alu_result_reg[12]_i_2 
       (.I0(\alu_result_reg[12]_i_7_n_0 ),
        .I1(\alu_result_reg[12]_i_8_n_0 ),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(op2[0]),
        .I4(\alu_result_reg[31]_i_8_n_0 ),
        .I5(\alu_result_reg[13]_i_5_n_0 ),
        .O(\alu_result_reg[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \alu_result_reg[12]_i_3 
       (.I0(\alu_result_reg[30]_i_11_n_0 ),
        .I1(op2[0]),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(\alu_result_reg[11]_i_5_n_0 ),
        .O(\alu_result_reg[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF44444FFF4444444)) 
    \alu_result_reg[12]_i_4 
       (.I0(\opcode_reg_reg[0]_0 ),
        .I1(\alu_result_reg_reg[31] [12]),
        .I2(\alu_result_reg[29]_i_10_n_0 ),
        .I3(Q[12]),
        .I4(op2[12]),
        .I5(\alu_result_reg[31]_i_13_n_0 ),
        .O(\alu_result_reg[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \alu_result_reg[12]_i_5 
       (.I0(\alu_result_reg[30]_i_11_n_0 ),
        .I1(op2[0]),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .O(\alu_result_reg[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \alu_result_reg[12]_i_6 
       (.I0(\alu_result_reg[12]_i_9_n_0 ),
        .I1(\alu_result_reg[17]_i_11_n_0 ),
        .I2(\alu_result_reg[12]_i_10_n_0 ),
        .I3(op2[1]),
        .I4(op2[2]),
        .I5(\alu_result_reg[17]_i_9_n_0 ),
        .O(\alu_result_reg[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \alu_result_reg[12]_i_7 
       (.I0(\alu_result_reg[14]_i_12_n_0 ),
        .I1(\alu_result_reg[16]_i_9_n_0 ),
        .I2(\alu_result_reg[18]_i_10_n_0 ),
        .I3(op2[1]),
        .I4(op2[2]),
        .I5(\alu_result_reg[5]_i_12_n_0 ),
        .O(\alu_result_reg[12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFC28)) 
    \alu_result_reg[12]_i_8 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[12]),
        .I2(op2[12]),
        .I3(\alu_result_reg[31]_i_4_n_0 ),
        .O(\alu_result_reg[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h50305F30503F5F3F)) 
    \alu_result_reg[12]_i_9 
       (.I0(op1),
        .I1(Q[29]),
        .I2(op2[4]),
        .I3(op2[3]),
        .I4(Q[21]),
        .I5(Q[13]),
        .O(\alu_result_reg[12]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \alu_result_reg[13]_i_1 
       (.I0(\alu_result_reg[13]_i_2_n_0 ),
        .I1(\alu_result_reg[13]_i_3_n_0 ),
        .I2(\alu_result_reg[28]_i_2_n_0 ),
        .I3(\alu_result_reg[13]_i_4_n_0 ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'h05030000)) 
    \alu_result_reg[13]_i_2 
       (.I0(\alu_result_reg[14]_i_5_n_0 ),
        .I1(\alu_result_reg[12]_i_6_n_0 ),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(op2[0]),
        .I4(\alu_result_reg[30]_i_11_n_0 ),
        .O(\alu_result_reg[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000503)) 
    \alu_result_reg[13]_i_3 
       (.I0(\alu_result_reg[14]_i_6_n_0 ),
        .I1(\alu_result_reg[13]_i_5_n_0 ),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(op2[0]),
        .I4(\alu_result_reg[31]_i_8_n_0 ),
        .O(\alu_result_reg[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEFFAEAEAEAE)) 
    \alu_result_reg[13]_i_4 
       (.I0(\alu_result_reg[13]_i_6_n_0 ),
        .I1(\alu_result_reg_reg[31] [13]),
        .I2(\opcode_reg_reg[0]_0 ),
        .I3(Q[13]),
        .I4(op2[13]),
        .I5(\alu_result_reg[31]_i_13_n_0 ),
        .O(\alu_result_reg[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0CCFFAAF0CC00AA)) 
    \alu_result_reg[13]_i_5 
       (.I0(\alu_result_reg[13]_i_7_n_0 ),
        .I1(\alu_result_reg[17]_i_13_n_0 ),
        .I2(\alu_result_reg[19]_i_9_n_0 ),
        .I3(op2[1]),
        .I4(op2[2]),
        .I5(\alu_result_reg[15]_i_9_n_0 ),
        .O(\alu_result_reg[13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80A8BCA8)) 
    \alu_result_reg[13]_i_6 
       (.I0(\alu_result_reg[29]_i_10_n_0 ),
        .I1(Q[13]),
        .I2(op2[13]),
        .I3(\alu_result_reg[31]_i_9_n_0 ),
        .I4(\alu_result_reg[31]_i_10_n_0 ),
        .O(\alu_result_reg[13]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF035FF35)) 
    \alu_result_reg[13]_i_7 
       (.I0(Q[13]),
        .I1(Q[21]),
        .I2(op2[3]),
        .I3(op2[4]),
        .I4(Q[29]),
        .O(\alu_result_reg[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \alu_result_reg[14]_i_1 
       (.I0(\alu_result_reg[14]_i_2_n_0 ),
        .I1(\alu_result_reg[14]_i_3_n_0 ),
        .I2(\alu_result_reg[28]_i_2_n_0 ),
        .I3(\alu_result_reg[14]_i_4_n_0 ),
        .I4(\alu_result_reg[17]_i_3_n_0 ),
        .I5(\alu_result_reg[14]_i_5_n_0 ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'h50535F53)) 
    \alu_result_reg[14]_i_10 
       (.I0(op1),
        .I1(Q[16]),
        .I2(op2[4]),
        .I3(op2[3]),
        .I4(Q[24]),
        .O(\alu_result_reg[14]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h50535F53)) 
    \alu_result_reg[14]_i_11 
       (.I0(op1),
        .I1(Q[18]),
        .I2(op2[4]),
        .I3(op2[3]),
        .I4(Q[26]),
        .O(\alu_result_reg[14]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF035FF35)) 
    \alu_result_reg[14]_i_12 
       (.I0(Q[14]),
        .I1(Q[22]),
        .I2(op2[3]),
        .I3(op2[4]),
        .I4(Q[30]),
        .O(\alu_result_reg[14]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \alu_result_reg[14]_i_2 
       (.I0(\alu_result_reg[14]_i_6_n_0 ),
        .I1(\alu_result_reg[31]_i_7_n_0 ),
        .I2(op2[0]),
        .I3(\alu_result_reg[31]_i_8_n_0 ),
        .I4(\alu_result_reg[14]_i_7_n_0 ),
        .O(\alu_result_reg[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000001F110000)) 
    \alu_result_reg[14]_i_3 
       (.I0(\alu_result_reg[15]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_8_n_0 ),
        .I2(\alu_result_reg[15]_i_8_n_0 ),
        .I3(\alu_result_reg[30]_i_11_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[31]_i_7_n_0 ),
        .O(\alu_result_reg[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC00AC00AFFFFC00A)) 
    \alu_result_reg[14]_i_4 
       (.I0(\alu_result_reg[31]_i_13_n_0 ),
        .I1(\alu_result_reg[29]_i_10_n_0 ),
        .I2(Q[14]),
        .I3(op2[14]),
        .I4(\alu_result_reg_reg[31] [14]),
        .I5(\opcode_reg_reg[0]_0 ),
        .O(\alu_result_reg[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \alu_result_reg[14]_i_5 
       (.I0(\alu_result_reg[14]_i_8_n_0 ),
        .I1(\alu_result_reg[14]_i_9_n_0 ),
        .I2(\alu_result_reg[14]_i_10_n_0 ),
        .I3(op2[1]),
        .I4(op2[2]),
        .I5(\alu_result_reg[14]_i_11_n_0 ),
        .O(\alu_result_reg[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \alu_result_reg[14]_i_6 
       (.I0(\alu_result_reg[14]_i_12_n_0 ),
        .I1(\alu_result_reg[20]_i_10_n_0 ),
        .I2(\alu_result_reg[16]_i_9_n_0 ),
        .I3(op2[1]),
        .I4(op2[2]),
        .I5(\alu_result_reg[18]_i_10_n_0 ),
        .O(\alu_result_reg[14]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFC28)) 
    \alu_result_reg[14]_i_7 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[14]),
        .I2(op2[14]),
        .I3(\alu_result_reg[31]_i_4_n_0 ),
        .O(\alu_result_reg[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0055330FFF55330F)) 
    \alu_result_reg[14]_i_8 
       (.I0(Q[30]),
        .I1(Q[22]),
        .I2(Q[14]),
        .I3(op2[3]),
        .I4(op2[4]),
        .I5(op1),
        .O(\alu_result_reg[14]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h50535F53)) 
    \alu_result_reg[14]_i_9 
       (.I0(op1),
        .I1(Q[20]),
        .I2(op2[4]),
        .I3(op2[3]),
        .I4(Q[28]),
        .O(\alu_result_reg[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \alu_result_reg[15]_i_1 
       (.I0(\alu_result_reg[15]_i_2_n_0 ),
        .I1(\alu_result_reg[15]_i_3_n_0 ),
        .I2(\alu_result_reg[15]_i_4_n_0 ),
        .I3(\alu_result_reg_reg[15] ),
        .I4(\alu_result_reg[28]_i_2_n_0 ),
        .I5(\alu_result_reg[15]_i_6_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h004400000044000F)) 
    \alu_result_reg[15]_i_2 
       (.I0(\alu_result_reg[16]_i_8_n_0 ),
        .I1(\alu_result_reg[30]_i_11_n_0 ),
        .I2(\alu_result_reg[15]_i_7_n_0 ),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[31]_i_8_n_0 ),
        .O(\alu_result_reg[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0011000F00110000)) 
    \alu_result_reg[15]_i_3 
       (.I0(\alu_result_reg[16]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_8_n_0 ),
        .I2(\alu_result_reg[15]_i_8_n_0 ),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[30]_i_11_n_0 ),
        .O(\alu_result_reg[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \alu_result_reg[15]_i_4 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[15]),
        .I2(op2[15]),
        .I3(\alu_result_reg[29]_i_10_n_0 ),
        .O(\alu_result_reg[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hCCEFCCE0)) 
    \alu_result_reg[15]_i_6 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_4_n_0 ),
        .I2(op2[15]),
        .I3(Q[15]),
        .I4(\alu_result_reg[31]_i_13_n_0 ),
        .O(\alu_result_reg[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \alu_result_reg[15]_i_7 
       (.I0(\alu_result_reg[15]_i_9_n_0 ),
        .I1(\alu_result_reg[19]_i_11_n_0 ),
        .I2(\alu_result_reg[17]_i_13_n_0 ),
        .I3(op2[1]),
        .I4(op2[2]),
        .I5(\alu_result_reg[19]_i_9_n_0 ),
        .O(\alu_result_reg[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \alu_result_reg[15]_i_8 
       (.I0(\alu_result_reg[17]_i_11_n_0 ),
        .I1(\alu_result_reg[17]_i_9_n_0 ),
        .I2(op2[2]),
        .I3(op2[1]),
        .I4(\alu_result_reg[17]_i_10_n_0 ),
        .I5(\alu_result_reg[12]_i_10_n_0 ),
        .O(\alu_result_reg[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF3F305F5)) 
    \alu_result_reg[15]_i_9 
       (.I0(Q[15]),
        .I1(Q[23]),
        .I2(op2[4]),
        .I3(op1),
        .I4(op2[3]),
        .O(\alu_result_reg[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \alu_result_reg[16]_i_1 
       (.I0(\alu_result_reg[16]_i_2_n_0 ),
        .I1(\alu_result_reg_reg[16] ),
        .I2(\alu_result_reg[28]_i_2_n_0 ),
        .I3(\alu_result_reg[16]_i_4_n_0 ),
        .I4(\alu_result_reg[16]_i_5_n_0 ),
        .I5(\alu_result_reg[16]_i_6_n_0 ),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hC808)) 
    \alu_result_reg[16]_i_2 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[16]),
        .I2(op2[16]),
        .I3(\alu_result_reg[29]_i_10_n_0 ),
        .O(\alu_result_reg[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCEFCCE0)) 
    \alu_result_reg[16]_i_4 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_4_n_0 ),
        .I2(op2[16]),
        .I3(Q[16]),
        .I4(\alu_result_reg[31]_i_13_n_0 ),
        .O(\alu_result_reg[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000001F110000)) 
    \alu_result_reg[16]_i_5 
       (.I0(\alu_result_reg[17]_i_12_n_0 ),
        .I1(\alu_result_reg[31]_i_8_n_0 ),
        .I2(\alu_result_reg[17]_i_4_n_0 ),
        .I3(\alu_result_reg[30]_i_11_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[31]_i_7_n_0 ),
        .O(\alu_result_reg[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000001F00000011)) 
    \alu_result_reg[16]_i_6 
       (.I0(\alu_result_reg[16]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_8_n_0 ),
        .I2(\alu_result_reg[16]_i_8_n_0 ),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[30]_i_11_n_0 ),
        .O(\alu_result_reg[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \alu_result_reg[16]_i_7 
       (.I0(\alu_result_reg[20]_i_10_n_0 ),
        .I1(\alu_result_reg[18]_i_10_n_0 ),
        .I2(op2[2]),
        .I3(op2[1]),
        .I4(\alu_result_reg[22]_i_8_n_0 ),
        .I5(\alu_result_reg[16]_i_9_n_0 ),
        .O(\alu_result_reg[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \alu_result_reg[16]_i_8 
       (.I0(\alu_result_reg[14]_i_9_n_0 ),
        .I1(\alu_result_reg[14]_i_11_n_0 ),
        .I2(op2[2]),
        .I3(op2[1]),
        .I4(\alu_result_reg[22]_i_11_n_0 ),
        .I5(\alu_result_reg[14]_i_10_n_0 ),
        .O(\alu_result_reg[16]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF4F7)) 
    \alu_result_reg[16]_i_9 
       (.I0(Q[24]),
        .I1(op2[3]),
        .I2(op2[4]),
        .I3(Q[16]),
        .O(\alu_result_reg[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFAE)) 
    \alu_result_reg[17]_i_1 
       (.I0(\alu_result_reg[17]_i_2_n_0 ),
        .I1(\alu_result_reg[17]_i_3_n_0 ),
        .I2(\alu_result_reg[17]_i_4_n_0 ),
        .I3(\alu_result_reg[17]_i_5_n_0 ),
        .I4(\alu_result_reg[28]_i_2_n_0 ),
        .I5(\alu_result_reg[17]_i_6_n_0 ),
        .O(D[17]));
  LUT5 #(
    .INIT(32'h50535F53)) 
    \alu_result_reg[17]_i_10 
       (.I0(op1),
        .I1(Q[21]),
        .I2(op2[4]),
        .I3(op2[3]),
        .I4(Q[29]),
        .O(\alu_result_reg[17]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h50535F53)) 
    \alu_result_reg[17]_i_11 
       (.I0(op1),
        .I1(Q[19]),
        .I2(op2[4]),
        .I3(op2[3]),
        .I4(Q[27]),
        .O(\alu_result_reg[17]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \alu_result_reg[17]_i_12 
       (.I0(\alu_result_reg[19]_i_11_n_0 ),
        .I1(\alu_result_reg[17]_i_13_n_0 ),
        .I2(op2[2]),
        .I3(op2[1]),
        .I4(\alu_result_reg[19]_i_10_n_0 ),
        .I5(\alu_result_reg[19]_i_9_n_0 ),
        .O(\alu_result_reg[17]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF4F7)) 
    \alu_result_reg[17]_i_13 
       (.I0(Q[25]),
        .I1(op2[3]),
        .I2(op2[4]),
        .I3(Q[17]),
        .O(\alu_result_reg[17]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \alu_result_reg[17]_i_2 
       (.I0(\alu_result_reg[18]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_8_n_0 ),
        .I2(op2[0]),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(\alu_result_reg[17]_i_7_n_0 ),
        .O(\alu_result_reg[17]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \alu_result_reg[17]_i_3 
       (.I0(\alu_result_reg[31]_i_7_n_0 ),
        .I1(op2[0]),
        .I2(\alu_result_reg[30]_i_11_n_0 ),
        .O(\alu_result_reg[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \alu_result_reg[17]_i_4 
       (.I0(\alu_result_reg[17]_i_8_n_0 ),
        .I1(\alu_result_reg[17]_i_9_n_0 ),
        .I2(op2[1]),
        .I3(op2[2]),
        .I4(\alu_result_reg[17]_i_10_n_0 ),
        .I5(\alu_result_reg[17]_i_11_n_0 ),
        .O(\alu_result_reg[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F001111)) 
    \alu_result_reg[17]_i_5 
       (.I0(\alu_result_reg[17]_i_12_n_0 ),
        .I1(\alu_result_reg[31]_i_8_n_0 ),
        .I2(\alu_result_reg[18]_i_8_n_0 ),
        .I3(\alu_result_reg[30]_i_11_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[31]_i_7_n_0 ),
        .O(\alu_result_reg[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF44444FFF4444444)) 
    \alu_result_reg[17]_i_6 
       (.I0(\opcode_reg_reg[0]_0 ),
        .I1(\alu_result_reg_reg[31] [15]),
        .I2(\alu_result_reg[29]_i_10_n_0 ),
        .I3(Q[17]),
        .I4(op2[17]),
        .I5(\alu_result_reg[31]_i_13_n_0 ),
        .O(\alu_result_reg[17]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFC28)) 
    \alu_result_reg[17]_i_7 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[17]),
        .I2(op2[17]),
        .I3(\alu_result_reg[31]_i_4_n_0 ),
        .O(\alu_result_reg[17]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h01FD)) 
    \alu_result_reg[17]_i_8 
       (.I0(Q[23]),
        .I1(op2[3]),
        .I2(op2[4]),
        .I3(op1),
        .O(\alu_result_reg[17]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h50535F53)) 
    \alu_result_reg[17]_i_9 
       (.I0(op1),
        .I1(Q[17]),
        .I2(op2[4]),
        .I3(op2[3]),
        .I4(Q[25]),
        .O(\alu_result_reg[17]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \alu_result_reg[18]_i_1 
       (.I0(\alu_result_reg[18]_i_2_n_0 ),
        .I1(\alu_result_reg_reg[18] ),
        .I2(\alu_result_reg[28]_i_2_n_0 ),
        .I3(\alu_result_reg[18]_i_4_n_0 ),
        .I4(\alu_result_reg[18]_i_5_n_0 ),
        .I5(\alu_result_reg[18]_i_6_n_0 ),
        .O(D[18]));
  LUT4 #(
    .INIT(16'hF4F7)) 
    \alu_result_reg[18]_i_10 
       (.I0(Q[26]),
        .I1(op2[3]),
        .I2(op2[4]),
        .I3(Q[18]),
        .O(\alu_result_reg[18]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \alu_result_reg[18]_i_2 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[18]),
        .I2(op2[18]),
        .I3(\alu_result_reg[29]_i_10_n_0 ),
        .O(\alu_result_reg[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCEFCCE0)) 
    \alu_result_reg[18]_i_4 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_4_n_0 ),
        .I2(op2[18]),
        .I3(Q[18]),
        .I4(\alu_result_reg[31]_i_13_n_0 ),
        .O(\alu_result_reg[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h004400000044000F)) 
    \alu_result_reg[18]_i_5 
       (.I0(\alu_result_reg[19]_i_7_n_0 ),
        .I1(\alu_result_reg[30]_i_11_n_0 ),
        .I2(\alu_result_reg[18]_i_7_n_0 ),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[31]_i_8_n_0 ),
        .O(\alu_result_reg[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0011000F00110000)) 
    \alu_result_reg[18]_i_6 
       (.I0(\alu_result_reg[19]_i_4_n_0 ),
        .I1(\alu_result_reg[31]_i_8_n_0 ),
        .I2(\alu_result_reg[18]_i_8_n_0 ),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[30]_i_11_n_0 ),
        .O(\alu_result_reg[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5545504555405040)) 
    \alu_result_reg[18]_i_7 
       (.I0(\alu_result_reg[18]_i_9_n_0 ),
        .I1(\alu_result_reg[20]_i_10_n_0 ),
        .I2(op2[1]),
        .I3(op2[2]),
        .I4(\alu_result_reg[22]_i_8_n_0 ),
        .I5(\alu_result_reg[18]_i_10_n_0 ),
        .O(\alu_result_reg[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \alu_result_reg[18]_i_8 
       (.I0(\alu_result_reg[24]_i_9_n_0 ),
        .I1(\alu_result_reg[14]_i_11_n_0 ),
        .I2(op2[1]),
        .I3(op2[2]),
        .I4(\alu_result_reg[22]_i_11_n_0 ),
        .I5(\alu_result_reg[14]_i_9_n_0 ),
        .O(\alu_result_reg[18]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \alu_result_reg[18]_i_9 
       (.I0(Q[24]),
        .I1(op2[1]),
        .I2(op2[2]),
        .I3(op2[3]),
        .I4(op2[4]),
        .O(\alu_result_reg[18]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \alu_result_reg[19]_i_1 
       (.I0(\alu_result_reg[19]_i_2_n_0 ),
        .I1(\alu_result_reg[19]_i_3_n_0 ),
        .I2(\alu_result_reg[19]_i_4_n_0 ),
        .I3(\alu_result_reg[31]_i_2_n_0 ),
        .I4(\alu_result_reg[19]_i_5_n_0 ),
        .I5(\alu_result_reg[19]_i_6_n_0 ),
        .O(D[19]));
  LUT4 #(
    .INIT(16'hCDFD)) 
    \alu_result_reg[19]_i_10 
       (.I0(Q[23]),
        .I1(op2[4]),
        .I2(op2[3]),
        .I3(op1),
        .O(\alu_result_reg[19]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF4F7)) 
    \alu_result_reg[19]_i_11 
       (.I0(Q[29]),
        .I1(op2[3]),
        .I2(op2[4]),
        .I3(Q[21]),
        .O(\alu_result_reg[19]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \alu_result_reg[19]_i_12 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[19]),
        .I2(op2[19]),
        .I3(\alu_result_reg[29]_i_10_n_0 ),
        .O(\alu_result_reg[19]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000001F110000)) 
    \alu_result_reg[19]_i_2 
       (.I0(\alu_result_reg[20]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_8_n_0 ),
        .I2(\alu_result_reg[20]_i_8_n_0 ),
        .I3(\alu_result_reg[30]_i_11_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[31]_i_7_n_0 ),
        .O(\alu_result_reg[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \alu_result_reg[19]_i_3 
       (.I0(\alu_result_reg[30]_i_11_n_0 ),
        .I1(op2[0]),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(\alu_result_reg[19]_i_7_n_0 ),
        .O(\alu_result_reg[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5554505455045004)) 
    \alu_result_reg[19]_i_4 
       (.I0(\alu_result_reg[19]_i_8_n_0 ),
        .I1(\alu_result_reg[19]_i_9_n_0 ),
        .I2(op2[1]),
        .I3(op2[2]),
        .I4(\alu_result_reg[19]_i_10_n_0 ),
        .I5(\alu_result_reg[19]_i_11_n_0 ),
        .O(\alu_result_reg[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAEEF0)) 
    \alu_result_reg[19]_i_5 
       (.I0(\alu_result_reg[31]_i_4_n_0 ),
        .I1(\alu_result_reg[28]_i_7_n_0 ),
        .I2(\alu_result_reg[31]_i_13_n_0 ),
        .I3(op2[19]),
        .I4(Q[19]),
        .O(\alu_result_reg[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAEAEAEAE)) 
    \alu_result_reg[19]_i_6 
       (.I0(\alu_result_reg[19]_i_12_n_0 ),
        .I1(\alu_result_reg_reg[31] [16]),
        .I2(\opcode_reg_reg[0]_0 ),
        .I3(\alu_result_reg[30]_i_11_n_0 ),
        .I4(\alu_result_reg[31]_i_7_n_0 ),
        .I5(op1),
        .O(\alu_result_reg[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0CCFFAAF0CC00AA)) 
    \alu_result_reg[19]_i_7 
       (.I0(\alu_result_reg[17]_i_11_n_0 ),
        .I1(\alu_result_reg[17]_i_8_n_0 ),
        .I2(\alu_result_reg[25]_i_10_n_0 ),
        .I3(op2[1]),
        .I4(op2[2]),
        .I5(\alu_result_reg[17]_i_10_n_0 ),
        .O(\alu_result_reg[19]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \alu_result_reg[19]_i_8 
       (.I0(Q[25]),
        .I1(op2[1]),
        .I2(op2[2]),
        .I3(op2[3]),
        .I4(op2[4]),
        .O(\alu_result_reg[19]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF4F7)) 
    \alu_result_reg[19]_i_9 
       (.I0(Q[27]),
        .I1(op2[3]),
        .I2(op2[4]),
        .I3(Q[19]),
        .O(\alu_result_reg[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \alu_result_reg[1]_i_1 
       (.I0(\alu_result_reg[1]_i_2_n_0 ),
        .I1(\alu_result_reg[30]_i_4_n_0 ),
        .I2(\alu_result_reg[1]_i_3_n_0 ),
        .I3(\alu_result_reg[1]_i_4_n_0 ),
        .I4(\alu_result_reg[1]_i_5_n_0 ),
        .I5(\alu_result_reg[1]_i_6_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFF00F0F0AAAACCCC)) 
    \alu_result_reg[1]_i_2 
       (.I0(\alu_result_reg[4]_i_8_n_0 ),
        .I1(\alu_result_reg[1]_i_7_n_0 ),
        .I2(\alu_result_reg[6]_i_7_n_0 ),
        .I3(\alu_result_reg[5]_i_13_n_0 ),
        .I4(op2[1]),
        .I5(op2[2]),
        .O(\alu_result_reg[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \alu_result_reg[1]_i_3 
       (.I0(\alu_result_reg[31]_i_7_n_0 ),
        .I1(op2[0]),
        .I2(\alu_result_reg[30]_i_11_n_0 ),
        .I3(\alu_result_reg[2]_i_10_n_0 ),
        .O(\alu_result_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000002)) 
    \alu_result_reg[1]_i_4 
       (.I0(\alu_result_reg[0]_i_3_n_0 ),
        .I1(\alu_result_reg[31]_i_7_n_0 ),
        .I2(op2[0]),
        .I3(\opcode_reg_reg_n_0_[0] ),
        .I4(\alu_result_reg[1]_i_8_n_0 ),
        .I5(\alu_result_reg[31]_i_9_n_0 ),
        .O(\alu_result_reg[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \alu_result_reg[1]_i_5 
       (.I0(op1),
        .I1(\alu_result_reg[31]_i_7_n_0 ),
        .I2(\alu_result_reg[30]_i_11_n_0 ),
        .I3(\alu_result_reg[1]_i_9_n_0 ),
        .O(\alu_result_reg[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hACC0ACC0FFFFACC0)) 
    \alu_result_reg[1]_i_6 
       (.I0(\alu_result_reg[29]_i_10_n_0 ),
        .I1(\alu_result_reg[28]_i_7_n_0 ),
        .I2(Q[1]),
        .I3(op2[1]),
        .I4(\alu_result_reg_reg[31] [1]),
        .I5(\opcode_reg_reg[0]_0 ),
        .O(\alu_result_reg[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h55330F0055330FFF)) 
    \alu_result_reg[1]_i_7 
       (.I0(Q[26]),
        .I1(Q[10]),
        .I2(Q[18]),
        .I3(op2[4]),
        .I4(op2[3]),
        .I5(Q[2]),
        .O(\alu_result_reg[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF6F)) 
    \alu_result_reg[1]_i_8 
       (.I0(\opcode_reg_reg_n_0_[2] ),
        .I1(\opcode_reg_reg_n_0_[5] ),
        .I2(\opcode_reg_reg[1]_0 ),
        .I3(\opcode_reg_reg_n_0_[4] ),
        .I4(\opcode_reg_reg_n_0_[3] ),
        .O(\alu_result_reg[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \alu_result_reg[1]_i_9 
       (.I0(\alu_result_reg[31]_i_4_n_0 ),
        .I1(op2[1]),
        .I2(Q[1]),
        .I3(\alu_result_reg[31]_i_13_n_0 ),
        .O(\alu_result_reg[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \alu_result_reg[20]_i_1 
       (.I0(\alu_result_reg[20]_i_2_n_0 ),
        .I1(\alu_result_reg[20]_i_3_n_0 ),
        .I2(\alu_result_reg[20]_i_4_n_0 ),
        .I3(\alu_result_reg_reg[20] ),
        .I4(\alu_result_reg[28]_i_2_n_0 ),
        .I5(\alu_result_reg[20]_i_6_n_0 ),
        .O(D[20]));
  LUT4 #(
    .INIT(16'hF4F7)) 
    \alu_result_reg[20]_i_10 
       (.I0(Q[28]),
        .I1(op2[3]),
        .I2(op2[4]),
        .I3(Q[20]),
        .O(\alu_result_reg[20]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00000305)) 
    \alu_result_reg[20]_i_2 
       (.I0(\alu_result_reg[20]_i_7_n_0 ),
        .I1(\alu_result_reg[21]_i_7_n_0 ),
        .I2(\alu_result_reg[31]_i_8_n_0 ),
        .I3(op2[0]),
        .I4(\alu_result_reg[31]_i_7_n_0 ),
        .O(\alu_result_reg[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00003050)) 
    \alu_result_reg[20]_i_3 
       (.I0(\alu_result_reg[20]_i_8_n_0 ),
        .I1(\alu_result_reg[21]_i_8_n_0 ),
        .I2(\alu_result_reg[30]_i_11_n_0 ),
        .I3(op2[0]),
        .I4(\alu_result_reg[31]_i_7_n_0 ),
        .O(\alu_result_reg[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hCA00)) 
    \alu_result_reg[20]_i_4 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(\alu_result_reg[29]_i_10_n_0 ),
        .I2(op2[20]),
        .I3(Q[20]),
        .O(\alu_result_reg[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCEEF0)) 
    \alu_result_reg[20]_i_6 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_4_n_0 ),
        .I2(\alu_result_reg[31]_i_13_n_0 ),
        .I3(op2[20]),
        .I4(Q[20]),
        .O(\alu_result_reg[20]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h32333230)) 
    \alu_result_reg[20]_i_7 
       (.I0(\alu_result_reg[22]_i_8_n_0 ),
        .I1(\alu_result_reg[20]_i_9_n_0 ),
        .I2(op2[2]),
        .I3(op2[1]),
        .I4(\alu_result_reg[20]_i_10_n_0 ),
        .O(\alu_result_reg[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0CCFFAAF0CC00AA)) 
    \alu_result_reg[20]_i_8 
       (.I0(\alu_result_reg[14]_i_9_n_0 ),
        .I1(\alu_result_reg[24]_i_9_n_0 ),
        .I2(\alu_result_reg[26]_i_10_n_0 ),
        .I3(op2[1]),
        .I4(op2[2]),
        .I5(\alu_result_reg[22]_i_11_n_0 ),
        .O(\alu_result_reg[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0203000002000000)) 
    \alu_result_reg[20]_i_9 
       (.I0(Q[26]),
        .I1(op2[4]),
        .I2(op2[3]),
        .I3(op2[1]),
        .I4(op2[2]),
        .I5(Q[24]),
        .O(\alu_result_reg[20]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \alu_result_reg[21]_i_1 
       (.I0(\alu_result_reg[21]_i_2_n_0 ),
        .I1(\alu_result_reg_reg[21] ),
        .I2(\alu_result_reg[28]_i_2_n_0 ),
        .I3(\alu_result_reg[21]_i_4_n_0 ),
        .I4(\alu_result_reg[21]_i_5_n_0 ),
        .I5(\alu_result_reg[21]_i_6_n_0 ),
        .O(D[21]));
  LUT4 #(
    .INIT(16'hC808)) 
    \alu_result_reg[21]_i_2 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[21]),
        .I2(op2[21]),
        .I3(\alu_result_reg[29]_i_10_n_0 ),
        .O(\alu_result_reg[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCEFCCE0)) 
    \alu_result_reg[21]_i_4 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_4_n_0 ),
        .I2(op2[21]),
        .I3(Q[21]),
        .I4(\alu_result_reg[31]_i_13_n_0 ),
        .O(\alu_result_reg[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h004400000044000F)) 
    \alu_result_reg[21]_i_5 
       (.I0(\alu_result_reg[22]_i_7_n_0 ),
        .I1(\alu_result_reg[30]_i_11_n_0 ),
        .I2(\alu_result_reg[21]_i_7_n_0 ),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[31]_i_8_n_0 ),
        .O(\alu_result_reg[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0011000F00110000)) 
    \alu_result_reg[21]_i_6 
       (.I0(\alu_result_reg[22]_i_4_n_0 ),
        .I1(\alu_result_reg[31]_i_8_n_0 ),
        .I2(\alu_result_reg[21]_i_8_n_0 ),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[30]_i_11_n_0 ),
        .O(\alu_result_reg[21]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h32333230)) 
    \alu_result_reg[21]_i_7 
       (.I0(\alu_result_reg[19]_i_10_n_0 ),
        .I1(\alu_result_reg[21]_i_9_n_0 ),
        .I2(op2[2]),
        .I3(op2[1]),
        .I4(\alu_result_reg[19]_i_11_n_0 ),
        .O(\alu_result_reg[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \alu_result_reg[21]_i_8 
       (.I0(\alu_result_reg[17]_i_10_n_0 ),
        .I1(\alu_result_reg[25]_i_11_n_0 ),
        .I2(\alu_result_reg[17]_i_8_n_0 ),
        .I3(op2[1]),
        .I4(op2[2]),
        .I5(\alu_result_reg[25]_i_10_n_0 ),
        .O(\alu_result_reg[21]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0203000002000000)) 
    \alu_result_reg[21]_i_9 
       (.I0(Q[27]),
        .I1(op2[4]),
        .I2(op2[3]),
        .I3(op2[1]),
        .I4(op2[2]),
        .I5(Q[25]),
        .O(\alu_result_reg[21]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \alu_result_reg[22]_i_1 
       (.I0(\alu_result_reg[22]_i_2_n_0 ),
        .I1(\alu_result_reg[22]_i_3_n_0 ),
        .I2(\alu_result_reg[22]_i_4_n_0 ),
        .I3(\alu_result_reg[31]_i_2_n_0 ),
        .I4(\alu_result_reg[22]_i_5_n_0 ),
        .I5(\alu_result_reg[22]_i_6_n_0 ),
        .O(D[22]));
  LUT4 #(
    .INIT(16'hC808)) 
    \alu_result_reg[22]_i_10 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[22]),
        .I2(op2[22]),
        .I3(\alu_result_reg[29]_i_10_n_0 ),
        .O(\alu_result_reg[22]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00FF1D1D)) 
    \alu_result_reg[22]_i_11 
       (.I0(Q[22]),
        .I1(op2[3]),
        .I2(Q[30]),
        .I3(op1),
        .I4(op2[4]),
        .O(\alu_result_reg[22]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0011000F00110000)) 
    \alu_result_reg[22]_i_2 
       (.I0(\alu_result_reg[23]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_8_n_0 ),
        .I2(\alu_result_reg[22]_i_7_n_0 ),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[30]_i_11_n_0 ),
        .O(\alu_result_reg[22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \alu_result_reg[22]_i_3 
       (.I0(\alu_result_reg[31]_i_7_n_0 ),
        .I1(op2[0]),
        .I2(\alu_result_reg[30]_i_11_n_0 ),
        .I3(\alu_result_reg[23]_i_8_n_0 ),
        .O(\alu_result_reg[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0333332233333322)) 
    \alu_result_reg[22]_i_4 
       (.I0(\alu_result_reg[22]_i_8_n_0 ),
        .I1(\alu_result_reg[22]_i_9_n_0 ),
        .I2(Q[28]),
        .I3(op2[1]),
        .I4(op2[2]),
        .I5(\alu_result_reg[30]_i_7_n_0 ),
        .O(\alu_result_reg[22]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAEEF0)) 
    \alu_result_reg[22]_i_5 
       (.I0(\alu_result_reg[31]_i_4_n_0 ),
        .I1(\alu_result_reg[28]_i_7_n_0 ),
        .I2(\alu_result_reg[31]_i_13_n_0 ),
        .I3(op2[22]),
        .I4(Q[22]),
        .O(\alu_result_reg[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAEAEAEAE)) 
    \alu_result_reg[22]_i_6 
       (.I0(\alu_result_reg[22]_i_10_n_0 ),
        .I1(\alu_result_reg_reg[31] [17]),
        .I2(\opcode_reg_reg[0]_0 ),
        .I3(\alu_result_reg[30]_i_11_n_0 ),
        .I4(\alu_result_reg[31]_i_7_n_0 ),
        .I5(op1),
        .O(\alu_result_reg[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \alu_result_reg[22]_i_7 
       (.I0(\alu_result_reg[22]_i_11_n_0 ),
        .I1(\alu_result_reg[26]_i_11_n_0 ),
        .I2(\alu_result_reg[24]_i_9_n_0 ),
        .I3(op2[1]),
        .I4(op2[2]),
        .I5(\alu_result_reg[26]_i_10_n_0 ),
        .O(\alu_result_reg[22]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF4F7)) 
    \alu_result_reg[22]_i_8 
       (.I0(Q[30]),
        .I1(op2[3]),
        .I2(op2[4]),
        .I3(Q[22]),
        .O(\alu_result_reg[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0003020000000200)) 
    \alu_result_reg[22]_i_9 
       (.I0(Q[26]),
        .I1(op2[4]),
        .I2(op2[3]),
        .I3(op2[2]),
        .I4(op2[1]),
        .I5(Q[24]),
        .O(\alu_result_reg[22]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \alu_result_reg[23]_i_1 
       (.I0(\alu_result_reg[23]_i_2_n_0 ),
        .I1(\alu_result_reg_reg[23] ),
        .I2(\alu_result_reg[28]_i_2_n_0 ),
        .I3(\alu_result_reg[23]_i_4_n_0 ),
        .I4(\alu_result_reg[23]_i_5_n_0 ),
        .I5(\alu_result_reg[23]_i_6_n_0 ),
        .O(D[23]));
  LUT4 #(
    .INIT(16'hC808)) 
    \alu_result_reg[23]_i_2 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[23]),
        .I2(op2[23]),
        .I3(\alu_result_reg[29]_i_10_n_0 ),
        .O(\alu_result_reg[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCEFCCE0)) 
    \alu_result_reg[23]_i_4 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_4_n_0 ),
        .I2(op2[23]),
        .I3(Q[23]),
        .I4(\alu_result_reg[31]_i_13_n_0 ),
        .O(\alu_result_reg[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h004400000044000F)) 
    \alu_result_reg[23]_i_5 
       (.I0(\alu_result_reg[24]_i_6_n_0 ),
        .I1(\alu_result_reg[30]_i_11_n_0 ),
        .I2(\alu_result_reg[23]_i_7_n_0 ),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[31]_i_8_n_0 ),
        .O(\alu_result_reg[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0011000F00110000)) 
    \alu_result_reg[23]_i_6 
       (.I0(\alu_result_reg[24]_i_3_n_0 ),
        .I1(\alu_result_reg[31]_i_8_n_0 ),
        .I2(\alu_result_reg[23]_i_8_n_0 ),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[30]_i_11_n_0 ),
        .O(\alu_result_reg[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0333332233333322)) 
    \alu_result_reg[23]_i_7 
       (.I0(\alu_result_reg[19]_i_10_n_0 ),
        .I1(\alu_result_reg[23]_i_9_n_0 ),
        .I2(Q[29]),
        .I3(op2[1]),
        .I4(op2[2]),
        .I5(\alu_result_reg[30]_i_7_n_0 ),
        .O(\alu_result_reg[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0FCCAAFF0FCCAA00)) 
    \alu_result_reg[23]_i_8 
       (.I0(\alu_result_reg[25]_i_11_n_0 ),
        .I1(\alu_result_reg[25]_i_10_n_0 ),
        .I2(\alu_result_reg[25]_i_9_n_0 ),
        .I3(op2[2]),
        .I4(op2[1]),
        .I5(\alu_result_reg[17]_i_8_n_0 ),
        .O(\alu_result_reg[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0003020000000200)) 
    \alu_result_reg[23]_i_9 
       (.I0(Q[27]),
        .I1(op2[4]),
        .I2(op2[3]),
        .I3(op2[2]),
        .I4(op2[1]),
        .I5(Q[25]),
        .O(\alu_result_reg[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFAE)) 
    \alu_result_reg[24]_i_1 
       (.I0(\alu_result_reg[24]_i_2_n_0 ),
        .I1(\alu_result_reg[31]_i_2_n_0 ),
        .I2(\alu_result_reg[24]_i_3_n_0 ),
        .I3(\alu_result_reg[24]_i_4_n_0 ),
        .I4(\alu_result_reg[28]_i_2_n_0 ),
        .I5(\alu_result_reg[24]_i_5_n_0 ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h0011000F00110000)) 
    \alu_result_reg[24]_i_2 
       (.I0(\alu_result_reg[25]_i_8_n_0 ),
        .I1(\alu_result_reg[31]_i_8_n_0 ),
        .I2(\alu_result_reg[24]_i_6_n_0 ),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[30]_i_11_n_0 ),
        .O(\alu_result_reg[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1FFFDFF)) 
    \alu_result_reg[24]_i_3 
       (.I0(Q[24]),
        .I1(op2[1]),
        .I2(op2[2]),
        .I3(\alu_result_reg[30]_i_7_n_0 ),
        .I4(Q[26]),
        .I5(\alu_result_reg[24]_i_7_n_0 ),
        .O(\alu_result_reg[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \alu_result_reg[24]_i_4 
       (.I0(\alu_result_reg[25]_i_7_n_0 ),
        .I1(\alu_result_reg[30]_i_11_n_0 ),
        .I2(op2[0]),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(\alu_result_reg[24]_i_8_n_0 ),
        .O(\alu_result_reg[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4FF4444F4444444)) 
    \alu_result_reg[24]_i_5 
       (.I0(\opcode_reg_reg[0]_0 ),
        .I1(\alu_result_reg_reg[31] [18]),
        .I2(\alu_result_reg[29]_i_10_n_0 ),
        .I3(op2[24]),
        .I4(Q[24]),
        .I5(\alu_result_reg[28]_i_7_n_0 ),
        .O(\alu_result_reg[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0FFFAACC0F00AACC)) 
    \alu_result_reg[24]_i_6 
       (.I0(\alu_result_reg[26]_i_11_n_0 ),
        .I1(\alu_result_reg[24]_i_9_n_0 ),
        .I2(\alu_result_reg[26]_i_9_n_0 ),
        .I3(op2[2]),
        .I4(op2[1]),
        .I5(\alu_result_reg[26]_i_10_n_0 ),
        .O(\alu_result_reg[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0300020000000200)) 
    \alu_result_reg[24]_i_7 
       (.I0(Q[28]),
        .I1(op2[4]),
        .I2(op2[3]),
        .I3(op2[2]),
        .I4(op2[1]),
        .I5(Q[30]),
        .O(\alu_result_reg[24]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAEEF0)) 
    \alu_result_reg[24]_i_8 
       (.I0(\alu_result_reg[31]_i_4_n_0 ),
        .I1(\alu_result_reg[28]_i_7_n_0 ),
        .I2(\alu_result_reg[31]_i_13_n_0 ),
        .I3(op2[24]),
        .I4(Q[24]),
        .O(\alu_result_reg[24]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h01FD)) 
    \alu_result_reg[24]_i_9 
       (.I0(Q[24]),
        .I1(op2[3]),
        .I2(op2[4]),
        .I3(op1),
        .O(\alu_result_reg[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \alu_result_reg[25]_i_1 
       (.I0(\alu_result_reg[25]_i_2_n_0 ),
        .I1(\alu_result_reg_reg[25] ),
        .I2(\alu_result_reg[28]_i_2_n_0 ),
        .I3(\alu_result_reg[25]_i_4_n_0 ),
        .I4(\alu_result_reg[25]_i_5_n_0 ),
        .I5(\alu_result_reg[25]_i_6_n_0 ),
        .O(D[25]));
  LUT4 #(
    .INIT(16'h01FD)) 
    \alu_result_reg[25]_i_10 
       (.I0(Q[25]),
        .I1(op2[3]),
        .I2(op2[4]),
        .I3(op1),
        .O(\alu_result_reg[25]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h01FD)) 
    \alu_result_reg[25]_i_11 
       (.I0(Q[27]),
        .I1(op2[3]),
        .I2(op2[4]),
        .I3(op1),
        .O(\alu_result_reg[25]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0300000200000002)) 
    \alu_result_reg[25]_i_12 
       (.I0(Q[25]),
        .I1(op2[4]),
        .I2(op2[3]),
        .I3(op2[2]),
        .I4(op2[1]),
        .I5(op1),
        .O(\alu_result_reg[25]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \alu_result_reg[25]_i_2 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[25]),
        .I2(op2[25]),
        .I3(\alu_result_reg[29]_i_10_n_0 ),
        .O(\alu_result_reg[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCEFCCE0)) 
    \alu_result_reg[25]_i_4 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_4_n_0 ),
        .I2(op2[25]),
        .I3(Q[25]),
        .I4(\alu_result_reg[31]_i_13_n_0 ),
        .O(\alu_result_reg[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000440000004F)) 
    \alu_result_reg[25]_i_5 
       (.I0(\alu_result_reg[25]_i_7_n_0 ),
        .I1(\alu_result_reg[30]_i_11_n_0 ),
        .I2(\alu_result_reg[25]_i_8_n_0 ),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[31]_i_8_n_0 ),
        .O(\alu_result_reg[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000001F110000)) 
    \alu_result_reg[25]_i_6 
       (.I0(\alu_result_reg[26]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_8_n_0 ),
        .I2(\alu_result_reg[26]_i_8_n_0 ),
        .I3(\alu_result_reg[30]_i_11_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[31]_i_7_n_0 ),
        .O(\alu_result_reg[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5F3F5F30503F5030)) 
    \alu_result_reg[25]_i_7 
       (.I0(op1),
        .I1(\alu_result_reg[25]_i_9_n_0 ),
        .I2(op2[2]),
        .I3(op2[1]),
        .I4(\alu_result_reg[25]_i_10_n_0 ),
        .I5(\alu_result_reg[25]_i_11_n_0 ),
        .O(\alu_result_reg[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C7FFF7FF)) 
    \alu_result_reg[25]_i_8 
       (.I0(Q[29]),
        .I1(op2[2]),
        .I2(op2[1]),
        .I3(\alu_result_reg[30]_i_7_n_0 ),
        .I4(Q[27]),
        .I5(\alu_result_reg[25]_i_12_n_0 ),
        .O(\alu_result_reg[25]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \alu_result_reg[25]_i_9 
       (.I0(Q[29]),
        .I1(op2[3]),
        .I2(op2[4]),
        .I3(op1),
        .O(\alu_result_reg[25]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFFFE)) 
    \alu_result_reg[26]_i_1 
       (.I0(\alu_result_reg[26]_i_2_n_0 ),
        .I1(\alu_result_reg[28]_i_2_n_0 ),
        .I2(\alu_result_reg[26]_i_3_n_0 ),
        .I3(\alu_result_reg[26]_i_4_n_0 ),
        .I4(\alu_result_reg[26]_i_5_n_0 ),
        .I5(\alu_result_reg[30]_i_4_n_0 ),
        .O(D[26]));
  LUT4 #(
    .INIT(16'h01FD)) 
    \alu_result_reg[26]_i_10 
       (.I0(Q[26]),
        .I1(op2[3]),
        .I2(op2[4]),
        .I3(op1),
        .O(\alu_result_reg[26]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h01FD)) 
    \alu_result_reg[26]_i_11 
       (.I0(Q[28]),
        .I1(op2[3]),
        .I2(op2[4]),
        .I3(op1),
        .O(\alu_result_reg[26]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABAAFFFFABAA)) 
    \alu_result_reg[26]_i_2 
       (.I0(\alu_result_reg[26]_i_6_n_0 ),
        .I1(Q[26]),
        .I2(op2[26]),
        .I3(\alu_result_reg[31]_i_13_n_0 ),
        .I4(\alu_result_reg_reg[31] [19]),
        .I5(\opcode_reg_reg[0]_0 ),
        .O(\alu_result_reg[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000001F00000011)) 
    \alu_result_reg[26]_i_3 
       (.I0(\alu_result_reg[26]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_8_n_0 ),
        .I2(\alu_result_reg[26]_i_8_n_0 ),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[30]_i_11_n_0 ),
        .O(\alu_result_reg[26]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \alu_result_reg[26]_i_4 
       (.I0(\alu_result_reg[31]_i_7_n_0 ),
        .I1(op2[0]),
        .I2(\alu_result_reg[30]_i_11_n_0 ),
        .I3(\alu_result_reg[27]_i_7_n_0 ),
        .O(\alu_result_reg[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF503FFFFF5F3FFFF)) 
    \alu_result_reg[26]_i_5 
       (.I0(op1),
        .I1(Q[27]),
        .I2(op2[1]),
        .I3(op2[2]),
        .I4(\alu_result_reg[30]_i_7_n_0 ),
        .I5(Q[29]),
        .O(\alu_result_reg[26]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80A8BCA8)) 
    \alu_result_reg[26]_i_6 
       (.I0(\alu_result_reg[29]_i_10_n_0 ),
        .I1(Q[26]),
        .I2(op2[26]),
        .I3(\alu_result_reg[31]_i_9_n_0 ),
        .I4(\alu_result_reg[31]_i_10_n_0 ),
        .O(\alu_result_reg[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF530FFFFF53FFFFF)) 
    \alu_result_reg[26]_i_7 
       (.I0(Q[30]),
        .I1(Q[28]),
        .I2(op2[1]),
        .I3(op2[2]),
        .I4(\alu_result_reg[30]_i_7_n_0 ),
        .I5(Q[26]),
        .O(\alu_result_reg[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5F3F5F30503F5030)) 
    \alu_result_reg[26]_i_8 
       (.I0(op1),
        .I1(\alu_result_reg[26]_i_9_n_0 ),
        .I2(op2[2]),
        .I3(op2[1]),
        .I4(\alu_result_reg[26]_i_10_n_0 ),
        .I5(\alu_result_reg[26]_i_11_n_0 ),
        .O(\alu_result_reg[26]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \alu_result_reg[26]_i_9 
       (.I0(Q[30]),
        .I1(op2[3]),
        .I2(op2[4]),
        .I3(op1),
        .O(\alu_result_reg[26]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \alu_result_reg[27]_i_1 
       (.I0(\alu_result_reg[27]_i_2_n_0 ),
        .I1(\alu_result_reg_reg[27] ),
        .I2(\alu_result_reg[28]_i_2_n_0 ),
        .I3(\alu_result_reg[27]_i_4_n_0 ),
        .I4(\alu_result_reg[27]_i_5_n_0 ),
        .I5(\alu_result_reg[27]_i_6_n_0 ),
        .O(D[27]));
  LUT4 #(
    .INIT(16'hC808)) 
    \alu_result_reg[27]_i_2 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[27]),
        .I2(op2[27]),
        .I3(\alu_result_reg[29]_i_10_n_0 ),
        .O(\alu_result_reg[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCEFCCE0)) 
    \alu_result_reg[27]_i_4 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_4_n_0 ),
        .I2(op2[27]),
        .I3(Q[27]),
        .I4(\alu_result_reg[31]_i_13_n_0 ),
        .O(\alu_result_reg[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h008800000088000F)) 
    \alu_result_reg[27]_i_5 
       (.I0(\alu_result_reg[30]_i_11_n_0 ),
        .I1(\alu_result_reg[28]_i_9_n_0 ),
        .I2(\alu_result_reg[26]_i_5_n_0 ),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[31]_i_8_n_0 ),
        .O(\alu_result_reg[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0011000F00110000)) 
    \alu_result_reg[27]_i_6 
       (.I0(\alu_result_reg[28]_i_8_n_0 ),
        .I1(\alu_result_reg[31]_i_8_n_0 ),
        .I2(\alu_result_reg[27]_i_7_n_0 ),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[30]_i_11_n_0 ),
        .O(\alu_result_reg[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h333303F333335353)) 
    \alu_result_reg[27]_i_7 
       (.I0(Q[27]),
        .I1(op1),
        .I2(\alu_result_reg[30]_i_7_n_0 ),
        .I3(Q[29]),
        .I4(op2[2]),
        .I5(op2[1]),
        .O(\alu_result_reg[27]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \alu_result_reg[28]_i_1 
       (.I0(\alu_result_reg[28]_i_2_n_0 ),
        .I1(\alu_result_reg[28]_i_3_n_0 ),
        .I2(\alu_result_reg[28]_i_4_n_0 ),
        .I3(\alu_result_reg[28]_i_5_n_0 ),
        .I4(\alu_result_reg[28]_i_6_n_0 ),
        .O(D[28]));
  LUT3 #(
    .INIT(8'h80)) 
    \alu_result_reg[28]_i_2 
       (.I0(\alu_result_reg[30]_i_11_n_0 ),
        .I1(\alu_result_reg[31]_i_7_n_0 ),
        .I2(op1),
        .O(\alu_result_reg[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF4FF4444F4444444)) 
    \alu_result_reg[28]_i_3 
       (.I0(\opcode_reg_reg[0]_0 ),
        .I1(\alu_result_reg_reg[31] [20]),
        .I2(\alu_result_reg[29]_i_10_n_0 ),
        .I3(op2[28]),
        .I4(Q[28]),
        .I5(\alu_result_reg[28]_i_7_n_0 ),
        .O(\alu_result_reg[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCCEFCCE0)) 
    \alu_result_reg[28]_i_4 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_4_n_0 ),
        .I2(op2[28]),
        .I3(Q[28]),
        .I4(\alu_result_reg[31]_i_13_n_0 ),
        .O(\alu_result_reg[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000444F0000)) 
    \alu_result_reg[28]_i_5 
       (.I0(\alu_result_reg[29]_i_8_n_0 ),
        .I1(\alu_result_reg[30]_i_11_n_0 ),
        .I2(\alu_result_reg[29]_i_6_n_0 ),
        .I3(\alu_result_reg[31]_i_8_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[31]_i_7_n_0 ),
        .O(\alu_result_reg[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000F000100010001)) 
    \alu_result_reg[28]_i_6 
       (.I0(\alu_result_reg[28]_i_8_n_0 ),
        .I1(\alu_result_reg[31]_i_8_n_0 ),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(op2[0]),
        .I4(\alu_result_reg[30]_i_11_n_0 ),
        .I5(\alu_result_reg[28]_i_9_n_0 ),
        .O(\alu_result_reg[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \alu_result_reg[28]_i_7 
       (.I0(\opcode_reg_reg_n_0_[2] ),
        .I1(\opcode_reg_reg_n_0_[5] ),
        .I2(\opcode_reg_reg[1]_0 ),
        .I3(\opcode_reg_reg_n_0_[4] ),
        .I4(\opcode_reg_reg_n_0_[3] ),
        .I5(\opcode_reg_reg_n_0_[0] ),
        .O(\alu_result_reg[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFDFFFFFFFD)) 
    \alu_result_reg[28]_i_8 
       (.I0(Q[28]),
        .I1(op2[4]),
        .I2(op2[3]),
        .I3(op2[2]),
        .I4(op2[1]),
        .I5(Q[30]),
        .O(\alu_result_reg[28]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF3F0C0F0E2F0E2F0)) 
    \alu_result_reg[28]_i_9 
       (.I0(Q[28]),
        .I1(op2[2]),
        .I2(op1),
        .I3(\alu_result_reg[30]_i_7_n_0 ),
        .I4(Q[30]),
        .I5(op2[1]),
        .O(\alu_result_reg[28]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \alu_result_reg[29]_i_1 
       (.I0(\alu_result_reg[29]_i_2_n_0 ),
        .I1(\alu_result_reg[29]_i_3_n_0 ),
        .I2(\alu_result_reg[29]_i_4_n_0 ),
        .I3(\alu_result_reg[29]_i_5_n_0 ),
        .I4(\alu_result_reg[31]_i_2_n_0 ),
        .I5(\alu_result_reg[29]_i_6_n_0 ),
        .O(D[29]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \alu_result_reg[29]_i_10 
       (.I0(\opcode_reg_reg_n_0_[2] ),
        .I1(\opcode_reg_reg_n_0_[5] ),
        .I2(\opcode_reg_reg_n_0_[4] ),
        .I3(\opcode_reg_reg_n_0_[3] ),
        .I4(\opcode_reg_reg[1]_0 ),
        .O(\alu_result_reg[29]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hEBAA)) 
    \alu_result_reg[29]_i_2 
       (.I0(\alu_result_reg[31]_i_10_n_0 ),
        .I1(op2[29]),
        .I2(Q[29]),
        .I3(\alu_result_reg[31]_i_9_n_0 ),
        .O(\alu_result_reg[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFECEFCCCFECEFFCF)) 
    \alu_result_reg[29]_i_3 
       (.I0(\alu_result_reg[29]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_9_n_0 ),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(op1),
        .I4(op2[0]),
        .I5(\alu_result_reg[29]_i_8_n_0 ),
        .O(\alu_result_reg[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \alu_result_reg[29]_i_4 
       (.I0(\alu_result_reg[31]_i_7_n_0 ),
        .I1(op2[0]),
        .I2(\alu_result_reg[31]_i_8_n_0 ),
        .I3(Q[30]),
        .I4(\alu_result_reg[30]_i_7_n_0 ),
        .I5(\alu_result_reg[30]_i_8_n_0 ),
        .O(\alu_result_reg[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAEAAAFFFFEAAA)) 
    \alu_result_reg[29]_i_5 
       (.I0(\alu_result_reg[29]_i_9_n_0 ),
        .I1(\alu_result_reg[29]_i_10_n_0 ),
        .I2(Q[29]),
        .I3(op2[29]),
        .I4(\alu_result_reg_reg[31] [21]),
        .I5(\opcode_reg_reg[0]_0 ),
        .O(\alu_result_reg[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFDFFFFFFFD)) 
    \alu_result_reg[29]_i_6 
       (.I0(Q[29]),
        .I1(op2[4]),
        .I2(op2[3]),
        .I3(op2[2]),
        .I4(op2[1]),
        .I5(op1),
        .O(\alu_result_reg[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \alu_result_reg[29]_i_7 
       (.I0(op1),
        .I1(op2[4]),
        .I2(op2[3]),
        .I3(op2[2]),
        .I4(op2[1]),
        .I5(Q[30]),
        .O(\alu_result_reg[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555555455555557)) 
    \alu_result_reg[29]_i_8 
       (.I0(op1),
        .I1(op2[4]),
        .I2(op2[3]),
        .I3(op2[2]),
        .I4(op2[1]),
        .I5(Q[29]),
        .O(\alu_result_reg[29]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \alu_result_reg[29]_i_9 
       (.I0(\alu_result_reg[31]_i_4_n_0 ),
        .I1(op2[29]),
        .I2(Q[29]),
        .I3(\alu_result_reg[31]_i_13_n_0 ),
        .O(\alu_result_reg[29]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \alu_result_reg[2]_i_1 
       (.I0(\alu_result_reg[2]_i_2_n_0 ),
        .I1(\alu_result_reg[2]_i_3_n_0 ),
        .I2(\alu_result_reg[30]_i_4_n_0 ),
        .I3(\alu_result_reg[2]_i_4_n_0 ),
        .I4(\alu_result_reg[2]_i_5_n_0 ),
        .I5(\alu_result_reg[2]_i_6_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFF00F0F0AAAACCCC)) 
    \alu_result_reg[2]_i_10 
       (.I0(\alu_result_reg[4]_i_8_n_0 ),
        .I1(\alu_result_reg[1]_i_7_n_0 ),
        .I2(\alu_result_reg[6]_i_7_n_0 ),
        .I3(\alu_result_reg[6]_i_8_n_0 ),
        .I4(op2[1]),
        .I5(op2[2]),
        .O(\alu_result_reg[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2F222)) 
    \alu_result_reg[2]_i_2 
       (.I0(\alu_result_reg_reg[31] [2]),
        .I1(\opcode_reg_reg[0]_0 ),
        .I2(\alu_result_reg[31]_i_4_n_0 ),
        .I3(Q[2]),
        .I4(op2[2]),
        .I5(\alu_result_reg[2]_i_7_n_0 ),
        .O(\alu_result_reg[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \alu_result_reg[2]_i_3 
       (.I0(op1),
        .I1(\alu_result_reg[31]_i_7_n_0 ),
        .I2(\alu_result_reg[30]_i_11_n_0 ),
        .I3(\alu_result_reg[2]_i_8_n_0 ),
        .O(\alu_result_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0AAAACCCC)) 
    \alu_result_reg[2]_i_4 
       (.I0(\alu_result_reg[5]_i_6_n_0 ),
        .I1(\alu_result_reg[2]_i_9_n_0 ),
        .I2(\alu_result_reg[5]_i_7_n_0 ),
        .I3(\alu_result_reg[5]_i_8_n_0 ),
        .I4(op2[1]),
        .I5(op2[2]),
        .O(\alu_result_reg[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \alu_result_reg[2]_i_5 
       (.I0(\alu_result_reg[31]_i_8_n_0 ),
        .I1(op2[0]),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(\alu_result_reg[1]_i_2_n_0 ),
        .O(\alu_result_reg[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h05030000)) 
    \alu_result_reg[2]_i_6 
       (.I0(\alu_result_reg[3]_i_7_n_0 ),
        .I1(\alu_result_reg[2]_i_10_n_0 ),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(op2[0]),
        .I4(\alu_result_reg[30]_i_11_n_0 ),
        .O(\alu_result_reg[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3202)) 
    \alu_result_reg[2]_i_7 
       (.I0(\alu_result_reg[31]_i_13_n_0 ),
        .I1(Q[2]),
        .I2(op2[2]),
        .I3(\alu_result_reg[28]_i_7_n_0 ),
        .O(\alu_result_reg[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hCA00)) 
    \alu_result_reg[2]_i_8 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(\alu_result_reg[29]_i_10_n_0 ),
        .I2(op2[2]),
        .I3(Q[2]),
        .O(\alu_result_reg[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5533000F5533FF0F)) 
    \alu_result_reg[2]_i_9 
       (.I0(Q[27]),
        .I1(Q[11]),
        .I2(Q[3]),
        .I3(op2[4]),
        .I4(op2[3]),
        .I5(Q[19]),
        .O(\alu_result_reg[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \alu_result_reg[30]_i_1 
       (.I0(\alu_result_reg[30]_i_2_n_0 ),
        .I1(Q[30]),
        .I2(\alu_result_reg[30]_i_3_n_0 ),
        .I3(\alu_result_reg[30]_i_4_n_0 ),
        .I4(\alu_result_reg[30]_i_5_n_0 ),
        .I5(\alu_result_reg[30]_i_6_n_0 ),
        .O(D[30]));
  LUT4 #(
    .INIT(16'hA0AC)) 
    \alu_result_reg[30]_i_10 
       (.I0(\alu_result_reg[31]_i_4_n_0 ),
        .I1(\alu_result_reg[31]_i_13_n_0 ),
        .I2(op2[30]),
        .I3(Q[30]),
        .O(\alu_result_reg[30]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \alu_result_reg[30]_i_11 
       (.I0(\opcode_reg_reg_n_0_[2] ),
        .I1(\opcode_reg_reg_n_0_[5] ),
        .I2(\opcode_reg_reg[1]_0 ),
        .I3(\opcode_reg_reg_n_0_[4] ),
        .I4(\opcode_reg_reg_n_0_[3] ),
        .I5(\opcode_reg_reg_n_0_[0] ),
        .O(\alu_result_reg[30]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555515)) 
    \alu_result_reg[30]_i_2 
       (.I0(\alu_result_reg[31]_i_4_n_0 ),
        .I1(\alu_result_reg[30]_i_7_n_0 ),
        .I2(\alu_result_reg[30]_i_8_n_0 ),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[31]_i_8_n_0 ),
        .O(\alu_result_reg[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \alu_result_reg[30]_i_3 
       (.I0(op2[1]),
        .I1(op2[2]),
        .I2(op2[3]),
        .I3(op2[4]),
        .I4(op1),
        .O(\alu_result_reg[30]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \alu_result_reg[30]_i_4 
       (.I0(\alu_result_reg[31]_i_8_n_0 ),
        .I1(op2[0]),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .O(\alu_result_reg[30]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \alu_result_reg[30]_i_5 
       (.I0(\alu_result_reg[30]_i_9_n_0 ),
        .I1(\alu_result_reg[30]_i_10_n_0 ),
        .I2(\alu_result_reg_reg[31] [22]),
        .I3(\opcode_reg_reg[0]_0 ),
        .O(\alu_result_reg[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF000F000F000E040)) 
    \alu_result_reg[30]_i_6 
       (.I0(\alu_result_reg[31]_i_3_n_0 ),
        .I1(Q[30]),
        .I2(\alu_result_reg[30]_i_11_n_0 ),
        .I3(op1),
        .I4(\alu_result_reg[31]_i_7_n_0 ),
        .I5(op2[0]),
        .O(\alu_result_reg[30]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \alu_result_reg[30]_i_7 
       (.I0(op2[3]),
        .I1(op2[4]),
        .O(\alu_result_reg[30]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \alu_result_reg[30]_i_8 
       (.I0(op2[1]),
        .I1(op2[2]),
        .O(\alu_result_reg[30]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBC80)) 
    \alu_result_reg[30]_i_9 
       (.I0(\alu_result_reg[29]_i_10_n_0 ),
        .I1(op2[30]),
        .I2(Q[30]),
        .I3(\alu_result_reg[28]_i_7_n_0 ),
        .O(\alu_result_reg[30]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF20000)) 
    \alu_result_reg[31]_i_1 
       (.I0(\alu_result_reg[31]_i_2_n_0 ),
        .I1(\alu_result_reg[31]_i_3_n_0 ),
        .I2(\alu_result_reg[31]_i_4_n_0 ),
        .I3(\alu_result_reg[31]_i_5_n_0 ),
        .I4(op1),
        .I5(\alu_result_reg[31]_i_6_n_0 ),
        .O(D[31]));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFEFF)) 
    \alu_result_reg[31]_i_10 
       (.I0(\opcode_reg_reg_n_0_[0] ),
        .I1(\opcode_reg_reg_n_0_[3] ),
        .I2(\opcode_reg_reg_n_0_[4] ),
        .I3(\opcode_reg_reg[1]_0 ),
        .I4(\opcode_reg_reg_n_0_[5] ),
        .I5(\opcode_reg_reg_n_0_[2] ),
        .O(\alu_result_reg[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hC044C0C0)) 
    \alu_result_reg[31]_i_11 
       (.I0(\alu_result_reg[31]_i_10_n_0 ),
        .I1(op2[31]),
        .I2(\alu_result_reg[29]_i_10_n_0 ),
        .I3(op1),
        .I4(\alu_result_reg[31]_i_9_n_0 ),
        .O(\alu_result_reg[31]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \alu_result_reg[31]_i_12 
       (.I0(\opcode_reg_reg_n_0_[0] ),
        .I1(\opcode_reg_reg_n_0_[2] ),
        .I2(\opcode_reg_reg_n_0_[5] ),
        .I3(\opcode_reg_reg_n_0_[4] ),
        .I4(\opcode_reg_reg_n_0_[3] ),
        .O(\opcode_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \alu_result_reg[31]_i_13 
       (.I0(\opcode_reg_reg_n_0_[0] ),
        .I1(\opcode_reg_reg_n_0_[2] ),
        .I2(\opcode_reg_reg_n_0_[5] ),
        .I3(\opcode_reg_reg[1]_0 ),
        .I4(\opcode_reg_reg_n_0_[4] ),
        .I5(\opcode_reg_reg_n_0_[3] ),
        .O(\alu_result_reg[31]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \alu_result_reg[31]_i_14 
       (.I0(op2[21]),
        .I1(op2[23]),
        .I2(op2[26]),
        .I3(op2[31]),
        .I4(op2[28]),
        .O(\alu_result_reg[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \alu_result_reg[31]_i_15 
       (.I0(op2[22]),
        .I1(op2[30]),
        .I2(op2[24]),
        .I3(op2[29]),
        .I4(op2[27]),
        .I5(op2[25]),
        .O(\alu_result_reg[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \alu_result_reg[31]_i_16 
       (.I0(op2[11]),
        .I1(op2[10]),
        .I2(op2[12]),
        .I3(op2[9]),
        .O(\alu_result_reg[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \alu_result_reg[31]_i_17 
       (.I0(op2[8]),
        .I1(op2[7]),
        .I2(op2[6]),
        .I3(op2[5]),
        .O(\alu_result_reg[31]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \alu_result_reg[31]_i_18 
       (.I0(op2[15]),
        .I1(op2[14]),
        .I2(op2[16]),
        .I3(op2[13]),
        .O(\alu_result_reg[31]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \alu_result_reg[31]_i_19 
       (.I0(op2[18]),
        .I1(op2[17]),
        .I2(op2[20]),
        .I3(op2[19]),
        .O(\alu_result_reg[31]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \alu_result_reg[31]_i_2 
       (.I0(\alu_result_reg[31]_i_7_n_0 ),
        .I1(op2[0]),
        .I2(\alu_result_reg[31]_i_8_n_0 ),
        .O(\alu_result_reg[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \alu_result_reg[31]_i_3 
       (.I0(op2[4]),
        .I1(op2[3]),
        .I2(op2[2]),
        .I3(op2[1]),
        .O(\alu_result_reg[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \alu_result_reg[31]_i_4 
       (.I0(\opcode_reg_reg_n_0_[0] ),
        .I1(\opcode_reg_reg[1]_0 ),
        .I2(\opcode_reg_reg_n_0_[3] ),
        .I3(\opcode_reg_reg_n_0_[4] ),
        .I4(\opcode_reg_reg_n_0_[5] ),
        .I5(\opcode_reg_reg_n_0_[2] ),
        .O(\alu_result_reg[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h13)) 
    \alu_result_reg[31]_i_5 
       (.I0(\alu_result_reg[31]_i_9_n_0 ),
        .I1(\alu_result_reg[31]_i_10_n_0 ),
        .I2(op2[31]),
        .O(\alu_result_reg[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEAEAEFFAE)) 
    \alu_result_reg[31]_i_6 
       (.I0(\alu_result_reg[31]_i_11_n_0 ),
        .I1(\alu_result_reg_reg[31] [23]),
        .I2(\opcode_reg_reg[0]_0 ),
        .I3(\alu_result_reg[31]_i_13_n_0 ),
        .I4(op1),
        .I5(op2[31]),
        .O(\alu_result_reg[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \alu_result_reg[31]_i_7 
       (.I0(\alu_result_reg[31]_i_14_n_0 ),
        .I1(\alu_result_reg[31]_i_15_n_0 ),
        .I2(\alu_result_reg[31]_i_16_n_0 ),
        .I3(\alu_result_reg[31]_i_17_n_0 ),
        .I4(\alu_result_reg[31]_i_18_n_0 ),
        .I5(\alu_result_reg[31]_i_19_n_0 ),
        .O(\alu_result_reg[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \alu_result_reg[31]_i_8 
       (.I0(\opcode_reg_reg[1]_0 ),
        .I1(\opcode_reg_reg_n_0_[5] ),
        .I2(\opcode_reg_reg_n_0_[2] ),
        .I3(\opcode_reg_reg_n_0_[0] ),
        .I4(\opcode_reg_reg_n_0_[4] ),
        .I5(\opcode_reg_reg_n_0_[3] ),
        .O(\alu_result_reg[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEFFFEEFFEFFFF)) 
    \alu_result_reg[31]_i_9 
       (.I0(\opcode_reg_reg_n_0_[3] ),
        .I1(\opcode_reg_reg_n_0_[4] ),
        .I2(\opcode_reg_reg_n_0_[0] ),
        .I3(\opcode_reg_reg_n_0_[2] ),
        .I4(\opcode_reg_reg_n_0_[5] ),
        .I5(\opcode_reg_reg[1]_0 ),
        .O(\alu_result_reg[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \alu_result_reg[3]_i_1 
       (.I0(\alu_result_reg[3]_i_2_n_0 ),
        .I1(\alu_result_reg[28]_i_2_n_0 ),
        .I2(\alu_result_reg[3]_i_3_n_0 ),
        .I3(\alu_result_reg[3]_i_4_n_0 ),
        .I4(\alu_result_reg[3]_i_5_n_0 ),
        .I5(\alu_result_reg[3]_i_6_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h000000440000004F)) 
    \alu_result_reg[3]_i_2 
       (.I0(\alu_result_reg[3]_i_7_n_0 ),
        .I1(\alu_result_reg[30]_i_11_n_0 ),
        .I2(\alu_result_reg[2]_i_4_n_0 ),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[31]_i_8_n_0 ),
        .O(\alu_result_reg[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \alu_result_reg[3]_i_3 
       (.I0(op2[3]),
        .I1(Q[3]),
        .I2(\alu_result_reg[31]_i_13_n_0 ),
        .I3(\opcode_reg_reg[0]_0 ),
        .I4(\alu_result_reg_reg[31] [3]),
        .O(\alu_result_reg[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \alu_result_reg[3]_i_4 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[3]),
        .I2(op2[3]),
        .I3(\alu_result_reg[29]_i_10_n_0 ),
        .O(\alu_result_reg[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \alu_result_reg[3]_i_5 
       (.I0(\alu_result_reg[4]_i_7_n_0 ),
        .I1(\alu_result_reg[31]_i_8_n_0 ),
        .I2(op2[0]),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(\alu_result_reg[3]_i_8_n_0 ),
        .O(\alu_result_reg[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \alu_result_reg[3]_i_6 
       (.I0(\alu_result_reg[31]_i_7_n_0 ),
        .I1(op2[0]),
        .I2(\alu_result_reg[30]_i_11_n_0 ),
        .I3(\alu_result_reg[4]_i_5_n_0 ),
        .O(\alu_result_reg[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0AAAACCCC)) 
    \alu_result_reg[3]_i_7 
       (.I0(\alu_result_reg[5]_i_6_n_0 ),
        .I1(\alu_result_reg[2]_i_9_n_0 ),
        .I2(\alu_result_reg[5]_i_7_n_0 ),
        .I3(\alu_result_reg[8]_i_9_n_0 ),
        .I4(op2[1]),
        .I5(op2[2]),
        .O(\alu_result_reg[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hEE20)) 
    \alu_result_reg[3]_i_8 
       (.I0(op2[3]),
        .I1(Q[3]),
        .I2(\alu_result_reg[28]_i_7_n_0 ),
        .I3(\alu_result_reg[31]_i_4_n_0 ),
        .O(\alu_result_reg[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFFFDFFFDFF)) 
    \alu_result_reg[4]_i_1 
       (.I0(\alu_result_reg[4]_i_2_n_0 ),
        .I1(\alu_result_reg[4]_i_3_n_0 ),
        .I2(\alu_result_reg[28]_i_2_n_0 ),
        .I3(\alu_result_reg[4]_i_4_n_0 ),
        .I4(\alu_result_reg[4]_i_5_n_0 ),
        .I5(\alu_result_reg[17]_i_3_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hCCCCCCCCCC88CCC0)) 
    \alu_result_reg[4]_i_2 
       (.I0(\alu_result_reg[5]_i_2_n_0 ),
        .I1(\alu_result_reg[4]_i_6_n_0 ),
        .I2(\alu_result_reg[4]_i_7_n_0 ),
        .I3(\alu_result_reg[31]_i_7_n_0 ),
        .I4(op2[0]),
        .I5(\alu_result_reg[31]_i_8_n_0 ),
        .O(\alu_result_reg[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \alu_result_reg[4]_i_3 
       (.I0(\alu_result_reg[31]_i_7_n_0 ),
        .I1(op2[0]),
        .I2(\alu_result_reg[30]_i_11_n_0 ),
        .I3(\alu_result_reg[5]_i_14_n_0 ),
        .O(\alu_result_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5151F3F3F3F300F3)) 
    \alu_result_reg[4]_i_4 
       (.I0(\alu_result_reg[29]_i_10_n_0 ),
        .I1(\alu_result_reg_reg[31] [4]),
        .I2(\opcode_reg_reg[0]_0 ),
        .I3(\alu_result_reg[31]_i_13_n_0 ),
        .I4(op2[4]),
        .I5(Q[4]),
        .O(\alu_result_reg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFCAF0CA0FCA00CA)) 
    \alu_result_reg[4]_i_5 
       (.I0(\alu_result_reg[4]_i_8_n_0 ),
        .I1(\alu_result_reg[6]_i_7_n_0 ),
        .I2(op2[1]),
        .I3(op2[2]),
        .I4(\alu_result_reg[6]_i_8_n_0 ),
        .I5(\alu_result_reg[9]_i_8_n_0 ),
        .O(\alu_result_reg[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h119F)) 
    \alu_result_reg[4]_i_6 
       (.I0(Q[4]),
        .I1(op2[4]),
        .I2(\alu_result_reg[28]_i_7_n_0 ),
        .I3(\alu_result_reg[31]_i_4_n_0 ),
        .O(\alu_result_reg[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFCAF0CA0FCA00CA)) 
    \alu_result_reg[4]_i_7 
       (.I0(\alu_result_reg[4]_i_8_n_0 ),
        .I1(\alu_result_reg[6]_i_7_n_0 ),
        .I2(op2[1]),
        .I3(op2[2]),
        .I4(\alu_result_reg[5]_i_13_n_0 ),
        .I5(\alu_result_reg[5]_i_11_n_0 ),
        .O(\alu_result_reg[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0F3355000F3355FF)) 
    \alu_result_reg[4]_i_8 
       (.I0(Q[20]),
        .I1(Q[12]),
        .I2(Q[28]),
        .I3(op2[4]),
        .I4(op2[3]),
        .I5(Q[4]),
        .O(\alu_result_reg[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4F4FFF4)) 
    \alu_result_reg[5]_i_1 
       (.I0(\alu_result_reg[5]_i_2_n_0 ),
        .I1(\alu_result_reg[31]_i_2_n_0 ),
        .I2(\alu_result_reg[5]_i_3_n_0 ),
        .I3(\alu_result_reg[30]_i_4_n_0 ),
        .I4(\alu_result_reg[5]_i_4_n_0 ),
        .I5(\alu_result_reg[5]_i_5_n_0 ),
        .O(D[5]));
  LUT3 #(
    .INIT(8'h80)) 
    \alu_result_reg[5]_i_10 
       (.I0(\alu_result_reg[29]_i_10_n_0 ),
        .I1(Q[5]),
        .I2(op2[5]),
        .O(\alu_result_reg[5]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF053FF53)) 
    \alu_result_reg[5]_i_11 
       (.I0(Q[26]),
        .I1(Q[10]),
        .I2(op2[4]),
        .I3(op2[3]),
        .I4(Q[18]),
        .O(\alu_result_reg[5]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF035FF35)) 
    \alu_result_reg[5]_i_12 
       (.I0(Q[12]),
        .I1(Q[20]),
        .I2(op2[3]),
        .I3(op2[4]),
        .I4(Q[28]),
        .O(\alu_result_reg[5]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF053FF53)) 
    \alu_result_reg[5]_i_13 
       (.I0(Q[24]),
        .I1(Q[8]),
        .I2(op2[4]),
        .I3(op2[3]),
        .I4(Q[16]),
        .O(\alu_result_reg[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFCAF0CA0FCA00CA)) 
    \alu_result_reg[5]_i_14 
       (.I0(\alu_result_reg[5]_i_6_n_0 ),
        .I1(\alu_result_reg[5]_i_7_n_0 ),
        .I2(op2[1]),
        .I3(op2[2]),
        .I4(\alu_result_reg[8]_i_9_n_0 ),
        .I5(\alu_result_reg[10]_i_8_n_0 ),
        .O(\alu_result_reg[5]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFEFE3E02)) 
    \alu_result_reg[5]_i_15 
       (.I0(\alu_result_reg[31]_i_13_n_0 ),
        .I1(op2[5]),
        .I2(Q[5]),
        .I3(\alu_result_reg[28]_i_7_n_0 ),
        .I4(\alu_result_reg[31]_i_4_n_0 ),
        .O(\alu_result_reg[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFCAF0CA0FCA00CA)) 
    \alu_result_reg[5]_i_2 
       (.I0(\alu_result_reg[5]_i_6_n_0 ),
        .I1(\alu_result_reg[5]_i_7_n_0 ),
        .I2(op2[1]),
        .I3(op2[2]),
        .I4(\alu_result_reg[5]_i_8_n_0 ),
        .I5(\alu_result_reg[5]_i_9_n_0 ),
        .O(\alu_result_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF80FF80FFFFFF80)) 
    \alu_result_reg[5]_i_3 
       (.I0(op1),
        .I1(\alu_result_reg[31]_i_7_n_0 ),
        .I2(\alu_result_reg[30]_i_11_n_0 ),
        .I3(\alu_result_reg[5]_i_10_n_0 ),
        .I4(\alu_result_reg_reg[31] [5]),
        .I5(\opcode_reg_reg[0]_0 ),
        .O(\alu_result_reg[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \alu_result_reg[5]_i_4 
       (.I0(\alu_result_reg[5]_i_11_n_0 ),
        .I1(\alu_result_reg[6]_i_7_n_0 ),
        .I2(op2[2]),
        .I3(op2[1]),
        .I4(\alu_result_reg[5]_i_12_n_0 ),
        .I5(\alu_result_reg[5]_i_13_n_0 ),
        .O(\alu_result_reg[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCDCCCCCFCDCCCC)) 
    \alu_result_reg[5]_i_5 
       (.I0(\alu_result_reg[5]_i_14_n_0 ),
        .I1(\alu_result_reg[5]_i_15_n_0 ),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(op2[0]),
        .I4(\alu_result_reg[30]_i_11_n_0 ),
        .I5(\alu_result_reg[6]_i_5_n_0 ),
        .O(\alu_result_reg[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F3355000F3355FF)) 
    \alu_result_reg[5]_i_6 
       (.I0(Q[21]),
        .I1(Q[13]),
        .I2(Q[29]),
        .I3(op2[4]),
        .I4(op2[3]),
        .I5(Q[5]),
        .O(\alu_result_reg[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h33550F0033550FFF)) 
    \alu_result_reg[5]_i_7 
       (.I0(Q[15]),
        .I1(op1),
        .I2(Q[23]),
        .I3(op2[4]),
        .I4(op2[3]),
        .I5(Q[7]),
        .O(\alu_result_reg[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF053FF53)) 
    \alu_result_reg[5]_i_8 
       (.I0(Q[25]),
        .I1(Q[9]),
        .I2(op2[4]),
        .I3(op2[3]),
        .I4(Q[17]),
        .O(\alu_result_reg[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF053FF53)) 
    \alu_result_reg[5]_i_9 
       (.I0(Q[27]),
        .I1(Q[11]),
        .I2(op2[4]),
        .I3(op2[3]),
        .I4(Q[19]),
        .O(\alu_result_reg[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \alu_result_reg[6]_i_1 
       (.I0(\alu_result_reg[6]_i_2_n_0 ),
        .I1(\alu_result_reg[6]_i_3_n_0 ),
        .I2(\alu_result_reg[6]_i_4_n_0 ),
        .I3(\alu_result_reg[28]_i_2_n_0 ),
        .I4(\alu_result_reg[17]_i_3_n_0 ),
        .I5(\alu_result_reg[6]_i_5_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hCCCCCCCDCCCCCFCD)) 
    \alu_result_reg[6]_i_2 
       (.I0(\alu_result_reg[5]_i_4_n_0 ),
        .I1(\alu_result_reg[6]_i_6_n_0 ),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(op2[0]),
        .I4(\alu_result_reg[31]_i_8_n_0 ),
        .I5(\alu_result_reg[7]_i_6_n_0 ),
        .O(\alu_result_reg[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \alu_result_reg[6]_i_3 
       (.I0(\alu_result_reg[31]_i_7_n_0 ),
        .I1(op2[0]),
        .I2(\alu_result_reg[30]_i_11_n_0 ),
        .I3(\alu_result_reg[7]_i_5_n_0 ),
        .O(\alu_result_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC00AC00AFFFFC00A)) 
    \alu_result_reg[6]_i_4 
       (.I0(\alu_result_reg[31]_i_13_n_0 ),
        .I1(\alu_result_reg[29]_i_10_n_0 ),
        .I2(Q[6]),
        .I3(op2[6]),
        .I4(\alu_result_reg_reg[31] [6]),
        .I5(\opcode_reg_reg[0]_0 ),
        .O(\alu_result_reg[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \alu_result_reg[6]_i_5 
       (.I0(\alu_result_reg[11]_i_8_n_0 ),
        .I1(\alu_result_reg[6]_i_7_n_0 ),
        .I2(op2[2]),
        .I3(op2[1]),
        .I4(\alu_result_reg[6]_i_8_n_0 ),
        .I5(\alu_result_reg[9]_i_8_n_0 ),
        .O(\alu_result_reg[6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFC28)) 
    \alu_result_reg[6]_i_6 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[6]),
        .I2(op2[6]),
        .I3(\alu_result_reg[31]_i_4_n_0 ),
        .O(\alu_result_reg[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F5500330F55FF33)) 
    \alu_result_reg[6]_i_7 
       (.I0(Q[14]),
        .I1(Q[6]),
        .I2(Q[30]),
        .I3(op2[4]),
        .I4(op2[3]),
        .I5(Q[22]),
        .O(\alu_result_reg[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5030503F5F305F3F)) 
    \alu_result_reg[6]_i_8 
       (.I0(op1),
        .I1(Q[16]),
        .I2(op2[3]),
        .I3(op2[4]),
        .I4(Q[8]),
        .I5(Q[24]),
        .O(\alu_result_reg[6]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \alu_result_reg[7]_i_1 
       (.I0(\alu_result_reg[7]_i_2_n_0 ),
        .I1(\alu_result_reg[7]_i_3_n_0 ),
        .I2(\alu_result_reg[28]_i_2_n_0 ),
        .I3(\alu_result_reg[7]_i_4_n_0 ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h05030000)) 
    \alu_result_reg[7]_i_2 
       (.I0(\alu_result_reg[8]_i_8_n_0 ),
        .I1(\alu_result_reg[7]_i_5_n_0 ),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(op2[0]),
        .I4(\alu_result_reg[30]_i_11_n_0 ),
        .O(\alu_result_reg[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000503)) 
    \alu_result_reg[7]_i_3 
       (.I0(\alu_result_reg[8]_i_7_n_0 ),
        .I1(\alu_result_reg[7]_i_6_n_0 ),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(op2[0]),
        .I4(\alu_result_reg[31]_i_8_n_0 ),
        .O(\alu_result_reg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEFFAEAEAEAE)) 
    \alu_result_reg[7]_i_4 
       (.I0(\alu_result_reg[7]_i_7_n_0 ),
        .I1(\alu_result_reg_reg[31] [7]),
        .I2(\opcode_reg_reg[0]_0 ),
        .I3(Q[7]),
        .I4(op2[7]),
        .I5(\alu_result_reg[31]_i_13_n_0 ),
        .O(\alu_result_reg[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \alu_result_reg[7]_i_5 
       (.I0(\alu_result_reg[12]_i_9_n_0 ),
        .I1(\alu_result_reg[5]_i_7_n_0 ),
        .I2(op2[2]),
        .I3(op2[1]),
        .I4(\alu_result_reg[8]_i_9_n_0 ),
        .I5(\alu_result_reg[10]_i_8_n_0 ),
        .O(\alu_result_reg[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFAC0FACF0AC00AC)) 
    \alu_result_reg[7]_i_6 
       (.I0(\alu_result_reg[5]_i_9_n_0 ),
        .I1(\alu_result_reg[5]_i_7_n_0 ),
        .I2(op2[2]),
        .I3(op2[1]),
        .I4(\alu_result_reg[13]_i_7_n_0 ),
        .I5(\alu_result_reg[5]_i_8_n_0 ),
        .O(\alu_result_reg[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h80A8BCA8)) 
    \alu_result_reg[7]_i_7 
       (.I0(\alu_result_reg[29]_i_10_n_0 ),
        .I1(Q[7]),
        .I2(op2[7]),
        .I3(\alu_result_reg[31]_i_9_n_0 ),
        .I4(\alu_result_reg[31]_i_10_n_0 ),
        .O(\alu_result_reg[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \alu_result_reg[8]_i_1 
       (.I0(\alu_result_reg[8]_i_2_n_0 ),
        .I1(\alu_result_reg[8]_i_3_n_0 ),
        .I2(\alu_result_reg[8]_i_4_n_0 ),
        .I3(\alu_result_reg[28]_i_2_n_0 ),
        .I4(\alu_result_reg[12]_i_5_n_0 ),
        .I5(\alu_result_reg[8]_i_5_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hCCCCCDCCCCCCCDCF)) 
    \alu_result_reg[8]_i_2 
       (.I0(\alu_result_reg[9]_i_7_n_0 ),
        .I1(\alu_result_reg[8]_i_6_n_0 ),
        .I2(\alu_result_reg[31]_i_8_n_0 ),
        .I3(op2[0]),
        .I4(\alu_result_reg[31]_i_7_n_0 ),
        .I5(\alu_result_reg[8]_i_7_n_0 ),
        .O(\alu_result_reg[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \alu_result_reg[8]_i_3 
       (.I0(\alu_result_reg[30]_i_11_n_0 ),
        .I1(op2[0]),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(\alu_result_reg[8]_i_8_n_0 ),
        .O(\alu_result_reg[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC00AC00AFFFFC00A)) 
    \alu_result_reg[8]_i_4 
       (.I0(\alu_result_reg[31]_i_13_n_0 ),
        .I1(\alu_result_reg[29]_i_10_n_0 ),
        .I2(Q[8]),
        .I3(op2[8]),
        .I4(\alu_result_reg_reg[31] [8]),
        .I5(\opcode_reg_reg[0]_0 ),
        .O(\alu_result_reg[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \alu_result_reg[8]_i_5 
       (.I0(\alu_result_reg[12]_i_10_n_0 ),
        .I1(\alu_result_reg[8]_i_9_n_0 ),
        .I2(op2[1]),
        .I3(op2[2]),
        .I4(\alu_result_reg[12]_i_9_n_0 ),
        .I5(\alu_result_reg[10]_i_8_n_0 ),
        .O(\alu_result_reg[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFC28)) 
    \alu_result_reg[8]_i_6 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[8]),
        .I2(op2[8]),
        .I3(\alu_result_reg[31]_i_4_n_0 ),
        .O(\alu_result_reg[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \alu_result_reg[8]_i_7 
       (.I0(\alu_result_reg[5]_i_12_n_0 ),
        .I1(\alu_result_reg[5]_i_11_n_0 ),
        .I2(op2[2]),
        .I3(op2[1]),
        .I4(\alu_result_reg[14]_i_12_n_0 ),
        .I5(\alu_result_reg[5]_i_13_n_0 ),
        .O(\alu_result_reg[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \alu_result_reg[8]_i_8 
       (.I0(\alu_result_reg[11]_i_8_n_0 ),
        .I1(\alu_result_reg[9]_i_8_n_0 ),
        .I2(op2[2]),
        .I3(op2[1]),
        .I4(\alu_result_reg[14]_i_8_n_0 ),
        .I5(\alu_result_reg[6]_i_8_n_0 ),
        .O(\alu_result_reg[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5030503F5F305F3F)) 
    \alu_result_reg[8]_i_9 
       (.I0(op1),
        .I1(Q[17]),
        .I2(op2[3]),
        .I3(op2[4]),
        .I4(Q[9]),
        .I5(Q[25]),
        .O(\alu_result_reg[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \alu_result_reg[9]_i_1 
       (.I0(\alu_result_reg[9]_i_2_n_0 ),
        .I1(\alu_result_reg[9]_i_3_n_0 ),
        .I2(\alu_result_reg[9]_i_4_n_0 ),
        .I3(\alu_result_reg[28]_i_2_n_0 ),
        .I4(\alu_result_reg[12]_i_5_n_0 ),
        .I5(\alu_result_reg[9]_i_5_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hCCCCCDCCCCCCCDCF)) 
    \alu_result_reg[9]_i_2 
       (.I0(\alu_result_reg[10]_i_6_n_0 ),
        .I1(\alu_result_reg[9]_i_6_n_0 ),
        .I2(\alu_result_reg[31]_i_8_n_0 ),
        .I3(op2[0]),
        .I4(\alu_result_reg[31]_i_7_n_0 ),
        .I5(\alu_result_reg[9]_i_7_n_0 ),
        .O(\alu_result_reg[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \alu_result_reg[9]_i_3 
       (.I0(\alu_result_reg[30]_i_11_n_0 ),
        .I1(op2[0]),
        .I2(\alu_result_reg[31]_i_7_n_0 ),
        .I3(\alu_result_reg[8]_i_5_n_0 ),
        .O(\alu_result_reg[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC00AC00AFFFFC00A)) 
    \alu_result_reg[9]_i_4 
       (.I0(\alu_result_reg[31]_i_13_n_0 ),
        .I1(\alu_result_reg[29]_i_10_n_0 ),
        .I2(Q[9]),
        .I3(op2[9]),
        .I4(\alu_result_reg_reg[31] [9]),
        .I5(\opcode_reg_reg[0]_0 ),
        .O(\alu_result_reg[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \alu_result_reg[9]_i_5 
       (.I0(\alu_result_reg[14]_i_10_n_0 ),
        .I1(\alu_result_reg[9]_i_8_n_0 ),
        .I2(op2[1]),
        .I3(op2[2]),
        .I4(\alu_result_reg[14]_i_8_n_0 ),
        .I5(\alu_result_reg[11]_i_8_n_0 ),
        .O(\alu_result_reg[9]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFC28)) 
    \alu_result_reg[9]_i_6 
       (.I0(\alu_result_reg[28]_i_7_n_0 ),
        .I1(Q[9]),
        .I2(op2[9]),
        .I3(\alu_result_reg[31]_i_4_n_0 ),
        .O(\alu_result_reg[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \alu_result_reg[9]_i_7 
       (.I0(\alu_result_reg[13]_i_7_n_0 ),
        .I1(\alu_result_reg[5]_i_9_n_0 ),
        .I2(op2[2]),
        .I3(op2[1]),
        .I4(\alu_result_reg[15]_i_9_n_0 ),
        .I5(\alu_result_reg[5]_i_8_n_0 ),
        .O(\alu_result_reg[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5030503F5F305F3F)) 
    \alu_result_reg[9]_i_8 
       (.I0(op1),
        .I1(Q[18]),
        .I2(op2[3]),
        .I3(op2[4]),
        .I4(Q[10]),
        .I5(Q[26]),
        .O(\alu_result_reg[9]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \op1_reg[31]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg[1]_0 ),
        .O(\op1_reg[31]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[0] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[10] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[11] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[12] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[13] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[14] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[15] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[16] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[17] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[18] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[19] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[1] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[20] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[21] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[22] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[23] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[24] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[25] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[26] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[27] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[28] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[29] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[2] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[30] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[31] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [31]),
        .Q(op1));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[3] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[4] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[5] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[6] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[7] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[8] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_reg_reg[9] 
       (.C(CLK),
        .CE(\op1_reg[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [9]),
        .Q(Q[9]));
  LUT3 #(
    .INIT(8'h82)) 
    \op2_reg[31]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg[1]_0 ),
        .O(op2_reg));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[0] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [0]),
        .Q(op2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[10] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [10]),
        .Q(op2[10]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[11] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [11]),
        .Q(op2[11]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[12] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [12]),
        .Q(op2[12]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[13] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [13]),
        .Q(op2[13]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[14] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [14]),
        .Q(op2[14]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[15] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [15]),
        .Q(op2[15]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[16] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [16]),
        .Q(op2[16]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[17] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [17]),
        .Q(op2[17]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[18] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [18]),
        .Q(op2[18]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[19] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [19]),
        .Q(op2[19]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[1] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [1]),
        .Q(op2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[20] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [20]),
        .Q(op2[20]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[21] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [21]),
        .Q(op2[21]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[22] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [22]),
        .Q(op2[22]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[23] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [23]),
        .Q(op2[23]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[24] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [24]),
        .Q(op2[24]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[25] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [25]),
        .Q(op2[25]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[26] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [26]),
        .Q(op2[26]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[27] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [27]),
        .Q(op2[27]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[28] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [28]),
        .Q(op2[28]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[29] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [29]),
        .Q(op2[29]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[2] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [2]),
        .Q(op2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[30] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [30]),
        .Q(op2[30]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[31] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [31]),
        .Q(op2[31]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[3] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [3]),
        .Q(op2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[4] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [4]),
        .Q(op2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[5] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [5]),
        .Q(op2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[6] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [6]),
        .Q(op2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[7] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [7]),
        .Q(op2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[8] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [8]),
        .Q(op2[8]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_reg_reg[9] 
       (.C(CLK),
        .CE(op2_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [9]),
        .Q(op2[9]));
  LUT3 #(
    .INIT(8'h84)) 
    \opcode_reg[5]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg[1]_0 ),
        .O(opcode_reg));
  FDCE #(
    .INIT(1'b0)) 
    \opcode_reg_reg[0] 
       (.C(CLK),
        .CE(opcode_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [0]),
        .Q(\opcode_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \opcode_reg_reg[1] 
       (.C(CLK),
        .CE(opcode_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [1]),
        .Q(\opcode_reg_reg[1]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \opcode_reg_reg[2] 
       (.C(CLK),
        .CE(opcode_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [2]),
        .Q(\opcode_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \opcode_reg_reg[3] 
       (.C(CLK),
        .CE(opcode_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [3]),
        .Q(\opcode_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \opcode_reg_reg[4] 
       (.C(CLK),
        .CE(opcode_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [4]),
        .Q(\opcode_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \opcode_reg_reg[5] 
       (.C(CLK),
        .CE(opcode_reg),
        .CLR(reset_IBUF),
        .D(\op2_reg_reg[31]_1 [5]),
        .Q(\opcode_reg_reg_n_0_[5] ));
  LUT4 #(
    .INIT(16'hBC33)) 
    \state[0]_i_1 
       (.I0(reset_IBUF),
        .I1(\state_reg[1]_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hB3F0)) 
    \state[1]_i_1 
       (.I0(reset_IBUF),
        .I1(\state_reg[1]_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\state[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ));
endmodule

module mod_m_counter
   (\counter_reg[8]_0 ,
    CLK,
    reset_IBUF);
  output \counter_reg[8]_0 ;
  input CLK;
  input reset_IBUF;

  wire CLK;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[7]_i_2_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [8:0]counter_reg;
  wire \counter_reg[8]_0 ;
  wire [8:0]p_0_in;
  wire reset_IBUF;

  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_sequential_state_reg[1]_i_2__0 
       (.I0(counter_reg[8]),
        .I1(counter_reg[2]),
        .I2(counter_reg[1]),
        .I3(counter_reg[6]),
        .I4(\counter[0]_i_2_n_0 ),
        .O(\counter_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h1115FFFF11151115)) 
    \counter[0]_i_1 
       (.I0(counter_reg[0]),
        .I1(counter_reg[8]),
        .I2(counter_reg[7]),
        .I3(counter_reg[6]),
        .I4(\counter[0]_i_2_n_0 ),
        .I5(\counter[7]_i_2_n_0 ),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[0]_i_2 
       (.I0(counter_reg[5]),
        .I1(counter_reg[7]),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(counter_reg[0]),
        .O(\counter[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \counter[1]_i_1 
       (.I0(\counter[8]_i_2_n_0 ),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \counter[2]_i_1 
       (.I0(\counter[8]_i_2_n_0 ),
        .I1(counter_reg[2]),
        .I2(counter_reg[1]),
        .I3(counter_reg[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \counter[3]_i_1 
       (.I0(\counter[8]_i_2_n_0 ),
        .I1(counter_reg[3]),
        .I2(counter_reg[0]),
        .I3(counter_reg[2]),
        .I4(counter_reg[1]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \counter[4]_i_1 
       (.I0(\counter[8]_i_2_n_0 ),
        .I1(counter_reg[4]),
        .I2(counter_reg[3]),
        .I3(counter_reg[0]),
        .I4(counter_reg[2]),
        .I5(counter_reg[1]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h8888888828888888)) 
    \counter[5]_i_1 
       (.I0(\counter[8]_i_2_n_0 ),
        .I1(counter_reg[5]),
        .I2(counter_reg[4]),
        .I3(counter_reg[0]),
        .I4(counter_reg[3]),
        .I5(\counter[7]_i_2_n_0 ),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \counter[6]_i_1 
       (.I0(\counter[8]_i_2_n_0 ),
        .I1(counter_reg[6]),
        .I2(counter_reg[1]),
        .I3(counter_reg[2]),
        .I4(counter_reg[5]),
        .I5(\counter[8]_i_4_n_0 ),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h8288888888888888)) 
    \counter[7]_i_1 
       (.I0(\counter[8]_i_2_n_0 ),
        .I1(counter_reg[7]),
        .I2(\counter[7]_i_2_n_0 ),
        .I3(counter_reg[6]),
        .I4(counter_reg[5]),
        .I5(\counter[8]_i_4_n_0 ),
        .O(p_0_in[7]));
  LUT2 #(
    .INIT(4'h7)) 
    \counter[7]_i_2 
       (.I0(counter_reg[1]),
        .I1(counter_reg[2]),
        .O(\counter[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8288888888888888)) 
    \counter[8]_i_1 
       (.I0(\counter[8]_i_2_n_0 ),
        .I1(counter_reg[8]),
        .I2(\counter[8]_i_3_n_0 ),
        .I3(counter_reg[5]),
        .I4(counter_reg[7]),
        .I5(\counter[8]_i_4_n_0 ),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h11111FFFFFFFFFFF)) 
    \counter[8]_i_2 
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[2]),
        .I3(counter_reg[1]),
        .I4(\counter[8]_i_5_n_0 ),
        .I5(counter_reg[8]),
        .O(\counter[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \counter[8]_i_3 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[6]),
        .O(\counter[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \counter[8]_i_4 
       (.I0(counter_reg[3]),
        .I1(counter_reg[0]),
        .I2(counter_reg[4]),
        .O(\counter[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[8]_i_5 
       (.I0(counter_reg[4]),
        .I1(counter_reg[3]),
        .I2(counter_reg[7]),
        .I3(counter_reg[5]),
        .O(\counter[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(p_0_in[0]),
        .Q(counter_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(p_0_in[1]),
        .Q(counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(p_0_in[2]),
        .Q(counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(p_0_in[3]),
        .Q(counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(p_0_in[4]),
        .Q(counter_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(p_0_in[5]),
        .Q(counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(p_0_in[6]),
        .Q(counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(p_0_in[7]),
        .Q(counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(p_0_in[8]),
        .Q(counter_reg[8]));
endmodule

module rx_uart
   (\b_reg_reg[31]_0 ,
    \FSM_sequential_state_reg_reg[1]_0 ,
    \FSM_sequential_state_reg_reg[0]_0 ,
    D,
    CLK,
    reset_IBUF);
  output [31:0]\b_reg_reg[31]_0 ;
  output \FSM_sequential_state_reg_reg[1]_0 ;
  input \FSM_sequential_state_reg_reg[0]_0 ;
  input [0:0]D;
  input CLK;
  input reset_IBUF;

  wire CLK;
  wire [0:0]D;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg_reg[0]_0 ;
  wire \FSM_sequential_state_reg_reg[1]_0 ;
  wire b_next;
  wire \b_reg[31]_i_2_n_0 ;
  wire [31:0]\b_reg_reg[31]_0 ;
  wire [31:0]data_out_rx;
  wire n_next;
  wire [5:0]n_reg;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  wire \n_reg[3]_i_1_n_0 ;
  wire \n_reg[4]_i_1_n_0 ;
  wire \n_reg[5]_i_2_n_0 ;
  wire \n_reg[5]_i_3_n_0 ;
  wire \n_reg[5]_i_4_n_0 ;
  wire \n_reg[5]_i_5_n_0 ;
  wire reset_IBUF;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1_n_0 ;
  wire \s_reg[1]_i_1__0_n_0 ;
  wire \s_reg[2]_i_1__0_n_0 ;
  wire \s_reg[3]_i_2_n_0 ;
  wire \s_reg[3]_i_3_n_0 ;
  wire [1:0]state_reg;

  (* \PinAttr:I1:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h1313CFCC)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[0]_0 ),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(D),
        .I4(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "196" *) 
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h1CF0)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[0]_0 ),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080200000C02)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(\FSM_sequential_state_reg_reg[0]_0 ),
        .I3(s_reg[3]),
        .I4(\n_reg[5]_i_4_n_0 ),
        .I5(\n_reg[5]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \b_reg[31]_i_1 
       (.I0(\b_reg[31]_i_2_n_0 ),
        .I1(state_reg[0]),
        .O(b_next));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \b_reg[31]_i_2 
       (.I0(state_reg[1]),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(s_reg[3]),
        .I3(s_reg[1]),
        .I4(s_reg[0]),
        .I5(s_reg[2]),
        .O(\b_reg[31]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[1]),
        .Q(data_out_rx[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[10] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[11]),
        .Q(data_out_rx[10]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[11] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[12]),
        .Q(data_out_rx[11]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[12] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[13]),
        .Q(data_out_rx[12]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[13] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[14]),
        .Q(data_out_rx[13]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[14] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[15]),
        .Q(data_out_rx[14]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[15] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[16]),
        .Q(data_out_rx[15]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[16] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[17]),
        .Q(data_out_rx[16]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[17] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[18]),
        .Q(data_out_rx[17]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[18] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[19]),
        .Q(data_out_rx[18]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[19] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[20]),
        .Q(data_out_rx[19]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[2]),
        .Q(data_out_rx[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[20] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[21]),
        .Q(data_out_rx[20]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[21] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[22]),
        .Q(data_out_rx[21]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[22] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[23]),
        .Q(data_out_rx[22]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[23] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[24]),
        .Q(data_out_rx[23]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[24] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[25]),
        .Q(data_out_rx[24]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[25] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[26]),
        .Q(data_out_rx[25]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[26] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[27]),
        .Q(data_out_rx[26]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[27] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[28]),
        .Q(data_out_rx[27]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[28] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[29]),
        .Q(data_out_rx[28]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[29] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[30]),
        .Q(data_out_rx[29]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[3]),
        .Q(data_out_rx[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[30] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[31]),
        .Q(data_out_rx[30]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[31] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(D),
        .Q(data_out_rx[31]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[4]),
        .Q(data_out_rx[3]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[5]),
        .Q(data_out_rx[4]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[6]),
        .Q(data_out_rx[5]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[7]),
        .Q(data_out_rx[6]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[8]),
        .Q(data_out_rx[7]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[8] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[9]),
        .Q(data_out_rx[8]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[9] 
       (.C(CLK),
        .CE(b_next),
        .CLR(reset_IBUF),
        .D(data_out_rx[10]),
        .Q(data_out_rx[9]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \n_reg[0]_i_1 
       (.I0(state_reg[1]),
        .I1(n_reg[0]),
        .O(\n_reg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \n_reg[1]_i_1 
       (.I0(state_reg[1]),
        .I1(n_reg[1]),
        .I2(n_reg[0]),
        .O(\n_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \n_reg[2]_i_1 
       (.I0(state_reg[1]),
        .I1(n_reg[2]),
        .I2(n_reg[0]),
        .I3(n_reg[1]),
        .O(\n_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \n_reg[3]_i_1 
       (.I0(state_reg[1]),
        .I1(n_reg[3]),
        .I2(n_reg[1]),
        .I3(n_reg[0]),
        .I4(n_reg[2]),
        .O(\n_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \n_reg[4]_i_1 
       (.I0(state_reg[1]),
        .I1(n_reg[4]),
        .I2(n_reg[2]),
        .I3(n_reg[0]),
        .I4(n_reg[1]),
        .I5(n_reg[3]),
        .O(\n_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200300)) 
    \n_reg[5]_i_1 
       (.I0(\n_reg[5]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(s_reg[3]),
        .I5(\n_reg[5]_i_4_n_0 ),
        .O(n_next));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \n_reg[5]_i_2 
       (.I0(state_reg[1]),
        .I1(n_reg[5]),
        .I2(\n_reg[5]_i_5_n_0 ),
        .O(\n_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \n_reg[5]_i_3 
       (.I0(n_reg[4]),
        .I1(n_reg[2]),
        .I2(n_reg[0]),
        .I3(n_reg[1]),
        .I4(n_reg[3]),
        .I5(n_reg[5]),
        .O(\n_reg[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \n_reg[5]_i_4 
       (.I0(s_reg[1]),
        .I1(s_reg[0]),
        .I2(s_reg[2]),
        .O(\n_reg[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \n_reg[5]_i_5 
       (.I0(n_reg[3]),
        .I1(n_reg[1]),
        .I2(n_reg[0]),
        .I3(n_reg[2]),
        .I4(n_reg[4]),
        .O(\n_reg[5]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(CLK),
        .CE(n_next),
        .CLR(reset_IBUF),
        .D(\n_reg[0]_i_1_n_0 ),
        .Q(n_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(CLK),
        .CE(n_next),
        .CLR(reset_IBUF),
        .D(\n_reg[1]_i_1_n_0 ),
        .Q(n_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(CLK),
        .CE(n_next),
        .CLR(reset_IBUF),
        .D(\n_reg[2]_i_1_n_0 ),
        .Q(n_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[3] 
       (.C(CLK),
        .CE(n_next),
        .CLR(reset_IBUF),
        .D(\n_reg[3]_i_1_n_0 ),
        .Q(n_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[4] 
       (.C(CLK),
        .CE(n_next),
        .CLR(reset_IBUF),
        .D(\n_reg[4]_i_1_n_0 ),
        .Q(n_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[5] 
       (.C(CLK),
        .CE(n_next),
        .CLR(reset_IBUF),
        .D(\n_reg[5]_i_2_n_0 ),
        .Q(n_reg[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[0]_i_1 
       (.I0(data_out_rx[0]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[10]_i_1 
       (.I0(data_out_rx[10]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [10]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[11]_i_1 
       (.I0(data_out_rx[11]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [11]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[12]_i_1 
       (.I0(data_out_rx[12]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [12]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[13]_i_1 
       (.I0(data_out_rx[13]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [13]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[14]_i_1 
       (.I0(data_out_rx[14]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [14]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[15]_i_1 
       (.I0(data_out_rx[15]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [15]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[16]_i_1 
       (.I0(data_out_rx[16]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [16]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[17]_i_1 
       (.I0(data_out_rx[17]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [17]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[18]_i_1 
       (.I0(data_out_rx[18]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [18]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[19]_i_1 
       (.I0(data_out_rx[19]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [19]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[1]_i_1 
       (.I0(data_out_rx[1]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[20]_i_1 
       (.I0(data_out_rx[20]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [20]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[21]_i_1 
       (.I0(data_out_rx[21]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [21]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[22]_i_1 
       (.I0(data_out_rx[22]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [22]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[23]_i_1 
       (.I0(data_out_rx[23]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [23]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[24]_i_1 
       (.I0(data_out_rx[24]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [24]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[25]_i_1 
       (.I0(data_out_rx[25]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [25]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[26]_i_1 
       (.I0(data_out_rx[26]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [26]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[27]_i_1 
       (.I0(data_out_rx[27]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [27]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[28]_i_1 
       (.I0(data_out_rx[28]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [28]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[29]_i_1 
       (.I0(data_out_rx[29]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [29]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[2]_i_1 
       (.I0(data_out_rx[2]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[30]_i_1 
       (.I0(data_out_rx[30]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [30]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[31]_i_2 
       (.I0(data_out_rx[31]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [31]));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \op2_reg[31]_i_3 
       (.I0(\s_reg[3]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(\FSM_sequential_state_reg_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[3]_i_1 
       (.I0(data_out_rx[3]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[4]_i_1 
       (.I0(data_out_rx[4]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [4]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[5]_i_1 
       (.I0(data_out_rx[5]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [5]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[6]_i_1 
       (.I0(data_out_rx[6]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [6]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[7]_i_1 
       (.I0(data_out_rx[7]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [7]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[8]_i_1 
       (.I0(data_out_rx[8]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [8]));
  LUT2 #(
    .INIT(4'h2)) 
    \op2_reg[9]_i_1 
       (.I0(data_out_rx[9]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .O(\b_reg_reg[31]_0 [9]));
  LUT3 #(
    .INIT(8'h0E)) 
    \s_reg[0]_i_1 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(s_reg[0]),
        .O(\s_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0EE0)) 
    \s_reg[1]_i_1__0 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(s_reg[1]),
        .I3(s_reg[0]),
        .O(\s_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h0EE0E0E0)) 
    \s_reg[2]_i_1__0 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(s_reg[2]),
        .I3(s_reg[0]),
        .I4(s_reg[1]),
        .O(\s_reg[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h02FE023E)) 
    \s_reg[3]_i_1 
       (.I0(D),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(\FSM_sequential_state_reg_reg[0]_0 ),
        .I4(\s_reg[3]_i_3_n_0 ),
        .O(s_next));
  LUT6 #(
    .INIT(64'h0AE0E0E0E0E0E0E0)) 
    \s_reg[3]_i_2 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(s_reg[3]),
        .I3(s_reg[1]),
        .I4(s_reg[0]),
        .I5(s_reg[2]),
        .O(\s_reg[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \s_reg[3]_i_3 
       (.I0(s_reg[2]),
        .I1(s_reg[0]),
        .I2(s_reg[1]),
        .I3(s_reg[3]),
        .O(\s_reg[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[0]_i_1_n_0 ),
        .Q(s_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[1]_i_1__0_n_0 ),
        .Q(s_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[2]_i_1__0_n_0 ),
        .Q(s_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[3]_i_2_n_0 ),
        .Q(s_reg[3]));
endmodule

(* ECO_CHECKSUM = "7df05d2" *) (* NB_OP = "32" *) (* NB_OPCode = "6" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module top
   (clk,
    reset,
    tx,
    rx);
  input clk;
  input reset;
  output tx;
  input rx;

  wire \0 ;
  wire alu_instance_n_24;
  wire alu_instance_n_25;
  wire alu_instance_n_26;
  wire alu_instance_n_27;
  wire alu_instance_n_28;
  wire alu_instance_n_29;
  wire alu_instance_n_30;
  wire alu_instance_n_31;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]data0;
  wire [30:0]op1;
  wire reset;
  wire reset_IBUF;
  wire rx;
  wire rx_IBUF;
  wire tx;
  wire tx_OBUF;
  wire uart_instance_n_32;
  wire uart_instance_n_34;
  wire uart_instance_n_35;
  wire uart_instance_n_36;
  wire uart_instance_n_37;
  wire uart_instance_n_38;
  wire uart_instance_n_39;
  wire uart_instance_n_40;
  wire uart_instance_n_41;
  wire uart_instance_n_42;
  wire uart_instance_n_43;
  wire uart_instance_n_44;
  wire uart_instance_n_45;
  wire uart_instance_n_46;
  wire uart_instance_n_47;
  wire uart_instance_n_48;
  wire uart_instance_n_49;
  wire uart_instance_n_50;
  wire uart_instance_n_51;
  wire uart_instance_n_52;
  wire uart_instance_n_53;
  wire uart_instance_n_54;
  wire uart_instance_n_55;
  wire uart_instance_n_56;
  wire uart_instance_n_57;
  wire uart_instance_n_58;
  wire uart_instance_n_59;
  wire uart_instance_n_60;
  wire uart_instance_n_61;
  wire uart_instance_n_62;
  wire uart_instance_n_63;
  wire uart_instance_n_64;
  wire uart_instance_n_65;

  ALU alu_instance
       (.Q(op1),
        .S({uart_instance_n_34,uart_instance_n_35,uart_instance_n_36,uart_instance_n_37}),
        .\alu_result_reg[0]_i_4 (\0 ),
        .\alu_result_reg[12]_i_4 ({uart_instance_n_46,uart_instance_n_47,uart_instance_n_48,uart_instance_n_49}),
        .\alu_result_reg[16]_i_3_0 ({uart_instance_n_50,uart_instance_n_51,uart_instance_n_52,uart_instance_n_53}),
        .\alu_result_reg[20]_i_5_0 ({uart_instance_n_54,uart_instance_n_55,uart_instance_n_56,uart_instance_n_57}),
        .\alu_result_reg[24]_i_5 ({uart_instance_n_58,uart_instance_n_59,uart_instance_n_60,uart_instance_n_61}),
        .\alu_result_reg[28]_i_3 ({uart_instance_n_62,uart_instance_n_63,uart_instance_n_64,uart_instance_n_65}),
        .\alu_result_reg[4]_i_4 ({uart_instance_n_38,uart_instance_n_39,uart_instance_n_40,uart_instance_n_41}),
        .\alu_result_reg[8]_i_4 ({uart_instance_n_42,uart_instance_n_43,uart_instance_n_44,uart_instance_n_45}),
        .\alu_result_reg_reg[15] (uart_instance_n_32),
        .\op1_reg_reg[15] (alu_instance_n_24),
        .\op1_reg_reg[19] (alu_instance_n_25),
        .\op1_reg_reg[19]_0 (alu_instance_n_26),
        .\op1_reg_reg[23] (alu_instance_n_27),
        .\op1_reg_reg[23]_0 (alu_instance_n_28),
        .\op1_reg_reg[23]_1 (alu_instance_n_29),
        .\op1_reg_reg[27] (alu_instance_n_30),
        .\op1_reg_reg[27]_0 (alu_instance_n_31),
        .\op1_reg_reg[30] ({data0[31:28],data0[26],data0[24],data0[22],data0[19],data0[17],data0[14:0]}));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  UART uart_instance
       (.CLK(clk_IBUF_BUFG),
        .D(rx_IBUF),
        .Q(op1),
        .S({uart_instance_n_34,uart_instance_n_35,uart_instance_n_36,uart_instance_n_37}),
        .\alu_result_reg_reg[15] (alu_instance_n_24),
        .\alu_result_reg_reg[16] (alu_instance_n_25),
        .\alu_result_reg_reg[18] (alu_instance_n_26),
        .\alu_result_reg_reg[20] (alu_instance_n_27),
        .\alu_result_reg_reg[21] (alu_instance_n_28),
        .\alu_result_reg_reg[23] (alu_instance_n_29),
        .\alu_result_reg_reg[25] (alu_instance_n_30),
        .\alu_result_reg_reg[27] (alu_instance_n_31),
        .\alu_result_reg_reg[31] ({data0[31:28],data0[26],data0[24],data0[22],data0[19],data0[17],data0[14:0]}),
        .\op2_reg_reg[11] ({uart_instance_n_42,uart_instance_n_43,uart_instance_n_44,uart_instance_n_45}),
        .\op2_reg_reg[15] ({uart_instance_n_46,uart_instance_n_47,uart_instance_n_48,uart_instance_n_49}),
        .\op2_reg_reg[19] ({uart_instance_n_50,uart_instance_n_51,uart_instance_n_52,uart_instance_n_53}),
        .\op2_reg_reg[23] ({uart_instance_n_54,uart_instance_n_55,uart_instance_n_56,uart_instance_n_57}),
        .\op2_reg_reg[27] ({uart_instance_n_58,uart_instance_n_59,uart_instance_n_60,uart_instance_n_61}),
        .\op2_reg_reg[31] ({uart_instance_n_62,uart_instance_n_63,uart_instance_n_64,uart_instance_n_65}),
        .\op2_reg_reg[7] ({uart_instance_n_38,uart_instance_n_39,uart_instance_n_40,uart_instance_n_41}),
        .\opcode_reg_reg[0] (uart_instance_n_32),
        .\opcode_reg_reg[1] (\0 ),
        .reset_IBUF(reset_IBUF),
        .tx_OBUF(tx_OBUF));
endmodule

module tx_uart
   (tx_OBUF,
    CLK,
    reset_IBUF,
    \FSM_sequential_state_reg_reg[0]_0 ,
    alu_result_ready,
    D);
  output tx_OBUF;
  input CLK;
  input reset_IBUF;
  input \FSM_sequential_state_reg_reg[0]_0 ;
  input alu_result_ready;
  input [31:0]D;

  wire CLK;
  wire [31:0]D;
  wire \FSM_sequential_state_reg[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg_reg[0]_0 ;
  wire alu_result_ready;
  wire [31:0]alu_result_reg;
  wire [30:0]b_next;
  wire b_next_0;
  wire [0:0]b_reg;
  wire \b_reg[31]_i_2__0_n_0 ;
  wire \b_reg[31]_i_3_n_0 ;
  wire \b_reg_reg_n_0_[10] ;
  wire \b_reg_reg_n_0_[11] ;
  wire \b_reg_reg_n_0_[12] ;
  wire \b_reg_reg_n_0_[13] ;
  wire \b_reg_reg_n_0_[14] ;
  wire \b_reg_reg_n_0_[15] ;
  wire \b_reg_reg_n_0_[16] ;
  wire \b_reg_reg_n_0_[17] ;
  wire \b_reg_reg_n_0_[18] ;
  wire \b_reg_reg_n_0_[19] ;
  wire \b_reg_reg_n_0_[1] ;
  wire \b_reg_reg_n_0_[20] ;
  wire \b_reg_reg_n_0_[21] ;
  wire \b_reg_reg_n_0_[22] ;
  wire \b_reg_reg_n_0_[23] ;
  wire \b_reg_reg_n_0_[24] ;
  wire \b_reg_reg_n_0_[25] ;
  wire \b_reg_reg_n_0_[26] ;
  wire \b_reg_reg_n_0_[27] ;
  wire \b_reg_reg_n_0_[28] ;
  wire \b_reg_reg_n_0_[29] ;
  wire \b_reg_reg_n_0_[2] ;
  wire \b_reg_reg_n_0_[30] ;
  wire \b_reg_reg_n_0_[31] ;
  wire \b_reg_reg_n_0_[3] ;
  wire \b_reg_reg_n_0_[4] ;
  wire \b_reg_reg_n_0_[5] ;
  wire \b_reg_reg_n_0_[6] ;
  wire \b_reg_reg_n_0_[7] ;
  wire \b_reg_reg_n_0_[8] ;
  wire \b_reg_reg_n_0_[9] ;
  wire n_next;
  wire [5:0]n_reg;
  wire \n_reg[0]_i_1__0_n_0 ;
  wire \n_reg[1]_i_1__0_n_0 ;
  wire \n_reg[2]_i_1__0_n_0 ;
  wire \n_reg[3]_i_1__0_n_0 ;
  wire \n_reg[4]_i_1__0_n_0 ;
  wire \n_reg[5]_i_2__0_n_0 ;
  wire \n_reg[5]_i_3__0_n_0 ;
  wire \n_reg[5]_i_4__0_n_0 ;
  wire \n_reg[5]_i_5__0_n_0 ;
  wire reset_IBUF;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1__0_n_0 ;
  wire \s_reg[1]_i_1_n_0 ;
  wire \s_reg[2]_i_1_n_0 ;
  wire \s_reg[3]_i_2__0_n_0 ;
  wire [1:0]state_reg;
  wire tx_OBUF;
  wire tx_next;

  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h1313CFCC)) 
    \FSM_sequential_state_reg[0]_i_1__0 
       (.I0(\FSM_sequential_state_reg_reg[0]_0 ),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(alu_result_ready),
        .I4(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h1CF0)) 
    \FSM_sequential_state_reg[1]_i_1__0 
       (.I0(\FSM_sequential_state_reg_reg[0]_0 ),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020200300)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(\n_reg[5]_i_3__0_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(s_reg[3]),
        .I5(\n_reg[5]_i_4__0_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[0]_i_1__0_n_0 ),
        .Q(state_reg[0]));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[1]_i_1__0_n_0 ),
        .Q(state_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[0]),
        .Q(alu_result_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[10]),
        .Q(alu_result_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[11]),
        .Q(alu_result_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[12]),
        .Q(alu_result_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[13]),
        .Q(alu_result_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[14]),
        .Q(alu_result_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[15]),
        .Q(alu_result_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[16]),
        .Q(alu_result_reg[16]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[17]),
        .Q(alu_result_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[18]),
        .Q(alu_result_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[19]),
        .Q(alu_result_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[1]),
        .Q(alu_result_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[20]),
        .Q(alu_result_reg[20]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[21]),
        .Q(alu_result_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[22]),
        .Q(alu_result_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[23]),
        .Q(alu_result_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[24]),
        .Q(alu_result_reg[24]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[25]),
        .Q(alu_result_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[26]),
        .Q(alu_result_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[27]),
        .Q(alu_result_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[28]),
        .Q(alu_result_reg[28]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[29]),
        .Q(alu_result_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[2]),
        .Q(alu_result_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[30]),
        .Q(alu_result_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[31]),
        .Q(alu_result_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[3]),
        .Q(alu_result_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[4]),
        .Q(alu_result_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[5]),
        .Q(alu_result_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[6]),
        .Q(alu_result_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[7]),
        .Q(alu_result_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[8]),
        .Q(alu_result_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \alu_result_reg_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[9]),
        .Q(alu_result_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[0]_i_1 
       (.I0(\b_reg_reg_n_0_[1] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[0]),
        .O(b_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[10]_i_1 
       (.I0(\b_reg_reg_n_0_[11] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[10]),
        .O(b_next[10]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[11]_i_1 
       (.I0(\b_reg_reg_n_0_[12] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[11]),
        .O(b_next[11]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[12]_i_1 
       (.I0(\b_reg_reg_n_0_[13] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[12]),
        .O(b_next[12]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[13]_i_1 
       (.I0(\b_reg_reg_n_0_[14] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[13]),
        .O(b_next[13]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[14]_i_1 
       (.I0(\b_reg_reg_n_0_[15] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[14]),
        .O(b_next[14]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[15]_i_1 
       (.I0(\b_reg_reg_n_0_[16] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[15]),
        .O(b_next[15]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[16]_i_1 
       (.I0(\b_reg_reg_n_0_[17] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[16]),
        .O(b_next[16]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[17]_i_1 
       (.I0(\b_reg_reg_n_0_[18] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[17]),
        .O(b_next[17]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[18]_i_1 
       (.I0(\b_reg_reg_n_0_[19] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[18]),
        .O(b_next[18]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[19]_i_1 
       (.I0(\b_reg_reg_n_0_[20] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[19]),
        .O(b_next[19]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[1]_i_1 
       (.I0(\b_reg_reg_n_0_[2] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[1]),
        .O(b_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[20]_i_1 
       (.I0(\b_reg_reg_n_0_[21] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[20]),
        .O(b_next[20]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[21]_i_1 
       (.I0(\b_reg_reg_n_0_[22] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[21]),
        .O(b_next[21]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[22]_i_1 
       (.I0(\b_reg_reg_n_0_[23] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[22]),
        .O(b_next[22]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[23]_i_1 
       (.I0(\b_reg_reg_n_0_[24] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[23]),
        .O(b_next[23]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[24]_i_1 
       (.I0(\b_reg_reg_n_0_[25] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[24]),
        .O(b_next[24]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[25]_i_1 
       (.I0(\b_reg_reg_n_0_[26] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[25]),
        .O(b_next[25]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[26]_i_1 
       (.I0(\b_reg_reg_n_0_[27] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[26]),
        .O(b_next[26]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[27]_i_1 
       (.I0(\b_reg_reg_n_0_[28] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[27]),
        .O(b_next[27]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[28]_i_1 
       (.I0(\b_reg_reg_n_0_[29] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[28]),
        .O(b_next[28]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[29]_i_1 
       (.I0(\b_reg_reg_n_0_[30] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[29]),
        .O(b_next[29]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[2]_i_1 
       (.I0(\b_reg_reg_n_0_[3] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[2]),
        .O(b_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[30]_i_1 
       (.I0(\b_reg_reg_n_0_[31] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[30]),
        .O(b_next[30]));
  LUT5 #(
    .INIT(32'h0000222E)) 
    \b_reg[31]_i_1__0 
       (.I0(alu_result_ready),
        .I1(state_reg[1]),
        .I2(\FSM_sequential_state_reg_reg[0]_0 ),
        .I3(\b_reg[31]_i_3_n_0 ),
        .I4(state_reg[0]),
        .O(b_next_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[31]_i_2__0 
       (.I0(alu_result_reg[31]),
        .I1(state_reg[1]),
        .O(\b_reg[31]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \b_reg[31]_i_3 
       (.I0(s_reg[2]),
        .I1(s_reg[0]),
        .I2(s_reg[1]),
        .I3(s_reg[3]),
        .O(\b_reg[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[3]_i_1 
       (.I0(\b_reg_reg_n_0_[4] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[3]),
        .O(b_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[4]_i_1 
       (.I0(\b_reg_reg_n_0_[5] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[4]),
        .O(b_next[4]));
  (* \PinAttr:I0:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[5]_i_1 
       (.I0(\b_reg_reg_n_0_[6] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[5]),
        .O(b_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[6]_i_1 
       (.I0(\b_reg_reg_n_0_[7] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[6]),
        .O(b_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[7]_i_1 
       (.I0(\b_reg_reg_n_0_[8] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[7]),
        .O(b_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[8]_i_1 
       (.I0(\b_reg_reg_n_0_[9] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[8]),
        .O(b_next[8]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[9]_i_1 
       (.I0(\b_reg_reg_n_0_[10] ),
        .I1(state_reg[1]),
        .I2(alu_result_reg[9]),
        .O(b_next[9]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[0]),
        .Q(b_reg));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[10] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[10]),
        .Q(\b_reg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[11] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[11]),
        .Q(\b_reg_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[12] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[12]),
        .Q(\b_reg_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[13] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[13]),
        .Q(\b_reg_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[14] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[14]),
        .Q(\b_reg_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[15] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[15]),
        .Q(\b_reg_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[16] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[16]),
        .Q(\b_reg_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[17] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[17]),
        .Q(\b_reg_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[18] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[18]),
        .Q(\b_reg_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[19] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[19]),
        .Q(\b_reg_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[1]),
        .Q(\b_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[20] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[20]),
        .Q(\b_reg_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[21] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[21]),
        .Q(\b_reg_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[22] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[22]),
        .Q(\b_reg_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[23] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[23]),
        .Q(\b_reg_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[24] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[24]),
        .Q(\b_reg_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[25] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[25]),
        .Q(\b_reg_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[26] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[26]),
        .Q(\b_reg_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[27] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[27]),
        .Q(\b_reg_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[28] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[28]),
        .Q(\b_reg_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[29] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[29]),
        .Q(\b_reg_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[2]),
        .Q(\b_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[30] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[30]),
        .Q(\b_reg_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[31] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(\b_reg[31]_i_2__0_n_0 ),
        .Q(\b_reg_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[3]),
        .Q(\b_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[4]),
        .Q(\b_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[5]),
        .Q(\b_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[6]),
        .Q(\b_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[7]),
        .Q(\b_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[8] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[8]),
        .Q(\b_reg_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[9] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[9]),
        .Q(\b_reg_reg_n_0_[9] ));
  (* \PinAttr:I1:HOLD_DETOUR  = "191" *) 
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \n_reg[0]_i_1__0 
       (.I0(state_reg[1]),
        .I1(n_reg[0]),
        .O(\n_reg[0]_i_1__0_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "191" *) 
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \n_reg[1]_i_1__0 
       (.I0(state_reg[1]),
        .I1(n_reg[1]),
        .I2(n_reg[0]),
        .O(\n_reg[1]_i_1__0_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \n_reg[2]_i_1__0 
       (.I0(state_reg[1]),
        .I1(n_reg[2]),
        .I2(n_reg[0]),
        .I3(n_reg[1]),
        .O(\n_reg[2]_i_1__0_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "195" *) 
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \n_reg[3]_i_1__0 
       (.I0(state_reg[1]),
        .I1(n_reg[3]),
        .I2(n_reg[1]),
        .I3(n_reg[0]),
        .I4(n_reg[2]),
        .O(\n_reg[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \n_reg[4]_i_1__0 
       (.I0(state_reg[1]),
        .I1(n_reg[4]),
        .I2(n_reg[2]),
        .I3(n_reg[0]),
        .I4(n_reg[1]),
        .I5(n_reg[3]),
        .O(\n_reg[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010100300)) 
    \n_reg[5]_i_1__0 
       (.I0(\n_reg[5]_i_3__0_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(s_reg[3]),
        .I5(\n_reg[5]_i_4__0_n_0 ),
        .O(n_next));
  (* \PinAttr:I1:HOLD_DETOUR  = "196" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \n_reg[5]_i_2__0 
       (.I0(state_reg[1]),
        .I1(n_reg[5]),
        .I2(\n_reg[5]_i_5__0_n_0 ),
        .O(\n_reg[5]_i_2__0_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "196" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \n_reg[5]_i_3__0 
       (.I0(state_reg[0]),
        .I1(n_reg[5]),
        .I2(\n_reg[5]_i_5__0_n_0 ),
        .O(\n_reg[5]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \n_reg[5]_i_4__0 
       (.I0(s_reg[1]),
        .I1(s_reg[0]),
        .I2(s_reg[2]),
        .O(\n_reg[5]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \n_reg[5]_i_5__0 
       (.I0(n_reg[3]),
        .I1(n_reg[1]),
        .I2(n_reg[0]),
        .I3(n_reg[2]),
        .I4(n_reg[4]),
        .O(\n_reg[5]_i_5__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(CLK),
        .CE(n_next),
        .CLR(reset_IBUF),
        .D(\n_reg[0]_i_1__0_n_0 ),
        .Q(n_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(CLK),
        .CE(n_next),
        .CLR(reset_IBUF),
        .D(\n_reg[1]_i_1__0_n_0 ),
        .Q(n_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(CLK),
        .CE(n_next),
        .CLR(reset_IBUF),
        .D(\n_reg[2]_i_1__0_n_0 ),
        .Q(n_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[3] 
       (.C(CLK),
        .CE(n_next),
        .CLR(reset_IBUF),
        .D(\n_reg[3]_i_1__0_n_0 ),
        .Q(n_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[4] 
       (.C(CLK),
        .CE(n_next),
        .CLR(reset_IBUF),
        .D(\n_reg[4]_i_1__0_n_0 ),
        .Q(n_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[5] 
       (.C(CLK),
        .CE(n_next),
        .CLR(reset_IBUF),
        .D(\n_reg[5]_i_2__0_n_0 ),
        .Q(n_reg[5]));
  LUT3 #(
    .INIT(8'h0E)) 
    \s_reg[0]_i_1__0 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(s_reg[0]),
        .O(\s_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0EE0)) 
    \s_reg[1]_i_1 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(s_reg[1]),
        .I3(s_reg[0]),
        .O(\s_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h0EE0E0E0)) 
    \s_reg[2]_i_1 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(s_reg[2]),
        .I3(s_reg[0]),
        .I4(s_reg[1]),
        .O(\s_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0C0F0FAA)) 
    \s_reg[3]_i_1__0 
       (.I0(alu_result_ready),
        .I1(\b_reg[31]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg_reg[0]_0 ),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .O(s_next));
  LUT6 #(
    .INIT(64'h0AE0E0E0E0E0E0E0)) 
    \s_reg[3]_i_2__0 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(s_reg[3]),
        .I3(s_reg[1]),
        .I4(s_reg[0]),
        .I5(s_reg[2]),
        .O(\s_reg[3]_i_2__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[0]_i_1__0_n_0 ),
        .Q(s_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[1]_i_1_n_0 ),
        .Q(s_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[2]_i_1_n_0 ),
        .Q(s_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[3]_i_2__0_n_0 ),
        .Q(s_reg[3]));
  LUT3 #(
    .INIT(8'hCB)) 
    tx_reg_i_1
       (.I0(b_reg),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .O(tx_next));
  FDCE #(
    .INIT(1'b0)) 
    tx_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(tx_next),
        .Q(tx_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
