EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A0 46811 33110
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
L FPGA_Xilinx_Spartan6:XC6SLX16-FTG256 U1
U 1 1 604C43B5
P 6850 9600
F 0 "U1" H 6850 6425 50  0000 C CNN
F 1 "XC6SLX16-FTG256" H 6850 6334 50  0000 C CNN
F 2 "Package_BGA:Xilinx_FTG256" H 6850 9600 50  0001 C CNN
F 3 "" H 6850 9600 50  0000 C CNN
	1    6850 9600
	1    0    0    -1  
$EndComp
$Comp
L FPGA_Xilinx_Spartan6:XC6SLX16-FTG256 U1
U 2 1 604E5001
P 14700 9650
F 0 "U1" H 14700 6475 50  0000 C CNN
F 1 "XC6SLX16-FTG256" H 14700 6384 50  0000 C CNN
F 2 "Package_BGA:Xilinx_FTG256" H 14700 9650 50  0001 C CNN
F 3 "" H 14700 9650 50  0000 C CNN
	2    14700 9650
	1    0    0    -1  
$EndComp
$Comp
L FPGA_Xilinx_Spartan6:XC6SLX16-FTG256 U1
U 3 1 604FB99A
P 19350 7400
F 0 "U1" H 19482 8167 50  0000 C CNN
F 1 "XC6SLX16-FTG256" H 19482 8076 50  0000 C CNN
F 2 "Package_BGA:Xilinx_FTG256" H 19350 7400 50  0001 C CNN
F 3 "" H 19350 7400 50  0000 C CNN
	3    19350 7400
	1    0    0    -1  
$EndComp
$Comp
L FPGA_Xilinx_Spartan6:XC6SLX16-FTG256 U1
U 4 1 60515A45
P 21900 11450
F 0 "U1" H 21900 12817 50  0000 C CNN
F 1 "XC6SLX16-FTG256" H 21900 12726 50  0000 C CNN
F 2 "Package_BGA:Xilinx_FTG256" H 21900 11450 50  0001 C CNN
F 3 "" H 21900 11450 50  0000 C CNN
	4    21900 11450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C20
U 1 1 60593273
P 23450 10450
F 0 "C20" H 23542 10496 50  0000 L CNN
F 1 "4u7" H 23542 10405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 23450 10450 50  0001 C CNN
F 3 "~" H 23450 10450 50  0001 C CNN
	1    23450 10450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C21
U 1 1 605D90DB
P 23800 10450
F 0 "C21" H 23892 10496 50  0000 L CNN
F 1 "4u7" H 23892 10405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 23800 10450 50  0001 C CNN
F 3 "~" H 23800 10450 50  0001 C CNN
	1    23800 10450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C22
U 1 1 605D9BE7
P 24150 10450
F 0 "C22" H 24242 10496 50  0000 L CNN
F 1 "4u7" H 24242 10405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 24150 10450 50  0001 C CNN
F 3 "~" H 24150 10450 50  0001 C CNN
	1    24150 10450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C23
U 1 1 605DA344
P 24500 10450
F 0 "C23" H 24592 10496 50  0000 L CNN
F 1 "4u7" H 24592 10405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 24500 10450 50  0001 C CNN
F 3 "~" H 24500 10450 50  0001 C CNN
F 4 "Only for lx16" H 24500 10450 50  0001 C CNN "Notes"
	1    24500 10450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C24
U 1 1 605DC400
P 24850 10450
F 0 "C24" H 24942 10496 50  0000 L CNN
F 1 "4u7" H 24942 10405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 24850 10450 50  0001 C CNN
F 3 "~" H 24850 10450 50  0001 C CNN
F 4 "Only for lx16" H 24850 10450 50  0001 C CNN "Notes"
	1    24850 10450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C19
U 1 1 605DF30A
P 23050 10450
F 0 "C19" H 23142 10496 50  0000 L CNN
F 1 "0u47" H 23142 10405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 23050 10450 50  0001 C CNN
F 3 "~" H 23050 10450 50  0001 C CNN
	1    23050 10450
	1    0    0    -1  
$EndComp
Wire Wire Line
	25200 10550 24850 10550
Connection ~ 23800 10550
Wire Wire Line
	23800 10550 23450 10550
Connection ~ 24150 10550
Wire Wire Line
	24150 10550 23800 10550
Connection ~ 24500 10550
Wire Wire Line
	24500 10550 24150 10550
Connection ~ 24850 10550
Wire Wire Line
	24850 10550 24500 10550
Connection ~ 23450 10350
Wire Wire Line
	23450 10350 23800 10350
Connection ~ 23800 10350
Wire Wire Line
	23800 10350 24150 10350
Connection ~ 24150 10350
Wire Wire Line
	24150 10350 24500 10350
Connection ~ 24500 10350
Wire Wire Line
	24500 10350 24850 10350
Wire Wire Line
	22900 10350 22900 10450
Connection ~ 22900 10450
Wire Wire Line
	22900 10450 22900 10550
Connection ~ 22900 10550
Wire Wire Line
	22900 10550 22900 10650
Connection ~ 22900 10650
Wire Wire Line
	22900 10650 22900 10750
Connection ~ 22900 10750
Wire Wire Line
	22900 10750 22900 10850
Connection ~ 22900 10850
Wire Wire Line
	22900 10850 22900 10950
Connection ~ 22900 10950
Wire Wire Line
	22900 10950 22900 11050
Wire Wire Line
	25200 10550 25200 10650
Connection ~ 22900 10350
Wire Wire Line
	22900 10350 23050 10350
Connection ~ 23050 10350
Wire Wire Line
	23050 10350 23450 10350
Wire Wire Line
	23050 10550 23450 10550
Connection ~ 23450 10550
$Comp
L Device:C_Small C25
U 1 1 60625E6A
P 25200 10450
F 0 "C25" H 25292 10496 50  0000 L CNN
F 1 "100u" H 25292 10405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 25200 10450 50  0001 C CNN
F 3 "~" H 25200 10450 50  0001 C CNN
F 4 "Only for lx9" H 25200 10450 50  0001 C CNN "Notes"
	1    25200 10450
	1    0    0    -1  
$EndComp
Connection ~ 25200 10550
Wire Wire Line
	24850 10350 25200 10350
Wire Wire Line
	25200 10350 25200 10250
Connection ~ 24850 10350
Connection ~ 25200 10350
$Comp
L Device:C_Small C16
U 1 1 6064DC94
P 19700 10450
F 0 "C16" H 19608 10496 50  0000 R CNN
F 1 "4u7" H 19608 10405 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 19700 10450 50  0001 C CNN
F 3 "~" H 19700 10450 50  0001 C CNN
	1    19700 10450
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C18
U 1 1 6064DCAE
P 20450 10450
F 0 "C18" H 20358 10496 50  0000 R CNN
F 1 "0u47" H 20358 10405 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 20450 10450 50  0001 C CNN
F 3 "~" H 20450 10450 50  0001 C CNN
	1    20450 10450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	19350 10550 19350 10650
