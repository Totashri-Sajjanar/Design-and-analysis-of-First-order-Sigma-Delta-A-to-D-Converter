EESchema Schematic File Version 2
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:eSim_SKY130
LIBS:eSim_SKY130_Subckts
LIBS:Sigma_DeltaAdc-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L pulse v2
U 1 1 633EE172
P 1600 6150
F 0 "v2" H 1400 6250 60  0000 C CNN
F 1 "pulse" H 1400 6100 60  0000 C CNN
F 2 "R1" H 1300 6150 60  0000 C CNN
F 3 "" H 1600 6150 60  0000 C CNN
	1    1600 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6600 1600 6850
$Comp
L eSim_GND #PWR01
U 1 1 633EE3EA
P 2200 7150
F 0 "#PWR01" H 2200 6900 50  0001 C CNN
F 1 "eSim_GND" H 2200 7000 50  0000 C CNN
F 2 "" H 2200 7150 50  0001 C CNN
F 3 "" H 2200 7150 50  0001 C CNN
	1    2200 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 7150 2200 6850
Connection ~ 2200 6850
Wire Wire Line
	700  5700 1600 5700
Wire Wire Line
	700  5700 700  2150
Wire Wire Line
	700  2150 1200 2150
Wire Wire Line
	1500 2150 1950 2150
$Comp
L DC v3
U 1 1 633EE741
P 2650 3400
F 0 "v3" H 2450 3500 60  0000 C CNN
F 1 "DC" H 2450 3350 60  0000 C CNN
F 2 "R1" H 2350 3400 60  0000 C CNN
F 3 "" H 2650 3400 60  0000 C CNN
	1    2650 3400
	0    1    1    0   
$EndComp
$Comp
L eSim_GND #PWR02
U 1 1 633EEE26
P 2800 2800
F 0 "#PWR02" H 2800 2550 50  0001 C CNN
F 1 "eSim_GND" H 2800 2650 50  0000 C CNN
F 2 "" H 2800 2800 50  0001 C CNN
F 3 "" H 2800 2800 50  0001 C CNN
	1    2800 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2700 2800 2800
Wire Wire Line
	2550 2700 2050 2700
Wire Wire Line
	2050 2700 2050 3400
Wire Wire Line
	2050 3400 2200 3400
$Comp
L avsd_opamp X1
U 1 1 633EEFBA
P 2550 2200
F 0 "X1" H 2550 2200 60  0000 C CNN
F 1 "avsd_opamp" H 2600 2100 60  0000 C CNN
F 2 "" H 2550 2200 60  0001 C CNN
F 3 "" H 2550 2200 60  0001 C CNN
	1    2550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1800 2550 1750
Wire Wire Line
	2550 1750 3650 1750
Wire Wire Line
	3650 1750 3650 3400
Wire Wire Line
	3650 3400 3100 3400
Connection ~ 1800 2150
Wire Wire Line
	3250 2200 4250 2200
Wire Wire Line
	3300 1300 3300 2200
Connection ~ 3300 2200
$Comp
L avsd_opamp X2
U 1 1 633F0AF9
P 6100 2050
F 0 "X2" H 6100 2050 60  0000 C CNN
F 1 "avsd_opamp" H 6150 1950 60  0000 C CNN
F 2 "" H 6100 2050 60  0001 C CNN
F 3 "" H 6100 2050 60  0001 C CNN
	1    6100 2050
	1    0    0    -1  
$EndComp
$Comp
L DC v5
U 1 1 633F1030
P 6250 3150
F 0 "v5" H 6050 3250 60  0000 C CNN
F 1 "DC" H 6050 3100 60  0000 C CNN
F 2 "R1" H 5950 3150 60  0000 C CNN
F 3 "" H 6250 3150 60  0000 C CNN
	1    6250 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 2550 5750 2550
Wire Wire Line
	5750 2550 5750 3150
Wire Wire Line
	5750 3150 5800 3150
Wire Wire Line
	6100 1650 6100 1600
Wire Wire Line
	6100 1600 7100 1600
Wire Wire Line
	7100 1600 7100 3150
Wire Wire Line
	7100 3150 6700 3150
Wire Wire Line
	5200 2200 5200 1250
