## This file is a general .xdc for the Nexys4 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
##Bank = 35, Pin name = IO_L12P_T1_MRCC_35,					Sch name = CLK100MHZ
set_property PACKAGE_PIN E3 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
    create_clock -add -name sys_clk_pin -period 20.00 -waveform {0 10} [get_ports clk]
 

set_property PACKAGE_PIN P5 [get_ports {o_state[3]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {o_state[3]}]
##Bank = 34, Pin name = IO_L7P_T1_34,						Sch name = LED13
set_property PACKAGE_PIN U1 [get_ports {o_state[2]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {o_state[2]}]
##Bank = 34, Pin name = IO_L15N_T2_DQS_34,					Sch name = LED14
set_property PACKAGE_PIN R2 [get_ports {o_state[1]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {o_state[1]}]
##Bank = 34, Pin name = IO_L15P_T2_DQS_34,					Sch name = LED15
set_property PACKAGE_PIN P2 [get_ports {o_state[0]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {o_state[0]}]


set_property PACKAGE_PIN E16 [get_ports rst]						
	set_property IOSTANDARD LVCMOS33 [get_ports rst]

##USB-RS232 Interface
##Bank = 35, Pin name = IO_L7P_T1_AD6P_35,					Sch name = UART_TXD_IN
set_property PACKAGE_PIN C4 [get_ports i_rx]						
	set_property IOSTANDARD LVCMOS33 [get_ports i_rx]
##Bank = 35, Pin name = IO_L11N_T1_SRCC_35,					Sch name = UART_RXD_OUT
set_property PACKAGE_PIN D4 [get_ports o_tx]						
	set_property IOSTANDARD LVCMOS33 [get_ports o_tx]
##Bank = 35, Pin name = IO_L12N_T1_MRCC_35,					Sch name = UART_CTS
#set_property PACKAGE_PIN D3 [get_ports RsCts]						
	#set_property IOSTANDARD LVCMOS33 [get_ports RsCts]
##Bank = 35, Pin name = IO_L5N_T0_AD13N_35,					Sch name = UART_RTS
#set_property PACKAGE_PIN E5 [get_ports RsRts]						
	#set_property IOSTANDARD LVCMOS33 [get_ports RsRts]



##USB HID (PS/2)
##Bank = 35, Pin name = IO_L13P_T2_MRCC_35,					Sch name = PS2_CLK
#set_property PACKAGE_PIN F4 [get_ports PS2Clk]						
	#set_property IOSTANDARD LVCMOS33 [get_ports PS2Clk]
	#set_property PULLUP true [get_ports PS2Clk]
##Bank = 35, Pin name = IO_L10N_T1_AD15N_35,					Sch name = PS2_DATA
#set_property PACKAGE_PIN B2 [get_ports PS2Data]					
	#set_property IOSTANDARD LVCMOS33 [get_ports PS2Data]	
	#set_property PULLUP true [get_ports PS2Data]



##SMSC Ethernet PHY
##Bank = 16, Pin name = IO_L11P_T1_SRCC_16,					Sch name = ETH_MDC
#set_property PACKAGE_PIN C9 [get_ports PhyMdc]						
	#set_property IOSTANDARD LVCMOS33 [get_ports PhyMdc]
##Bank = 16, Pin name = IO_L14N_T2_SRCC_16,					Sch name = ETH_MDIO
#set_property PACKAGE_PIN A9 [get_ports PhyMdio]					
	#set_property IOSTANDARD LVCMOS33 [get_ports PhyMdio]
##Bank = 35, Pin name = IO_L10P_T1_AD15P_35,					Sch name = ETH_RSTN
#set_property PACKAGE_PIN B3 [get_ports PhyRstn]					
	#set_property IOSTANDARD LVCMOS33 [get_ports PhyRstn]
##Bank = 16, Pin name = IO_L6N_T0_VREF_16,					Sch name = ETH_CRSDV
#set_property PACKAGE_PIN D9 [get_ports PhyCrs]						
	#set_property IOSTANDARD LVCMOS33 [get_ports PhyCrs]
##Bank = 16, Pin name = IO_L13N_T2_MRCC_16,					Sch name = ETH_RXERR
#set_property PACKAGE_PIN C10 [get_ports PhyRxErr]					
	#set_property IOSTANDARD LVCMOS33 [get_ports PhyRxErr]
##Bank = 16, Pin name = IO_L19N_T3_VREF_16,					Sch name = ETH_RXD0
#set_property PACKAGE_PIN D10 [get_ports {PhyRxd[0]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {PhyRxd[0]}]
##Bank = 16, Pin name = IO_L13P_T2_MRCC_16,					Sch name = ETH_RXD1
#set_property PACKAGE_PIN C11 [get_ports {PhyRxd[1]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {PhyRxd[1]}]
##Bank = 16, Pin name = IO_L11N_T1_SRCC_16,					Sch name = ETH_TXEN
#set_property PACKAGE_PIN B9 [get_ports PhyTxEn]					
	#set_property IOSTANDARD LVCMOS33 [get_ports PhyTxEn]
##Bank = 16, Pin name = IO_L14P_T2_SRCC_16,					Sch name = ETH_TXD0
#set_property PACKAGE_PIN A10 [get_ports {PhyTxd[0]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {PhyTxd[0]}]
##Bank = 16, Pin name = IO_L12N_T1_MRCC_16,					Sch name = ETH_TXD1
#set_property PACKAGE_PIN A8 [get_ports {PhyTxd[1]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {PhyTxd[1]}]
##Bank = 35, Pin name = IO_L11P_T1_SRCC_35,					Sch name = ETH_REFCLK
#set_property PACKAGE_PIN D5 [get_ports PhyClk50Mhz]				
	#set_property IOSTANDARD LVCMOS33 [get_ports PhyClk50Mhz]
##Bank = 16, Pin name = IO_L12P_T1_MRCC_16,					Sch name = ETH_INTN
#set_property PACKAGE_PIN B8 [get_ports PhyIntn]					
	#set_property IOSTANDARD LVCMOS33 [get_ports PhyIntn]



##Quad SPI Flash
##Bank = CONFIG, Pin name = CCLK_0,							Sch name = QSPI_SCK
#set_property PACKAGE_PIN E9 [get_ports {QspiSCK}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {QspiSCK}]
##Bank = CONFIG, Pin name = IO_L1P_T0_D00_MOSI_14,			Sch name = QSPI_DQ0
#set_property PACKAGE_PIN K17 [get_ports {QspiDB[0]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[0]}]
##Bank = CONFIG, Pin name = IO_L1N_T0_D01_DIN_14,			Sch name = QSPI_DQ1
#set_property PACKAGE_PIN K18 [get_ports {QspiDB[1]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[1]}]
##Bank = CONFIG, Pin name = IO_L20_T0_D02_14,				Sch name = QSPI_DQ2
#set_property PACKAGE_PIN L14 [get_ports {QspiDB[2]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[2]}]
##Bank = CONFIG, Pin name = IO_L2P_T0_D03_14,				Sch name = QSPI_DQ3
#set_property PACKAGE_PIN M14 [get_ports {QspiDB[3]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[3]}]
##Bank = CONFIG, Pin name = IO_L15N_T2_DQS_DOUT_CSO_B_14,	Sch name = QSPI_CSN
#set_property PACKAGE_PIN L13 [get_ports QspiCSn]					
	#set_property IOSTANDARD LVCMOS33 [get_ports QspiCSn]



##Cellular RAM
##Bank = 14, Pin name = IO_L14N_T2_SRCC_14,					Sch name = CRAM_CLK
#set_property PACKAGE_PIN T15 [get_ports RamCLK]					
	#set_property IOSTANDARD LVCMOS33 [get_ports RamCLK]
##Bank = 14, Pin name = IO_L23P_T3_A03_D19_14,				Sch name = CRAM_ADVN
#set_property PACKAGE_PIN T13 [get_ports RamADVn]					
	#set_property IOSTANDARD LVCMOS33 [get_ports RamADVn]
##Bank = 14, Pin name = IO_L4P_T0_D04_14,					Sch name = CRAM_CEN
#set_property PACKAGE_PIN L18 [get_ports RamCEn]					
	#set_property IOSTANDARD LVCMOS33 [get_ports RamCEn]
##Bank = 15, Pin name = IO_L19P_T3_A22_15,					Sch name = CRAM_CRE
#set_property PACKAGE_PIN J14 [get_ports RamCRE]					
	#set_property IOSTANDARD LVCMOS33 [get_ports RamCRE]
##Bank = 15, Pin name = IO_L15P_T2_DQS_15,					Sch name = CRAM_OEN
#set_property PACKAGE_PIN H14 [get_ports RamOEn]					
	#set_property IOSTANDARD LVCMOS33 [get_ports RamOEn]
##Bank = 14, Pin name = IO_0_14,								Sch name = CRAM_WEN
#set_property PACKAGE_PIN R11 [get_ports RamWEn]					
	#set_property IOSTANDARD LVCMOS33 [get_ports RamWEn]
##Bank = 15, Pin name = IO_L24N_T3_RS0_15,					Sch name = CRAM_LBN
#set_property PACKAGE_PIN J15 [get_ports RamLBn]					
	#set_property IOSTANDARD LVCMOS33 [get_ports RamLBn]
##Bank = 15, Pin name = IO_L17N_T2_A25_15,					Sch name = CRAM_UBN
#set_property PACKAGE_PIN J13 [get_ports RamUBn]					
	#set_property IOSTANDARD LVCMOS33 [get_ports RamUBn]
##Bank = 14, Pin name = IO_L14P_T2_SRCC_14,					Sch name = CRAM_WAIT
#set_property PACKAGE_PIN T14 [get_ports RamWait]					
	#set_property IOSTANDARD LVCMOS33 [get_ports RamWait]

##Bank = 14, Pin name = IO_L5P_T0_DQ06_14,					Sch name = CRAM_DQ0
#set_property PACKAGE_PIN R12 [get_ports {MemDB[0]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[0]}]
##Bank = 14, Pin name = IO_L19P_T3_A10_D26_14,				Sch name = CRAM_DQ1
#set_property PACKAGE_PIN T11 [get_ports {MemDB[1]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[1]}]
##Bank = 14, Pin name = IO_L20P_T3_A08)D24_14,				Sch name = CRAM_DQ2
#set_property PACKAGE_PIN U12 [get_ports {MemDB[2]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[2]}]
##Bank = 14, Pin name = IO_L5N_T0_D07_14,					Sch name = CRAM_DQ3
#set_property PACKAGE_PIN R13 [get_ports {MemDB[3]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[3]}]
##Bank = 14, Pin name = IO_L17N_T2_A13_D29_14,				Sch name = CRAM_DQ4
#set_property PACKAGE_PIN U18 [get_ports {MemDB[4]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[4]}]
##Bank = 14, Pin name = IO_L12N_T1_MRCC_14,					Sch name = CRAM_DQ5
#set_property PACKAGE_PIN R17 [get_ports {MemDB[5]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[5]}]
##Bank = 14, Pin name = IO_L7N_T1_D10_14,					Sch name = CRAM_DQ6
#set_property PACKAGE_PIN T18 [get_ports {MemDB[6]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[6]}]
##Bank = 14, Pin name = IO_L7P_T1_D09_14,					Sch name = CRAM_DQ7
#set_property PACKAGE_PIN R18 [get_ports {MemDB[7]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[7]}]
##Bank = 15, Pin name = IO_L22N_T3_A16_15,					Sch name = CRAM_DQ8
#set_property PACKAGE_PIN F18 [get_ports {MemDB[8]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[8]}]
##Bank = 15, Pin name = IO_L22P_T3_A17_15,					Sch name = CRAM_DQ9
#set_property PACKAGE_PIN G18 [get_ports {MemDB[9]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[9]}]
##Bank = 15, Pin name = IO_IO_L18N_T2_A23_15,				Sch name = CRAM_DQ10
#set_property PACKAGE_PIN G17 [get_ports {MemDB[10]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[10]}]
##Bank = 14, Pin name = IO_L4N_T0_D05_14,					Sch name = CRAM_DQ11
#set_property PACKAGE_PIN M18 [get_ports {MemDB[11]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[11]}]
##Bank = 14, Pin name = IO_L10N_T1_D15_14,					Sch name = CRAM_DQ12
#set_property PACKAGE_PIN M17 [get_ports {MemDB[12]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[12]}]
##Bank = 14, Pin name = IO_L9N_T1_DQS_D13_14,				Sch name = CRAM_DQ13
#set_property PACKAGE_PIN P18 [get_ports {MemDB[13]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[13]}]
##Bank = 14, Pin name = IO_L9P_T1_DQS_14,					Sch name = CRAM_DQ14
#set_property PACKAGE_PIN N17 [get_ports {MemDB[14]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[14]}]
##Bank = 14, Pin name = IO_L12P_T1_MRCC_14,					Sch name = CRAM_DQ15
#set_property PACKAGE_PIN P17 [get_ports {MemDB[15]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[15]}]

##Bank = 15, Pin name = IO_L23N_T3_FWE_B_15,					Sch name = CRAM_A0
#set_property PACKAGE_PIN J18 [get_ports {MemAdr[0]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[0]}]
##Bank = 15, Pin name = IO_L18P_T2_A24_15,					Sch name = CRAM_A1
#set_property PACKAGE_PIN H17 [get_ports {MemAdr[1]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[1]}]
##Bank = 15, Pin name = IO_L19N_T3_A21_VREF_15,				Sch name = CRAM_A2
#set_property PACKAGE_PIN H15 [get_ports {MemAdr[2]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[2]}]
##Bank = 15, Pin name = IO_L23P_T3_FOE_B_15,					Sch name = CRAM_A3
#set_property PACKAGE_PIN J17 [get_ports {MemAdr[3]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[3]}]
##Bank = 15, Pin name = IO_L13P_T2_MRCC_15,					Sch name = CRAM_A4
#set_property PACKAGE_PIN H16 [get_ports {MemAdr[4]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[4]}]
##Bank = 15, Pin name = IO_L24P_T3_RS1_15,					Sch name = CRAM_A5
#set_property PACKAGE_PIN K15 [get_ports {MemAdr[5]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[5]}]
##Bank = 15, Pin name = IO_L17P_T2_A26_15,					Sch name = CRAM_A6
#set_property PACKAGE_PIN K13 [get_ports {MemAdr[6]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[6]}]
##Bank = 14, Pin name = IO_L11P_T1_SRCC_14,					Sch name = CRAM_A7
#set_property PACKAGE_PIN N15 [get_ports {MemAdr[7]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[7]}]
##Bank = 14, Pin name = IO_L16N_T2_SRCC-14,					Sch name = CRAM_A8
#set_property PACKAGE_PIN V16 [get_ports {MemAdr[8]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[8]}]
##Bank = 14, Pin name = IO_L22P_T3_A05_D21_14,				Sch name = CRAM_A9
#set_property PACKAGE_PIN U14 [get_ports {MemAdr[9]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[9]}]
##Bank = 14, Pin name = IO_L22N_T3_A04_D20_14,				Sch name = CRAM_A10
#set_property PACKAGE_PIN V14 [get_ports {MemAdr[10]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[10]}]
##Bank = 14, Pin name = IO_L20N_T3_A07_D23_14,				Sch name = CRAM_A11
#set_property PACKAGE_PIN V12 [get_ports {MemAdr[11]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[11]}]
##Bank = 14, Pin name = IO_L8N_T1_D12_14,					Sch name = CRAM_A12
#set_property PACKAGE_PIN P14 [get_ports {MemAdr[12]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[12]}]
##Bank = 14, Pin name = IO_L18P_T2_A12_D28_14,				Sch name = CRAM_A13
#set_property PACKAGE_PIN U16 [get_ports {MemAdr[13]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[13]}]
##Bank = 14, Pin name = IO_L13N_T2_MRCC_14,					Sch name = CRAM_A14
#set_property PACKAGE_PIN R15 [get_ports {MemAdr[14]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[14]}]
##Bank = 14, Pin name = IO_L8P_T1_D11_14,					Sch name = CRAM_A15
#set_property PACKAGE_PIN N14 [get_ports {MemAdr[15]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[15]}]
##Bank = 14, Pin name = IO_L11N_T1_SRCC_14,					Sch name = CRAM_A16
#set_property PACKAGE_PIN N16 [get_ports {MemAdr[16]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[16]}]
##Bank = 14, Pin name = IO_L6N_T0_D08_VREF_14,				Sch name = CRAM_A17
#set_property PACKAGE_PIN M13 [get_ports {MemAdr[17]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[17]}]
##Bank = 14, Pin name = IO_L18N_T2_A11_D27_14,				Sch name = CRAM_A18
#set_property PACKAGE_PIN V17 [get_ports {MemAdr[18]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[18]}]
##Bank = 14, Pin name = IO_L17P_T2_A14_D30_14,				Sch name = CRAM_A19
#set_property PACKAGE_PIN U17 [get_ports {MemAdr[19]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[19]}]
##Bank = 14, Pin name = IO_L24N_T3_A00_D16_14,				Sch name = CRAM_A20
#set_property PACKAGE_PIN T10 [get_ports {MemAdr[20]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[20]}]
##Bank = 14, Pin name = IO_L10P_T1_D14_14,					Sch name = CRAM_A21
#set_property PACKAGE_PIN M16 [get_ports {MemAdr[21]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[21]}]	
##Bank = 14, Pin name = IO_L23N_T3_A02_D18_14,				Sch name = CRAM_A22
#set_property PACKAGE_PIN U13 [get_ports {MemAdr[22]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[22]}]
	


## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## SPI configuration mode options for QSPI boot, can be used for all designs
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]