Connection ~ 20450 10350
$Comp
L Device:C_Small C15
U 1 1 6064DCCE
P 19350 10450
F 0 "C15" H 19258 10496 50  0000 R CNN
F 1 "100u" H 19258 10405 50  0000 R CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 19350 10450 50  0001 C CNN
F 3 "~" H 19350 10450 50  0001 C CNN
F 4 "" H 19350 10450 50  0001 C CNN "Notes"
	1    19350 10450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	19350 10350 19350 10250
Wire Wire Line
	19700 10350 20100 10350
Wire Wire Line
	19700 10550 20100 10550
$Comp
L Device:C_Small C17
U 1 1 6065383B
P 20100 10450
F 0 "C17" H 20008 10496 50  0000 R CNN
F 1 "0u47" H 20008 10405 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 20100 10450 50  0001 C CNN
F 3 "~" H 20100 10450 50  0001 C CNN
	1    20100 10450
	-1   0    0    -1  
$EndComp
Connection ~ 20100 10350
Wire Wire Line
	20100 10350 20450 10350
Connection ~ 20100 10550
Wire Wire Line
	20100 10550 20450 10550
Wire Wire Line
	19350 10350 19700 10350
Connection ~ 19350 10350
Connection ~ 19700 10350
Wire Wire Line
	19350 10550 19700 10550
Connection ~ 19350 10550
Connection ~ 19700 10550
Wire Wire Line
	20450 10350 20900 10350
Wire Wire Line
	20900 10350 20900 10450
Connection ~ 20900 10350
Connection ~ 20900 10450
Wire Wire Line
	20900 10450 20900 10550
Connection ~ 20900 10550
Wire Wire Line
	20900 10550 20900 10650
Connection ~ 20900 10650
Wire Wire Line
	20900 10650 20900 10750
Connection ~ 20900 10750
Wire Wire Line
	20900 10750 20900 10850
Connection ~ 20900 10850
Wire Wire Line
	20900 10850 20900 10950
Connection ~ 20900 10950
Wire Wire Line
	20900 10950 20900 11050
$Comp
L Device:C_Small C2
U 1 1 606AC1DF
P 4500 6200
F 0 "C2" H 4408 6246 50  0000 R CNN
F 1 "4u7" H 4408 6155 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4500 6200 50  0001 C CNN
F 3 "~" H 4500 6200 50  0001 C CNN
	1    4500 6200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4150 6300 4150 6400
$Comp
L Device:C_Small C1
U 1 1 606AC1E9
P 4150 6200
F 0 "C1" H 4058 6246 50  0000 R CNN
F 1 "100u" H 4058 6155 50  0000 R CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 4150 6200 50  0001 C CNN
F 3 "~" H 4150 6200 50  0001 C CNN
F 4 "" H 4150 6200 50  0001 C CNN "Notes"
	1    4150 6200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4150 6100 4150 6000
Wire Wire Line
	4500 6100 4900 6100
$Comp
L Device:C_Small C3
U 1 1 606AC1F2
P 4900 6200
F 0 "C3" H 4808 6246 50  0000 R CNN
F 1 "0u47" H 4808 6155 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4900 6200 50  0001 C CNN
F 3 "~" H 4900 6200 50  0001 C CNN
	1    4900 6200
	-1   0    0    -1  
$EndComp
Connection ~ 4900 6100
Wire Wire Line
	4900 6100 5250 6100
Wire Wire Line
	4150 6100 4500 6100
Connection ~ 4150 6100
Connection ~ 4500 6100
Wire Wire Line
	4150 6300 4500 6300
Connection ~ 4150 6300
Connection ~ 4500 6300
Wire Wire Line
	4500 6300 4900 6300
Wire Wire Line
	5250 6100 5250 6500
Wire Wire Line
	5250 6500 5350 6500
Connection ~ 5250 6500
Connection ~ 5350 6500
Wire Wire Line
	5350 6500 5450 6500
Connection ~ 5450 6500
Wire Wire Line
	5450 6500 5550 6500
Connection ~ 5550 6500
Wire Wire Line
	5550 6500 5650 6500
$Comp
L Device:C_Small C5
U 1 1 606D943F
P 6850 6200
F 0 "C5" H 6758 6246 50  0000 R CNN
F 1 "4u7" H 6758 6155 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6850 6200 50  0001 C CNN
F 3 "~" H 6850 6200 50  0001 C CNN
	1    6850 6200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6500 6300 6500 6400
$Comp
L Device:C_Small C4
U 1 1 606D9449
P 6500 6200
F 0 "C4" H 6408 6246 50  0000 R CNN
F 1 "100u" H 6408 6155 50  0000 R CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 6500 6200 50  0001 C CNN
F 3 "~" H 6500 6200 50  0001 C CNN
F 4 "" H 6500 6200 50  0001 C CNN "Notes"
	1    6500 6200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6500 6100 6500 6000
Wire Wire Line
	6850 6100 7250 6100
$Comp
L Device:C_Small C6
U 1 1 606D9451
P 7250 6200
F 0 "C6" H 7158 6246 50  0000 R CNN
F 1 "0u47" H 7158 6155 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7250 6200 50  0001 C CNN
F 3 "~" H 7250 6200 50  0001 C CNN
	1    7250 6200
	-1   0    0    -1  
$EndComp
Connection ~ 7250 6100
Wire Wire Line
	6500 6100 6850 6100
Connection ~ 6500 6100
Connection ~ 6850 6100
Wire Wire Line
	6500 6300 6850 6300
Connection ~ 6500 6300
Connection ~ 6850 6300
Wire Wire Line
	6850 6300 7250 6300
Wire Wire Line
	7950 6100 7950 6500
$Comp
L Device:C_Small C7
U 1 1 606E8301
P 7650 6200
F 0 "C7" H 7558 6246 50  0000 R CNN
F 1 "0u47" H 7558 6155 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7650 6200 50  0001 C CNN
F 3 "~" H 7650 6200 50  0001 C CNN
	1    7650 6200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7250 6300 7650 6300
Connection ~ 7250 6300
Wire Wire Line
	7250 6100 7650 6100
Connection ~ 7650 6100
Wire Wire Line
	7650 6100 7950 6100
Wire Wire Line
	7950 6500 8050 6500
Connection ~ 7950 6500
Connection ~ 8050 6500
Wire Wire Line
	8050 6500 8150 6500
Connection ~ 8150 6500
Wire Wire Line
	8150 6500 8250 6500
Connection ~ 8250 6500
Wire Wire Line
	8250 6500 8350 6500
Connection ~ 8350 6500
Wire Wire Line
	8350 6500 8450 6500
$Comp
L Device:C_Small C9
U 1 1 607075FF
P 12350 6250
F 0 "C9" H 12258 6296 50  0000 R CNN
F 1 "4u7" H 12258 6205 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 12350 6250 50  0001 C CNN
F 3 "~" H 12350 6250 50  0001 C CNN
	1    12350 6250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12000 6350 12000 6450
$Comp
L Device:C_Small C8
U 1 1 60707609
P 12000 6250
F 0 "C8" H 11908 6296 50  0000 R CNN
F 1 "100u" H 11908 6205 50  0000 R CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 12000 6250 50  0001 C CNN
F 3 "~" H 12000 6250 50  0001 C CNN
F 4 "" H 12000 6250 50  0001 C CNN "Notes"
	1    12000 6250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12000 6150 12000 6050