Connection ~ 5200 2200
$Comp
L avsd_opamp X3
U 1 1 633F16A8
P 8000 2100
F 0 "X3" H 8000 2100 60  0000 C CNN
F 1 "avsd_opamp" H 8050 2000 60  0000 C CNN
F 2 "" H 8000 2100 60  0001 C CNN
F 3 "" H 8000 2100 60  0001 C CNN
	1    8000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1250 6850 2050
Connection ~ 6850 2050
$Comp
L eSim_GND #PWR03
U 1 1 633F1767
P 6350 2650
F 0 "#PWR03" H 6350 2400 50  0001 C CNN
F 1 "eSim_GND" H 6350 2500 50  0000 C CNN
F 2 "" H 6350 2650 50  0001 C CNN
F 3 "" H 6350 2650 50  0001 C CNN
	1    6350 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2550 6350 2650
Wire Wire Line
	5500 2000 5350 2000
Wire Wire Line
	5350 2000 5350 3450
Wire Wire Line
	5350 3450 7400 3450
Wire Wire Line
	7400 3450 7400 2250
$Comp
L eSim_GND #PWR04
U 1 1 633FAACE
P 6400 3600
F 0 "#PWR04" H 6400 3350 50  0001 C CNN
F 1 "eSim_GND" H 6400 3450 50  0000 C CNN
F 2 "" H 6400 3600 50  0001 C CNN
F 3 "" H 6400 3600 50  0001 C CNN
	1    6400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3600 6400 3450
Connection ~ 6400 3450
Wire Wire Line
	8000 1700 8000 1600
Wire Wire Line
	8000 1600 9150 1600
Wire Wire Line
	7750 2600 8000 2600
$Comp
L eSim_GND #PWR05
U 1 1 633FAF74
P 8250 2650
F 0 "#PWR05" H 8250 2400 50  0001 C CNN
F 1 "eSim_GND" H 8250 2500 50  0000 C CNN
F 2 "" H 8250 2650 50  0001 C CNN
F 3 "" H 8250 2650 50  0001 C CNN
	1    8250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2600 8250 2650
$Comp
L DC v6
U 1 1 633FB070
P 8200 3200
F 0 "v6" H 8000 3300 60  0000 C CNN
F 1 "DC" H 8000 3150 60  0000 C CNN
F 2 "R1" H 7900 3200 60  0000 C CNN
F 3 "" H 8200 3200 60  0000 C CNN
	1    8200 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 2600 7750 3200
Wire Wire Line
	8650 3200 9150 3200
$Comp
L dac_bridge_1 U4
U 1 1 633FDFA1
P 4650 4600
F 0 "U4" H 4650 4600 60  0000 C CNN
F 1 "dac_bridge_1" H 4650 4750 60  0000 C CNN
F 2 "" H 4650 4600 60  0000 C CNN
F 3 "" H 4650 4600 60  0000 C CNN
	1    4650 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	12000 2100 12000 4650
Wire Wire Line
	12000 4650 5250 4650
Connection ~ 12000 2100
Wire Wire Line
	1950 2350 1750 2350
Wire Wire Line
	1750 4650 4100 4650
$Comp
L plot_v1 U1
U 1 1 6340038E
P 1250 5600
F 0 "U1" H 1250 6100 60  0000 C CNN
F 1 "plot_v1" H 1450 5950 60  0000 C CNN
F 2 "" H 1250 5600 60  0000 C CNN
F 3 "" H 1250 5600 60  0000 C CNN
	1    1250 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5400 1250 5700
Connection ~ 1250 5700
Connection ~ 1250 5550
$Comp
L plot_v1 U3
U 1 1 6340118D
P 3450 1300
F 0 "U3" H 3450 1800 60  0000 C CNN
F 1 "plot_v1" H 3650 1650 60  0000 C CNN
F 2 "" H 3450 1300 60  0000 C CNN
F 3 "" H 3450 1300 60  0000 C CNN
	1    3450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1100 3450 2200
Connection ~ 3450 2200
$Comp
L plot_v1 U6
U 1 1 63401281
P 7000 1350
F 0 "U6" H 7000 1850 60  0000 C CNN
F 1 "plot_v1" H 7200 1700 60  0000 C CNN
F 2 "" H 7000 1350 60  0000 C CNN
F 3 "" H 7000 1350 60  0000 C CNN
	1    7000 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2050 7000 1150
