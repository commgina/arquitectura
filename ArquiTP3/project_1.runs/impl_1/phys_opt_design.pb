
B
Command: %s
53*	vivadotcl2
phys_opt_designZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2

xc7a100tZ17-347h px� 
p
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2

xc7a100tZ17-349h px� 
R

Starting %s Task
103*constraints2
Initial Update TimingZ18-103h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:05 ; elapsed = 00:00:03 . Memory (MB): peak = 2144.527 ; gain = 18.605h px� 
�
^PhysOpt_Tcl_Interface Runtime Before Starting Physical Synthesis Task | CPU: %ss |  WALL: %ss
566*	vivadotcl2
6.002
3.15Z4-1435h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0052

2144.5272
0.000Z17-268h px� 
O

Starting %s Task
103*constraints2
Physical SynthesisZ18-103h px� 
^

Phase %s%s
101*constraints2
1 2#
!Physical Synthesis InitializationZ18-101h px� 
n
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
2Z32-721h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.4162	
-41.364Z32-619h px� 
[
%s*common2B
@Phase 1 Physical Synthesis Initialization | Checksum: 1f33d6839
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2151.684 ; gain = 7.156h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.4162	
-41.364Z32-619h px� 
V

Phase %s%s
101*constraints2
2 2
DSP Register OptimizationZ18-101h px� 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
S
%s*common2:
8Phase 2 DSP Register Optimization | Checksum: 1f33d6839
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 2151.684 ; gain = 7.156h px� 
W

Phase %s%s
101*constraints2
3 2
Critical Path OptimizationZ18-101h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.4162	
-41.364Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 etapaFETCH/program_counter/Q[22] etapaFETCH/program_counter/Q[22]8Z32-702h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2R
&etapaEXECUTE/ex_mem/o_writeRegister[3]&etapaEXECUTE/ex_mem/o_writeRegister[3]2
18Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2R
&etapaEXECUTE/ex_mem/o_writeRegister[3]&etapaEXECUTE/ex_mem/o_writeRegister[3]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.4092	
-41.140Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2R
&etapaEXECUTE/ex_mem/o_writeRegister[3]&etapaEXECUTE/ex_mem/o_writeRegister[3]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2:
etapaFETCH/latchIFID/D[25]etapaFETCH/latchIFID/D[25]2N
$etapaFETCH/latchIFID/pc[25]_i_1_comp	$etapaFETCH/latchIFID/pc[25]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2L
#etapaFETCH/latchIFID/pc[31]_i_4_n_0#etapaFETCH/latchIFID/pc[31]_i_4_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.3952	
-41.000Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 etapaFETCH/program_counter/Q[20] etapaFETCH/program_counter/Q[20]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2:
etapaFETCH/latchIFID/D[23]etapaFETCH/latchIFID/D[23]2N
$etapaFETCH/latchIFID/pc[23]_i_1_comp	$etapaFETCH/latchIFID/pc[23]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2L
#etapaFETCH/latchIFID/pc[31]_i_4_n_0#etapaFETCH/latchIFID/pc[31]_i_4_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.3902	
-40.990Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 etapaFETCH/program_counter/Q[17] etapaFETCH/program_counter/Q[17]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2:
etapaFETCH/latchIFID/D[20]etapaFETCH/latchIFID/D[20]2N
$etapaFETCH/latchIFID/pc[20]_i_1_comp	$etapaFETCH/latchIFID/pc[20]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2L
#etapaFETCH/latchIFID/pc[31]_i_4_n_0#etapaFETCH/latchIFID/pc[31]_i_4_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.3712	
-40.970Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaFETCH/program_counter/Q[6]etapaFETCH/program_counter/Q[6]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2T
'etapaDECODE/latchidex/o_takeJumpR_reg_6'etapaDECODE/latchidex/o_takeJumpR_reg_68Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2V
(etapaDECODE/latchidex/o_takeBranch_reg_0(etapaDECODE/latchidex/o_takeBranch_reg_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2V
(etapaDECODE/latchidex/o_takeBranch_reg_0(etapaDECODE/latchidex/o_takeBranch_reg_02P
%etapaDECODE/latchidex/pc[31]_i_6_comp	%etapaDECODE/latchidex/pc[31]_i_6_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2P
%etapaDECODE/latchidex/pc[31]_i_10_n_0%etapaDECODE/latchidex/pc[31]_i_10_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2852	
-38.217Z32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2P
%etapaMEM/latch/writeRegister_MEMWB[0]%etapaMEM/latch/writeRegister_MEMWB[0]2P
%etapaMEM/latch/o_writeRegister_reg[0]	%etapaMEM/latch/o_writeRegister_reg[0]8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2P
%etapaMEM/latch/writeRegister_MEMWB[0]%etapaMEM/latch/writeRegister_MEMWB[0]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2762	
-37.929Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2N
$etapaDECODE/latchidex/pc[31]_i_8_n_0$etapaDECODE/latchidex/pc[31]_i_8_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
232
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2P
%etapaDECODE/latchidex/pc[31]_i_13_n_0%etapaDECODE/latchidex/pc[31]_i_13_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2582	
-37.353Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
222
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2P
%etapaDECODE/latchidex/pc[31]_i_12_n_0%etapaDECODE/latchidex/pc[31]_i_12_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2512	
-37.130Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
%etapaDECODE/latchidex/pc[31]_i_10_n_0%etapaDECODE/latchidex/pc[31]_i_10_n_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2P
%etapaDECODE/latchidex/pc[31]_i_10_n_0%etapaDECODE/latchidex/pc[31]_i_10_n_02V
(etapaDECODE/latchidex/pc[31]_i_10_comp_2	(etapaDECODE/latchidex/pc[31]_i_10_comp_28Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2P
%etapaDECODE/latchidex/pc[31]_i_15_n_0%etapaDECODE/latchidex/pc[31]_i_15_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2512	
-37.130Z32-619h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2P
%etapaDECODE/latchidex/pc[31]_i_10_n_0%etapaDECODE/latchidex/pc[31]_i_10_n_02V
(etapaDECODE/latchidex/pc[31]_i_10_comp_3	(etapaDECODE/latchidex/pc[31]_i_10_comp_38Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2P
%etapaDECODE/latchidex/pc[31]_i_15_n_0%etapaDECODE/latchidex/pc[31]_i_15_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2502	
-37.097Z32-619h px� 
~
'Processed net %s. Replicated %s times.
81*physynth2,
etapaMEM/latch/Q[1]etapaMEM/latch/Q[1]2
18Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2,
etapaMEM/latch/Q[1]etapaMEM/latch/Q[1]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2482	
-37.033Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2,
etapaMEM/latch/Q[1]etapaMEM/latch/Q[1]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2N
$etapaDECODE/latchidex/pc[31]_i_9_n_0$etapaDECODE/latchidex/pc[31]_i_9_n_02F
 etapaDECODE/latchidex/pc[31]_i_9	 etapaDECODE/latchidex/pc[31]_i_98Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
$etapaDECODE/latchidex/pc[31]_i_9_n_0$etapaDECODE/latchidex/pc[31]_i_9_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2312	
-36.489Z32-619h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2P
%etapaMEM/latch/writeRegister_MEMWB[0]%etapaMEM/latch/writeRegister_MEMWB[0]2
18Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2P
%etapaMEM/latch/writeRegister_MEMWB[0]%etapaMEM/latch/writeRegister_MEMWB[0]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2282	
-36.393Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
%etapaDECODE/latchidex/pc[31]_i_11_n_0%etapaDECODE/latchidex/pc[31]_i_11_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2<
etapaDECODE/latchidex/D[26]etapaDECODE/latchidex/D[26]2R
&etapaDECODE/latchidex/o_result[27]_i_1	&etapaDECODE/latchidex/o_result[27]_i_18Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
etapaDECODE/latchidex/D[26]etapaDECODE/latchidex/D[26]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2232	
-36.234Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
%etapaDECODE/latchidex/pc[31]_i_13_n_0%etapaDECODE/latchidex/pc[31]_i_13_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
etapaDECODE/latchidex/D[4]etapaDECODE/latchidex/D[4]2P
%etapaDECODE/latchidex/o_result[4]_i_1	%etapaDECODE/latchidex/o_result[4]_i_18Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2:
etapaDECODE/latchidex/D[4]etapaDECODE/latchidex/D[4]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2232	
-36.234Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
%etapaDECODE/latchidex/pc[31]_i_12_n_0%etapaDECODE/latchidex/pc[31]_i_12_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2@
etapaMEM/latch/o_ALUOp_reg[1]etapaMEM/latch/o_ALUOp_reg[1]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
212
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2R
&etapaDECODE/latchidex/o_ALUOp_reg[1]_0&etapaDECODE/latchidex/o_ALUOp_reg[1]_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2232	
-36.233Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
%etapaDECODE/latchidex/pc[31]_i_15_n_0%etapaDECODE/latchidex/pc[31]_i_15_n_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2P
%etapaDECODE/latchidex/pc[31]_i_15_n_0%etapaDECODE/latchidex/pc[31]_i_15_n_02R
&etapaDECODE/latchidex/pc[31]_i_15_comp	&etapaDECODE/latchidex/pc[31]_i_15_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2:
etapaDECODE/latchidex/D[6]etapaDECODE/latchidex/D[6]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2202	
-36.138Z32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2<
etapaDECODE/latchidex/D[25]etapaDECODE/latchidex/D[25]2R
&etapaDECODE/latchidex/o_result[26]_i_1	&etapaDECODE/latchidex/o_result[26]_i_18Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
etapaDECODE/latchidex/D[25]etapaDECODE/latchidex/D[25]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2192	
-36.105Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
%etapaDECODE/latchidex/pc[31]_i_16_n_0%etapaDECODE/latchidex/pc[31]_i_16_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
etapaDECODE/latchidex/D[1]etapaDECODE/latchidex/D[1]2P
%etapaDECODE/latchidex/o_result[1]_i_1	%etapaDECODE/latchidex/o_result[1]_i_18Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2:
etapaDECODE/latchidex/D[1]etapaDECODE/latchidex/D[1]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2182	
-36.074Z32-619h px� 
�
MProcessed net %s. Rewired (signal push) %s to %s loads. Replicated %s times.
223*physynth2<
etapaDECODE/latchidex/D[25]etapaDECODE/latchidex/D[25]2Z
*etapaDECODE/latchidex/o_result[26]_i_5_n_0*etapaDECODE/latchidex/o_result[26]_i_5_n_02
12
18Z32-242h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
etapaDECODE/latchidex/D[25]etapaDECODE/latchidex/D[25]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2152	
-35.977Z32-619h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2L
#etapaMEM/latch/o_result[27]_i_7_n_0#etapaMEM/latch/o_result[27]_i_7_n_02
18Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2L
#etapaMEM/latch/o_result[27]_i_7_n_0#etapaMEM/latch/o_result[27]_i_7_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2142	
-35.946Z32-619h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2P
%etapaDECODE/latchidex/pc[31]_i_11_n_0%etapaDECODE/latchidex/pc[31]_i_11_n_02`
-etapaDECODE/latchidex/pc[31]_i_11_rewire_comp	-etapaDECODE/latchidex/pc[31]_i_11_rewire_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
etapaDECODE/latchidex/D[28]etapaDECODE/latchidex/D[28]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2082	
-35.753Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
222
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2P
%etapaDECODE/latchidex/pc[31]_i_17_n_0%etapaDECODE/latchidex/pc[31]_i_17_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.2072	
-35.721Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2D
etapaMEM/latch/o_ALUOp_reg[0]_2etapaMEM/latch/o_ALUOp_reg[0]_28Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1982	
-35.433Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
etapaDECODE/latchidex/D[22]etapaDECODE/latchidex/D[22]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
202
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
*etapaDECODE/latchidex/o_result[23]_i_3_n_0*etapaDECODE/latchidex/o_result[23]_i_3_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1892	
-35.145Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2D
etapaMEM/latch/o_srcB_reg[2]_28etapaMEM/latch/o_srcB_reg[2]_288Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1872	
-35.081Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
etapaDECODE/latchidex/D[20]etapaDECODE/latchidex/D[20]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1792	
-34.825Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaMEM/latch/o_ALUOp_reg[0]_2etapaMEM/latch/o_ALUOp_reg[0]_28Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
etapaMEM/latch/pc[31]_i_27_n_0etapaMEM/latch/pc[31]_i_27_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2N
$etapaMEM/latch/o_result[30]_i_31_n_0$etapaMEM/latch/o_result[30]_i_31_n_02F
 etapaMEM/latch/o_result[30]_i_31	 etapaMEM/latch/o_result[30]_i_318Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
$etapaMEM/latch/o_result[30]_i_31_n_0$etapaMEM/latch/o_result[30]_i_31_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1782	
-34.793Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
etapaDECODE/latchidex/D[16]etapaDECODE/latchidex/D[16]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[16]_i_3_n_0*etapaDECODE/latchidex/o_result[16]_i_3_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2\
+etapaDECODE/latchidex/o_result[16]_i_10_n_0+etapaDECODE/latchidex/o_result[16]_i_10_n_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2\
+etapaDECODE/latchidex/o_result[16]_i_10_n_0+etapaDECODE/latchidex/o_result[16]_i_10_n_02^
,etapaDECODE/latchidex/o_result[16]_i_10_comp	,etapaDECODE/latchidex/o_result[16]_i_10_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2\
+etapaDECODE/latchidex/o_result[16]_i_22_n_0+etapaDECODE/latchidex/o_result[16]_i_22_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1752	
-34.697Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
222
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
*etapaDECODE/latchidex/o_result[22]_i_3_n_0*etapaDECODE/latchidex/o_result[22]_i_3_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1752	
-34.697Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
etapaDECODE/latchidex/D[14]etapaDECODE/latchidex/D[14]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
*etapaDECODE/latchidex/o_result[14]_i_2_n_0*etapaDECODE/latchidex/o_result[14]_i_2_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1712	
-34.569Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
222
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2D
etapaMEM/latch/o_ALUOp_reg[0]_4etapaMEM/latch/o_ALUOp_reg[0]_48Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1672	
-34.441Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2:
etapaDECODE/latchidex/D[0]etapaDECODE/latchidex/D[0]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1642	
-34.345Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaMEM/latch/o_ALUOp_reg[0]_4etapaMEM/latch/o_ALUOp_reg[0]_48Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
etapaMEM/latch/o_srcB_reg[1]_2etapaMEM/latch/o_srcB_reg[1]_28Z32-702h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2N
$etapaMEM/latch/o_result[16]_i_19_n_0$etapaMEM/latch/o_result[16]_i_19_n_02
18Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
$etapaMEM/latch/o_result[16]_i_19_n_0$etapaMEM/latch/o_result[16]_i_19_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1632	
-34.313Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
%etapaDECODE/latchidex/pc[31]_i_17_n_0%etapaDECODE/latchidex/pc[31]_i_17_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2<
etapaDECODE/latchidex/D[10]etapaDECODE/latchidex/D[10]2R
&etapaDECODE/latchidex/o_result[10]_i_1	&etapaDECODE/latchidex/o_result[10]_i_18Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
etapaDECODE/latchidex/D[10]etapaDECODE/latchidex/D[10]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1572	
-34.121Z32-619h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2<
etapaDECODE/latchidex/D[26]etapaDECODE/latchidex/D[26]2
18Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
etapaDECODE/latchidex/D[26]etapaDECODE/latchidex/D[26]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1562	
-34.089Z32-619h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2P
%etapaDECODE/latchidex/pc[31]_i_16_n_0%etapaDECODE/latchidex/pc[31]_i_16_n_02R
&etapaDECODE/latchidex/pc[31]_i_16_comp	&etapaDECODE/latchidex/pc[31]_i_16_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2:
etapaDECODE/latchidex/D[1]etapaDECODE/latchidex/D[1]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1502	
-33.897Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 etapaDECODE/latchidex/D[26]_repN etapaDECODE/latchidex/D[26]_repN8Z32-702h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2Z
*etapaDECODE/latchidex/o_result[27]_i_5_n_0*etapaDECODE/latchidex/o_result[27]_i_5_n_02
18Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
*etapaDECODE/latchidex/o_result[27]_i_5_n_0*etapaDECODE/latchidex/o_result[27]_i_5_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1492	
-33.865Z32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
etapaDECODE/latchidex/D[5]etapaDECODE/latchidex/D[5]2P
%etapaDECODE/latchidex/o_result[5]_i_1	%etapaDECODE/latchidex/o_result[5]_i_18Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2:
etapaDECODE/latchidex/D[5]etapaDECODE/latchidex/D[5]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1472	
-33.801Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2d
/etapaDECODE/latchidex/o_result[27]_i_5_n_0_repN/etapaDECODE/latchidex/o_result[27]_i_5_n_0_repN8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2\
+etapaDECODE/latchidex/o_result[27]_i_14_n_0+etapaDECODE/latchidex/o_result[27]_i_14_n_02T
'etapaDECODE/latchidex/o_result[27]_i_14	'etapaDECODE/latchidex/o_result[27]_i_148Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2\
+etapaDECODE/latchidex/o_result[27]_i_14_n_0+etapaDECODE/latchidex/o_result[27]_i_14_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1422	
-33.642Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
%etapaDECODE/latchidex/pc[31]_i_20_n_0%etapaDECODE/latchidex/pc[31]_i_20_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[22]_i_8_n_0*etapaDECODE/latchidex/o_result[22]_i_8_n_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2Z
*etapaDECODE/latchidex/o_result[22]_i_8_n_0*etapaDECODE/latchidex/o_result[22]_i_8_n_02\
+etapaDECODE/latchidex/o_result[22]_i_8_comp	+etapaDECODE/latchidex/o_result[22]_i_8_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2\
+etapaDECODE/latchidex/o_result[22]_i_12_n_0+etapaDECODE/latchidex/o_result[22]_i_12_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1422	
-33.642Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaDECODE/latchidex/D[6]_repNetapaDECODE/latchidex/D[6]_repN8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2X
)etapaDECODE/latchidex/o_result[6]_i_2_n_0)etapaDECODE/latchidex/o_result[6]_i_2_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1412	
-33.609Z32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2<
etapaDECODE/latchidex/D[25]etapaDECODE/latchidex/D[25]2`
-etapaDECODE/latchidex/o_result[26]_i_1_rewire	-etapaDECODE/latchidex/o_result[26]_i_1_rewire8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
etapaDECODE/latchidex/D[25]etapaDECODE/latchidex/D[25]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1382	
-33.513Z32-619h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2P
%etapaDECODE/latchidex/pc[31]_i_16_n_0%etapaDECODE/latchidex/pc[31]_i_16_n_02V
(etapaDECODE/latchidex/pc[31]_i_16_comp_1	(etapaDECODE/latchidex/pc[31]_i_16_comp_18Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
etapaDECODE/latchidex/D[13]etapaDECODE/latchidex/D[13]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1372	
-33.481Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
etapaDECODE/latchidex/D[20]etapaDECODE/latchidex/D[20]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaMEM/latch/o_ALUOp_reg[0]_5etapaMEM/latch/o_ALUOp_reg[0]_58Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2D
etapaMEM/latch/o_ALUOp_reg[0]_5etapaMEM/latch/o_ALUOp_reg[0]_52N
$etapaMEM/latch/o_result[21]_i_5_comp	$etapaMEM/latch/o_result[21]_i_5_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
$etapaMEM/latch/o_result[29]_i_12_n_0$etapaMEM/latch/o_result[29]_i_12_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1292	
-33.225Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
etapaDECODE/latchidex/D[19]etapaDECODE/latchidex/D[19]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
192
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2D
etapaMEM/latch/o_ALUOp_reg[0]_3etapaMEM/latch/o_ALUOp_reg[0]_38Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1252	
-33.097Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
$etapaMEM/latch/o_result[30]_i_13_n_0$etapaMEM/latch/o_result[30]_i_13_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1212	
-32.969Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2\
+etapaDECODE/latchidex/o_result[27]_i_14_n_0+etapaDECODE/latchidex/o_result[27]_i_14_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2\
+etapaDECODE/latchidex/o_result[27]_i_21_n_0+etapaDECODE/latchidex/o_result[27]_i_21_n_02T
'etapaDECODE/latchidex/o_result[27]_i_21	'etapaDECODE/latchidex/o_result[27]_i_218Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2\
+etapaDECODE/latchidex/o_result[27]_i_21_n_0+etapaDECODE/latchidex/o_result[27]_i_21_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1202	
-32.937Z32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2B
etapaMEM/latch/pc[31]_i_28_n_0etapaMEM/latch/pc[31]_i_28_n_02:
etapaMEM/latch/pc[31]_i_28	etapaMEM/latch/pc[31]_i_288Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2B
etapaMEM/latch/pc[31]_i_28_n_0etapaMEM/latch/pc[31]_i_28_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1162	
-32.809Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
$etapaMEM/latch/o_result[29]_i_11_n_0$etapaMEM/latch/o_result[29]_i_11_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1132	
-32.713Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaMEM/latch/o_ALUOp_reg[0]_8etapaMEM/latch/o_ALUOp_reg[0]_88Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
222
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2B
etapaMEM/latch/o_srcB_reg[2]_2etapaMEM/latch/o_srcB_reg[2]_28Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1082	
-32.553Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[19]_i_2_n_0*etapaDECODE/latchidex/o_result[19]_i_2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[19]_i_7_n_0*etapaDECODE/latchidex/o_result[19]_i_7_n_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2Z
*etapaDECODE/latchidex/o_result[19]_i_7_n_0*etapaDECODE/latchidex/o_result[19]_i_7_n_02\
+etapaDECODE/latchidex/o_result[19]_i_7_comp	+etapaDECODE/latchidex/o_result[19]_i_7_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2\
+etapaDECODE/latchidex/o_result[19]_i_11_n_0+etapaDECODE/latchidex/o_result[19]_i_11_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1072	
-32.521Z32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2D
etapaMEM/latch/o_srcB_reg[2]_26etapaMEM/latch/o_srcB_reg[2]_262D
etapaMEM/latch/o_result[21]_i_3	etapaMEM/latch/o_result[21]_i_38Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2D
etapaMEM/latch/o_srcB_reg[2]_26etapaMEM/latch/o_srcB_reg[2]_268Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1072	
-32.521Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
etapaDECODE/latchidex/D[10]etapaDECODE/latchidex/D[10]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
222
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
*etapaDECODE/latchidex/o_result[10]_i_4_n_0*etapaDECODE/latchidex/o_result[10]_i_4_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1062	
-32.489Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
212
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2:
etapaDECODE/latchidex/D[3]etapaDECODE/latchidex/D[3]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1052	
-32.457Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[19]_i_8_n_0*etapaDECODE/latchidex/o_result[19]_i_8_n_08Z32-702h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2R
&etapaDECODE/latchidex/o_ALUOp_reg[0]_1&etapaDECODE/latchidex/o_ALUOp_reg[0]_12
18Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2R
&etapaDECODE/latchidex/o_ALUOp_reg[0]_1&etapaDECODE/latchidex/o_ALUOp_reg[0]_18Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.1002	
-32.297Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[21]_i_6_n_0*etapaDECODE/latchidex/o_result[21]_i_6_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[21]_i_9_n_0*etapaDECODE/latchidex/o_result[21]_i_9_n_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2Z
*etapaDECODE/latchidex/o_result[21]_i_9_n_0*etapaDECODE/latchidex/o_result[21]_i_9_n_02\
+etapaDECODE/latchidex/o_result[21]_i_9_comp	+etapaDECODE/latchidex/o_result[21]_i_9_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2\
+etapaDECODE/latchidex/o_result[21]_i_12_n_0+etapaDECODE/latchidex/o_result[21]_i_12_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0962	
-32.169Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[20]_i_2_n_0*etapaDECODE/latchidex/o_result[20]_i_2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[20]_i_6_n_0*etapaDECODE/latchidex/o_result[20]_i_6_n_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2Z
*etapaDECODE/latchidex/o_result[20]_i_6_n_0*etapaDECODE/latchidex/o_result[20]_i_6_n_02\
+etapaDECODE/latchidex/o_result[20]_i_6_comp	+etapaDECODE/latchidex/o_result[20]_i_6_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2\
+etapaDECODE/latchidex/o_result[20]_i_12_n_0+etapaDECODE/latchidex/o_result[20]_i_12_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0942	
-32.105Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[14]_i_2_n_0*etapaDECODE/latchidex/o_result[14]_i_2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[14]_i_6_n_0*etapaDECODE/latchidex/o_result[14]_i_6_n_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2Z
*etapaDECODE/latchidex/o_result[14]_i_6_n_0*etapaDECODE/latchidex/o_result[14]_i_6_n_02\
+etapaDECODE/latchidex/o_result[14]_i_6_comp	+etapaDECODE/latchidex/o_result[14]_i_6_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2\
+etapaDECODE/latchidex/o_result[14]_i_10_n_0+etapaDECODE/latchidex/o_result[14]_i_10_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0932	
-32.073Z32-619h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2\
+etapaDECODE/latchidex/o_result[27]_i_14_n_0+etapaDECODE/latchidex/o_result[27]_i_14_n_02^
,etapaDECODE/latchidex/o_result[27]_i_14_comp	,etapaDECODE/latchidex/o_result[27]_i_14_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2\
+etapaDECODE/latchidex/o_result[27]_i_21_n_0+etapaDECODE/latchidex/o_result[27]_i_21_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0912	
-32.009Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2L
#etapaMEM/latch/o_result[27]_i_7_n_0#etapaMEM/latch/o_result[27]_i_7_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0872	
-31.881Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaDECODE/latchidex/D[1]_repNetapaDECODE/latchidex/D[1]_repN8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2X
)etapaDECODE/latchidex/o_result[1]_i_4_n_0)etapaDECODE/latchidex/o_result[1]_i_4_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0852	
-31.817Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
132
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2L
#etapaMEM/latch/o_result[24]_i_9_n_0#etapaMEM/latch/o_result[24]_i_9_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0822	
-31.721Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
232
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
etapaDECODE/latchidex/D[24]etapaDECODE/latchidex/D[24]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0812	
-31.689Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
$etapaMEM/latch/o_result[30]_i_13_n_0$etapaMEM/latch/o_result[30]_i_13_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0742	
-31.465Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
etapaDECODE/latchidex/D[11]etapaDECODE/latchidex/D[11]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
192
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
*etapaDECODE/latchidex/o_result[11]_i_3_n_0*etapaDECODE/latchidex/o_result[11]_i_3_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0742	
-31.465Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2X
)etapaDECODE/latchidex/o_result[6]_i_2_n_0)etapaDECODE/latchidex/o_result[6]_i_2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaMEM/latch/o_srcB_reg[2]_21etapaMEM/latch/o_srcB_reg[2]_218Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
182
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2L
#etapaMEM/latch/o_result[7]_i_12_n_0#etapaMEM/latch/o_result[7]_i_12_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0692	
-31.305Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2:
etapaDECODE/latchidex/D[4]etapaDECODE/latchidex/D[4]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2X
)etapaDECODE/latchidex/o_result[4]_i_4_n_0)etapaDECODE/latchidex/o_result[4]_i_4_n_02P
%etapaDECODE/latchidex/o_result[4]_i_4	%etapaDECODE/latchidex/o_result[4]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2X
)etapaDECODE/latchidex/o_result[4]_i_4_n_0)etapaDECODE/latchidex/o_result[4]_i_4_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0682	
-31.273Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
142
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
*etapaDECODE/latchidex/o_result[11]_i_2_n_0*etapaDECODE/latchidex/o_result[11]_i_2_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0672	
-31.241Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2L
#etapaMEM/latch/o_result[27]_i_7_n_0#etapaMEM/latch/o_result[27]_i_7_n_08Z32-702h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2N
$etapaMEM/latch/o_result[15]_i_17_n_0$etapaMEM/latch/o_result[15]_i_17_n_02
18Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
$etapaMEM/latch/o_result[15]_i_17_n_0$etapaMEM/latch/o_result[15]_i_17_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0672	
-31.242Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
etapaDECODE/latchidex/D[24]etapaDECODE/latchidex/D[24]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[25]_i_5_n_0*etapaDECODE/latchidex/o_result[25]_i_5_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2\
+etapaDECODE/latchidex/o_result[25]_i_10_n_0+etapaDECODE/latchidex/o_result[25]_i_10_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2\
+etapaDECODE/latchidex/o_result[25]_i_13_n_0+etapaDECODE/latchidex/o_result[25]_i_13_n_02T
'etapaDECODE/latchidex/o_result[25]_i_13	'etapaDECODE/latchidex/o_result[25]_i_138Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2\
+etapaDECODE/latchidex/o_result[25]_i_13_n_0+etapaDECODE/latchidex/o_result[25]_i_13_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0642	
-31.145Z32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 etapaDECODE/latchidex/D[13]_repN etapaDECODE/latchidex/D[13]_repN2\
+etapaDECODE/latchidex/o_result[13]_i_1_comp	+etapaDECODE/latchidex/o_result[13]_i_1_comp8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 etapaDECODE/latchidex/D[13]_repN etapaDECODE/latchidex/D[13]_repN8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0612	
-31.049Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
232
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2>
etapaMEM/latch/o_srcB_reg[2]etapaMEM/latch/o_srcB_reg[2]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0602	
-31.017Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2N
$etapaMEM/latch/o_result[15]_i_17_n_0$etapaMEM/latch/o_result[15]_i_17_n_08Z32-702h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2V
(etapaDECODE/latchidex/o_result[8]_i_21_0(etapaDECODE/latchidex/o_result[8]_i_21_08Z32-134h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2V
(etapaDECODE/latchidex/o_result[8]_i_21_0(etapaDECODE/latchidex/o_result[8]_i_21_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
192
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
*etapaDECODE/latchidex/o_result[8]_i_19_n_0*etapaDECODE/latchidex/o_result[8]_i_19_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0562	
-30.889Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2:
etapaDECODE/latchidex/D[0]etapaDECODE/latchidex/D[0]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
192
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2D
etapaMEM/latch/o_ALUOp_reg[0]_1etapaMEM/latch/o_ALUOp_reg[0]_18Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0452	
-30.537Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2X
)etapaDECODE/latchidex/o_result[0]_i_2_n_0)etapaDECODE/latchidex/o_result[0]_i_2_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0452	
-30.537Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[8]_i_18_n_0*etapaDECODE/latchidex/o_result[8]_i_18_n_08Z32-702h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2N
$etapaDECODE/latchidex/operando_b[12]$etapaDECODE/latchidex/operando_b[12]2
18Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
$etapaDECODE/latchidex/operando_b[12]$etapaDECODE/latchidex/operando_b[12]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0432	
-30.474Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaMEM/latch/o_result_reg[31]_i_23_0[19]*etapaMEM/latch/o_result_reg[31]_i_23_0[19]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2V
(etapaMEM/latch/o_result_reg[15]_i_28_n_0(etapaMEM/latch/o_result_reg[15]_i_28_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2V
(etapaMEM/latch/o_result_reg[11]_i_17_n_0(etapaMEM/latch/o_result_reg[11]_i_17_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2T
'etapaMEM/latch/o_result_reg[7]_i_10_n_0'etapaMEM/latch/o_result_reg[7]_i_10_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2T
'etapaMEM/latch/o_result_reg[3]_i_11_n_0'etapaMEM/latch/o_result_reg[3]_i_11_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2L
#etapaMEM/latch/o_result[3]_i_21_n_0#etapaMEM/latch/o_result[3]_i_21_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
etapaMEM/latch/o_srcB_reg[0]_0etapaMEM/latch/o_srcB_reg[0]_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
222
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 etapaMEM/latch/i__carry_i_22_n_0 etapaMEM/latch/i__carry_i_22_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0412	
-30.409Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2R
&etapaDECODE/latchidex/o_srcB_reg[15]_0&etapaDECODE/latchidex/o_srcB_reg[15]_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2R
&etapaDECODE/latchidex/o_regWrite_reg_0&etapaDECODE/latchidex/o_regWrite_reg_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0372	
-30.281Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
192
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
*etapaDECODE/latchidex/o_result[21]_i_2_n_0*etapaDECODE/latchidex/o_result[21]_i_2_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0352	
-30.217Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
262
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
$etapaDECODE/latchidex/operando_b[12]$etapaDECODE/latchidex/operando_b[12]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0342	
-30.185Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2:
etapaDECODE/latchidex/D[2]etapaDECODE/latchidex/D[2]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0322	
-30.121Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
192
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
*etapaDECODE/latchidex/o_result[8]_i_20_n_0*etapaDECODE/latchidex/o_result[8]_i_20_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0302	
-30.057Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2R
&etapaDECODE/latchidex/o_ALUOp_reg[1]_0&etapaDECODE/latchidex/o_ALUOp_reg[1]_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2R
&etapaDECODE/latchidex/o_ALUOp_reg[1]_0&etapaDECODE/latchidex/o_ALUOp_reg[1]_02R
&etapaDECODE/latchidex/pc[31]_i_25_comp	&etapaDECODE/latchidex/pc[31]_i_25_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2B
etapaMEM/latch/o_srcB_reg[0]_2etapaMEM/latch/o_srcB_reg[0]_28Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0272	
-29.962Z32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
etapaDECODE/latchidex/D[5]etapaDECODE/latchidex/D[5]2P
%etapaDECODE/latchidex/o_result[5]_i_1	%etapaDECODE/latchidex/o_result[5]_i_18Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2:
etapaDECODE/latchidex/D[5]etapaDECODE/latchidex/D[5]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0242	
-29.865Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
192
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
*etapaDECODE/latchidex/o_result[8]_i_20_n_0*etapaDECODE/latchidex/o_result[8]_i_20_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0232	
-29.833Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[8]_i_16_n_0*etapaDECODE/latchidex/o_result[8]_i_16_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2N
$etapaDECODE/latchidex/operando_b[16]$etapaDECODE/latchidex/operando_b[16]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2N
$etapaDECODE/latchidex/operando_b[16]$etapaDECODE/latchidex/operando_b[16]2\
+etapaDECODE/latchidex/i__carry__4_i_12_comp	+etapaDECODE/latchidex/i__carry__4_i_12_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
$etapaEXECUTE/ex_mem/forward_b_sel[0]$etapaEXECUTE/ex_mem/forward_b_sel[0]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0212	
-29.770Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2:
etapaDECODE/latchidex/D[5]etapaDECODE/latchidex/D[5]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2X
)etapaDECODE/latchidex/o_result[5]_i_5_n_0)etapaDECODE/latchidex/o_result[5]_i_5_n_02P
%etapaDECODE/latchidex/o_result[5]_i_5	%etapaDECODE/latchidex/o_result[5]_i_58Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2X
)etapaDECODE/latchidex/o_result[5]_i_5_n_0)etapaDECODE/latchidex/o_result[5]_i_5_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0172	
-29.641Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[10]_i_4_n_0*etapaDECODE/latchidex/o_result[10]_i_4_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaMEM/latch/o_ALUOp_reg[0]_9etapaMEM/latch/o_ALUOp_reg[0]_98Z32-702h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2N
$etapaMEM/latch/o_result[10]_i_10_n_0$etapaMEM/latch/o_result[10]_i_10_n_02
18Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
$etapaMEM/latch/o_result[10]_i_10_n_0$etapaMEM/latch/o_result[10]_i_10_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0132	
-29.513Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2X
)etapaDECODE/latchidex/o_result[5]_i_5_n_0)etapaDECODE/latchidex/o_result[5]_i_5_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-1.0122	
-29.481Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
202
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
$etapaEXECUTE/ex_mem/forward_b_sel[0]$etapaEXECUTE/ex_mem/forward_b_sel[0]8Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-0.9702	
-28.138Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
*etapaDECODE/latchidex/o_result[16]_i_2_n_0*etapaDECODE/latchidex/o_result[16]_i_2_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-0.9682	
-28.073Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
112
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2L
#etapaMEM/latch/o_result[3]_i_20_n_0#etapaMEM/latch/o_result[3]_i_20_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-0.9662	
-28.009Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2R
&etapaDECODE/latchidex/o_regWrite_reg_0&etapaDECODE/latchidex/o_regWrite_reg_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
222
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2^
,etapaEXECUTE/ex_mem/o_writeRegister_reg[3]_1,etapaEXECUTE/ex_mem/o_writeRegister_reg[3]_18Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-0.9642	
-27.945Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2:
etapaDECODE/latchidex/D[3]etapaDECODE/latchidex/D[3]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
172
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2X
)etapaDECODE/latchidex/o_result[3]_i_5_n_0)etapaDECODE/latchidex/o_result[3]_i_5_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-0.9632	
-27.913Z32-619h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2D
etapaMEM/latch/o_ALUOp_reg[0]_9etapaMEM/latch/o_ALUOp_reg[0]_92N
$etapaMEM/latch/o_result[10]_i_7_comp	$etapaMEM/latch/o_result[10]_i_7_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2N
$etapaMEM/latch/o_result[10]_i_10_n_0$etapaMEM/latch/o_result[10]_i_10_n_08Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-0.9622	
-27.881Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 etapaMEM/latch/o_ALUOp_reg[0]_11 etapaMEM/latch/o_ALUOp_reg[0]_118Z32-735h px� 
r
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-0.9462	
-27.369Z32-619h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Physopt 32-6192
100Z17-14h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[21]_i_2_n_0*etapaDECODE/latchidex/o_result[21]_i_2_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2H
!etapaMEM/latch/o_result[27]_i_8_2!etapaMEM/latch/o_result[27]_i_8_22D
etapaMEM/latch/o_result[21]_i_7	etapaMEM/latch/o_result[21]_i_78Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2H
!etapaMEM/latch/o_result[27]_i_8_2!etapaMEM/latch/o_result[27]_i_8_28Z32-735h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2N
$etapaDECODE/latchidex/pc[31]_i_9_n_0$etapaDECODE/latchidex/pc[31]_i_9_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2:
etapaMEM/latch/i_result[0]etapaMEM/latch/i_result[0]2D
etapaMEM/latch/o_result[17]_i_1	etapaMEM/latch/o_result[17]_i_18Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2:
etapaMEM/latch/i_result[0]etapaMEM/latch/i_result[0]8Z32-735h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2D
etapaMEM/latch/o_regWrite_reg_0etapaMEM/latch/o_regWrite_reg_02@
etapaMEM/latch/o_regWrite_reg	etapaMEM/latch/o_regWrite_reg8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2D
etapaMEM/latch/o_regWrite_reg_0etapaMEM/latch/o_regWrite_reg_08Z32-735h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Physopt 32-7352
100Z17-14h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaMEM/latch/o_srcB_reg[2]_20etapaMEM/latch/o_srcB_reg[2]_208Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2D
etapaMEM/latch/o_srcB_reg[2]_20etapaMEM/latch/o_srcB_reg[2]_202L
#etapaMEM/latch/o_result[6]_i_6_comp	#etapaMEM/latch/o_result[6]_i_6_comp8Z32-710h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
172
pinsZ32-608h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2Z
*etapaDECODE/latchidex/o_result[21]_i_2_n_0*etapaDECODE/latchidex/o_result[21]_i_2_n_02\
+etapaDECODE/latchidex/o_result[21]_i_2_comp	+etapaDECODE/latchidex/o_result[21]_i_2_comp8Z32-710h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2D
etapaMEM/latch/o_srcB_reg[1]_41etapaMEM/latch/o_srcB_reg[1]_412D
etapaMEM/latch/o_result[11]_i_9	etapaMEM/latch/o_result[11]_i_98Z32-663h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2h
1etapaDECODE/latchidex/o_instruction_reg[25]_0[20]1etapaDECODE/latchidex/o_instruction_reg[25]_0[20]2\
+etapaDECODE/latchidex/o_instruction_reg[20]	+etapaDECODE/latchidex/o_instruction_reg[20]8Z32-663h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2h
1etapaDECODE/latchidex/o_instruction_reg[25]_0[20]1etapaDECODE/latchidex/o_instruction_reg[25]_0[20]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2^
,etapaEXECUTE/ex_mem/o_writeRegister_reg[3]_1,etapaEXECUTE/ex_mem/o_writeRegister_reg[3]_18Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth28
etapaFETCH/latchIFID/D[9]etapaFETCH/latchIFID/D[9]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clk_IBUFclk_IBUF8Z32-702h px� 
v
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clkclk8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaFETCH/program_counter/Q[6]etapaFETCH/program_counter/Q[6]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2h
1etapaDECODE/latchidex/o_instruction_reg[25]_0[20]1etapaDECODE/latchidex/o_instruction_reg[25]_0[20]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2T
'etapaDECODE/latchidex/o_takeJumpR_reg_6'etapaDECODE/latchidex/o_takeJumpR_reg_68Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2V
(etapaDECODE/latchidex/o_takeBranch_reg_0(etapaDECODE/latchidex/o_takeBranch_reg_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2N
$etapaDECODE/latchidex/pc[31]_i_8_n_0$etapaDECODE/latchidex/pc[31]_i_8_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
%etapaDECODE/latchidex/pc[31]_i_12_n_0%etapaDECODE/latchidex/pc[31]_i_12_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2@
etapaMEM/latch/o_ALUOp_reg[1]etapaMEM/latch/o_ALUOp_reg[1]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2L
#etapaMEM/latch/o_result[27]_i_7_n_0#etapaMEM/latch/o_result[27]_i_7_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2N
$etapaMEM/latch/o_result[15]_i_17_n_0$etapaMEM/latch/o_result[15]_i_17_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2V
(etapaDECODE/latchidex/o_result[8]_i_21_0(etapaDECODE/latchidex/o_result[8]_i_21_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
142
pinsZ32-608h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2,
etapaMEM/latch/Q[1]etapaMEM/latch/Q[1]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
%etapaDECODE/latchidex/pc[31]_i_10_n_0%etapaDECODE/latchidex/pc[31]_i_10_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
%etapaDECODE/latchidex/pc[31]_i_16_n_0%etapaDECODE/latchidex/pc[31]_i_16_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
232
pinsZ32-608h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaFETCH/program_counter/Q[3]etapaFETCH/program_counter/Q[3]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2\
+etapaEXECUTE/ex_mem/o_writeRegister[3]_repN+etapaEXECUTE/ex_mem/o_writeRegister[3]_repN8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2V
(etapaDECODE/latchidex/o_takeJumpR_reg_14(etapaDECODE/latchidex/o_takeJumpR_reg_148Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
%etapaDECODE/latchidex/pc[31]_i_15_n_0%etapaDECODE/latchidex/pc[31]_i_15_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
etapaDECODE/latchidex/D[14]etapaDECODE/latchidex/D[14]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[14]_i_2_n_0*etapaDECODE/latchidex/o_result[14]_i_2_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2D
etapaMEM/latch/o_srcB_reg[1]_40etapaMEM/latch/o_srcB_reg[1]_402D
etapaMEM/latch/o_result[14]_i_8	etapaMEM/latch/o_result[14]_i_88Z32-663h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
%etapaDECODE/latchidex/pc[31]_i_17_n_0%etapaDECODE/latchidex/pc[31]_i_17_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
etapaDECODE/latchidex/D[10]etapaDECODE/latchidex/D[10]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[10]_i_4_n_0*etapaDECODE/latchidex/o_result[10]_i_4_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2D
etapaMEM/latch/o_srcB_reg[1]_41etapaMEM/latch/o_srcB_reg[1]_412D
etapaMEM/latch/o_result[11]_i_9	etapaMEM/latch/o_result[11]_i_98Z32-663h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaDECODE/latchidex/D[6]_repNetapaDECODE/latchidex/D[6]_repN8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2X
)etapaDECODE/latchidex/o_result[6]_i_2_n_0)etapaDECODE/latchidex/o_result[6]_i_2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaMEM/latch/o_srcB_reg[2]_21etapaMEM/latch/o_srcB_reg[2]_218Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2L
#etapaMEM/latch/o_result[7]_i_12_n_0#etapaMEM/latch/o_result[7]_i_12_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2L
#etapaMEM/latch/o_result[9]_i_15_n_0#etapaMEM/latch/o_result[9]_i_15_n_02D
etapaMEM/latch/o_result[9]_i_15	etapaMEM/latch/o_result[9]_i_158Z32-663h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[19]_i_2_n_0*etapaDECODE/latchidex/o_result[19]_i_2_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2Z
*etapaDECODE/latchidex/o_result[19]_i_7_n_0*etapaDECODE/latchidex/o_result[19]_i_7_n_02\
+etapaDECODE/latchidex/o_result[19]_i_7_comp	+etapaDECODE/latchidex/o_result[19]_i_7_comp8Z32-663h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2N
$etapaDECODE/latchidex/pc[31]_i_9_n_0$etapaDECODE/latchidex/pc[31]_i_9_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
192
pinsZ32-608h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
etapaDECODE/latchidex/D[11]etapaDECODE/latchidex/D[11]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[11]_i_3_n_0*etapaDECODE/latchidex/o_result[11]_i_3_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2D
etapaMEM/latch/o_srcB_reg[1]_41etapaMEM/latch/o_srcB_reg[1]_412D
etapaMEM/latch/o_result[11]_i_9	etapaMEM/latch/o_result[11]_i_98Z32-663h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2:
etapaDECODE/latchidex/D[2]etapaDECODE/latchidex/D[2]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2X
)etapaDECODE/latchidex/o_result[2]_i_2_n_0)etapaDECODE/latchidex/o_result[2]_i_2_n_02P
%etapaDECODE/latchidex/o_result[2]_i_2	%etapaDECODE/latchidex/o_result[2]_i_28Z32-663h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
etapaDECODE/latchidex/D[24]etapaDECODE/latchidex/D[24]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[25]_i_5_n_0*etapaDECODE/latchidex/o_result[25]_i_5_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2\
+etapaDECODE/latchidex/o_result[25]_i_10_n_0+etapaDECODE/latchidex/o_result[25]_i_10_n_08Z32-702h px� 
^
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
82
pinsZ32-608h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2Z
*etapaDECODE/latchidex/o_result[10]_i_5_n_0*etapaDECODE/latchidex/o_result[10]_i_5_n_02R
&etapaDECODE/latchidex/o_result[10]_i_5	&etapaDECODE/latchidex/o_result[10]_i_58Z32-663h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2X
)etapaDECODE/latchidex/o_result[6]_i_3_n_0)etapaDECODE/latchidex/o_result[6]_i_3_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
192
pinsZ32-608h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2L
#etapaMEM/latch/o_result[9]_i_17_n_0#etapaMEM/latch/o_result[9]_i_17_n_02D
etapaMEM/latch/o_result[9]_i_17	etapaMEM/latch/o_result[9]_i_178Z32-663h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
182
pinsZ32-608h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaMEM/latch/o_ALUOp_reg[0]_9etapaMEM/latch/o_ALUOp_reg[0]_98Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
192
pinsZ32-608h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[8]_i_18_n_0*etapaDECODE/latchidex/o_result[8]_i_18_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2N
$etapaDECODE/latchidex/operando_b[14]$etapaDECODE/latchidex/operando_b[14]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2R
&etapaDECODE/latchidex/o_regWrite_reg_0&etapaDECODE/latchidex/o_regWrite_reg_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2^
,etapaEXECUTE/ex_mem/o_writeRegister_reg[3]_1,etapaEXECUTE/ex_mem/o_writeRegister_reg[3]_18Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth28
etapaFETCH/latchIFID/D[9]etapaFETCH/latchIFID/D[9]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clk_IBUFclk_IBUF8Z32-702h px� 
v
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clkclk8Z32-702h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0822

2287.1412
0.055Z17-268h px� 
T
%s*common2;
9Phase 3 Critical Path Optimization | Checksum: 1bc0ec8b1
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:53 ; elapsed = 00:00:33 . Memory (MB): peak = 2287.141 ; gain = 142.613h px� 
W

Phase %s%s
101*constraints2
4 2
Critical Path OptimizationZ18-101h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaFETCH/program_counter/Q[6]etapaFETCH/program_counter/Q[6]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2h
1etapaDECODE/latchidex/o_instruction_reg[25]_0[20]1etapaDECODE/latchidex/o_instruction_reg[25]_0[20]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2T
'etapaDECODE/latchidex/o_takeJumpR_reg_6'etapaDECODE/latchidex/o_takeJumpR_reg_68Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2V
(etapaDECODE/latchidex/o_takeBranch_reg_0(etapaDECODE/latchidex/o_takeBranch_reg_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2N
$etapaDECODE/latchidex/pc[31]_i_8_n_0$etapaDECODE/latchidex/pc[31]_i_8_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
%etapaDECODE/latchidex/pc[31]_i_12_n_0%etapaDECODE/latchidex/pc[31]_i_12_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
%etapaDECODE/latchidex/pc[31]_i_13_n_0%etapaDECODE/latchidex/pc[31]_i_13_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaMEM/latch/o_ALUOp_reg[0]_8etapaMEM/latch/o_ALUOp_reg[0]_88Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
etapaMEM/latch/o_srcB_reg[2]_2etapaMEM/latch/o_srcB_reg[2]_28Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2X
)etapaMEM/latch/o_result[16]_i_19_n_0_repN)etapaMEM/latch/o_result[16]_i_19_n_0_repN2V
(etapaMEM/latch/o_result[16]_i_19_replica	(etapaMEM/latch/o_result[16]_i_19_replica8Z32-663h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2,
etapaMEM/latch/Q[1]etapaMEM/latch/Q[1]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
%etapaDECODE/latchidex/pc[31]_i_10_n_0%etapaDECODE/latchidex/pc[31]_i_10_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
%etapaDECODE/latchidex/pc[31]_i_17_n_0%etapaDECODE/latchidex/pc[31]_i_17_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
etapaDECODE/latchidex/D[11]etapaDECODE/latchidex/D[11]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[11]_i_3_n_0*etapaDECODE/latchidex/o_result[11]_i_3_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
152
pinsZ32-608h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
222
pinsZ32-608h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2X
)etapaMEM/latch/o_result[16]_i_19_n_0_repN)etapaMEM/latch/o_result[16]_i_19_n_0_repN8Z32-702h px� 
�
5Processed net %s. Rewiring did not optimize the net.
134*physynth2V
(etapaDECODE/latchidex/o_result[8]_i_21_0(etapaDECODE/latchidex/o_result[8]_i_21_08Z32-134h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2V
(etapaDECODE/latchidex/o_result[8]_i_21_0(etapaDECODE/latchidex/o_result[8]_i_21_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[8]_i_18_n_0*etapaDECODE/latchidex/o_result[8]_i_18_n_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2Z
*etapaDECODE/latchidex/o_result[8]_i_18_n_0*etapaDECODE/latchidex/o_result[8]_i_18_n_02\
+etapaDECODE/latchidex/o_result[8]_i_18_comp	+etapaDECODE/latchidex/o_result[8]_i_18_comp8Z32-710h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[8]_i_16_n_0*etapaDECODE/latchidex/o_result[8]_i_16_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2N
$etapaDECODE/latchidex/operando_b[16]$etapaDECODE/latchidex/operando_b[16]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2R
&etapaDECODE/latchidex/o_regWrite_reg_0&etapaDECODE/latchidex/o_regWrite_reg_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2^
,etapaEXECUTE/ex_mem/o_writeRegister_reg[3]_1,etapaEXECUTE/ex_mem/o_writeRegister_reg[3]_18Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth28
etapaFETCH/latchIFID/D[9]etapaFETCH/latchIFID/D[9]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clk_IBUFclk_IBUF8Z32-702h px� 
v
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clkclk8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaFETCH/program_counter/Q[6]etapaFETCH/program_counter/Q[6]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2h
1etapaDECODE/latchidex/o_instruction_reg[25]_0[20]1etapaDECODE/latchidex/o_instruction_reg[25]_0[20]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2T
'etapaDECODE/latchidex/o_takeJumpR_reg_6'etapaDECODE/latchidex/o_takeJumpR_reg_68Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2V
(etapaDECODE/latchidex/o_takeBranch_reg_0(etapaDECODE/latchidex/o_takeBranch_reg_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2N
$etapaDECODE/latchidex/pc[31]_i_8_n_0$etapaDECODE/latchidex/pc[31]_i_8_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
%etapaDECODE/latchidex/pc[31]_i_13_n_0%etapaDECODE/latchidex/pc[31]_i_13_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
etapaMEM/latch/o_ALUOp_reg[0]_8etapaMEM/latch/o_ALUOp_reg[0]_88Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2B
etapaMEM/latch/o_srcB_reg[2]_2etapaMEM/latch/o_srcB_reg[2]_28Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2X
)etapaMEM/latch/o_result[16]_i_19_n_0_repN)etapaMEM/latch/o_result[16]_i_19_n_0_repN8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2V
(etapaDECODE/latchidex/o_result[8]_i_21_0(etapaDECODE/latchidex/o_result[8]_i_21_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
*etapaDECODE/latchidex/o_result[8]_i_16_n_0*etapaDECODE/latchidex/o_result[8]_i_16_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2N
$etapaDECODE/latchidex/operando_b[16]$etapaDECODE/latchidex/operando_b[16]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2R
&etapaDECODE/latchidex/o_regWrite_reg_0&etapaDECODE/latchidex/o_regWrite_reg_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2^
,etapaEXECUTE/ex_mem/o_writeRegister_reg[3]_1,etapaEXECUTE/ex_mem/o_writeRegister_reg[3]_18Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth28
etapaFETCH/latchIFID/D[9]etapaFETCH/latchIFID/D[9]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clk_IBUFclk_IBUF8Z32-702h px� 
v
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clkclk8Z32-702h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0272

2338.4652
0.055Z17-268h px� 
T
%s*common2;
9Phase 4 Critical Path Optimization | Checksum: 1bc0ec8b1
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:03 ; elapsed = 00:00:39 . Memory (MB): peak = 2338.465 ; gain = 193.938h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0072

2338.4652
0.000Z17-268h px� 
w
>Post Physical Optimization Timing Summary | WNS=%s | TNS=%s |
318*physynth2
-0.8412	
-24.012Z32-603h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization   |  WNS Gain (ns)  |  TNS Gain (ns)  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  DSP Register   |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Critical Path  |          0.575  |         17.352  |           12  |              0  |                   126  |           0  |           2  |  00:00:38  |
|  Total          |          0.575  |         17.352  |           12  |              0  |                   126  |           0  |           3  |  00:00:38  |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0042

2338.4652
0.000Z17-268h px� 
P
%s*common27
5Ending Physical Synthesis Task | Checksum: 1a6ceac75
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:03 ; elapsed = 00:00:40 . Memory (MB): peak = 2338.477 ; gain = 193.949h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
5832
02
02
0Z4-41h px� 
O
%s completed successfully
29*	vivadotcl2
phys_opt_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
phys_opt_design: 2

00:01:092

00:00:432

2338.4772	
212.555Z17-268h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:012
00:00:00.1242

2354.4302
0.023Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PlaceDB: 2

00:00:052

00:00:022

2356.3522
1.922Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

2356.3522
0.000Z17-268h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote RouteStorage: 2

00:00:002
00:00:00.0452

2356.3522
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Netlist Cache: 2

00:00:002
00:00:00.0382

2356.3522
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Device Cache: 2

00:00:002
00:00:00.0092

2356.3522
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write Physdb Complete: 2

00:00:052

00:00:022

2356.3522
1.922Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2P
NC:/Users/Gina/Desktop/Arquitectura/MIPS/project_1.runs/impl_1/MIPS_physopt.dcpZ17-1381h px� 


End Record