Wire Wire Line
	12350 6150 12750 6150
$Comp
L Device:C_Small C10
U 1 1 60707611
P 12750 6250
F 0 "C10" H 12658 6296 50  0000 R CNN
F 1 "0u47" H 12658 6205 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 12750 6250 50  0001 C CNN
F 3 "~" H 12750 6250 50  0001 C CNN
	1    12750 6250
	-1   0    0    -1  
$EndComp
Connection ~ 12750 6150
Wire Wire Line
	12750 6150 13100 6150
Wire Wire Line
	12000 6150 12350 6150
Connection ~ 12000 6150
Connection ~ 12350 6150
Wire Wire Line
	12000 6350 12350 6350
Connection ~ 12000 6350
Connection ~ 12350 6350
Wire Wire Line
	12350 6350 12750 6350
Wire Wire Line
	13100 6150 13100 6550
$Comp
L Device:C_Small C12
U 1 1 60707621
P 14800 6250
F 0 "C12" H 14708 6296 50  0000 R CNN
F 1 "4u7" H 14708 6205 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 14800 6250 50  0001 C CNN
F 3 "~" H 14800 6250 50  0001 C CNN
	1    14800 6250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	14450 6350 14450 6450
$Comp
L Device:C_Small C11
U 1 1 6070762B
P 14450 6250
F 0 "C11" H 14358 6296 50  0000 R CNN
F 1 "100u" H 14358 6205 50  0000 R CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 14450 6250 50  0001 C CNN
F 3 "~" H 14450 6250 50  0001 C CNN
F 4 "" H 14450 6250 50  0001 C CNN "Notes"
	1    14450 6250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	14450 6150 14450 6050
Wire Wire Line
	14800 6150 15200 6150
$Comp
L Device:C_Small C13
U 1 1 60707633
P 15200 6250
F 0 "C13" H 15108 6296 50  0000 R CNN
F 1 "0u47" H 15108 6205 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 15200 6250 50  0001 C CNN
F 3 "~" H 15200 6250 50  0001 C CNN
	1    15200 6250
	-1   0    0    -1  
$EndComp
Connection ~ 15200 6150
Wire Wire Line
	14450 6150 14800 6150
Connection ~ 14450 6150
Connection ~ 14800 6150
Wire Wire Line
	14450 6350 14800 6350
Connection ~ 14450 6350
Connection ~ 14800 6350
Wire Wire Line
	14800 6350 15200 6350
Wire Wire Line
	15900 6150 15900 6550
$Comp
L Device:C_Small C14
U 1 1 60707642
P 15600 6250
F 0 "C14" H 15508 6296 50  0000 R CNN
F 1 "0u47" H 15508 6205 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 15600 6250 50  0001 C CNN
F 3 "~" H 15600 6250 50  0001 C CNN
	1    15600 6250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	15200 6350 15600 6350
Connection ~ 15200 6350
Wire Wire Line
	15200 6150 15600 6150
Connection ~ 15600 6150
Wire Wire Line
	15600 6150 15900 6150
Wire Wire Line
	15900 6550 16000 6550
Connection ~ 15900 6550
Connection ~ 16000 6550
Wire Wire Line
	16000 6550 16100 6550
Connection ~ 16100 6550
Wire Wire Line
	16100 6550 16200 6550
Connection ~ 16200 6550
Wire Wire Line
	16200 6550 16300 6550
Wire Wire Line
	20900 11350 20900 11450
Connection ~ 20900 11450
Wire Wire Line
	20900 11450 20900 11550
Connection ~ 20900 11550
Wire Wire Line
	20900 11550 20900 11650
Connection ~ 20900 11650
Wire Wire Line
	20900 11650 20900 11750
Connection ~ 20900 11750
Wire Wire Line
	20900 11750 20900 11850
Connection ~ 20900 11850
Wire Wire Line
	20900 11850 20900 11950
Connection ~ 20900 11950
Wire Wire Line
	20900 11950 20900 12050
Connection ~ 20900 12050
Wire Wire Line
	20900 12050 20900 12150
Connection ~ 20900 12150
Wire Wire Line
	20900 12150 20900 12250
Connection ~ 20900 12250
Wire Wire Line
	20900 12250 20900 12350
Connection ~ 20900 12350
Wire Wire Line
	20900 12350 20900 12450
Connection ~ 20900 12450
Wire Wire Line
	20900 12450 20900 12550
Wire Wire Line
	22900 11350 22900 11450
Connection ~ 22900 11450
Wire Wire Line
	22900 11450 22900 11550
Connection ~ 22900 11550
Wire Wire Line
	22900 11550 22900 11650
Connection ~ 22900 11650
Wire Wire Line
	22900 11650 22900 11750
Connection ~ 22900 11750
Wire Wire Line
	22900 11750 22900 11850
Connection ~ 22900 11850
Wire Wire Line
	22900 11850 22900 11950
Connection ~ 22900 11950
Wire Wire Line
	22900 11950 22900 12050
Connection ~ 22900 12050
Wire Wire Line
	22900 12050 22900 12150
Connection ~ 22900 12150
Wire Wire Line
	22900 12150 22900 12250
Connection ~ 22900 12250
Wire Wire Line
	22900 12250 22900 12350
Connection ~ 22900 12350
Wire Wire Line
	22900 12350 22900 12450
Connection ~ 22900 12450
Wire Wire Line
	22900 12450 22900 12550
Text Label 22900 11350 0    50   ~ 0
gnd
Text Label 20900 11350 2    50   ~ 0
gnd
$Comp
L Connector_Generic:Conn_02x17_Odd_Even J2
U 1 1 6089C76F
P 24550 6250
F 0 "J2" H 24600 7267 50  0000 C CNN
F 1 "Conn_02x17_Odd_Even" H 24600 7176 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x17_P2.54mm_Vertical" H 24550 6250 50  0001 C CNN
F 3 "~" H 24550 6250 50  0001 C CNN
	1    24550 6250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x17_Odd_Even J3
U 1 1 608C1D96
P 24550 4300
F 0 "J3" H 24600 5317 50  0000 C CNN
F 1 "Conn_02x17_Odd_Even" H 24600 5226 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x17_P2.54mm_Vertical" H 24550 4300 50  0001 C CNN
F 3 "~" H 24550 4300 50  0001 C CNN
	1    24550 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x17_Odd_Even J4
U 1 1 608D6B00
P 25850 6250
F 0 "J4" H 25900 7267 50  0000 C CNN
F 1 "Conn_02x17_Odd_Even" H 25900 7176 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x17_P2.54mm_Vertical" H 25850 6250 50  0001 C CNN
F 3 "~" H 25850 6250 50  0001 C CNN
	1    25850 6250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x17_Odd_Even J5
U 1 1 608D6B06
P 25850 8200
F 0 "J5" H 25900 9217 50  0000 C CNN
F 1 "Conn_02x17_Odd_Even" H 25900 9126 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x17_P2.54mm_Vertical" H 25850 8200 50  0001 C CNN
F 3 "~" H 25850 8200 50  0001 C CNN
	1    25850 8200
	1    0    0    -1  