Connection ~ 7000 2050
$Comp
L plot_v1 U10
U 1 1 6340168C
P 12300 1300
F 0 "U10" H 12300 1800 60  0000 C CNN
F 1 "plot_v1" H 12500 1650 60  0000 C CNN
F 2 "" H 12300 1300 60  0000 C CNN
F 3 "" H 12300 1300 60  0000 C CNN
	1    12300 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 2100 12300 1100
Connection ~ 12300 2100
Text GLabel 3800 1350 2    60   Output ~ 0
Dif_out
Wire Wire Line
	3800 1350 3450 1350
Connection ~ 3450 1350
Text GLabel 7300 1250 2    60   Output ~ 0
Intg_out
Wire Wire Line
	7300 1250 7000 1250
Connection ~ 7000 1250
Text GLabel 9100 1250 2    60   Output ~ 0
Comp_out
Wire Wire Line
	9100 1250 8700 1250
Connection ~ 8700 1250
Text GLabel 12650 1250 2    60   Output ~ 0
Bit_out
Wire Wire Line
	12650 1250 12300 1250
Connection ~ 12300 1250
Wire Wire Line
	6200 1250 6850 1250
Wire Wire Line
	5200 1250 5900 1250
$Comp
L SKY130mode scmode1
U 1 1 63407AFD
P 9700 5350
F 0 "scmode1" H 9700 5500 98  0000 C CNB
F 1 "SKY130mode" H 9700 5250 118 0000 C CNB
F 2 "" H 9700 5500 60  0001 C CNN
F 3 "" H 9700 5500 60  0001 C CNN
	1    9700 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2200 5500 2200
$Comp
L sky130_fd_pr__res_generic_pd SC2
U 1 1 633FF587
P 2550 1300
F 0 "SC2" H 2700 1587 50  0000 C CNN
F 1 "sky130_fd_pr__res_generic_pd" H 2700 1412 50  0000 R CNN
F 2 "" H 2550 -200 50  0001 C CNN
F 3 "" H 2550 1300 50  0001 C CNN
	1    2550 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 1300 2850 1300
Wire Wire Line
	1800 2100 1950 2100
Wire Wire Line
	1800 2100 1800 2150
$Comp
L sky130_fd_pr__res_generic_pd SC3
U 1 1 633FF8E9
P 4400 2000
F 0 "SC3" H 4550 2287 50  0000 C CNN
F 1 "sky130_fd_pr__res_generic_pd" H 4550 2112 50  0000 R CNN
F 2 "" H 4400 500 50  0001 C CNN
F 3 "" H 4400 2000 50  0001 C CNN
	1    4400 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 2000 4100 2150
Wire Wire Line
	4100 2150 4250 2150
Wire Wire Line
	4250 2150 4250 2200
Wire Wire Line
	4700 2000 4850 2000
Wire Wire Line
	4850 2000 4850 2150
Wire Wire Line
	4850 2150 4550 2150
Wire Wire Line
	4550 2150 4550 2200
Wire Wire Line
	1000 1850 1000 2050
Wire Wire Line
	1000 2050 1200 2050
Wire Wire Line
	1200 2050 1200 2150
Wire Wire Line
	1600 1850 1700 1850
Wire Wire Line
	1700 1850 1700 2050
Wire Wire Line
	1700 2050 1500 2050
Wire Wire Line
	1500 2050 1500 2150
$Comp
L sky130_fd_pr__cap_mim_m3_1 SC4
U 1 1 633FFDB0
P 6050 1000
F 0 "SC4" H 6200 1287 50  0000 C CNN
F 1 "sky130_fd_pr__cap_mim_m3_1" H 6200 1112 50  0000 R CNN
F 2 "" H 6050 -500 50  0001 C CNN
F 3 "" H 6050 1000 50  0001 C CNN
	1    6050 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 1000 5750 1150
Wire Wire Line
	5750 1150 5900 1150
Wire Wire Line
	5900 1150 5900 1250
Wire Wire Line
	6350 1000 6500 1000
Wire Wire Line
	6500 1000 6500 1150