$EndComp
NoConn ~ 24350 4300
NoConn ~ 24850 5100
NoConn ~ 24350 6250
NoConn ~ 24850 7050
NoConn ~ 25650 6250
NoConn ~ 26150 7050
NoConn ~ 25650 8200
NoConn ~ 26150 9000
Text Label 26150 5450 0    50   ~ 0
T5+4
Text Label 26150 5550 0    50   ~ 0
T6+4
Text Label 26150 5650 0    50   ~ 0
T7+4
Text Label 26150 5750 0    50   ~ 0
T8+4
Text Label 26150 5850 0    50   ~ 0
T5-4
Text Label 26150 5950 0    50   ~ 0
T6-4
Text Label 26150 6050 0    50   ~ 0
T7-4
Text Label 26150 6150 0    50   ~ 0
T8-4
Text Label 26150 6250 0    50   ~ 0
T16+4
Text Label 26150 6350 0    50   ~ 0
T15+4
Text Label 26150 6450 0    50   ~ 0
T14+4
Text Label 26150 6550 0    50   ~ 0
T13+4
Text Label 26150 6650 0    50   ~ 0
T16-4
Text Label 26150 6750 0    50   ~ 0
T15-4
Text Label 26150 6850 0    50   ~ 0
T14-4
Text Label 26150 6950 0    50   ~ 0
T13-4
Text Label 24350 5450 2    50   ~ 0
T1+2
Text Label 24350 5550 2    50   ~ 0
T2+2
Text Label 24350 5650 2    50   ~ 0
T3+2
Text Label 24350 5750 2    50   ~ 0
T4+2
Text Label 24350 5850 2    50   ~ 0
T1-2
Text Label 24350 5950 2    50   ~ 0
T2-2
Text Label 24350 6050 2    50   ~ 0
T3-2
Text Label 24350 6150 2    50   ~ 0
T4-2
Text Label 24350 6350 2    50   ~ 0
T12+2
Text Label 24350 6450 2    50   ~ 0
T11+2
Text Label 24350 6550 2    50   ~ 0
T10+2
Text Label 24350 6650 2    50   ~ 0
T9+2
Text Label 24350 6750 2    50   ~ 0
T12-2
Text Label 24350 6850 2    50   ~ 0
T11-2
Text Label 24350 6950 2    50   ~ 0
T10-2
Text Label 24350 7050 2    50   ~ 0
T9-2
Text Label 25650 5450 2    50   ~ 0
T1+4
Text Label 25650 5550 2    50   ~ 0
T2+4
Text Label 25650 5650 2    50   ~ 0
T3+4
Text Label 25650 5750 2    50   ~ 0
T4+4
Text Label 25650 5850 2    50   ~ 0
T1-4
Text Label 25650 5950 2    50   ~ 0
T2-4
Text Label 25650 6050 2    50   ~ 0
T3-4
Text Label 25650 6150 2    50   ~ 0
T4-4
Text Label 25650 6350 2    50   ~ 0
T12+4
Text Label 25650 6450 2    50   ~ 0
T11+4
Text Label 25650 6550 2    50   ~ 0
T10+4
Text Label 25650 6650 2    50   ~ 0
T9+4
Text Label 25650 6750 2    50   ~ 0
T12-4
Text Label 25650 6850 2    50   ~ 0
T11-4
Text Label 25650 6950 2    50   ~ 0
T10-4
Text Label 25650 7050 2    50   ~ 0
T9-4
Text Label 24350 3500 2    50   ~ 0
T1+3
Text Label 24350 3600 2    50   ~ 0
T2+3
Text Label 24350 3700 2    50   ~ 0
T3+3
Text Label 24350 3800 2    50   ~ 0
T4+3
Text Label 24350 3900 2    50   ~ 0
T1-3
Text Label 24350 4000 2    50   ~ 0
T2-3
Text Label 24350 4100 2    50   ~ 0
T3-3
Text Label 24350 4200 2    50   ~ 0
T4-3
Text Label 24350 4400 2    50   ~ 0
T12+3
Text Label 24350 4500 2    50   ~ 0
T11+3
Text Label 24350 4600 2    50   ~ 0
T10+3
Text Label 24350 4700 2    50   ~ 0
T9+3
Text Label 24350 4800 2    50   ~ 0
T12-3
Text Label 24350 4900 2    50   ~ 0
T11-3
Text Label 24350 5000 2    50   ~ 0
T10-3
Text Label 24350 5100 2    50   ~ 0
T9-3
Text Label 25650 7400 2    50   ~ 0
T1+5
Text Label 25650 7500 2    50   ~ 0
T2+5
Text Label 25650 7600 2    50   ~ 0
T3+5
Text Label 25650 7700 2    50   ~ 0
T4+5
Text Label 25650 7800 2    50   ~ 0
T1-5
Text Label 25650 7900 2    50   ~ 0
T2-5
Text Label 25650 8000 2    50   ~ 0
T3-5
Text Label 25650 8100 2    50   ~ 0
T4-5
Text Label 25650 8300 2    50   ~ 0
T12+5
Text Label 25650 8400 2    50   ~ 0
T11+5
Text Label 25650 8500 2    50   ~ 0
T10+5
Text Label 25650 8600 2    50   ~ 0
T9+5
Text Label 25650 8700 2    50   ~ 0
T12-5
Text Label 25650 8800 2    50   ~ 0
T11-5
Text Label 25650 8900 2    50   ~ 0
T10-5
Text Label 25650 9000 2    50   ~ 0
T9-5
Text Label 24850 5450 0    50   ~ 0
T5+2
Text Label 24850 5550 0    50   ~ 0
T6+2
Text Label 24850 5650 0    50   ~ 0
T7+2
Text Label 24850 5750 0    50   ~ 0
T8+2
Text Label 24850 5850 0    50   ~ 0
T5-2
Text Label 24850 5950 0    50   ~ 0
T6-2
Text Label 24850 6050 0    50   ~ 0
T7-2
Text Label 24850 6150 0    50   ~ 0
T8-2
Text Label 24850 6250 0    50   ~ 0
T16+2
Text Label 24850 6350 0    50   ~ 0
T15+2
Text Label 24850 6450 0    50   ~ 0
T14+2
Text Label 24850 6550 0    50   ~ 0
T13+2
Text Label 24850 6650 0    50   ~ 0
T16-2
Text Label 24850 6750 0    50   ~ 0
T15-2
Text Label 24850 6850 0    50   ~ 0
T14-2
Text Label 24850 6950 0    50   ~ 0
T13-2
Text Label 24850 3500 0    50   ~ 0
T5+3
Text Label 24850 3600 0    50   ~ 0
T6+3
Text Label 24850 3700 0    50   ~ 0
T7+3
Text Label 24850 3800 0    50   ~ 0
T8+3
Text Label 24850 3900 0    50   ~ 0
T5-3
Text Label 24850 4000 0    50   ~ 0
T6-3
Text Label 24850 4100 0    50   ~ 0
T7-3
Text Label 24850 4200 0    50   ~ 0
T8-3
Text Label 24850 4300 0    50   ~ 0
T16+3
Text Label 24850 4400 0    50   ~ 0
T15+3
Text Label 24850 4500 0    50   ~ 0
T14+3
Text Label 24850 4600 0    50   ~ 0
T13+3
Text Label 24850 4700 0    50   ~ 0
T16-3
Text Label 24850 4800 0    50   ~ 0
T15-3
Text Label 24850 4900 0    50   ~ 0
T14-3
Text Label 24850 5000 0    50   ~ 0
T13-3
Text Label 26150 7400 0    50   ~ 0
T5+5
Text Label 26150 7500 0    50   ~ 0
T6+5
Text Label 26150 7600 0    50   ~ 0
T7+5
Text Label 26150 7700 0    50   ~ 0
T8+5
Text Label 26150 7800 0    50   ~ 0
T5-5
Text Label 26150 7900 0    50   ~ 0
T6-5
Text Label 26150 8000 0    50   ~ 0
T7-5
Text Label 26150 8100 0    50   ~ 0
T8-5
Text Label 26150 8200 0    50   ~ 0
T16+5
Text Label 26150 8300 0    50   ~ 0
T15+5
Text Label 26150 8400 0    50   ~ 0
T14+5
Text Label 26150 8500 0    50   ~ 0
T13+5
Text Label 26150 8600 0    50   ~ 0
T16-5
Text Label 26150 8700 0    50   ~ 0
T15-5
Text Label 26150 8800 0    50   ~ 0
T14-5
Text Label 26150 8900 0    50   ~ 0
T13-5
Wire Wire Line
	13100 6550 13200 6550
Connection ~ 13100 6550
Connection ~ 13200 6550
Wire Wire Line
	13200 6550 13300 6550
Connection ~ 13300 6550
Wire Wire Line
	13300 6550 13400 6550
Text Label 19350 10650 3    50   ~ 0
gnd
Text Label 25200 10650 3    50   ~ 0
gnd
Text Label 14450 6450 3    50   ~ 0
gnd
Text Label 12000 6450 3    50   ~ 0
gnd
Text Label 6500 6400 3    50   ~ 0
gnd
Text Label 4150 6400 3    50   ~ 0
gnd
Text Label 25200 10250 0    50   ~ 0
vcc2
Text Label 19350 10250 0    50   ~ 0
vcc
Text Label 14450 6050 0    50   ~ 0
vcc
Text Label 12000 6050 0    50   ~ 0
vcc
Text Label 6500 6000 0    50   ~ 0
vcc
Text Label 4150 6000 0    50   ~ 0
vcc
Text Label 12700 7350 2    50   ~ 0
cclk
Text Label 12700 7750 2    50   ~ 0
din
Text Label 20850 7500 0    50   ~ 0
program_b
Text Label 20850 7400 0    50   ~ 0
done
Text Label 20850 7700 0    50   ~ 0
gnd
Text Label 20850 6900 0    50   ~ 0
tdi
Text Label 20850 7000 0    50   ~ 0
tdo
Text Label 20850 7100 0    50   ~ 0
tms
Text Label 20850 7200 0    50   ~ 0
tck
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J6
U 1 1 605A6C4E
P 21550 6150
F 0 "J6" H 21600 6667 50  0000 C CNN
F 1 "jtag" H 21600 6576 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x07_P2.54mm_Vertical" H 21550 6150 50  0001 C CNN
F 3 "~" H 21550 6150 50  0001 C CNN
	1    21550 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	21350 5850 21350 5950
Wire Wire Line
	21350 6450 21300 6450
Connection ~ 21350 6450
Connection ~ 21350 5950
Wire Wire Line
	21350 5950 21350 6050
Connection ~ 21350 6050
Wire Wire Line
	21350 6050 21350 6150
Connection ~ 21350 6150
Wire Wire Line
	21350 6150 21350 6250
Connection ~ 21350 6250
Wire Wire Line
	21350 6250 21350 6350
Connection ~ 21350 6350
Wire Wire Line
	21350 6350 21350 6450
Text Label 21300 6450 2    50   ~ 0
gnd
Text Label 21850 5950 0    50   ~ 0
tms
Text Label 21850 6050 0    50   ~ 0
tck
Text Label 21850 6150 0    50   ~ 0
tdo
Text Label 21850 6250 0    50   ~ 0
tdi
Text Label 21850 5850 0    50   ~ 0
vcc
Text Label 12700 8150 2    50   ~ 0
vcc
Text Label 12700 7450 2    50   ~ 0
vcc
$Comp
L Device:R_US R2
U 1 1 605F0923
P 20450 5050
F 0 "R2" H 20518 5096 50  0000 L CNN
F 1 "4k7" H 20518 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 20490 5040 50  0001 C CNN
F 3 "~" H 20450 5050 50  0001 C CNN
	1    20450 5050
	1    0    0    -1  
$EndComp
Text Label 20450 4900 0    50   ~ 0
vcc
Wire Wire Line
	20450 5200 20450 5300
Wire Wire Line
	20450 5300 20500 5300
Text Label 20500 5300 0    50   ~ 0
program_b
$Comp
L Device:R_US R1
U 1 1 605FCD20
P 20150 5050
F 0 "R1" H 20218 5096 50  0000 L CNN
F 1 "330" H 20218 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 20190 5040 50  0001 C CNN
F 3 "~" H 20150 5050 50  0001 C CNN
	1    20150 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	20450 4900 20150 4900
Text Label 20200 5300 0    50   ~ 0
done
Wire Wire Line
	20150 5200 20150 5300
Wire Wire Line
	20150 5300 20200 5300
$Comp
L Device:R_US R3
U 1 1 60612069
P 20950 5050
F 0 "R3" H 21018 5096 50  0000 L CNN
F 1 "4k7" H 21018 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 20990 5040 50  0001 C CNN
F 3 "~" H 20950 5050 50  0001 C CNN
	1    20950 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	20950 4900 20450 4900
Connection ~ 20450 4900
Wire Wire Line
	20950 5200 20950 5300
Wire Wire Line
	20950 5300 21000 5300
Text Label 12700 10950 2    50   ~ 0
init_b
Text Label 21000 5300 0    50   ~ 0
init_b
Text Label 4850 7300 2    50   ~ 0
gnd
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J7
U 1 1 607AC1BF
P 19250 5900
F 0 "J7" H 19300 6217 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 19300 6126 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x03_P2.54mm_Vertical" H 19250 5900 50  0001 C CNN
F 3 "~" H 19250 5900 50  0001 C CNN
	1    19250 5900
	1    0    0    -1  