Wire Wire Line
	6500 1150 6200 1150
Wire Wire Line
	6200 1150 6200 1250
$Comp
L eSim_GND #PWR06
U 1 1 6340016F
P 750 1750
F 0 "#PWR06" H 750 1500 50  0001 C CNN
F 1 "eSim_GND" H 750 1600 50  0000 C CNN
F 2 "" H 750 1750 50  0001 C CNN
F 3 "" H 750 1750 50  0001 C CNN
	1    750  1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  1600 750  1750
Wire Wire Line
	4400 1800 4400 550 
Wire Wire Line
	4400 550  750  550 
Wire Wire Line
	750  550  750  700 
Wire Wire Line
	6800 2050 7400 2050
Connection ~ 750  600 
Wire Wire Line
	8700 1350 8900 1350
Wire Wire Line
	8700 1000 8700 1350
$Comp
L plot_v1 U7
U 1 1 63418BEB
P 8700 1200
F 0 "U7" H 8700 1700 60  0000 C CNN
F 1 "plot_v1" H 8900 1550 60  0000 C CNN
F 2 "" H 8700 1200 60  0000 C CNN
F 3 "" H 8700 1200 60  0000 C CNN
	1    8700 1200
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__res_generic_pd SC6
U 1 1 63419BFD
P 1950 1700
F 0 "SC6" H 2100 1987 50  0000 C CNN
F 1 "sky130_fd_pr__res_generic_pd" H 2100 1812 50  0000 R CNN
F 2 "" H 1950 200 50  0001 C CNN
F 3 "" H 1950 1700 50  0001 C CNN
	1    1950 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1400 1950 1300
Wire Wire Line
	1950 1300 2250 1300
Wire Wire Line
	1950 2100 1950 2000
$Comp
L sky130_fd_pr__res_generic_pd SC1
U 1 1 63419DFA
P 1300 1850
F 0 "SC1" H 1450 2137 50  0000 C CNN
F 1 "sky130_fd_pr__res_generic_pd" H 1450 1962 50  0000 R CNN
F 2 "" H 1300 350 50  0001 C CNN
F 3 "" H 1300 1850 50  0001 C CNN
	1    1300 1850
	0    1    1    0   
$EndComp
$Comp
L sky130_fd_pr__res_generic_pd SC5
U 1 1 63419EEF
P 1750 3100
F 0 "SC5" H 1900 3387 50  0000 C CNN
F 1 "sky130_fd_pr__res_generic_pd" H 1900 3212 50  0000 R CNN
F 2 "" H 1750 1600 50  0001 C CNN
F 3 "" H 1750 3100 50  0001 C CNN
	1    1750 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2350 1750 2800
Wire Wire Line
	1750 3400 1750 4650
Wire Wire Line
	1550 3100 850  3100
Wire Wire Line
	850  3100 850  1400
Wire Wire Line
	850  1400 1000 1400
Text GLabel 1400 5550 2    60   Input ~ 0
Analog_in
Wire Wire Line
	1250 5550 1400 5550
Wire Wire Line
	9150 3200 9150 1600
Wire Wire Line
	8900 1350 8900 2100
Connection ~ 8900 2100
Wire Wire Line
	1600 6850 2850 6850
Wire Wire Line
	11050 2400 11500 2400
Wire Wire Line
	11500 2400 11500 2100
Wire Wire Line
	11500 2100 12300 2100
$Comp
L DC v1
U 1 1 6341F0BF
P 750 1150
F 0 "v1" H 550 1250 60  0000 C CNN
F 1 "DC" H 550 1100 60  0000 C CNN
F 2 "R1" H 450 1150 60  0000 C CNN
F 3 "" H 750 1150 60  0000 C CNN
	1    750  1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1400 1000 550 
Connection ~ 1000 550 
Wire Wire Line
	1300 1650 1300 550 
Connection ~ 1300 550 
Wire Wire Line
	2550 1100 2550 650 
Wire Wire Line
	2550 650  1450 650 
Wire Wire Line
	1450 650  1450 550 
Connection ~ 1450 550 
Wire Wire Line
	1750 1700 1750 750 
Wire Wire Line
	1750 750  1400 750 
Wire Wire Line
	1400 750  1400 550 