$EndComp
Text Label 19550 6000 0    50   ~ 0
gnd
Text Label 19050 6000 2    50   ~ 0
done
Text Label 19550 5800 0    50   ~ 0
program_b
Text Label 19050 5900 2    50   ~ 0
cclk
Text Label 19550 5900 0    50   ~ 0
din
Text Label 19050 5800 2    50   ~ 0
init_b
Text Label 16700 11450 0    50   ~ 0
T9-2
Text Label 16700 11750 0    50   ~ 0
T13-2
Text Label 16700 11350 0    50   ~ 0
T10-2
Text Label 16700 11050 0    50   ~ 0
T14-2
Text Label 16700 11250 0    50   ~ 0
T11-2
Text Label 16700 12250 0    50   ~ 0
T15-2
Text Label 16700 10650 0    50   ~ 0
T12-2
Text Label 16700 10550 0    50   ~ 0
T16-2
Text Label 16700 9650 0    50   ~ 0
T9+2
Text Label 16700 9550 0    50   ~ 0
T13+2
Text Label 16700 9450 0    50   ~ 0
T10+2
Text Label 16700 10250 0    50   ~ 0
T14+2
Text Label 16700 9250 0    50   ~ 0
T11+2
Text Label 16700 9050 0    50   ~ 0
T12+2
Text Label 16700 9150 0    50   ~ 0
T15+2
Text Label 16700 9750 0    50   ~ 0
T16+2
Text Label 16700 11550 0    50   ~ 0
T8-2
Text Label 16700 11650 0    50   ~ 0
T4-2
Text Label 16700 12350 0    50   ~ 0
T7-2
Text Label 16700 10050 0    50   ~ 0
T3-2
Text Label 16700 9950 0    50   ~ 0
T6-2
Text Label 16700 10850 0    50   ~ 0
T2-2
Text Label 16700 11150 0    50   ~ 0
T5-2
Text Label 16700 12450 0    50   ~ 0
T1-2
Text Label 16700 12050 0    50   ~ 0
T8+2
Text Label 16700 12150 0    50   ~ 0
T4+2
Text Label 16700 11950 0    50   ~ 0
T7+2
Text Label 16700 9350 0    50   ~ 0
T3+2
Text Label 16700 9850 0    50   ~ 0
T6+2
Text Label 16700 10150 0    50   ~ 0
T2+2
Text Label 16700 8950 0    50   ~ 0
T5+2
Text Label 16700 10350 0    50   ~ 0
T1+2
$Comp
L Connector_Generic:Conn_02x17_Odd_Even J1
U 1 1 6088D339
P 24550 8200
F 0 "J1" H 24600 9217 50  0000 C CNN
F 1 "Conn_02x17_Odd_Even" H 24600 9126 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x17_P2.54mm_Vertical" H 24550 8200 50  0001 C CNN
F 3 "~" H 24550 8200 50  0001 C CNN
	1    24550 8200
	1    0    0    -1  
$EndComp
NoConn ~ 24350 8200
NoConn ~ 24850 9000
Text Label 24350 7400 2    50   ~ 0
T1+1
Text Label 24350 7500 2    50   ~ 0
T2+1
Text Label 24350 7600 2    50   ~ 0
T3+1
Text Label 24350 7700 2    50   ~ 0
T4+1
Text Label 24350 7800 2    50   ~ 0
T1-1
Text Label 24350 7900 2    50   ~ 0
T2-1
Text Label 24350 8000 2    50   ~ 0
T3-1
Text Label 24350 8100 2    50   ~ 0
T4-1
Text Label 24350 8300 2    50   ~ 0
T12+1
Text Label 24350 8400 2    50   ~ 0
T11+1
Text Label 24350 8500 2    50   ~ 0
T10+1
Text Label 24350 8600 2    50   ~ 0
T9+1
Text Label 24350 8700 2    50   ~ 0
T12-1
Text Label 24350 8800 2    50   ~ 0
T11-1
Text Label 24350 8900 2    50   ~ 0
T10-1
Text Label 24350 9000 2    50   ~ 0
T9-1
Text Label 24850 7400 0    50   ~ 0
T5+1
Text Label 24850 7500 0    50   ~ 0
T6+1
Text Label 24850 7600 0    50   ~ 0
T7+1
Text Label 24850 7700 0    50   ~ 0
T8+1
Text Label 24850 7800 0    50   ~ 0
T5-1
Text Label 24850 7900 0    50   ~ 0
T6-1
Text Label 24850 8000 0    50   ~ 0
T7-1
Text Label 24850 8100 0    50   ~ 0
T8-1
Text Label 24850 8200 0    50   ~ 0
T16+1
Text Label 24850 8300 0    50   ~ 0
T15+1
Text Label 24850 8400 0    50   ~ 0
T14+1
Text Label 24850 8500 0    50   ~ 0
T13+1
Text Label 24850 8600 0    50   ~ 0
T16-1
Text Label 24850 8700 0    50   ~ 0
T15-1
Text Label 24850 8800 0    50   ~ 0
T14-1
Text Label 24850 8900 0    50   ~ 0
T13-1
Text Label 16700 8850 0    50   ~ 0
T9-4
Text Label 16700 8750 0    50   ~ 0
T13-4
Text Label 16700 8650 0    50   ~ 0
T10-4
Text Label 16700 8550 0    50   ~ 0
T14-4
Text Label 16700 8450 0    50   ~ 0
T11-4
Text Label 16700 8350 0    50   ~ 0
T15-4
Text Label 16700 8250 0    50   ~ 0
T12-4
Text Label 16700 8150 0    50   ~ 0
T16-4
Text Label 16700 8050 0    50   ~ 0
T9+4
Text Label 16700 7950 0    50   ~ 0
T13+4
Text Label 16700 7850 0    50   ~ 0
T10+4
Text Label 16700 7750 0    50   ~ 0
T14+4
Text Label 16700 10750 0    50   ~ 0
T11+4
Text Label 16700 7350 0    50   ~ 0
T15+4
Text Label 16700 10450 0    50   ~ 0
T12+4
Text Label 16700 7450 0    50   ~ 0
T16+4
Text Label 16700 7650 0    50   ~ 0
T8-4
Text Label 16700 7550 0    50   ~ 0
T4-4
Text Label 12700 10550 2    50   ~ 0
T7-4
Text Label 12700 11050 2    50   ~ 0
T3-4
Text Label 12700 10750 2    50   ~ 0
T6-4
Text Label 12700 9750 2    50   ~ 0
T2-4
Text Label 12700 10150 2    50   ~ 0
T5-4
Text Label 12700 10650 2    50   ~ 0
T1-4
Text Label 12700 10250 2    50   ~ 0
T8+4
Text Label 12700 10450 2    50   ~ 0
T4+4
Text Label 12700 9450 2    50   ~ 0
T7+4
Text Label 12700 10350 2    50   ~ 0
T3+4
Text Label 12700 8650 2    50   ~ 0
T6+4
Text Label 12700 8550 2    50   ~ 0
T2+4
NoConn ~ 20850 7900
Text Label 12700 7550 2    50   ~ 0
T5+4
Text Label 12700 7650 2    50   ~ 0
T1+4
Text Label 12700 10050 2    50   ~ 0
T9-5
Text Label 12700 9950 2    50   ~ 0
T13-5
Text Label 12700 9850 2    50   ~ 0
T10-5
Text Label 12700 9550 2    50   ~ 0
T14-5
Text Label 12700 9650 2    50   ~ 0
T11-5
Text Label 12700 9150 2    50   ~ 0
T15-5
Text Label 12700 9250 2    50   ~ 0
T12-5
Text Label 12700 8750 2    50   ~ 0
T16-5
Text Label 12700 8850 2    50   ~ 0
T9+5
Text Label 12700 7850 2    50   ~ 0
T13+5
Text Label 8850 12100 0    50   ~ 0
T10+5
Text Label 12700 10850 2    50   ~ 0
T14+5
Text Label 12700 9350 2    50   ~ 0
T11+5
Text Label 12700 8950 2    50   ~ 0
T15+5
Text Label 12700 9050 2    50   ~ 0
T12+5
Text Label 12700 8450 2    50   ~ 0
T16+5
Text Label 12700 8350 2    50   ~ 0
T8-5
Text Label 12700 8050 2    50   ~ 0
T4-5
Text Label 12700 8250 2    50   ~ 0
T7-5
Text Label 12700 7950 2    50   ~ 0
T3-5
Text Label 16700 11850 0    50   ~ 0
T5+3
Text Label 16700 12550 0    50   ~ 0
T1+3
Text Label 16700 12650 0    50   ~ 0
T6+3
Text Label 16700 10950 0    50   ~ 0
T2+3
Text Label 4850 7400 2    50   ~ 0
T7+3
Text Label 4850 7500 2    50   ~ 0
T3+3
Text Label 4850 7600 2    50   ~ 0
T8+3
Text Label 4850 7900 2    50   ~ 0
T4+3
Text Label 4850 8000 2    50   ~ 0
T5-3
Text Label 4850 8600 2    50   ~ 0
T1-3
Text Label 4850 8400 2    50   ~ 0
T6-3
Text Label 4850 8700 2    50   ~ 0
T2-3
Text Label 4850 8800 2    50   ~ 0
T7-3
Text Label 4850 9800 2    50   ~ 0
T3-3
Text Label 4850 9000 2    50   ~ 0
T8-3
Text Label 4850 9100 2    50   ~ 0
T4-3
Text Label 4850 9200 2    50   ~ 0
T16+3
Text Label 4850 9600 2    50   ~ 0
T15+3
Text Label 4850 10000 2    50   ~ 0
T12+3
Text Label 4850 10300 2    50   ~ 0
T14+3
Text Label 4850 10400 2    50   ~ 0
T11+3
Text Label 4850 10600 2    50   ~ 0
T13+3
Text Label 4850 10900 2    50   ~ 0
T10+3
Text Label 4850 11000 2    50   ~ 0
T16-3
Text Label 8850 7500 0    50   ~ 0
T9+3
Text Label 8850 12000 0    50   ~ 0
T6-5
Text Label 8850 11700 0    50   ~ 0
T2-5
Text Label 8850 11900 0    50   ~ 0
T5-5
Text Label 8850 11500 0    50   ~ 0
T1-5
Text Label 8850 11800 0    50   ~ 0
T8+5
Text Label 8850 11600 0    50   ~ 0
T4+5
Text Label 8850 11400 0    50   ~ 0
T7+5
Text Label 8850 11300 0    50   ~ 0
T3+5
Text Label 8850 10800 0    50   ~ 0
T6+5
Text Label 8850 12600 0    50   ~ 0
T2+5
Text Label 8850 11000 0    50   ~ 0
T5+5
Text Label 8850 10900 0    50   ~ 0
T1+5
Text Label 8850 7600 0    50   ~ 0
T9-1
Text Label 8850 8300 0    50   ~ 0
T13-1
Text Label 8850 8400 0    50   ~ 0
T10-1
Text Label 8850 8000 0    50   ~ 0
T15-1
Text Label 8850 8500 0    50   ~ 0
T12-1
Text Label 8850 8600 0    50   ~ 0
T16-1
Text Label 8850 8700 0    50   ~ 0
T9+1
Text Label 8850 8800 0    50   ~ 0
T13+1
Text Label 8850 8200 0    50   ~ 0
T10+1
Text Label 8850 9000 0    50   ~ 0
T14+1
Text Label 8850 9100 0    50   ~ 0
T11+1
Text Label 8850 9200 0    50   ~ 0
T15+1
Text Label 8850 9600 0    50   ~ 0
T12+1
Text Label 8850 10400 0    50   ~ 0
T16+1
Text Label 8850 10500 0    50   ~ 0
T8-1
Text Label 8850 10600 0    50   ~ 0
T4-1
Text Label 8850 10000 0    50   ~ 0
T7-1
Text Label 8850 11200 0    50   ~ 0
T3-1
Text Label 8850 7400 0    50   ~ 0
T11-1
Text Label 8850 7900 0    50   ~ 0
T14-1
Text Label 8850 8100 0    50   ~ 0
T2-1
Text Label 8850 8900 0    50   ~ 0
T5-1
Text Label 8850 9800 0    50   ~ 0
T1-1
Text Label 8850 9900 0    50   ~ 0
T8+1
Text Label 8850 10300 0    50   ~ 0
T4+1
Text Label 8850 10100 0    50   ~ 0
T7+1
Text Label 8850 12400 0    50   ~ 0
T3+1
Text Label 8850 11100 0    50   ~ 0
T6+1
Text Label 8850 7300 0    50   ~ 0
T6-1
Text Label 8850 12300 0    50   ~ 0
T2+1
Text Label 8850 12500 0    50   ~ 0
T5+1
Text Label 8850 10700 0    50   ~ 0
T1+1
Text Label 4850 8900 2    50   ~ 0
T15-3
Text Label 4850 10200 2    50   ~ 0
T12-3
Text Label 4850 9500 2    50   ~ 0
T14-3
Text Label 4850 9900 2    50   ~ 0
T11-3
Text Label 4850 10800 2    50   ~ 0
T13-3
Text Label 4850 11100 2    50   ~ 0
T10-3
Text Label 4850 11200 2    50   ~ 0
T9-3
$Comp
L Connector_Generic:Conn_02x11_Odd_Even J8
U 1 1 60759488
P 10250 6500
F 0 "J8" H 10300 7217 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 10300 7126 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x11_P2.54mm_Vertical" H 10250 6500 50  0001 C CNN
F 3 "~" H 10250 6500 50  0001 C CNN
	1    10250 6500
	1    0    0    -1  