Connection ~ 1400 550 
$Comp
L d_latch U?
U 1 1 63427B2A
P 7750 4300
F 0 "U?" H 10600 6100 60  0000 C CNN
F 1 "d_latch" H 10600 6300 60  0000 C CNN
F 2 "" H 10600 6250 60  0000 C CNN
F 3 "" H 10600 6250 60  0000 C CNN
	1    7750 4300
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_1 U?
U 1 1 63427DB9
P 9950 3450
F 0 "U?" H 9950 3450 60  0000 C CNN
F 1 "adc_bridge_1" H 9950 3600 60  0000 C CNN
F 2 "" H 9950 3450 60  0000 C CNN
F 3 "" H 9950 3450 60  0000 C CNN
	1    9950 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2100 9250 2100
Wire Wire Line
	9250 2100 9250 3400
Wire Wire Line
	9250 3400 9350 3400
Wire Wire Line
	10500 3400 10550 3400
Wire Wire Line
	10550 3400 10550 3150
Wire Wire Line
	10550 3150 9350 3150
Wire Wire Line
	9350 3150 9350 2400
Wire Wire Line
	9350 2400 9900 2400
$Comp
L pulse v?
U 1 1 634280D6
P 2850 6350
F 0 "v?" H 2650 6450 60  0000 C CNN
F 1 "pulse" H 2650 6300 60  0000 C CNN
F 2 "R1" H 2550 6350 60  0000 C CNN
F 3 "" H 2850 6350 60  0000 C CNN
	1    2850 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6850 2850 6800
$Comp
L adc_bridge_1 U?
U 1 1 63428C0D
P 4700 5650
F 0 "U?" H 4700 5650 60  0000 C CNN
F 1 "adc_bridge_1" H 4700 5800 60  0000 C CNN
F 2 "" H 4700 5650 60  0000 C CNN
F 3 "" H 4700 5650 60  0000 C CNN
	1    4700 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5900 2850 5600
Wire Wire Line
	2850 5600 4100 5600
Wire Wire Line
	5250 5600 8850 5600
Wire Wire Line
	8850 5600 8850 2500
Wire Wire Line
	8850 2500 9900 2500
$Comp
L adc_bridge_1 U?
U 1 1 63428EFE
P 9900 3950
F 0 "U?" H 9900 3950 60  0000 C CNN
F 1 "adc_bridge_1" H 9900 4100 60  0000 C CNN
F 2 "" H 9900 3950 60  0000 C CNN
F 3 "" H 9900 3950 60  0000 C CNN
	1    9900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2600 9700 2600
Wire Wire Line
	9700 2600 9700 3000
Wire Wire Line
	9700 3000 10850 3000
Wire Wire Line
	10850 3000 10850 3900
Wire Wire Line
	10850 3900 10450 3900
$Comp
L DC v?
U 1 1 63429153
P 9000 4000
F 0 "v?" H 8800 4100 60  0000 C CNN
F 1 "DC" H 8800 3950 60  0000 C CNN
F 2 "R1" H 8700 4000 60  0000 C CNN
F 3 "" H 9000 4000 60  0000 C CNN
	1    9000 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3550 9300 3550
Wire Wire Line
	9300 3550 9300 3900
$Comp
L eSim_GND #PWR?
U 1 1 634292B5
P 9000 4500
F 0 "#PWR?" H 9000 4250 50  0001 C CNN
F 1 "eSim_GND" H 9000 4350 50  0000 C CNN
F 2 "" H 9000 4500 50  0001 C CNN
F 3 "" H 9000 4500 50  0001 C CNN
	1    9000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4450 9000 4500
$Comp
L plot_v1 U?
U 1 1 63429402
P 3050 5550
F 0 "U?" H 3050 6050 60  0000 C CNN
F 1 "plot_v1" H 3250 5900 60  0000 C CNN
F 2 "" H 3050 5550 60  0000 C CNN
F 3 "" H 3050 5550 60  0000 C CNN
	1    3050 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 5350 3050 5600
Connection ~ 3050 5600
Text GLabel 3200 5450 2    60   Input ~ 0
Clk
Wire Wire Line
	3200 5450 3050 5450
Connection ~ 3050 5450
$EndSCHEMATC