$EndComp
Text Label 10050 6000 2    50   ~ 0
extra1
Text Label 10550 6000 0    50   ~ 0
extra2
Text Label 10050 6100 2    50   ~ 0
extra3
Text Label 10050 6200 2    50   ~ 0
extra5
Text Label 10050 6300 2    50   ~ 0
extra7
Text Label 10050 6400 2    50   ~ 0
extra9
Text Label 10050 6500 2    50   ~ 0
extra11
Text Label 10050 6600 2    50   ~ 0
extra13
Text Label 10050 6700 2    50   ~ 0
extra15
Text Label 10050 6800 2    50   ~ 0
extra17
Text Label 10050 6900 2    50   ~ 0
extra19
Text Label 10550 6900 0    50   ~ 0
extra20
Text Label 10550 6800 0    50   ~ 0
extra18
Text Label 10550 6700 0    50   ~ 0
extra16
Text Label 10550 6600 0    50   ~ 0
extra14
Text Label 10550 6500 0    50   ~ 0
extra12
Text Label 10550 6400 0    50   ~ 0
extra10
Text Label 10550 6300 0    50   ~ 0
extra8
Text Label 10550 6200 0    50   ~ 0
extra6
Text Label 10550 6100 0    50   ~ 0
extra4
Text Label 4850 7700 2    50   ~ 0
extra1
Text Label 4850 8100 2    50   ~ 0
extra2
Text Label 4850 8200 2    50   ~ 0
extra3
Text Label 4850 9300 2    50   ~ 0
extra4
Text Label 4850 7800 2    50   ~ 0
extra5
Text Label 8850 7800 0    50   ~ 0
extra6
Text Label 4850 9400 2    50   ~ 0
extra8
Text Label 4850 8500 2    50   ~ 0
extra7
Text Label 4850 8300 2    50   ~ 0
extra9
Text Label 4850 10700 2    50   ~ 0
extra10
Text Label 4850 9700 2    50   ~ 0
extra11
Text Label 4850 10100 2    50   ~ 0
extra12
Text Label 8850 9400 0    50   ~ 0
extra13
Text Label 8850 7700 0    50   ~ 0
extra14
Text Label 8850 9500 0    50   ~ 0
extra15
Text Label 8850 9300 0    50   ~ 0
extra16
Text Label 8850 9700 0    50   ~ 0
extra17
Text Label 4850 10500 2    50   ~ 0
extra19
Text Label 8850 12200 0    50   ~ 0
extra20
Text Label 10050 7000 2    50   ~ 0
gnd
Text Label 10550 7000 0    50   ~ 0
gnd
$Comp
L Regulator_Linear:MIC5504-1.2YM5 U4
U 1 1 60702C48
P 16650 5300
F 0 "U4" H 16650 5667 50  0000 C CNN
F 1 "MIC5504-1.2YM5" H 16650 5576 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 16650 4900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MIC550X.pdf" H 16400 5550 50  0001 C CNN
	1    16650 5300
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MIC5504-3.3YM5 U3
U 1 1 6070665B
P 16650 4250
F 0 "U3" H 16650 4617 50  0000 C CNN
F 1 "MIC5504-3.3YM5" H 16650 4526 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 16650 3850 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MIC550X.pdf" H 16400 4500 50  0001 C CNN
	1    16650 4250
	1    0    0    -1  
$EndComp
$Comp
L FPGA_Board_Custom_Symbols:SiT1602 U2
U 1 1 607143AE
P 14350 4650
F 0 "U2" H 14350 4765 50  0000 C CNN
F 1 "SiT1602" H 14350 4674 50  0000 C CNN
F 2 "FPGA_Board_Footprints:SiT1602_7_5" H 14350 4650 50  0001 C CNN
F 3 "" H 14350 4650 50  0001 C CNN
	1    14350 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J9
U 1 1 60716400
P 18600 4800
F 0 "J9" H 18680 4842 50  0000 L CNN
F 1 "Conn_01x01" H 18680 4751 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.3mm_L11.0mm" H 18600 4800 50  0001 C CNN
F 3 "~" H 18600 4800 50  0001 C CNN
	1    18600 4800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J10
U 1 1 60716DB4
P 18600 5000
F 0 "J10" H 18680 5042 50  0000 L CNN
F 1 "Conn_01x01" H 18680 4951 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.3mm_L11.0mm" H 18600 5000 50  0001 C CNN
F 3 "~" H 18600 5000 50  0001 C CNN
	1    18600 5000
	1    0    0    -1  
$EndComp
Text Label 18400 5000 2    50   ~ 0
gnd
Text Label 17050 5200 0    50   ~ 0
vcc2
Text Label 17050 4150 0    50   ~ 0
vcc
Text Label 16250 5200 2    50   ~ 0
vcc
Text Label 14000 5000 2    50   ~ 0
gnd
Text Label 14700 4800 0    50   ~ 0
vcc
NoConn ~ 14000 4800
Text Label 16250 5400 2    50   ~ 0
vcc
Text Label 14700 5000 0    50   ~ 0
clk
$Comp
L Device:C_Small C26
U 1 1 6072E771
P 14950 4900
F 0 "C26" H 15042 4946 50  0000 L CNN
F 1 "0u1" H 15042 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 14950 4900 50  0001 C CNN
F 3 "~" H 14950 4900 50  0001 C CNN
	1    14950 4900
	1    0    0    -1  
$EndComp
Text Label 14950 5000 3    50   ~ 0
gnd
Wire Wire Line
	14700 4800 14950 4800
Text Label 18400 4800 2    50   ~ 0
vin
Text Label 16250 4150 2    50   ~ 0
vin
Text Label 16250 4350 2    50   ~ 0
vin
$Comp
L Device:C_Small C27
U 1 1 607575F7
P 15850 4400
F 0 "C27" H 15942 4446 50  0000 L CNN
F 1 "1u" H 15942 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 15850 4400 50  0001 C CNN
F 3 "~" H 15850 4400 50  0001 C CNN
	1    15850 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	15850 4150 15850 4300
Wire Wire Line
	15850 4500 15850 4600
Wire Wire Line
	16650 4600 16650 4550
Text Label 16500 4600 2    50   ~ 0
gnd
$Comp
L Device:C_Small C29
U 1 1 60762DD9
P 17250 4400
F 0 "C29" H 17342 4446 50  0000 L CNN
F 1 "1u" H 17342 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 17250 4400 50  0001 C CNN
F 3 "~" H 17250 4400 50  0001 C CNN
	1    17250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	17250 4300 17250 4150
Wire Wire Line
	17250 4150 17050 4150
Wire Wire Line
	17250 4500 17250 4600
Wire Wire Line
	17250 4600 16650 4600
Connection ~ 16650 4600
Wire Wire Line
	15850 4150 16250 4150
Wire Wire Line
	15850 4600 16650 4600
$Comp
L Device:C_Small C30
U 1 1 607754DB
P 17250 5450
F 0 "C30" H 17342 5496 50  0000 L CNN
F 1 "1u" H 17342 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 17250 5450 50  0001 C CNN
F 3 "~" H 17250 5450 50  0001 C CNN
	1    17250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	17250 5350 17250 5200
Wire Wire Line
	17250 5200 17050 5200
Wire Wire Line
	17250 5550 17250 5650
Wire Wire Line
	17250 5650 16650 5650
Wire Wire Line
	16650 5650 16650 5600
$Comp
L Device:C_Small C28
U 1 1 60782D4C
P 15850 5450
F 0 "C28" H 15942 5496 50  0000 L CNN
F 1 "1u" H 15942 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 15850 5450 50  0001 C CNN
F 3 "~" H 15850 5450 50  0001 C CNN
	1    15850 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	15850 5350 15850 5200
Wire Wire Line
	15850 5200 16250 5200
Wire Wire Line
	15850 5550 15850 5650
Wire Wire Line
	15850 5650 16650 5650
Connection ~ 16650 5650
Text Label 16500 5650 2    50   ~ 0
gnd
Text Label 8850 10200 0    50   ~ 0
clk
NoConn ~ 10550 6800
NoConn ~ 21850 6350
NoConn ~ 21850 6450
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 608B9AF4
P 18400 4800
F 0 "#FLG0101" H 18400 4875 50  0001 C CNN
F 1 "PWR_FLAG" H 18400 4973 50  0000 C CNN
F 2 "" H 18400 4800 50  0001 C CNN
F 3 "~" H 18400 4800 50  0001 C CNN
	1    18400 4800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 608B9E59
P 18400 5000
F 0 "#FLG0102" H 18400 5075 50  0001 C CNN
F 1 "PWR_FLAG" H 18400 5173 50  0000 C CNN
F 2 "" H 18400 5000 50  0001 C CNN
F 3 "~" H 18400 5000 50  0001 C CNN
	1    18400 5000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
