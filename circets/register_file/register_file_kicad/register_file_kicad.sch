EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 1
Title "Register File"
Date "2021-12-04"
Rev "v0.1"
Comp ""
Comment1 ""
Comment2 "https://github.com/jufo-ufo/Breadboard-Computer/blob/specification-finish/LICENSE"
Comment3 "License: Apache License 2.0"
Comment4 "Author: Alexander Wersching"
$EndDescr
Wire Wire Line
	20400 9950 19700 9950
Wire Wire Line
	20350 9850 19700 9850
Wire Wire Line
	20300 9750 19700 9750
Wire Wire Line
	20250 9650 19700 9650
Wire Wire Line
	20550 8800 20100 8800
Wire Wire Line
	20550 8700 20050 8700
Wire Wire Line
	20550 8600 19700 8600
Wire Wire Line
	19800 7800 19800 8700
Wire Wire Line
	19000 8600 18400 8600
Wire Wire Line
	19800 8700 19800 9150
Wire Wire Line
	18800 8700 18800 10050
Wire Wire Line
	20050 8700 20050 9250
Wire Wire Line
	20100 8800 20100 9350
Wire Wire Line
	20250 9650 20250 9100
Wire Wire Line
	20400 9950 20400 9400
Entry Wire Line
	18400 9950 18300 10050
Entry Wire Line
	18400 9850 18300 9950
Entry Wire Line
	18400 9750 18300 9850
Entry Wire Line
	18400 9650 18300 9750
Entry Wire Line
	18400 9550 18300 9650
Entry Wire Line
	18400 9450 18300 9550
Entry Wire Line
	18400 9350 18300 9450
Entry Wire Line
	18400 9250 18300 9350
Entry Wire Line
	18400 8600 18300 8700
Entry Wire Line
	18400 8500 18300 8600
Entry Wire Line
	18400 8400 18300 8500
Entry Wire Line
	18400 8300 18300 8400
Entry Wire Line
	18400 8200 18300 8300
Entry Wire Line
	18400 8100 18300 8200
Entry Wire Line
	18400 8000 18300 8100
Entry Wire Line
	18400 7900 18300 8000
Text Label 18750 9950 2    50   ~ 0
D_In_16
Text Label 18750 9850 2    50   ~ 0
D_In_15
Text Label 18750 9750 2    50   ~ 0
D_In_14
Text Label 18750 9650 2    50   ~ 0
D_In_13
Text Label 18750 9450 2    50   ~ 0
D_In_11
Text Label 18750 9550 2    50   ~ 0
D_In_12
Text Label 18750 9350 2    50   ~ 0
D_In_10
Text Label 18750 9250 2    50   ~ 0
D_In_9
Text Label 18750 8600 2    50   ~ 0
D_In_8
Text Label 18750 8500 2    50   ~ 0
D_In_7
Text Label 18750 8400 2    50   ~ 0
D_In_6
Text Label 18750 8300 2    50   ~ 0
D_In_5
Text Label 18750 8200 2    50   ~ 0
D_In_4
Text Label 18750 8100 2    50   ~ 0
D_In_3
Wire Wire Line
	19000 9950 18400 9950
Wire Wire Line
	19000 9850 18400 9850
Wire Wire Line
	19000 9750 18400 9750
Wire Wire Line
	19000 9650 18400 9650
Wire Wire Line
	19000 9550 18400 9550
Wire Wire Line
	19000 9450 18400 9450
Wire Wire Line
	19000 9350 18400 9350
Wire Wire Line
	19000 9250 18400 9250
Wire Wire Line
	19000 8500 18400 8500
Wire Wire Line
	19000 8400 18400 8400
Wire Wire Line
	19000 8300 18400 8300
Wire Wire Line
	19000 8200 18400 8200
Wire Wire Line
	19000 8100 18400 8100
Wire Wire Line
	19000 8000 18400 8000
Wire Wire Line
	19000 7900 18400 7900
Text Label 18750 8000 2    50   ~ 0
D_In_2
Text Label 18750 7900 2    50   ~ 0
D_In_1
Wire Wire Line
	19700 10050 19800 10050
Wire Wire Line
	19800 9150 19800 10050
Wire Wire Line
	20200 9550 19700 9550
Wire Wire Line
	20150 9450 19700 9450
Wire Wire Line
	20100 9350 19700 9350
Wire Wire Line
	19000 9150 18900 9150
Wire Wire Line
	20050 9250 19700 9250
Wire Wire Line
	18800 10050 19000 10050
Wire Wire Line
	19800 9150 19700 9150
$Comp
L Computer_Component_Library:74HC573 U2
U 1 1 61ACBEFF
P 19350 9600
F 0 "U2" H 19350 10315 50  0000 C CNN
F 1 "74HC573" H 19350 10224 50  0000 C CNN
F 2 "" H 19300 10050 50  0001 C CNN
F 3 "" H 19300 10050 50  0001 C CNN
	1    19350 9600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	18900 9150 18900 7800
Wire Wire Line
	19000 7800 18900 7800
Wire Wire Line
	19000 8700 18800 8700
Connection ~ 19800 9150
Connection ~ 19800 8700
Wire Wire Line
	19800 8700 19700 8700
Wire Wire Line
	19800 7800 19700 7800
Wire Wire Line
	20550 8500 19700 8500
Wire Wire Line
	20550 8300 19700 8300
Wire Wire Line
	20550 8400 19700 8400
Wire Wire Line
	20550 8200 19700 8200
Wire Wire Line
	20550 8100 19700 8100
Wire Wire Line
	20550 8000 19700 8000
$Comp
L Computer_Component_Library:74HC573 U1
U 1 1 61AC9D93
P 19350 8250
F 0 "U1" H 19600 8850 50  0000 C CNN
F 1 "74HC573" H 19350 8874 50  0000 C CNN
F 2 "" H 19300 8700 50  0001 C CNN
F 3 "" H 19300 8700 50  0001 C CNN
	1    19350 8250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	20400 9400 20550 9400
Wire Wire Line
	20350 9300 20350 9850
Wire Wire Line
	20550 9300 20350 9300
Wire Wire Line
	20300 9200 20300 9750
Wire Wire Line
	20550 9200 20300 9200
Wire Wire Line
	20250 9100 20550 9100
Wire Wire Line
	20200 9000 20200 9550
Wire Wire Line
	20550 9000 20200 9000
Wire Wire Line
	20150 8900 20550 8900
Wire Wire Line
	20150 9450 20150 8900
$Comp
L Connector:Conn_01x03_Female J5
U 1 1 61AD63F8
P 22650 3700
F 0 "J5" H 22678 3726 50  0000 L CNN
F 1 "B_Sel" H 22678 3635 50  0000 L CNN
F 2 "" H 22650 3700 50  0001 C CNN
F 3 "~" H 22650 3700 50  0001 C CNN
	1    22650 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J4
U 1 1 61AD576E
P 22650 7150
F 0 "J4" H 22678 7176 50  0000 L CNN
F 1 "A_Sel" H 22678 7085 50  0000 L CNN
F 2 "" H 22650 7150 50  0001 C CNN
F 3 "~" H 22650 7150 50  0001 C CNN
	1    22650 7150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J3
U 1 1 61AD4FF3
P 20850 11200
F 0 "J3" H 20850 11200 50  0000 L CNN
F 1 "D_Sel" H 20650 11400 50  0000 L CNN
F 2 "" H 20850 11200 50  0001 C CNN
F 3 "~" H 20850 11200 50  0001 C CNN
	1    20850 11200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Female J1
U 1 1 61ABD38B
P 21600 4700
F 0 "J1" H 21628 4676 50  0000 L CNN
F 1 "A_Out" H 21628 4585 50  0000 L CNN
F 2 "" H 21600 4700 50  0001 C CNN
F 3 "~" H 21600 4700 50  0001 C CNN
	1    21600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2100 2500 800 
Wire Wire Line
	2400 2300 3000 2300
Wire Wire Line
	2400 2400 3000 2400
Wire Wire Line
	2400 2500 3000 2500
Wire Wire Line
	2400 2600 3000 2600
Wire Wire Line
	2400 2700 3000 2700
Wire Wire Line
	2400 2800 3000 2800
Wire Wire Line
	2400 2900 3000 2900
Wire Wire Line
	2400 3000 3000 3000
Wire Wire Line
	2400 4500 3000 4500
Wire Wire Line
	2400 4600 3000 4600
Wire Wire Line
	2400 4700 3000 4700
Wire Wire Line
	2400 4800 3000 4800
Wire Wire Line
	2400 4900 3000 4900
Wire Wire Line
	2400 5000 3000 5000
Wire Wire Line
	2400 5100 3000 5100
Wire Wire Line
	2400 5200 3000 5200
Wire Wire Line
	2400 5900 3000 5900
Wire Wire Line
	2400 5800 3000 5800
Wire Wire Line
	2400 6000 3000 6000
Wire Wire Line
	2400 6100 3000 6100
Wire Wire Line
	2400 6200 3000 6200
Wire Wire Line
	2400 6300 3000 6300
Wire Wire Line
	2400 6400 3000 6400
Wire Wire Line
	2400 6500 3000 6500
Text Label 2550 5200 0    50   ~ 0
B_Out_8
Text Label 2550 5100 0    50   ~ 0
B_Out_7
Text Label 2550 5000 0    50   ~ 0
B_Out_6
Text Label 2550 4900 0    50   ~ 0
B_Out_5
Text Label 2550 4800 0    50   ~ 0
B_Out_4
Text Label 2550 4700 0    50   ~ 0
B_Out_3
Text Label 2550 4600 0    50   ~ 0
B_Out_2
Text Label 2550 4500 0    50   ~ 0
B_Out_1
Text Label 2550 5800 0    50   ~ 0
B_Out_9
Text Label 2550 5900 0    50   ~ 0
B_Out_10
Text Label 2550 6000 0    50   ~ 0
B_Out_11
Text Label 2550 6100 0    50   ~ 0
B_Out_12
Text Label 2550 6200 0    50   ~ 0
B_Out_13
Text Label 2550 6300 0    50   ~ 0
B_Out_14
Text Label 2550 6400 0    50   ~ 0
B_Out_15
Text Label 2550 6500 0    50   ~ 0
B_Out_16
Text Label 2550 2400 0    50   ~ 0
A_Out_10
Text Label 2550 2500 0    50   ~ 0
A_Out_11
Text Label 2550 2600 0    50   ~ 0
A_Out_12
Text Label 2550 2700 0    50   ~ 0
A_Out_13
Text Label 2550 2800 0    50   ~ 0
A_Out_14
Text Label 2550 2900 0    50   ~ 0
A_Out_15
Text Label 2550 3000 0    50   ~ 0
A_Out_16
Entry Wire Line
	3000 5200 3100 5300
Entry Wire Line
	3000 5100 3100 5200
Entry Wire Line
	3000 5000 3100 5100
Entry Wire Line
	3000 4900 3100 5000
Entry Wire Line
	3000 4800 3100 4900
Entry Wire Line
	3000 4700 3100 4800
Entry Wire Line
	3000 4600 3100 4700
Entry Wire Line
	3000 4500 3100 4600
Entry Wire Line
	3000 5800 3100 5900
Entry Wire Line
	3000 5900 3100 6000
Entry Wire Line
	3000 6000 3100 6100
Entry Wire Line
	3000 6100 3100 6200
Entry Wire Line
	3000 6200 3100 6300
Entry Wire Line
	3000 6300 3100 6400
Entry Wire Line
	3000 6400 3100 6500
Entry Wire Line
	3000 6500 3100 6600
Entry Wire Line
	3000 2300 3100 2400
Entry Wire Line
	3000 1000 3100 1100
Entry Wire Line
	3000 1100 3100 1200
Entry Wire Line
	3000 1200 3100 1300
Entry Wire Line
	3000 1300 3100 1400
Entry Wire Line
	3000 1400 3100 1500
Entry Wire Line
	3000 1500 3100 1600
Entry Wire Line
	3000 1600 3100 1700
Entry Wire Line
	3000 1700 3100 1800
Entry Wire Line
	3000 2400 3100 2500
Entry Wire Line
	3000 2500 3100 2600
Entry Wire Line
	3000 2600 3100 2700
Entry Wire Line
	3000 2700 3100 2800
Entry Wire Line
	3000 2800 3100 2900
Entry Wire Line
	3000 2900 3100 3000
Entry Wire Line
	3000 3000 3100 3100
Wire Wire Line
	1100 8600 1700 8600
Wire Wire Line
	1100 8500 1700 8500
Wire Wire Line
	1100 8400 1700 8400
Wire Wire Line
	1100 8300 1700 8300
Wire Wire Line
	1100 8200 1700 8200
Wire Wire Line
	1100 8100 1700 8100
Wire Wire Line
	1100 8000 1700 8000
Wire Wire Line
	1100 7900 1700 7900
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 621A0880
P 2050 1250
F 0 "U?" H 2300 1850 50  0000 C CNN
F 1 "74HC541" H 2050 1874 50  0000 C CNN
F 2 "" H 2000 1350 50  0001 C CNN
F 3 "" H 2000 1350 50  0001 C CNN
	1    2050 1250
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 621A1602
P 2050 2550
F 0 "U?" H 2300 3150 50  0000 C CNN
F 1 "74HC541" H 2050 3174 50  0000 C CNN
F 2 "" H 2000 2650 50  0001 C CNN
F 3 "" H 2000 2650 50  0001 C CNN
	1    2050 2550
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 621A2440
P 2050 6050
F 0 "U?" H 2300 6650 50  0000 C CNN
F 1 "74HC541" H 2050 6674 50  0000 C CNN
F 2 "" H 2000 6150 50  0001 C CNN
F 3 "" H 2000 6150 50  0001 C CNN
	1    2050 6050
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 621A2DE2
P 2050 4750
F 0 "U?" H 2300 5350 50  0000 C CNN
F 1 "74HC541" H 2050 5374 50  0000 C CNN
F 2 "" H 2000 4850 50  0001 C CNN
F 3 "" H 2000 4850 50  0001 C CNN
	1    2050 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6500 1700 6500
Wire Wire Line
	1700 5600 1600 5600
Connection ~ 1600 5600
Wire Wire Line
	1600 5600 1600 6500
Wire Wire Line
	1700 4300 1600 4300
Wire Wire Line
	1700 2100 1600 2100
Connection ~ 1600 2100
Wire Wire Line
	1600 2100 1600 3000
Wire Wire Line
	1700 800  1600 800 
Wire Wire Line
	1600 800  1600 1700
Wire Wire Line
	1700 1700 1600 1700
Connection ~ 1600 1700
Wire Wire Line
	1600 1700 1600 2100
Wire Wire Line
	1700 3000 1600 3000
Wire Wire Line
	1700 5200 1600 5200
Connection ~ 1600 5200
Wire Wire Line
	1600 5200 1600 5600
Wire Wire Line
	2400 5600 2500 5600
Wire Wire Line
	2500 800  2400 800 
Wire Wire Line
	2500 2100 2400 2100
Wire Wire Line
	2400 4300 2500 4300
Text Label 1550 2900 2    50   ~ 0
D_Out_IP_16
Text Label 1550 2800 2    50   ~ 0
D_Out_IP_15
Text Label 1550 2700 2    50   ~ 0
D_Out_IP_14
Text Label 1550 2600 2    50   ~ 0
D_Out_IP_13
Text Label 1550 2500 2    50   ~ 0
D_Out_IP_12
Text Label 1550 2400 2    50   ~ 0
D_Out_IP_11
Text Label 1550 2300 2    50   ~ 0
D_Out_IP_10
Text Label 1550 1600 2    50   ~ 0
D_Out_IP_8
Text Label 1550 2200 2    50   ~ 0
D_Out_IP_9
Text Label 1550 1500 2    50   ~ 0
D_Out_IP_7
Text Label 1550 1400 2    50   ~ 0
D_Out_IP_6
Text Label 1550 1300 2    50   ~ 0
D_Out_IP_5
Text Label 1550 1200 2    50   ~ 0
D_Out_IP_4
Text Label 1550 1100 2    50   ~ 0
D_Out_IP_3
Text Label 1550 900  2    50   ~ 0
D_Out_IP_1
Wire Wire Line
	1700 1600 1100 1600
Wire Wire Line
	1700 1500 1100 1500
Wire Wire Line
	1700 1400 1100 1400
Wire Wire Line
	1700 1300 1100 1300
Wire Wire Line
	1700 1200 1100 1200
Wire Wire Line
	1700 1100 1100 1100
Wire Wire Line
	1700 1000 1100 1000
Wire Wire Line
	1700 900  1100 900 
Text Label 1550 6400 2    50   ~ 0
D_Out_IP_16
Text Label 1550 6300 2    50   ~ 0
D_Out_IP_15
Text Label 1550 6200 2    50   ~ 0
D_Out_IP_14
Text Label 1550 6100 2    50   ~ 0
D_Out_IP_13
Text Label 1550 6000 2    50   ~ 0
D_Out_IP_12
Text Label 1550 5900 2    50   ~ 0
D_Out_IP_11
Text Label 1550 5800 2    50   ~ 0
D_Out_IP_10
Text Label 1550 5100 2    50   ~ 0
D_Out_IP_8
Text Label 1550 5700 2    50   ~ 0
D_Out_IP_9
Text Label 1550 5000 2    50   ~ 0
D_Out_IP_7
Text Label 1550 4900 2    50   ~ 0
D_Out_IP_6
Text Label 1550 4800 2    50   ~ 0
D_Out_IP_5
Text Label 1550 4700 2    50   ~ 0
D_Out_IP_4
Text Label 1550 4600 2    50   ~ 0
D_Out_IP_3
Text Label 1550 4500 2    50   ~ 0
D_Out_IP_2
Text Label 1550 4400 2    50   ~ 0
D_Out_IP_1
Wire Wire Line
	1700 5100 1100 5100
Wire Wire Line
	1700 5000 1100 5000
Wire Wire Line
	1700 4900 1100 4900
Wire Wire Line
	1700 4800 1100 4800
Wire Wire Line
	1700 4700 1100 4700
Wire Wire Line
	1700 4600 1100 4600
Wire Wire Line
	1700 4500 1100 4500
Wire Wire Line
	1700 4400 1100 4400
Text Label 2550 1700 0    50   ~ 0
A_Out_8
Text Label 2550 2300 0    50   ~ 0
A_Out_9
Text Label 2550 1600 0    50   ~ 0
A_Out_7
Text Label 2550 1500 0    50   ~ 0
A_Out_6
Text Label 2550 1400 0    50   ~ 0
A_Out_5
Text Label 2550 1300 0    50   ~ 0
A_Out_4
Text Label 2550 1200 0    50   ~ 0
A_Out_3
Text Label 2550 1100 0    50   ~ 0
A_Out_2
Text Label 2550 1000 0    50   ~ 0
A_Out_1
Text Label 1550 1000 2    50   ~ 0
D_Out_IP_2
Entry Wire Line
	1100 9950 1000 10050
Entry Wire Line
	1100 9850 1000 9950
Entry Wire Line
	1100 9750 1000 9850
Entry Wire Line
	1100 9650 1000 9750
Entry Wire Line
	1100 9550 1000 9650
Entry Wire Line
	1100 9450 1000 9550
Entry Wire Line
	1100 9350 1000 9450
Entry Wire Line
	1100 9250 1000 9350
Entry Wire Line
	1100 8500 1000 8600
Entry Wire Line
	1100 8400 1000 8500
Entry Wire Line
	1100 8300 1000 8400
Entry Wire Line
	1100 7900 1000 8000
Entry Wire Line
	1100 8000 1000 8100
Entry Wire Line
	1100 8100 1000 8200
Entry Wire Line
	1100 8200 1000 8300
Entry Wire Line
	1100 8600 1000 8700
Wire Wire Line
	1100 9950 1550 9950
Wire Wire Line
	1550 9850 1100 9850
Wire Wire Line
	1100 9750 1550 9750
Wire Wire Line
	1550 9650 1100 9650
Wire Wire Line
	1100 9550 1550 9550
Wire Wire Line
	1550 9450 1100 9450
Wire Wire Line
	1550 9350 1100 9350
Wire Wire Line
	1100 9250 1550 9250
Wire Wire Line
	1600 7800 1600 8700
Connection ~ 1600 9150
Wire Wire Line
	1600 10050 1700 10050
Wire Wire Line
	1600 9150 1600 10050
Wire Wire Line
	2400 9950 3000 9950
Wire Wire Line
	2400 9850 3000 9850
Wire Wire Line
	3000 9750 2400 9750
Wire Wire Line
	2400 9650 3000 9650
Wire Wire Line
	2400 9550 3000 9550
Wire Wire Line
	3000 9450 2400 9450
Wire Wire Line
	2400 9350 3000 9350
Wire Wire Line
	3000 9250 2400 9250
Entry Wire Line
	3000 9250 3100 9350
Wire Wire Line
	2500 9150 2500 7800
Wire Wire Line
	2400 9150 2500 9150
Connection ~ 1600 8700
Wire Wire Line
	1600 9150 1700 9150
Wire Wire Line
	1600 8700 1600 9150
$Comp
L Computer_Component_Library:74HC573 U3
U 1 1 61B80C2E
P 2050 9600
F 0 "U3" H 2300 10200 50  0000 C CNN
F 1 "74HC573" H 2050 10224 50  0000 C CNN
F 2 "" H 2000 10050 50  0001 C CNN
F 3 "" H 2000 10050 50  0001 C CNN
	1    2050 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 7900 3000 7900
Wire Wire Line
	2400 8000 3000 8000
Wire Wire Line
	2400 8100 3000 8100
Wire Wire Line
	2400 8200 3000 8200
Wire Wire Line
	2400 8300 3000 8300
Wire Wire Line
	2400 8400 3000 8400
Wire Wire Line
	2400 8500 3000 8500
Wire Wire Line
	2400 8600 3000 8600
Entry Wire Line
	3000 7900 3100 8000
Entry Wire Line
	3000 8000 3100 8100
Entry Wire Line
	3000 8100 3100 8200
Entry Wire Line
	3000 8200 3100 8300
Entry Wire Line
	3000 8300 3100 8400
Entry Wire Line
	3000 8400 3100 8500
Entry Wire Line
	3000 8500 3100 8600
Entry Wire Line
	3000 8600 3100 8700
Entry Wire Line
	3000 9350 3100 9450
Entry Wire Line
	3000 9450 3100 9550
Entry Wire Line
	3000 9550 3100 9650
Entry Wire Line
	3000 9650 3100 9750
Entry Wire Line
	3000 9750 3100 9850
Entry Wire Line
	3000 9850 3100 9950
Entry Wire Line
	3000 9950 3100 10050
Text Label 2550 7900 0    50   ~ 0
D_Out_IP_1
Text Label 2550 8000 0    50   ~ 0
D_Out_IP_2
Text Label 2550 8100 0    50   ~ 0
D_Out_IP_3
Text Label 2550 8200 0    50   ~ 0
D_Out_IP_4
Text Label 2550 8300 0    50   ~ 0
D_Out_IP_5
Text Label 2550 8400 0    50   ~ 0
D_Out_IP_6
Text Label 2550 8500 0    50   ~ 0
D_Out_IP_7
Text Label 2550 9250 0    50   ~ 0
D_Out_IP_9
Text Label 2550 8600 0    50   ~ 0
D_Out_IP_8
Text Label 2550 9350 0    50   ~ 0
D_Out_IP_10
Text Label 2550 9450 0    50   ~ 0
D_Out_IP_11
Text Label 2550 9550 0    50   ~ 0
D_Out_IP_12
Text Label 2550 9650 0    50   ~ 0
D_Out_IP_13
Text Label 2550 9750 0    50   ~ 0
D_Out_IP_14
Text Label 2550 9850 0    50   ~ 0
D_Out_IP_15
Text Label 2550 9950 0    50   ~ 0
D_Out_IP_16
Text Label 1200 9950 0    50   ~ 0
D_In_16
Text Label 1200 9850 0    50   ~ 0
D_In_15
Text Label 1200 9750 0    50   ~ 0
D_In_14
Text Label 1200 9650 0    50   ~ 0
D_In_13
Text Label 1200 9550 0    50   ~ 0
D_In_12
Text Label 1200 9450 0    50   ~ 0
D_In_11
Text Label 1200 9350 0    50   ~ 0
D_In_10
Text Label 1200 9250 0    50   ~ 0
D_In_9
Text Label 1200 8600 0    50   ~ 0
D_In_8
Text Label 1200 8500 0    50   ~ 0
D_In_7
Text Label 1200 8400 0    50   ~ 0
D_In_6
Text Label 1200 8300 0    50   ~ 0
D_In_5
Text Label 1200 8200 0    50   ~ 0
D_In_4
Text Label 1200 8100 0    50   ~ 0
D_In_3
Text Label 1200 7900 0    50   ~ 0
D_In_1
Text Label 1200 8000 0    50   ~ 0
D_In_2
Wire Wire Line
	1700 8700 1600 8700
Wire Wire Line
	2400 7800 2500 7800
Wire Wire Line
	1700 7800 1600 7800
$Comp
L Computer_Component_Library:74HC573 U4
U 1 1 61B0DFC4
P 2050 8250
F 0 "U4" H 2300 8850 50  0000 C CNN
F 1 "74HC573" H 2050 8874 50  0000 C CNN
F 2 "" H 2000 8700 50  0001 C CNN
F 3 "" H 2000 8700 50  0001 C CNN
	1    2050 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1700 5500 1700
Wire Wire Line
	4900 1600 5500 1600
Wire Wire Line
	4900 1500 5500 1500
Wire Wire Line
	4900 1400 5500 1400
Wire Wire Line
	4900 1300 5500 1300
Wire Wire Line
	4900 1200 5500 1200
Wire Wire Line
	5000 2100 5000 800 
Wire Wire Line
	4900 1100 5500 1100
Wire Wire Line
	4900 1000 5500 1000
Wire Wire Line
	4900 2300 5500 2300
Wire Wire Line
	4900 2400 5500 2400
Wire Wire Line
	4900 2500 5500 2500
Wire Wire Line
	4900 2600 5500 2600
Wire Wire Line
	4900 2700 5500 2700
Wire Wire Line
	4900 2800 5500 2800
Wire Wire Line
	4900 2900 5500 2900
Wire Wire Line
	4900 3000 5500 3000
Wire Wire Line
	4900 4500 5500 4500
Wire Wire Line
	4900 4600 5500 4600
Wire Wire Line
	4900 4700 5500 4700
Wire Wire Line
	4900 4800 5500 4800
Wire Wire Line
	4900 4900 5500 4900
Wire Wire Line
	4900 5000 5500 5000
Wire Wire Line
	4900 5100 5500 5100
Wire Wire Line
	4900 5200 5500 5200
Wire Wire Line
	4900 5900 5500 5900
Wire Wire Line
	4900 5800 5500 5800
Wire Wire Line
	4900 6000 5500 6000
Wire Wire Line
	4900 6100 5500 6100
Wire Wire Line
	4900 6200 5500 6200
Wire Wire Line
	4900 6300 5500 6300
Wire Wire Line
	4900 6400 5500 6400
Wire Wire Line
	4900 6500 5500 6500
Text Label 5050 5200 0    50   ~ 0
B_Out_8
Text Label 5050 5100 0    50   ~ 0
B_Out_7
Text Label 5050 5000 0    50   ~ 0
B_Out_6
Text Label 5050 4900 0    50   ~ 0
B_Out_5
Text Label 5050 4800 0    50   ~ 0
B_Out_4
Text Label 5050 4700 0    50   ~ 0
B_Out_3
Text Label 5050 4600 0    50   ~ 0
B_Out_2
Text Label 5050 4500 0    50   ~ 0
B_Out_1
Text Label 5050 5800 0    50   ~ 0
B_Out_9
Text Label 5050 5900 0    50   ~ 0
B_Out_10
Text Label 5050 6000 0    50   ~ 0
B_Out_11
Text Label 5050 6100 0    50   ~ 0
B_Out_12
Text Label 5050 6200 0    50   ~ 0
B_Out_13
Text Label 5050 6300 0    50   ~ 0
B_Out_14
Text Label 5050 6400 0    50   ~ 0
B_Out_15
Text Label 5050 6500 0    50   ~ 0
B_Out_16
Text Label 5050 2400 0    50   ~ 0
A_Out_10
Text Label 5050 2500 0    50   ~ 0
A_Out_11
Text Label 5050 2600 0    50   ~ 0
A_Out_12
Text Label 5050 2700 0    50   ~ 0
A_Out_13
Text Label 5050 2800 0    50   ~ 0
A_Out_14
Text Label 5050 2900 0    50   ~ 0
A_Out_15
Text Label 5050 3000 0    50   ~ 0
A_Out_16
Entry Wire Line
	5500 5200 5600 5300
Entry Wire Line
	5500 5100 5600 5200
Entry Wire Line
	5500 5000 5600 5100
Entry Wire Line
	5500 4900 5600 5000
Entry Wire Line
	5500 4800 5600 4900
Entry Wire Line
	5500 4700 5600 4800
Entry Wire Line
	5500 4600 5600 4700
Entry Wire Line
	5500 4500 5600 4600
Entry Wire Line
	5500 5800 5600 5900
Entry Wire Line
	5500 5900 5600 6000
Entry Wire Line
	5500 6000 5600 6100
Entry Wire Line
	5500 6100 5600 6200
Entry Wire Line
	5500 6200 5600 6300
Entry Wire Line
	5500 6300 5600 6400
Entry Wire Line
	5500 6400 5600 6500
Entry Wire Line
	5500 6500 5600 6600
Entry Wire Line
	5500 2300 5600 2400
Entry Wire Line
	5500 1000 5600 1100
Entry Wire Line
	5500 1100 5600 1200
Entry Wire Line
	5500 1200 5600 1300
Entry Wire Line
	5500 1300 5600 1400
Entry Wire Line
	5500 1400 5600 1500
Entry Wire Line
	5500 1500 5600 1600
Entry Wire Line
	5500 1600 5600 1700
Entry Wire Line
	5500 1700 5600 1800
Entry Wire Line
	5500 2400 5600 2500
Entry Wire Line
	5500 2500 5600 2600
Entry Wire Line
	5500 2600 5600 2700
Entry Wire Line
	5500 2700 5600 2800
Entry Wire Line
	5500 2800 5600 2900
Entry Wire Line
	5500 2900 5600 3000
Entry Wire Line
	5500 3000 5600 3100
Wire Wire Line
	5000 5600 5000 4300
Wire Wire Line
	3600 8550 4200 8550
Wire Wire Line
	3600 8450 4200 8450
Wire Wire Line
	3600 8350 4200 8350
Wire Wire Line
	3600 8250 4200 8250
Wire Wire Line
	3600 8150 4200 8150
Wire Wire Line
	3600 8050 4200 8050
Wire Wire Line
	3600 7950 4200 7950
Wire Wire Line
	3600 7850 4200 7850
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 633C43B7
P 4550 1250
F 0 "U?" H 4800 1850 50  0000 C CNN
F 1 "74HC541" H 4550 1874 50  0000 C CNN
F 2 "" H 4500 1350 50  0001 C CNN
F 3 "" H 4500 1350 50  0001 C CNN
	1    4550 1250
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 633C43BD
P 4550 2550
F 0 "U?" H 4800 3150 50  0000 C CNN
F 1 "74HC541" H 4550 3174 50  0000 C CNN
F 2 "" H 4500 2650 50  0001 C CNN
F 3 "" H 4500 2650 50  0001 C CNN
	1    4550 2550
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 633C43C3
P 4550 6050
F 0 "U?" H 4800 6650 50  0000 C CNN
F 1 "74HC541" H 4550 6674 50  0000 C CNN
F 2 "" H 4500 6150 50  0001 C CNN
F 3 "" H 4500 6150 50  0001 C CNN
	1    4550 6050
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 633C43C9
P 4550 4750
F 0 "U?" H 4800 5350 50  0000 C CNN
F 1 "74HC541" H 4550 5374 50  0000 C CNN
F 2 "" H 4500 4850 50  0001 C CNN
F 3 "" H 4500 4850 50  0001 C CNN
	1    4550 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6500 4200 6500
Wire Wire Line
	4200 5600 4100 5600
Connection ~ 4100 5600
Wire Wire Line
	4100 5600 4100 6500
Wire Wire Line
	4200 4300 4100 4300
Wire Wire Line
	4100 4300 4100 5200
Wire Wire Line
	4200 2100 4100 2100
Connection ~ 4100 2100
Wire Wire Line
	4100 2100 4100 3000
Wire Wire Line
	4200 800  4100 800 
Wire Wire Line
	4100 800  4100 1700
Wire Wire Line
	4200 1700 4100 1700
Connection ~ 4100 1700
Wire Wire Line
	4100 1700 4100 2100
Wire Wire Line
	4200 3000 4100 3000
Wire Wire Line
	4200 5200 4100 5200
Connection ~ 4100 5200
Wire Wire Line
	4100 5200 4100 5600
Wire Wire Line
	4900 5600 5000 5600
Wire Wire Line
	5000 800  4900 800 
Wire Wire Line
	5000 2100 4900 2100
Wire Wire Line
	4900 4300 5000 4300
Text Label 4050 2900 2    50   ~ 0
D_Out_SP_16
Text Label 4050 2700 2    50   ~ 0
D_Out_SP_14
Text Label 4050 2500 2    50   ~ 0
D_Out_SP_12
Text Label 4050 2400 2    50   ~ 0
D_Out_SP_11
Text Label 4050 2300 2    50   ~ 0
D_Out_SP_10
Text Label 4050 1600 2    50   ~ 0
D_Out_SP_8
Text Label 4050 2200 2    50   ~ 0
D_Out_SP_9
Text Label 4050 1500 2    50   ~ 0
D_Out_SP_7
Text Label 4050 1400 2    50   ~ 0
D_Out_SP_6
Text Label 4050 1300 2    50   ~ 0
D_Out_SP_5
Text Label 4050 1200 2    50   ~ 0
D_Out_SP_4
Text Label 4050 1100 2    50   ~ 0
D_Out_SP_3
Text Label 4050 900  2    50   ~ 0
D_Out_SP_1
Entry Wire Line
	3600 2900 3500 3000
Entry Wire Line
	3600 2800 3500 2900
Entry Wire Line
	3600 2700 3500 2800
Entry Wire Line
	3600 2600 3500 2700
Entry Wire Line
	3600 2500 3500 2600
Entry Wire Line
	3600 2400 3500 2500
Entry Wire Line
	3600 2300 3500 2400
Entry Wire Line
	3600 1600 3500 1700
Entry Wire Line
	3600 1500 3500 1600
Entry Wire Line
	3600 1400 3500 1500
Entry Wire Line
	3600 1300 3500 1400
Entry Wire Line
	3600 1200 3500 1300
Entry Wire Line
	3600 1100 3500 1200
Entry Wire Line
	3600 1000 3500 1100
Entry Wire Line
	3600 900  3500 1000
Wire Wire Line
	4200 1600 3600 1600
Wire Wire Line
	4200 1500 3600 1500
Wire Wire Line
	4200 1400 3600 1400
Wire Wire Line
	4200 1300 3600 1300
Wire Wire Line
	4200 1200 3600 1200
Wire Wire Line
	4200 1100 3600 1100
Wire Wire Line
	4200 1000 3600 1000
Wire Wire Line
	4200 900  3600 900 
Entry Wire Line
	3600 2200 3500 2300
Wire Wire Line
	3600 2200 4200 2200
Wire Wire Line
	4200 2300 3600 2300
Wire Wire Line
	3600 2400 4200 2400
Wire Wire Line
	4200 2500 3600 2500
Wire Wire Line
	4200 2600 3600 2600
Wire Wire Line
	3600 2700 4200 2700
Wire Wire Line
	4200 2800 3600 2800
Wire Wire Line
	4200 2900 3600 2900
Text Label 4050 6400 2    50   ~ 0
D_Out_SP_16
Text Label 4050 6300 2    50   ~ 0
D_Out_SP_15
Text Label 4050 6200 2    50   ~ 0
D_Out_SP_14
Text Label 4050 6100 2    50   ~ 0
D_Out_SP_13
Text Label 4050 6000 2    50   ~ 0
D_Out_SP_12
Text Label 4050 5900 2    50   ~ 0
D_Out_SP_11
Text Label 4050 5800 2    50   ~ 0
D_Out_SP_10
Text Label 4050 5100 2    50   ~ 0
D_Out_SP_8
Text Label 4050 5700 2    50   ~ 0
D_Out_SP_9
Text Label 4050 5000 2    50   ~ 0
D_Out_SP_7
Text Label 4050 4900 2    50   ~ 0
D_Out_SP_6
Text Label 4050 4800 2    50   ~ 0
D_Out_SP_5
Text Label 4050 4700 2    50   ~ 0
D_Out_SP_4
Text Label 4050 4600 2    50   ~ 0
D_Out_SP_3
Text Label 4050 4500 2    50   ~ 0
D_Out_SP_2
Text Label 4050 4400 2    50   ~ 0
D_Out_SP_1
Entry Wire Line
	3600 6400 3500 6500
Entry Wire Line
	3600 6300 3500 6400
Entry Wire Line
	3600 6200 3500 6300
Entry Wire Line
	3600 6100 3500 6200
Entry Wire Line
	3600 6000 3500 6100
Entry Wire Line
	3600 5900 3500 6000
Entry Wire Line
	3600 5800 3500 5900
Entry Wire Line
	3600 5100 3500 5200
Entry Wire Line
	3600 5000 3500 5100
Entry Wire Line
	3600 4900 3500 5000
Entry Wire Line
	3600 4800 3500 4900
Entry Wire Line
	3600 4700 3500 4800
Entry Wire Line
	3600 4600 3500 4700
Entry Wire Line
	3600 4500 3500 4600
Entry Wire Line
	3600 4400 3500 4500
Wire Wire Line
	4200 5100 3600 5100
Wire Wire Line
	4200 5000 3600 5000
Wire Wire Line
	4200 4900 3600 4900
Wire Wire Line
	4200 4800 3600 4800
Wire Wire Line
	4200 4700 3600 4700
Wire Wire Line
	4200 4600 3600 4600
Wire Wire Line
	4200 4500 3600 4500
Wire Wire Line
	4200 4400 3600 4400
Entry Wire Line
	3600 5700 3500 5800
Wire Wire Line
	3600 5700 4200 5700
Wire Wire Line
	4200 5800 3600 5800
Wire Wire Line
	3600 5900 4200 5900
Wire Wire Line
	4200 6000 3600 6000
Wire Wire Line
	4200 6100 3600 6100
Wire Wire Line
	3600 6200 4200 6200
Wire Wire Line
	4200 6300 3600 6300
Wire Wire Line
	4200 6400 3600 6400
Text Label 5050 1700 0    50   ~ 0
A_Out_8
Text Label 5050 2300 0    50   ~ 0
A_Out_9
Text Label 5050 1600 0    50   ~ 0
A_Out_7
Text Label 5050 1500 0    50   ~ 0
A_Out_6
Text Label 5050 1400 0    50   ~ 0
A_Out_5
Text Label 5050 1300 0    50   ~ 0
A_Out_4
Text Label 5050 1200 0    50   ~ 0
A_Out_3
Text Label 5050 1100 0    50   ~ 0
A_Out_2
Text Label 5050 1000 0    50   ~ 0
A_Out_1
Text Label 4050 1000 2    50   ~ 0
D_Out_SP_2
Entry Wire Line
	3600 9900 3500 10000
Entry Wire Line
	3600 9800 3500 9900
Entry Wire Line
	3600 9700 3500 9800
Entry Wire Line
	3600 9600 3500 9700
Entry Wire Line
	3600 9500 3500 9600
Entry Wire Line
	3600 9400 3500 9500
Entry Wire Line
	3600 9300 3500 9400
Entry Wire Line
	3600 9200 3500 9300
Entry Wire Line
	3600 8450 3500 8550
Entry Wire Line
	3600 8350 3500 8450
Entry Wire Line
	3600 8250 3500 8350
Entry Wire Line
	3600 7850 3500 7950
Entry Wire Line
	3600 7950 3500 8050
Entry Wire Line
	3600 8050 3500 8150
Entry Wire Line
	3600 8150 3500 8250
Entry Wire Line
	3600 8550 3500 8650
Wire Wire Line
	3600 9900 4050 9900
Wire Wire Line
	4050 9800 3600 9800
Wire Wire Line
	3600 9700 4050 9700
Wire Wire Line
	4050 9600 3600 9600
Wire Wire Line
	3600 9500 4050 9500
Wire Wire Line
	4050 9400 3600 9400
Wire Wire Line
	4050 9300 3600 9300
Wire Wire Line
	3600 9200 4050 9200
Wire Wire Line
	4100 7750 4100 8650
Connection ~ 4100 9100
Wire Wire Line
	4100 10000 4200 10000
Wire Wire Line
	4100 9100 4100 10000
Wire Wire Line
	4900 9900 5500 9900
Wire Wire Line
	4900 9800 5500 9800
Wire Wire Line
	5500 9700 4900 9700
Wire Wire Line
	4900 9600 5500 9600
Wire Wire Line
	4900 9500 5500 9500
Wire Wire Line
	5500 9400 4900 9400
Wire Wire Line
	4900 9300 5500 9300
Wire Wire Line
	5500 9200 4900 9200
Entry Wire Line
	5500 9200 5600 9300
Wire Wire Line
	5000 9100 5000 7750
Wire Wire Line
	4900 9100 5000 9100
Connection ~ 4100 8650
Wire Wire Line
	4100 9100 4200 9100
Wire Wire Line
	4100 8650 4100 9100
$Comp
L Computer_Component_Library:74HC573 U5
U 1 1 633C447D
P 4550 9550
F 0 "U5" H 4800 10150 50  0000 C CNN
F 1 "74HC573" H 4550 10174 50  0000 C CNN
F 2 "" H 4500 10000 50  0001 C CNN
F 3 "" H 4500 10000 50  0001 C CNN
	1    4550 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 7850 5500 7850
Wire Wire Line
	4900 7950 5500 7950
Wire Wire Line
	4900 8050 5500 8050
Wire Wire Line
	4900 8150 5500 8150
Wire Wire Line
	4900 8250 5500 8250
Wire Wire Line
	4900 8350 5500 8350
Wire Wire Line
	4900 8450 5500 8450
Wire Wire Line
	4900 8550 5500 8550
Entry Wire Line
	5500 7850 5600 7950
Entry Wire Line
	5500 7950 5600 8050
Entry Wire Line
	5500 8050 5600 8150
Entry Wire Line
	5500 8150 5600 8250
Entry Wire Line
	5500 8250 5600 8350
Entry Wire Line
	5500 8350 5600 8450
Entry Wire Line
	5500 8450 5600 8550
Entry Wire Line
	5500 8550 5600 8650
Entry Wire Line
	5500 9300 5600 9400
Entry Wire Line
	5500 9400 5600 9500
Entry Wire Line
	5500 9500 5600 9600
Entry Wire Line
	5500 9600 5600 9700
Entry Wire Line
	5500 9700 5600 9800
Entry Wire Line
	5500 9800 5600 9900
Entry Wire Line
	5500 9900 5600 10000
Text Label 5050 7850 0    50   ~ 0
D_Out_SP_1
Text Label 5050 7950 0    50   ~ 0
D_Out_SP_2
Text Label 5050 8050 0    50   ~ 0
D_Out_SP_3
Text Label 5050 8150 0    50   ~ 0
D_Out_SP_4
Text Label 5050 8250 0    50   ~ 0
D_Out_SP_5
Text Label 5050 8350 0    50   ~ 0
D_Out_SP_6
Text Label 5050 8450 0    50   ~ 0
D_Out_SP_7
Text Label 5050 9200 0    50   ~ 0
D_Out_SP_9
Text Label 5050 8550 0    50   ~ 0
D_Out_SP_8
Text Label 5050 9300 0    50   ~ 0
D_Out_SP_10
Text Label 5050 9400 0    50   ~ 0
D_Out_SP_11
Text Label 5050 9500 0    50   ~ 0
D_Out_SP_12
Text Label 5050 9600 0    50   ~ 0
D_Out_SP_13
Text Label 5050 9700 0    50   ~ 0
D_Out_SP_14
Text Label 5050 9800 0    50   ~ 0
D_Out_SP_15
Text Label 5050 9900 0    50   ~ 0
D_Out_SP_16
Text Label 3700 9900 0    50   ~ 0
D_In_16
Text Label 3700 9800 0    50   ~ 0
D_In_15
Text Label 3700 9700 0    50   ~ 0
D_In_14
Text Label 3700 9600 0    50   ~ 0
D_In_13
Text Label 3700 9500 0    50   ~ 0
D_In_12
Text Label 3700 9400 0    50   ~ 0
D_In_11
Text Label 3700 9300 0    50   ~ 0
D_In_10
Text Label 3700 9200 0    50   ~ 0
D_In_9
Text Label 3700 8550 0    50   ~ 0
D_In_8
Text Label 3700 8450 0    50   ~ 0
D_In_7
Text Label 3700 8350 0    50   ~ 0
D_In_6
Text Label 3700 8250 0    50   ~ 0
D_In_5
Text Label 3700 8150 0    50   ~ 0
D_In_4
Text Label 3700 8050 0    50   ~ 0
D_In_3
Text Label 3700 7850 0    50   ~ 0
D_In_1
Text Label 3700 7950 0    50   ~ 0
D_In_2
Wire Wire Line
	4200 8650 4100 8650
Wire Wire Line
	4900 7750 5000 7750
Wire Wire Line
	4200 7750 4100 7750
$Comp
L Computer_Component_Library:74HC573 U6
U 1 1 633C44BD
P 4550 8200
F 0 "U6" H 4800 8800 50  0000 C CNN
F 1 "74HC573" H 4550 8824 50  0000 C CNN
F 2 "" H 4500 8650 50  0001 C CNN
F 3 "" H 4500 8650 50  0001 C CNN
	1    4550 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1700 8000 1700
Wire Wire Line
	7400 1600 8000 1600
Wire Wire Line
	7400 1500 8000 1500
Wire Wire Line
	7400 1400 8000 1400
Wire Wire Line
	7400 1300 8000 1300
Wire Wire Line
	7400 1200 8000 1200
Wire Wire Line
	7400 1100 8000 1100
Wire Wire Line
	7400 1000 8000 1000
Wire Wire Line
	7400 2300 8000 2300
Wire Wire Line
	7400 2400 8000 2400
Wire Wire Line
	7400 2500 8000 2500
Wire Wire Line
	7400 2600 8000 2600
Wire Wire Line
	7400 2700 8000 2700
Wire Wire Line
	7400 2800 8000 2800
Wire Wire Line
	7400 2900 8000 2900
Wire Wire Line
	7400 3000 8000 3000
Wire Wire Line
	7400 4500 8000 4500
Wire Wire Line
	7400 4600 8000 4600
Wire Wire Line
	7400 4700 8000 4700
Wire Wire Line
	7400 4800 8000 4800
Wire Wire Line
	7400 4900 8000 4900
Wire Wire Line
	7400 5000 8000 5000
Wire Wire Line
	7400 5100 8000 5100
Wire Wire Line
	7400 5200 8000 5200
Wire Wire Line
	7400 5900 8000 5900
Wire Wire Line
	7400 5800 8000 5800
Wire Wire Line
	7400 6000 8000 6000
Wire Wire Line
	7400 6100 8000 6100
Wire Wire Line
	7400 6200 8000 6200
Wire Wire Line
	7400 6300 8000 6300
Wire Wire Line
	7400 6400 8000 6400
Wire Wire Line
	7400 6500 8000 6500
Text Label 7550 5200 0    50   ~ 0
B_Out_8
Text Label 7550 5100 0    50   ~ 0
B_Out_7
Text Label 7550 5000 0    50   ~ 0
B_Out_6
Text Label 7550 4900 0    50   ~ 0
B_Out_5
Text Label 7550 4800 0    50   ~ 0
B_Out_4
Text Label 7550 4700 0    50   ~ 0
B_Out_3
Text Label 7550 4600 0    50   ~ 0
B_Out_2
Text Label 7550 4500 0    50   ~ 0
B_Out_1
Text Label 7550 5800 0    50   ~ 0
B_Out_9
Text Label 7550 5900 0    50   ~ 0
B_Out_10
Text Label 7550 6000 0    50   ~ 0
B_Out_11
Text Label 7550 6100 0    50   ~ 0
B_Out_12
Text Label 7550 6200 0    50   ~ 0
B_Out_13
Text Label 7550 6300 0    50   ~ 0
B_Out_14
Text Label 7550 6400 0    50   ~ 0
B_Out_15
Text Label 7550 6500 0    50   ~ 0
B_Out_16
Text Label 7550 2400 0    50   ~ 0
A_Out_10
Text Label 7550 2500 0    50   ~ 0
A_Out_11
Text Label 7550 2600 0    50   ~ 0
A_Out_12
Text Label 7550 2700 0    50   ~ 0
A_Out_13
Text Label 7550 2800 0    50   ~ 0
A_Out_14
Text Label 7550 2900 0    50   ~ 0
A_Out_15
Text Label 7550 3000 0    50   ~ 0
A_Out_16
Entry Wire Line
	8000 5200 8100 5300
Entry Wire Line
	8000 5100 8100 5200
Entry Wire Line
	8000 5000 8100 5100
Entry Wire Line
	8000 4900 8100 5000
Entry Wire Line
	8000 4800 8100 4900
Entry Wire Line
	8000 4700 8100 4800
Entry Wire Line
	8000 4600 8100 4700
Entry Wire Line
	8000 4500 8100 4600
Entry Wire Line
	8000 5800 8100 5900
Entry Wire Line
	8000 5900 8100 6000
Entry Wire Line
	8000 6000 8100 6100
Entry Wire Line
	8000 6100 8100 6200
Entry Wire Line
	8000 6200 8100 6300
Entry Wire Line
	8000 6300 8100 6400
Entry Wire Line
	8000 6400 8100 6500
Entry Wire Line
	8000 6500 8100 6600
Entry Wire Line
	8000 2300 8100 2400
Entry Wire Line
	8000 1000 8100 1100
Entry Wire Line
	8000 1100 8100 1200
Entry Wire Line
	8000 1200 8100 1300
Entry Wire Line
	8000 1300 8100 1400
Entry Wire Line
	8000 1400 8100 1500
Entry Wire Line
	8000 1500 8100 1600
Entry Wire Line
	8000 1600 8100 1700
Entry Wire Line
	8000 1700 8100 1800
Entry Wire Line
	8000 2400 8100 2500
Entry Wire Line
	8000 2500 8100 2600
Entry Wire Line
	8000 2600 8100 2700
Entry Wire Line
	8000 2700 8100 2800
Entry Wire Line
	8000 2800 8100 2900
Entry Wire Line
	8000 2900 8100 3000
Entry Wire Line
	8000 3000 8100 3100
Wire Wire Line
	6100 8600 6700 8600
Wire Wire Line
	6100 8500 6700 8500
Wire Wire Line
	6100 8400 6700 8400
Wire Wire Line
	6100 8300 6700 8300
Wire Wire Line
	6100 8200 6700 8200
Wire Wire Line
	6100 8100 6700 8100
Wire Wire Line
	6100 8000 6700 8000
Wire Wire Line
	6100 7900 6700 7900
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 633F9410
P 7050 1250
F 0 "U?" H 7300 1850 50  0000 C CNN
F 1 "74HC541" H 7050 1874 50  0000 C CNN
F 2 "" H 7000 1350 50  0001 C CNN
F 3 "" H 7000 1350 50  0001 C CNN
	1    7050 1250
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 633F9416
P 7050 2550
F 0 "U?" H 7300 3150 50  0000 C CNN
F 1 "74HC541" H 7050 3174 50  0000 C CNN
F 2 "" H 7000 2650 50  0001 C CNN
F 3 "" H 7000 2650 50  0001 C CNN
	1    7050 2550
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 633F941C
P 7050 6050
F 0 "U?" H 7300 6650 50  0000 C CNN
F 1 "74HC541" H 7050 6674 50  0000 C CNN
F 2 "" H 7000 6150 50  0001 C CNN
F 3 "" H 7000 6150 50  0001 C CNN
	1    7050 6050
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 633F9422
P 7050 4750
F 0 "U?" H 7300 5350 50  0000 C CNN
F 1 "74HC541" H 7050 5374 50  0000 C CNN
F 2 "" H 7000 4850 50  0001 C CNN
F 3 "" H 7000 4850 50  0001 C CNN
	1    7050 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 6500 6700 6500
Wire Wire Line
	6700 5600 6600 5600
Connection ~ 6600 5600
Wire Wire Line
	6600 5600 6600 6500
Wire Wire Line
	6700 4300 6600 4300
Wire Wire Line
	6600 4300 6600 5200
Wire Wire Line
	6700 2100 6600 2100
Connection ~ 6600 2100
Wire Wire Line
	6700 800  6600 800 
Wire Wire Line
	6600 800  6600 1700
Wire Wire Line
	6700 1700 6600 1700
Connection ~ 6600 1700
Wire Wire Line
	6600 1700 6600 2100
Wire Wire Line
	6700 3000 6600 3000
Wire Wire Line
	6700 5200 6600 5200
Connection ~ 6600 5200
Wire Wire Line
	6600 5200 6600 5600
Wire Wire Line
	7400 5600 7500 5600
Wire Wire Line
	7500 800  7400 800 
Wire Wire Line
	7500 2100 7400 2100
Wire Wire Line
	7400 4300 7500 4300
Text Label 6550 2900 2    50   ~ 0
D_Out_A_16
Text Label 6550 2800 2    50   ~ 0
D_Out_A_15
Text Label 6550 2700 2    50   ~ 0
D_Out_A_14
Text Label 6550 2600 2    50   ~ 0
D_Out_A_13
Text Label 6550 2500 2    50   ~ 0
D_Out_A_12
Text Label 6550 2400 2    50   ~ 0
D_Out_A_11
Text Label 6550 2300 2    50   ~ 0
D_Out_A_10
Text Label 6550 1600 2    50   ~ 0
D_Out_A_8
Text Label 6550 2200 2    50   ~ 0
D_Out_A_9
Text Label 6550 1500 2    50   ~ 0
D_Out_A_7
Text Label 6550 1400 2    50   ~ 0
D_Out_A_6
Text Label 6550 1300 2    50   ~ 0
D_Out_A_5
Text Label 6550 1200 2    50   ~ 0
D_Out_A_4
Text Label 6550 1100 2    50   ~ 0
D_Out_A_3
Text Label 6550 900  2    50   ~ 0
D_Out_A_1
Entry Wire Line
	6100 2900 6000 3000
Entry Wire Line
	6100 2800 6000 2900
Entry Wire Line
	6100 2700 6000 2800
Entry Wire Line
	6100 2600 6000 2700
Entry Wire Line
	6100 2500 6000 2600
Entry Wire Line
	6100 2400 6000 2500
Entry Wire Line
	6100 2300 6000 2400
Entry Wire Line
	6100 1600 6000 1700
Entry Wire Line
	6100 1500 6000 1600
Entry Wire Line
	6100 1400 6000 1500
Entry Wire Line
	6100 1300 6000 1400
Entry Wire Line
	6100 1200 6000 1300
Entry Wire Line
	6100 1100 6000 1200
Entry Wire Line
	6100 1000 6000 1100
Entry Wire Line
	6100 900  6000 1000
Wire Wire Line
	6700 1600 6100 1600
Wire Wire Line
	6700 1500 6100 1500
Wire Wire Line
	6700 1400 6100 1400
Wire Wire Line
	6700 1300 6100 1300
Wire Wire Line
	6700 1200 6100 1200
Wire Wire Line
	6700 1100 6100 1100
Wire Wire Line
	6700 1000 6100 1000
Wire Wire Line
	6700 900  6100 900 
Entry Wire Line
	6100 2200 6000 2300
Wire Wire Line
	6100 2200 6700 2200
Wire Wire Line
	6700 2300 6100 2300
Wire Wire Line
	6100 2400 6700 2400
Wire Wire Line
	6700 2500 6100 2500
Wire Wire Line
	6700 2600 6100 2600
Wire Wire Line
	6100 2700 6700 2700
Wire Wire Line
	6700 2800 6100 2800
Wire Wire Line
	6700 2900 6100 2900
Text Label 6550 6400 2    50   ~ 0
D_Out_A_16
Text Label 6550 6300 2    50   ~ 0
D_Out_A_15
Text Label 6550 6200 2    50   ~ 0
D_Out_A_14
Text Label 6550 6100 2    50   ~ 0
D_Out_A_13
Text Label 6550 6000 2    50   ~ 0
D_Out_A_12
Text Label 6550 5900 2    50   ~ 0
D_Out_A_11
Text Label 6550 5800 2    50   ~ 0
D_Out_A_10
Text Label 6550 5100 2    50   ~ 0
D_Out_A_8
Text Label 6550 5700 2    50   ~ 0
D_Out_A_9
Text Label 6550 5000 2    50   ~ 0
D_Out_A_7
Text Label 6550 4900 2    50   ~ 0
D_Out_A_6
Text Label 6550 4800 2    50   ~ 0
D_Out_A_5
Text Label 6550 4700 2    50   ~ 0
D_Out_A_4
Text Label 6550 4600 2    50   ~ 0
D_Out_A_3
Text Label 6550 4500 2    50   ~ 0
D_Out_A_2
Text Label 6550 4400 2    50   ~ 0
D_Out_A_1
Entry Wire Line
	6100 6400 6000 6500
Entry Wire Line
	6100 6300 6000 6400
Entry Wire Line
	6100 6200 6000 6300
Entry Wire Line
	6100 6100 6000 6200
Entry Wire Line
	6100 6000 6000 6100
Entry Wire Line
	6100 5900 6000 6000
Entry Wire Line
	6100 5800 6000 5900
Entry Wire Line
	6100 5100 6000 5200
Entry Wire Line
	6100 5000 6000 5100
Entry Wire Line
	6100 4900 6000 5000
Entry Wire Line
	6100 4800 6000 4900
Entry Wire Line
	6100 4700 6000 4800
Entry Wire Line
	6100 4600 6000 4700
Entry Wire Line
	6100 4500 6000 4600
Entry Wire Line
	6100 4400 6000 4500
Wire Wire Line
	6700 5100 6100 5100
Wire Wire Line
	6700 5000 6100 5000
Wire Wire Line
	6700 4900 6100 4900
Wire Wire Line
	6700 4800 6100 4800
Wire Wire Line
	6700 4700 6100 4700
Wire Wire Line
	6700 4600 6100 4600
Wire Wire Line
	6700 4500 6100 4500
Wire Wire Line
	6700 4400 6100 4400
Entry Wire Line
	6100 5700 6000 5800
Wire Wire Line
	6100 5700 6700 5700
Wire Wire Line
	6700 5800 6100 5800
Wire Wire Line
	6100 5900 6700 5900
Wire Wire Line
	6700 6000 6100 6000
Wire Wire Line
	6700 6100 6100 6100
Wire Wire Line
	6100 6200 6700 6200
Wire Wire Line
	6700 6300 6100 6300
Wire Wire Line
	6700 6400 6100 6400
Text Label 7550 1700 0    50   ~ 0
A_Out_8
Text Label 7550 2300 0    50   ~ 0
A_Out_9
Text Label 7550 1600 0    50   ~ 0
A_Out_7
Text Label 7550 1500 0    50   ~ 0
A_Out_6
Text Label 7550 1400 0    50   ~ 0
A_Out_5
Text Label 7550 1300 0    50   ~ 0
A_Out_4
Text Label 7550 1200 0    50   ~ 0
A_Out_3
Text Label 7550 1100 0    50   ~ 0
A_Out_2
Text Label 7550 1000 0    50   ~ 0
A_Out_1
Text Label 6550 1000 2    50   ~ 0
D_Out_A_2
Entry Wire Line
	6100 9950 6000 10050
Entry Wire Line
	6100 9850 6000 9950
Entry Wire Line
	6100 9750 6000 9850
Entry Wire Line
	6100 9650 6000 9750
Entry Wire Line
	6100 9550 6000 9650
Entry Wire Line
	6100 9450 6000 9550
Entry Wire Line
	6100 9350 6000 9450
Entry Wire Line
	6100 9250 6000 9350
Entry Wire Line
	6100 8500 6000 8600
Entry Wire Line
	6100 8400 6000 8500
Entry Wire Line
	6100 8300 6000 8400
Entry Wire Line
	6100 7900 6000 8000
Entry Wire Line
	6100 8000 6000 8100
Entry Wire Line
	6100 8100 6000 8200
Entry Wire Line
	6100 8200 6000 8300
Entry Wire Line
	6100 8600 6000 8700
Wire Wire Line
	6100 9950 6550 9950
Wire Wire Line
	6550 9850 6100 9850
Wire Wire Line
	6100 9750 6550 9750
Wire Wire Line
	6550 9650 6100 9650
Wire Wire Line
	6100 9550 6550 9550
Wire Wire Line
	6550 9450 6100 9450
Wire Wire Line
	6550 9350 6100 9350
Wire Wire Line
	6100 9250 6550 9250
Wire Wire Line
	6600 7800 6600 8700
Connection ~ 6600 9150
Wire Wire Line
	6600 10050 6700 10050
Wire Wire Line
	6600 9150 6600 10050
Wire Wire Line
	7400 9950 8000 9950
Wire Wire Line
	7400 9850 8000 9850
Wire Wire Line
	8000 9750 7400 9750
Wire Wire Line
	7400 9650 8000 9650
Wire Wire Line
	7400 9550 8000 9550
Wire Wire Line
	8000 9450 7400 9450
Wire Wire Line
	7400 9350 8000 9350
Wire Wire Line
	8000 9250 7400 9250
Entry Wire Line
	8000 9250 8100 9350
Wire Wire Line
	7500 9150 7500 7800
Wire Wire Line
	7400 9150 7500 9150
Connection ~ 6600 8700
Wire Wire Line
	6600 9150 6700 9150
Wire Wire Line
	6600 8700 6600 9150
$Comp
L Computer_Component_Library:74HC573 U7
U 1 1 633F94D6
P 7050 9600
F 0 "U7" H 7300 10200 50  0000 C CNN
F 1 "74HC573" H 7050 10224 50  0000 C CNN
F 2 "" H 7000 10050 50  0001 C CNN
F 3 "" H 7000 10050 50  0001 C CNN
	1    7050 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 7900 8000 7900
Wire Wire Line
	7400 8000 8000 8000
Wire Wire Line
	7400 8100 8000 8100
Wire Wire Line
	7400 8200 8000 8200
Wire Wire Line
	7400 8300 8000 8300
Wire Wire Line
	7400 8400 8000 8400
Wire Wire Line
	7400 8500 8000 8500
Wire Wire Line
	7400 8600 8000 8600
Entry Wire Line
	8000 7900 8100 8000
Entry Wire Line
	8000 8000 8100 8100
Entry Wire Line
	8000 8100 8100 8200
Entry Wire Line
	8000 8200 8100 8300
Entry Wire Line
	8000 8300 8100 8400
Entry Wire Line
	8000 8400 8100 8500
Entry Wire Line
	8000 8500 8100 8600
Entry Wire Line
	8000 8600 8100 8700
Entry Wire Line
	8000 9350 8100 9450
Entry Wire Line
	8000 9450 8100 9550
Entry Wire Line
	8000 9550 8100 9650
Entry Wire Line
	8000 9650 8100 9750
Entry Wire Line
	8000 9750 8100 9850
Entry Wire Line
	8000 9850 8100 9950
Entry Wire Line
	8000 9950 8100 10050
Text Label 7550 7900 0    50   ~ 0
D_Out_A_1
Text Label 7550 8000 0    50   ~ 0
D_Out_A_2
Text Label 7550 8100 0    50   ~ 0
D_Out_A_3
Text Label 7550 8200 0    50   ~ 0
D_Out_A_4
Text Label 7550 8300 0    50   ~ 0
D_Out_A_5
Text Label 7550 8400 0    50   ~ 0
D_Out_A_6
Text Label 7550 8500 0    50   ~ 0
D_Out_A_7
Text Label 7550 9250 0    50   ~ 0
D_Out_A_9
Text Label 7550 8600 0    50   ~ 0
D_Out_A_8
Text Label 7550 9350 0    50   ~ 0
D_Out_A_10
Text Label 7550 9450 0    50   ~ 0
D_Out_A_11
Text Label 7550 9550 0    50   ~ 0
D_Out_A_12
Text Label 7550 9650 0    50   ~ 0
D_Out_A_13
Text Label 7550 9750 0    50   ~ 0
D_Out_A_14
Text Label 7550 9850 0    50   ~ 0
D_Out_A_15
Text Label 7550 9950 0    50   ~ 0
D_Out_A_16
Text Label 6200 9950 0    50   ~ 0
D_In_16
Text Label 6200 9850 0    50   ~ 0
D_In_15
Text Label 6200 9750 0    50   ~ 0
D_In_14
Text Label 6200 9650 0    50   ~ 0
D_In_13
Text Label 6200 9550 0    50   ~ 0
D_In_12
Text Label 6200 9450 0    50   ~ 0
D_In_11
Text Label 6200 9350 0    50   ~ 0
D_In_10
Text Label 6200 9250 0    50   ~ 0
D_In_9
Text Label 6200 8600 0    50   ~ 0
D_In_8
Text Label 6200 8500 0    50   ~ 0
D_In_7
Text Label 6200 8400 0    50   ~ 0
D_In_6
Text Label 6200 8300 0    50   ~ 0
D_In_5
Text Label 6200 8200 0    50   ~ 0
D_In_4
Text Label 6200 8100 0    50   ~ 0
D_In_3
Text Label 6200 7900 0    50   ~ 0
D_In_1
Text Label 6200 8000 0    50   ~ 0
D_In_2
Wire Wire Line
	6700 8700 6600 8700
Wire Wire Line
	7400 7800 7500 7800
Wire Wire Line
	6700 7800 6600 7800
$Comp
L Computer_Component_Library:74HC573 U8
U 1 1 633F9516
P 7050 8250
F 0 "U8" H 7300 8850 50  0000 C CNN
F 1 "74HC573" H 7050 8874 50  0000 C CNN
F 2 "" H 7000 8700 50  0001 C CNN
F 3 "" H 7000 8700 50  0001 C CNN
	1    7050 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 1700 10500 1700
Wire Wire Line
	9900 1600 10500 1600
Wire Wire Line
	9900 1500 10500 1500
Wire Wire Line
	9900 1400 10500 1400
Wire Wire Line
	9900 1300 10500 1300
Wire Wire Line
	9900 1200 10500 1200
Wire Wire Line
	9900 1100 10500 1100
Wire Wire Line
	9900 1000 10500 1000
Wire Wire Line
	9900 2300 10500 2300
Wire Wire Line
	9900 2400 10500 2400
Wire Wire Line
	9900 2500 10500 2500
Wire Wire Line
	9900 2600 10500 2600
Wire Wire Line
	9900 2700 10500 2700
Wire Wire Line
	9900 2800 10500 2800
Wire Wire Line
	9900 2900 10500 2900
Wire Wire Line
	9900 3000 10500 3000
Wire Wire Line
	9900 4500 10500 4500
Wire Wire Line
	9900 4600 10500 4600
Wire Wire Line
	9900 4700 10500 4700
Wire Wire Line
	9900 4800 10500 4800
Wire Wire Line
	9900 4900 10500 4900
Wire Wire Line
	9900 5000 10500 5000
Wire Wire Line
	9900 5100 10500 5100
Wire Wire Line
	9900 5200 10500 5200
Wire Wire Line
	9900 5900 10500 5900
Wire Wire Line
	9900 5800 10500 5800
Wire Wire Line
	9900 6000 10500 6000
Wire Wire Line
	9900 6100 10500 6100
Wire Wire Line
	9900 6200 10500 6200
Wire Wire Line
	9900 6300 10500 6300
Wire Wire Line
	9900 6400 10500 6400
Wire Wire Line
	9900 6500 10500 6500
Text Label 10050 5200 0    50   ~ 0
B_Out_8
Text Label 10050 5100 0    50   ~ 0
B_Out_7
Text Label 10050 5000 0    50   ~ 0
B_Out_6
Text Label 10050 4900 0    50   ~ 0
B_Out_5
Text Label 10050 4800 0    50   ~ 0
B_Out_4
Text Label 10050 4700 0    50   ~ 0
B_Out_3
Text Label 10050 4600 0    50   ~ 0
B_Out_2
Text Label 10050 4500 0    50   ~ 0
B_Out_1
Text Label 10050 5800 0    50   ~ 0
B_Out_9
Text Label 10050 5900 0    50   ~ 0
B_Out_10
Text Label 10050 6000 0    50   ~ 0
B_Out_11
Text Label 10050 6100 0    50   ~ 0
B_Out_12
Text Label 10050 6200 0    50   ~ 0
B_Out_13
Text Label 10050 6300 0    50   ~ 0
B_Out_14
Text Label 10050 6400 0    50   ~ 0
B_Out_15
Text Label 10050 6500 0    50   ~ 0
B_Out_16
Text Label 10050 2400 0    50   ~ 0
A_Out_10
Text Label 10050 2500 0    50   ~ 0
A_Out_11
Text Label 10050 2600 0    50   ~ 0
A_Out_12
Text Label 10050 2700 0    50   ~ 0
A_Out_13
Text Label 10050 2800 0    50   ~ 0
A_Out_14
Text Label 10050 2900 0    50   ~ 0
A_Out_15
Text Label 10050 3000 0    50   ~ 0
A_Out_16
Entry Wire Line
	10500 5200 10600 5300
Entry Wire Line
	10500 5100 10600 5200
Entry Wire Line
	10500 5000 10600 5100
Entry Wire Line
	10500 4900 10600 5000
Entry Wire Line
	10500 4800 10600 4900
Entry Wire Line
	10500 4700 10600 4800
Entry Wire Line
	10500 4600 10600 4700
Entry Wire Line
	10500 4500 10600 4600
Entry Wire Line
	10500 5800 10600 5900
Entry Wire Line
	10500 5900 10600 6000
Entry Wire Line
	10500 6000 10600 6100
Entry Wire Line
	10500 6100 10600 6200
Entry Wire Line
	10500 6200 10600 6300
Entry Wire Line
	10500 6300 10600 6400
Entry Wire Line
	10500 6400 10600 6500
Entry Wire Line
	10500 6500 10600 6600
Entry Wire Line
	10500 2300 10600 2400
Entry Wire Line
	10500 1000 10600 1100
Entry Wire Line
	10500 1100 10600 1200
Entry Wire Line
	10500 1200 10600 1300
Entry Wire Line
	10500 1300 10600 1400
Entry Wire Line
	10500 1400 10600 1500
Entry Wire Line
	10500 1500 10600 1600
Entry Wire Line
	10500 1600 10600 1700
Entry Wire Line
	10500 1700 10600 1800
Entry Wire Line
	10500 2400 10600 2500
Entry Wire Line
	10500 2500 10600 2600
Entry Wire Line
	10500 2600 10600 2700
Entry Wire Line
	10500 2700 10600 2800
Entry Wire Line
	10500 2800 10600 2900
Entry Wire Line
	10500 2900 10600 3000
Entry Wire Line
	10500 3000 10600 3100
Wire Wire Line
	8600 8600 9200 8600
Wire Wire Line
	8600 8500 9200 8500
Wire Wire Line
	8600 8400 9200 8400
Wire Wire Line
	8600 8300 9200 8300
Wire Wire Line
	8600 8200 9200 8200
Wire Wire Line
	8600 8100 9200 8100
Wire Wire Line
	8600 8000 9200 8000
Wire Wire Line
	8600 7900 9200 7900
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 63451BC1
P 9550 1250
F 0 "U?" H 9800 1850 50  0000 C CNN
F 1 "74HC541" H 9550 1874 50  0000 C CNN
F 2 "" H 9500 1350 50  0001 C CNN
F 3 "" H 9500 1350 50  0001 C CNN
	1    9550 1250
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 63451BC7
P 9550 2550
F 0 "U?" H 9800 3150 50  0000 C CNN
F 1 "74HC541" H 9550 3174 50  0000 C CNN
F 2 "" H 9500 2650 50  0001 C CNN
F 3 "" H 9500 2650 50  0001 C CNN
	1    9550 2550
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 63451BCD
P 9550 6050
F 0 "U?" H 9800 6650 50  0000 C CNN
F 1 "74HC541" H 9550 6674 50  0000 C CNN
F 2 "" H 9500 6150 50  0001 C CNN
F 3 "" H 9500 6150 50  0001 C CNN
	1    9550 6050
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 63451BD3
P 9550 4750
F 0 "U?" H 9800 5350 50  0000 C CNN
F 1 "74HC541" H 9550 5374 50  0000 C CNN
F 2 "" H 9500 4850 50  0001 C CNN
F 3 "" H 9500 4850 50  0001 C CNN
	1    9550 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 6500 9200 6500
Wire Wire Line
	9200 5600 9100 5600
Connection ~ 9100 5600
Wire Wire Line
	9100 5600 9100 6500
Wire Wire Line
	9200 4300 9100 4300
Wire Wire Line
	9100 4300 9100 5200
Wire Wire Line
	9200 2100 9100 2100
Connection ~ 9100 2100
Wire Wire Line
	9200 800  9100 800 
Wire Wire Line
	9100 800  9100 1700
Wire Wire Line
	9200 1700 9100 1700
Connection ~ 9100 1700
Wire Wire Line
	9100 1700 9100 2100
Wire Wire Line
	9200 3000 9100 3000
Wire Wire Line
	9200 5200 9100 5200
Connection ~ 9100 5200
Wire Wire Line
	9100 5200 9100 5600
Wire Wire Line
	9900 5600 10000 5600
Wire Wire Line
	10000 800  9900 800 
Wire Wire Line
	10000 2100 9900 2100
Wire Wire Line
	9900 4300 10000 4300
Text Label 9050 2900 2    50   ~ 0
D_Out_B_16
Text Label 9050 2800 2    50   ~ 0
D_Out_B_15
Text Label 9050 2700 2    50   ~ 0
D_Out_B_14
Text Label 9050 2600 2    50   ~ 0
D_Out_B_13
Text Label 9050 2500 2    50   ~ 0
D_Out_B_12
Text Label 9050 2400 2    50   ~ 0
D_Out_B_11
Text Label 9050 2300 2    50   ~ 0
D_Out_B_10
Text Label 9050 1600 2    50   ~ 0
D_Out_B_8
Text Label 9050 2200 2    50   ~ 0
D_Out_B_9
Text Label 9050 1500 2    50   ~ 0
D_Out_B_7
Text Label 9050 1400 2    50   ~ 0
D_Out_B_6
Text Label 9050 1300 2    50   ~ 0
D_Out_B_5
Text Label 9050 1200 2    50   ~ 0
D_Out_B_4
Text Label 9050 1100 2    50   ~ 0
D_Out_B_3
Text Label 9050 900  2    50   ~ 0
D_Out_B_1
Entry Wire Line
	8600 2900 8500 3000
Entry Wire Line
	8600 2800 8500 2900
Entry Wire Line
	8600 2700 8500 2800
Entry Wire Line
	8600 2600 8500 2700
Entry Wire Line
	8600 2500 8500 2600
Entry Wire Line
	8600 2400 8500 2500
Entry Wire Line
	8600 2300 8500 2400
Entry Wire Line
	8600 1600 8500 1700
Entry Wire Line
	8600 1500 8500 1600
Entry Wire Line
	8600 1400 8500 1500
Entry Wire Line
	8600 1300 8500 1400
Entry Wire Line
	8600 1200 8500 1300
Entry Wire Line
	8600 1100 8500 1200
Entry Wire Line
	8600 1000 8500 1100
Entry Wire Line
	8600 900  8500 1000
Wire Wire Line
	9200 1600 8600 1600
Wire Wire Line
	9200 1500 8600 1500
Wire Wire Line
	9200 1400 8600 1400
Wire Wire Line
	9200 1300 8600 1300
Wire Wire Line
	9200 1200 8600 1200
Wire Wire Line
	9200 1100 8600 1100
Wire Wire Line
	9200 1000 8600 1000
Wire Wire Line
	9200 900  8600 900 
Entry Wire Line
	8600 2200 8500 2300
Wire Wire Line
	8600 2200 9200 2200
Wire Wire Line
	9200 2300 8600 2300
Wire Wire Line
	8600 2400 9200 2400
Wire Wire Line
	9200 2500 8600 2500
Wire Wire Line
	9200 2600 8600 2600
Wire Wire Line
	8600 2700 9200 2700
Wire Wire Line
	9200 2800 8600 2800
Wire Wire Line
	9200 2900 8600 2900
Text Label 9050 6400 2    50   ~ 0
D_Out_B_16
Text Label 9050 6300 2    50   ~ 0
D_Out_B_15
Text Label 9050 6200 2    50   ~ 0
D_Out_B_14
Text Label 9050 6100 2    50   ~ 0
D_Out_B_13
Text Label 9050 6000 2    50   ~ 0
D_Out_B_12
Text Label 9050 5900 2    50   ~ 0
D_Out_B_11
Text Label 9050 5800 2    50   ~ 0
D_Out_B_10
Text Label 9050 5100 2    50   ~ 0
D_Out_B_8
Text Label 9050 5700 2    50   ~ 0
D_Out_B_9
Text Label 9050 5000 2    50   ~ 0
D_Out_B_7
Text Label 9050 4900 2    50   ~ 0
D_Out_B_6
Text Label 9050 4800 2    50   ~ 0
D_Out_B_5
Text Label 9050 4700 2    50   ~ 0
D_Out_B_4
Text Label 9050 4600 2    50   ~ 0
D_Out_B_3
Text Label 9050 4500 2    50   ~ 0
D_Out_B_2
Text Label 9050 4400 2    50   ~ 0
D_Out_B_1
Entry Wire Line
	8600 6400 8500 6500
Entry Wire Line
	8600 6300 8500 6400
Entry Wire Line
	8600 6200 8500 6300
Entry Wire Line
	8600 6100 8500 6200
Entry Wire Line
	8600 6000 8500 6100
Entry Wire Line
	8600 5900 8500 6000
Entry Wire Line
	8600 5800 8500 5900
Entry Wire Line
	8600 5100 8500 5200
Entry Wire Line
	8600 5000 8500 5100
Entry Wire Line
	8600 4900 8500 5000
Entry Wire Line
	8600 4800 8500 4900
Entry Wire Line
	8600 4700 8500 4800
Entry Wire Line
	8600 4600 8500 4700
Entry Wire Line
	8600 4500 8500 4600
Entry Wire Line
	8600 4400 8500 4500
Wire Wire Line
	9200 5100 8600 5100
Wire Wire Line
	9200 5000 8600 5000
Wire Wire Line
	9200 4900 8600 4900
Wire Wire Line
	9200 4800 8600 4800
Wire Wire Line
	9200 4700 8600 4700
Wire Wire Line
	9200 4600 8600 4600
Wire Wire Line
	9200 4500 8600 4500
Wire Wire Line
	9200 4400 8600 4400
Entry Wire Line
	8600 5700 8500 5800
Wire Wire Line
	8600 5700 9200 5700
Wire Wire Line
	9200 5800 8600 5800
Wire Wire Line
	8600 5900 9200 5900
Wire Wire Line
	9200 6000 8600 6000
Wire Wire Line
	9200 6100 8600 6100
Wire Wire Line
	8600 6200 9200 6200
Wire Wire Line
	9200 6300 8600 6300
Wire Wire Line
	9200 6400 8600 6400
Text Label 10050 1700 0    50   ~ 0
A_Out_8
Text Label 10050 2300 0    50   ~ 0
A_Out_9
Text Label 10050 1600 0    50   ~ 0
A_Out_7
Text Label 10050 1500 0    50   ~ 0
A_Out_6
Text Label 10050 1400 0    50   ~ 0
A_Out_5
Text Label 10050 1300 0    50   ~ 0
A_Out_4
Text Label 10050 1200 0    50   ~ 0
A_Out_3
Text Label 10050 1100 0    50   ~ 0
A_Out_2
Text Label 10050 1000 0    50   ~ 0
A_Out_1
Text Label 9050 1000 2    50   ~ 0
D_Out_B_2
Entry Wire Line
	8600 9950 8500 10050
Entry Wire Line
	8600 9850 8500 9950
Entry Wire Line
	8600 9750 8500 9850
Entry Wire Line
	8600 9650 8500 9750
Entry Wire Line
	8600 9550 8500 9650
Entry Wire Line
	8600 9450 8500 9550
Entry Wire Line
	8600 9350 8500 9450
Entry Wire Line
	8600 9250 8500 9350
Entry Wire Line
	8600 8500 8500 8600
Entry Wire Line
	8600 8400 8500 8500
Entry Wire Line
	8600 8300 8500 8400
Entry Wire Line
	8600 7900 8500 8000
Entry Wire Line
	8600 8000 8500 8100
Entry Wire Line
	8600 8100 8500 8200
Entry Wire Line
	8600 8200 8500 8300
Entry Wire Line
	8600 8600 8500 8700
Wire Wire Line
	8600 9950 9050 9950
Wire Wire Line
	9050 9850 8600 9850
Wire Wire Line
	8600 9750 9050 9750
Wire Wire Line
	9050 9650 8600 9650
Wire Wire Line
	8600 9550 9050 9550
Wire Wire Line
	9050 9450 8600 9450
Wire Wire Line
	9050 9350 8600 9350
Wire Wire Line
	8600 9250 9050 9250
Wire Wire Line
	9100 7800 9100 8700
Connection ~ 9100 9150
Wire Wire Line
	9100 10050 9200 10050
Wire Wire Line
	9100 9150 9100 10050
Wire Wire Line
	9900 9950 10500 9950
Wire Wire Line
	9900 9850 10500 9850
Wire Wire Line
	10500 9750 9900 9750
Wire Wire Line
	9900 9650 10500 9650
Wire Wire Line
	9900 9550 10500 9550
Wire Wire Line
	10500 9450 9900 9450
Wire Wire Line
	9900 9350 10500 9350
Wire Wire Line
	10500 9250 9900 9250
Entry Wire Line
	10500 9250 10600 9350
Wire Wire Line
	10000 9150 10000 7800
Wire Wire Line
	9900 9150 10000 9150
Connection ~ 9100 8700
Wire Wire Line
	9100 9150 9200 9150
Wire Wire Line
	9100 8700 9100 9150
$Comp
L Computer_Component_Library:74HC573 U9
U 1 1 63451C87
P 9550 9600
F 0 "U9" H 9800 10200 50  0000 C CNN
F 1 "74HC573" H 9550 10224 50  0000 C CNN
F 2 "" H 9500 10050 50  0001 C CNN
F 3 "" H 9500 10050 50  0001 C CNN
	1    9550 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 7900 10500 7900
Wire Wire Line
	9900 8000 10500 8000
Wire Wire Line
	9900 8100 10500 8100
Wire Wire Line
	9900 8200 10500 8200
Wire Wire Line
	9900 8300 10500 8300
Wire Wire Line
	9900 8400 10500 8400
Wire Wire Line
	9900 8500 10500 8500
Wire Wire Line
	9900 8600 10500 8600
Entry Wire Line
	10500 7900 10600 8000
Entry Wire Line
	10500 8000 10600 8100
Entry Wire Line
	10500 8100 10600 8200
Entry Wire Line
	10500 8200 10600 8300
Entry Wire Line
	10500 8300 10600 8400
Entry Wire Line
	10500 8400 10600 8500
Entry Wire Line
	10500 8500 10600 8600
Entry Wire Line
	10500 8600 10600 8700
Entry Wire Line
	10500 9350 10600 9450
Entry Wire Line
	10500 9450 10600 9550
Entry Wire Line
	10500 9550 10600 9650
Entry Wire Line
	10500 9650 10600 9750
Entry Wire Line
	10500 9750 10600 9850
Entry Wire Line
	10500 9850 10600 9950
Entry Wire Line
	10500 9950 10600 10050
Text Label 10050 7900 0    50   ~ 0
D_Out_B_1
Text Label 10050 8000 0    50   ~ 0
D_Out_B_2
Text Label 10050 8100 0    50   ~ 0
D_Out_B_3
Text Label 10050 8200 0    50   ~ 0
D_Out_B_4
Text Label 10050 8300 0    50   ~ 0
D_Out_B_5
Text Label 10050 8400 0    50   ~ 0
D_Out_B_6
Text Label 10050 8500 0    50   ~ 0
D_Out_B_7
Text Label 10050 9250 0    50   ~ 0
D_Out_B_9
Text Label 10050 8600 0    50   ~ 0
D_Out_B_8
Text Label 10050 9350 0    50   ~ 0
D_Out_B_10
Text Label 10050 9450 0    50   ~ 0
D_Out_B_11
Text Label 10050 9550 0    50   ~ 0
D_Out_B_12
Text Label 10050 9650 0    50   ~ 0
D_Out_B_13
Text Label 10050 9750 0    50   ~ 0
D_Out_B_14
Text Label 10050 9850 0    50   ~ 0
D_Out_B_15
Text Label 10050 9950 0    50   ~ 0
D_Out_B_16
Text Label 8700 9950 0    50   ~ 0
D_In_16
Text Label 8700 9850 0    50   ~ 0
D_In_15
Text Label 8700 9750 0    50   ~ 0
D_In_14
Text Label 8700 9650 0    50   ~ 0
D_In_13
Text Label 8700 9550 0    50   ~ 0
D_In_12
Text Label 8700 9450 0    50   ~ 0
D_In_11
Text Label 8700 9350 0    50   ~ 0
D_In_10
Text Label 8700 9250 0    50   ~ 0
D_In_9
Text Label 8700 8600 0    50   ~ 0
D_In_8
Text Label 8700 8500 0    50   ~ 0
D_In_7
Text Label 8700 8400 0    50   ~ 0
D_In_6
Text Label 8700 8300 0    50   ~ 0
D_In_5
Text Label 8700 8200 0    50   ~ 0
D_In_4
Text Label 8700 8100 0    50   ~ 0
D_In_3
Text Label 8700 7900 0    50   ~ 0
D_In_1
Text Label 8700 8000 0    50   ~ 0
D_In_2
Wire Wire Line
	9200 8700 9100 8700
Wire Wire Line
	9900 7800 10000 7800
Wire Wire Line
	9200 7800 9100 7800
$Comp
L Computer_Component_Library:74HC573 U10
U 1 1 63451CC7
P 9550 8250
F 0 "U10" H 9800 8850 50  0000 C CNN
F 1 "74HC573" H 9550 8874 50  0000 C CNN
F 2 "" H 9500 8700 50  0001 C CNN
F 3 "" H 9500 8700 50  0001 C CNN
	1    9550 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 1700 13000 1700
Wire Wire Line
	12400 1600 13000 1600
Wire Wire Line
	12400 1500 13000 1500
Wire Wire Line
	12400 1400 13000 1400
Wire Wire Line
	12400 1300 13000 1300
Wire Wire Line
	12400 1200 13000 1200
Wire Wire Line
	12500 2100 12500 800 
Wire Wire Line
	12400 1100 13000 1100
Wire Wire Line
	12400 1000 13000 1000
Wire Wire Line
	12400 2300 13000 2300
Wire Wire Line
	12400 2400 13000 2400
Wire Wire Line
	12400 2500 13000 2500
Wire Wire Line
	12400 2600 13000 2600
Wire Wire Line
	12400 2700 13000 2700
Wire Wire Line
	12400 2800 13000 2800
Wire Wire Line
	12400 2900 13000 2900
Wire Wire Line
	12400 3000 13000 3000
Wire Wire Line
	12400 4500 13000 4500
Wire Wire Line
	12400 4600 13000 4600
Wire Wire Line
	12400 4700 13000 4700
Wire Wire Line
	12400 4800 13000 4800
Wire Wire Line
	12400 4900 13000 4900
Wire Wire Line
	12400 5000 13000 5000
Wire Wire Line
	12400 5100 13000 5100
Wire Wire Line
	12400 5200 13000 5200
Wire Wire Line
	12400 5900 13000 5900
Wire Wire Line
	12400 5800 13000 5800
Wire Wire Line
	12400 6000 13000 6000
Wire Wire Line
	12400 6100 13000 6100
Wire Wire Line
	12400 6200 13000 6200
Wire Wire Line
	12400 6300 13000 6300
Wire Wire Line
	12400 6400 13000 6400
Wire Wire Line
	12400 6500 13000 6500
Text Label 12550 5200 0    50   ~ 0
B_Out_8
Text Label 12550 5100 0    50   ~ 0
B_Out_7
Text Label 12550 5000 0    50   ~ 0
B_Out_6
Text Label 12550 4900 0    50   ~ 0
B_Out_5
Text Label 12550 4800 0    50   ~ 0
B_Out_4
Text Label 12550 4700 0    50   ~ 0
B_Out_3
Text Label 12550 4600 0    50   ~ 0
B_Out_2
Text Label 12550 4500 0    50   ~ 0
B_Out_1
Text Label 12550 5800 0    50   ~ 0
B_Out_9
Text Label 12550 5900 0    50   ~ 0
B_Out_10
Text Label 12550 6000 0    50   ~ 0
B_Out_11
Text Label 12550 6100 0    50   ~ 0
B_Out_12
Text Label 12550 6200 0    50   ~ 0
B_Out_13
Text Label 12550 6300 0    50   ~ 0
B_Out_14
Text Label 12550 6400 0    50   ~ 0
B_Out_15
Text Label 12550 6500 0    50   ~ 0
B_Out_16
Text Label 12550 2400 0    50   ~ 0
A_Out_10
Text Label 12550 2500 0    50   ~ 0
A_Out_11
Text Label 12550 2600 0    50   ~ 0
A_Out_12
Text Label 12550 2700 0    50   ~ 0
A_Out_13
Text Label 12550 2800 0    50   ~ 0
A_Out_14
Text Label 12550 2900 0    50   ~ 0
A_Out_15
Text Label 12550 3000 0    50   ~ 0
A_Out_16
Entry Wire Line
	13000 5200 13100 5300
Entry Wire Line
	13000 5100 13100 5200
Entry Wire Line
	13000 5000 13100 5100
Entry Wire Line
	13000 4900 13100 5000
Entry Wire Line
	13000 4800 13100 4900
Entry Wire Line
	13000 4700 13100 4800
Entry Wire Line
	13000 4600 13100 4700
Entry Wire Line
	13000 4500 13100 4600
Entry Wire Line
	13000 5800 13100 5900
Entry Wire Line
	13000 5900 13100 6000
Entry Wire Line
	13000 6000 13100 6100
Entry Wire Line
	13000 6100 13100 6200
Entry Wire Line
	13000 6200 13100 6300
Entry Wire Line
	13000 6300 13100 6400
Entry Wire Line
	13000 6400 13100 6500
Entry Wire Line
	13000 6500 13100 6600
Entry Wire Line
	13000 2300 13100 2400
Entry Wire Line
	13000 1000 13100 1100
Entry Wire Line
	13000 1100 13100 1200
Entry Wire Line
	13000 1200 13100 1300
Entry Wire Line
	13000 1300 13100 1400
Entry Wire Line
	13000 1400 13100 1500
Entry Wire Line
	13000 1500 13100 1600
Entry Wire Line
	13000 1600 13100 1700
Entry Wire Line
	13000 1700 13100 1800
Entry Wire Line
	13000 2400 13100 2500
Entry Wire Line
	13000 2500 13100 2600
Entry Wire Line
	13000 2600 13100 2700
Entry Wire Line
	13000 2700 13100 2800
Entry Wire Line
	13000 2800 13100 2900
Entry Wire Line
	13000 2900 13100 3000
Entry Wire Line
	13000 3000 13100 3100
Wire Wire Line
	12500 5600 12500 4300
Wire Wire Line
	11100 8600 11700 8600
Wire Wire Line
	11100 8500 11700 8500
Wire Wire Line
	11100 8400 11700 8400
Wire Wire Line
	11100 8300 11700 8300
Wire Wire Line
	11100 8200 11700 8200
Wire Wire Line
	11100 8100 11700 8100
Wire Wire Line
	11100 8000 11700 8000
Wire Wire Line
	11100 7900 11700 7900
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 634D3593
P 12050 1250
F 0 "U?" H 12300 1850 50  0000 C CNN
F 1 "74HC541" H 12050 1874 50  0000 C CNN
F 2 "" H 12000 1350 50  0001 C CNN
F 3 "" H 12000 1350 50  0001 C CNN
	1    12050 1250
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 634D3599
P 12050 2550
F 0 "U?" H 12300 3150 50  0000 C CNN
F 1 "74HC541" H 12050 3174 50  0000 C CNN
F 2 "" H 12000 2650 50  0001 C CNN
F 3 "" H 12000 2650 50  0001 C CNN
	1    12050 2550
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 634D359F
P 12050 6050
F 0 "U?" H 12300 6650 50  0000 C CNN
F 1 "74HC541" H 12050 6674 50  0000 C CNN
F 2 "" H 12000 6150 50  0001 C CNN
F 3 "" H 12000 6150 50  0001 C CNN
	1    12050 6050
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 634D35A5
P 12050 4750
F 0 "U?" H 12300 5350 50  0000 C CNN
F 1 "74HC541" H 12050 5374 50  0000 C CNN
F 2 "" H 12000 4850 50  0001 C CNN
F 3 "" H 12000 4850 50  0001 C CNN
	1    12050 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	11600 6500 11700 6500
Wire Wire Line
	11700 5600 11600 5600
Connection ~ 11600 5600
Wire Wire Line
	11600 5600 11600 6500
Wire Wire Line
	11700 4300 11600 4300
Wire Wire Line
	11700 2100 11600 2100
Connection ~ 11600 2100
Wire Wire Line
	11600 2100 11600 3000
Wire Wire Line
	11700 800  11600 800 
Wire Wire Line
	11600 800  11600 1700
Wire Wire Line
	11700 1700 11600 1700
Connection ~ 11600 1700
Wire Wire Line
	11600 1700 11600 2100
Wire Wire Line
	11700 3000 11600 3000
Wire Wire Line
	11700 5200 11600 5200
Connection ~ 11600 5200
Wire Wire Line
	11600 5200 11600 5600
Wire Wire Line
	12400 5600 12500 5600
Wire Wire Line
	12500 800  12400 800 
Wire Wire Line
	12500 2100 12400 2100
Wire Wire Line
	12400 4300 12500 4300
Text Label 11550 2900 2    50   ~ 0
D_Out_C_16
Text Label 11550 2800 2    50   ~ 0
D_Out_C_15
Text Label 11550 2700 2    50   ~ 0
D_Out_C_14
Text Label 11550 2600 2    50   ~ 0
D_Out_C_13
Text Label 11550 2500 2    50   ~ 0
D_Out_C_12
Text Label 11550 2400 2    50   ~ 0
D_Out_C_11
Text Label 11550 2300 2    50   ~ 0
D_Out_C_10
Text Label 11550 1600 2    50   ~ 0
D_Out_C_8
Text Label 11550 2200 2    50   ~ 0
D_Out_C_9
Text Label 11550 1500 2    50   ~ 0
D_Out_C_7
Text Label 11550 1400 2    50   ~ 0
D_Out_C_6
Text Label 11550 1300 2    50   ~ 0
D_Out_C_5
Text Label 11550 1200 2    50   ~ 0
D_Out_C_4
Text Label 11550 1100 2    50   ~ 0
D_Out_C_3
Text Label 11550 900  2    50   ~ 0
D_Out_C_1
Entry Wire Line
	11100 2900 11000 3000
Entry Wire Line
	11100 2800 11000 2900
Entry Wire Line
	11100 2700 11000 2800
Entry Wire Line
	11100 2600 11000 2700
Entry Wire Line
	11100 2500 11000 2600
Entry Wire Line
	11100 2400 11000 2500
Entry Wire Line
	11100 2300 11000 2400
Entry Wire Line
	11100 1600 11000 1700
Entry Wire Line
	11100 1500 11000 1600
Entry Wire Line
	11100 1400 11000 1500
Entry Wire Line
	11100 1300 11000 1400
Entry Wire Line
	11100 1200 11000 1300
Entry Wire Line
	11100 1100 11000 1200
Entry Wire Line
	11100 1000 11000 1100
Entry Wire Line
	11100 900  11000 1000
Wire Wire Line
	11700 1600 11100 1600
Wire Wire Line
	11700 1500 11100 1500
Wire Wire Line
	11700 1400 11100 1400
Wire Wire Line
	11700 1300 11100 1300
Wire Wire Line
	11700 1200 11100 1200
Wire Wire Line
	11700 1100 11100 1100
Wire Wire Line
	11700 1000 11100 1000
Wire Wire Line
	11700 900  11100 900 
Entry Wire Line
	11100 2200 11000 2300
Wire Wire Line
	11100 2200 11700 2200
Wire Wire Line
	11700 2300 11100 2300
Wire Wire Line
	11100 2400 11700 2400
Wire Wire Line
	11700 2500 11100 2500
Wire Wire Line
	11700 2600 11100 2600
Wire Wire Line
	11100 2700 11700 2700
Wire Wire Line
	11700 2800 11100 2800
Wire Wire Line
	11700 2900 11100 2900
Text Label 11550 6400 2    50   ~ 0
D_Out_C_16
Text Label 11550 6300 2    50   ~ 0
D_Out_C_15
Text Label 11550 6200 2    50   ~ 0
D_Out_C_14
Text Label 11550 6100 2    50   ~ 0
D_Out_C_13
Text Label 11550 6000 2    50   ~ 0
D_Out_C_12
Text Label 11550 5900 2    50   ~ 0
D_Out_C_11
Text Label 11550 5800 2    50   ~ 0
D_Out_C_10
Text Label 11550 5100 2    50   ~ 0
D_Out_C_8
Text Label 11550 5700 2    50   ~ 0
D_Out_C_9
Text Label 11550 5000 2    50   ~ 0
D_Out_C_7
Text Label 11550 4900 2    50   ~ 0
D_Out_C_6
Text Label 11550 4800 2    50   ~ 0
D_Out_C_5
Text Label 11550 4700 2    50   ~ 0
D_Out_C_4
Text Label 11550 4600 2    50   ~ 0
D_Out_C_3
Text Label 11550 4500 2    50   ~ 0
D_Out_C_2
Text Label 11550 4400 2    50   ~ 0
D_Out_C_1
Entry Wire Line
	11100 6400 11000 6500
Entry Wire Line
	11100 6300 11000 6400
Entry Wire Line
	11100 6200 11000 6300
Entry Wire Line
	11100 6100 11000 6200
Entry Wire Line
	11100 6000 11000 6100
Entry Wire Line
	11100 5900 11000 6000
Entry Wire Line
	11100 5800 11000 5900
Entry Wire Line
	11100 5100 11000 5200
Entry Wire Line
	11100 5000 11000 5100
Entry Wire Line
	11100 4900 11000 5000
Entry Wire Line
	11100 4800 11000 4900
Entry Wire Line
	11100 4700 11000 4800
Entry Wire Line
	11100 4600 11000 4700
Entry Wire Line
	11100 4500 11000 4600
Entry Wire Line
	11100 4400 11000 4500
Wire Wire Line
	11700 5100 11100 5100
Wire Wire Line
	11700 5000 11100 5000
Wire Wire Line
	11700 4900 11100 4900
Wire Wire Line
	11700 4800 11100 4800
Wire Wire Line
	11700 4700 11100 4700
Wire Wire Line
	11700 4600 11100 4600
Wire Wire Line
	11700 4500 11100 4500
Wire Wire Line
	11700 4400 11100 4400
Entry Wire Line
	11100 5700 11000 5800
Wire Wire Line
	11100 5700 11700 5700
Wire Wire Line
	11700 5800 11100 5800
Wire Wire Line
	11100 5900 11700 5900
Wire Wire Line
	11700 6000 11100 6000
Wire Wire Line
	11700 6100 11100 6100
Wire Wire Line
	11100 6200 11700 6200
Wire Wire Line
	11700 6300 11100 6300
Wire Wire Line
	11700 6400 11100 6400
Text Label 12550 1700 0    50   ~ 0
A_Out_8
Text Label 12550 2300 0    50   ~ 0
A_Out_9
Text Label 12550 1600 0    50   ~ 0
A_Out_7
Text Label 12550 1500 0    50   ~ 0
A_Out_6
Text Label 12550 1400 0    50   ~ 0
A_Out_5
Text Label 12550 1300 0    50   ~ 0
A_Out_4
Text Label 12550 1200 0    50   ~ 0
A_Out_3
Text Label 12550 1100 0    50   ~ 0
A_Out_2
Text Label 12550 1000 0    50   ~ 0
A_Out_1
Text Label 11550 1000 2    50   ~ 0
D_Out_C_2
Entry Wire Line
	11100 9950 11000 10050
Entry Wire Line
	11100 9850 11000 9950
Entry Wire Line
	11100 9750 11000 9850
Entry Wire Line
	11100 9650 11000 9750
Entry Wire Line
	11100 9550 11000 9650
Entry Wire Line
	11100 9450 11000 9550
Entry Wire Line
	11100 9350 11000 9450
Entry Wire Line
	11100 9250 11000 9350
Entry Wire Line
	11100 8500 11000 8600
Entry Wire Line
	11100 8400 11000 8500
Entry Wire Line
	11100 8300 11000 8400
Entry Wire Line
	11100 7900 11000 8000
Entry Wire Line
	11100 8000 11000 8100
Entry Wire Line
	11100 8100 11000 8200
Entry Wire Line
	11100 8200 11000 8300
Entry Wire Line
	11100 8600 11000 8700
Wire Wire Line
	11100 9950 11550 9950
Wire Wire Line
	11550 9850 11100 9850
Wire Wire Line
	11100 9750 11550 9750
Wire Wire Line
	11550 9650 11100 9650
Wire Wire Line
	11100 9550 11550 9550
Wire Wire Line
	11550 9450 11100 9450
Wire Wire Line
	11550 9350 11100 9350
Wire Wire Line
	11100 9250 11550 9250
Wire Wire Line
	11600 7800 11600 8700
Connection ~ 11600 9150
Wire Wire Line
	11600 10050 11700 10050
Wire Wire Line
	11600 9150 11600 10050
Wire Wire Line
	12400 9950 13000 9950
Wire Wire Line
	12400 9850 13000 9850
Wire Wire Line
	13000 9750 12400 9750
Wire Wire Line
	12400 9650 13000 9650
Wire Wire Line
	12400 9550 13000 9550
Wire Wire Line
	13000 9450 12400 9450
Wire Wire Line
	12400 9350 13000 9350
Wire Wire Line
	13000 9250 12400 9250
Entry Wire Line
	13000 9250 13100 9350
Wire Wire Line
	12500 9150 12500 7800
Wire Wire Line
	12400 9150 12500 9150
Connection ~ 11600 8700
Wire Wire Line
	11600 9150 11700 9150
Wire Wire Line
	11600 8700 11600 9150
$Comp
L Computer_Component_Library:74HC573 U11
U 1 1 634D3659
P 12050 9600
F 0 "U11" H 12300 10200 50  0000 C CNN
F 1 "74HC573" H 12050 10224 50  0000 C CNN
F 2 "" H 12000 10050 50  0001 C CNN
F 3 "" H 12000 10050 50  0001 C CNN
	1    12050 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 7900 13000 7900
Wire Wire Line
	12400 8000 13000 8000
Wire Wire Line
	12400 8100 13000 8100
Wire Wire Line
	12400 8200 13000 8200
Wire Wire Line
	12400 8300 13000 8300
Wire Wire Line
	12400 8400 13000 8400
Wire Wire Line
	12400 8500 13000 8500
Wire Wire Line
	12400 8600 13000 8600
Entry Wire Line
	13000 7900 13100 8000
Entry Wire Line
	13000 8000 13100 8100
Entry Wire Line
	13000 8100 13100 8200
Entry Wire Line
	13000 8200 13100 8300
Entry Wire Line
	13000 8300 13100 8400
Entry Wire Line
	13000 8400 13100 8500
Entry Wire Line
	13000 8500 13100 8600
Entry Wire Line
	13000 8600 13100 8700
Entry Wire Line
	13000 9350 13100 9450
Entry Wire Line
	13000 9450 13100 9550
Entry Wire Line
	13000 9550 13100 9650
Entry Wire Line
	13000 9650 13100 9750
Entry Wire Line
	13000 9750 13100 9850
Entry Wire Line
	13000 9850 13100 9950
Entry Wire Line
	13000 9950 13100 10050
Text Label 12550 7900 0    50   ~ 0
D_Out_C_1
Text Label 12550 8000 0    50   ~ 0
D_Out_C_2
Text Label 12550 8100 0    50   ~ 0
D_Out_C_3
Text Label 12550 8200 0    50   ~ 0
D_Out_C_4
Text Label 12550 8300 0    50   ~ 0
D_Out_C_5
Text Label 12550 8400 0    50   ~ 0
D_Out_C_6
Text Label 12550 8500 0    50   ~ 0
D_Out_C_7
Text Label 12550 9250 0    50   ~ 0
D_Out_C_9
Text Label 12550 8600 0    50   ~ 0
D_Out_C_8
Text Label 12550 9350 0    50   ~ 0
D_Out_C_10
Text Label 12550 9450 0    50   ~ 0
D_Out_C_11
Text Label 12550 9550 0    50   ~ 0
D_Out_C_12
Text Label 12550 9650 0    50   ~ 0
D_Out_C_13
Text Label 12550 9750 0    50   ~ 0
D_Out_C_14
Text Label 12550 9850 0    50   ~ 0
D_Out_C_15
Text Label 12550 9950 0    50   ~ 0
D_Out_C_16
Text Label 11200 9950 0    50   ~ 0
D_In_16
Text Label 11200 9850 0    50   ~ 0
D_In_15
Text Label 11200 9750 0    50   ~ 0
D_In_14
Text Label 11200 9650 0    50   ~ 0
D_In_13
Text Label 11200 9550 0    50   ~ 0
D_In_12
Text Label 11200 9450 0    50   ~ 0
D_In_11
Text Label 11200 9350 0    50   ~ 0
D_In_10
Text Label 11200 9250 0    50   ~ 0
D_In_9
Text Label 11200 8600 0    50   ~ 0
D_In_8
Text Label 11200 8500 0    50   ~ 0
D_In_7
Text Label 11200 8400 0    50   ~ 0
D_In_6
Text Label 11200 8300 0    50   ~ 0
D_In_5
Text Label 11200 8200 0    50   ~ 0
D_In_4
Text Label 11200 8100 0    50   ~ 0
D_In_3
Text Label 11200 7900 0    50   ~ 0
D_In_1
Text Label 11200 8000 0    50   ~ 0
D_In_2
Wire Wire Line
	11700 8700 11600 8700
Wire Wire Line
	12400 7800 12500 7800
Wire Wire Line
	11700 7800 11600 7800
$Comp
L Computer_Component_Library:74HC573 U12
U 1 1 634D3699
P 12050 8250
F 0 "U12" H 12300 8850 50  0000 C CNN
F 1 "74HC573" H 12050 8874 50  0000 C CNN
F 2 "" H 12000 8700 50  0001 C CNN
F 3 "" H 12000 8700 50  0001 C CNN
	1    12050 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	14900 1700 15500 1700
Wire Wire Line
	14900 1600 15500 1600
Wire Wire Line
	14900 1500 15500 1500
Wire Wire Line
	14900 1400 15500 1400
Wire Wire Line
	14900 1300 15500 1300
Wire Wire Line
	14900 1200 15500 1200
Wire Wire Line
	14900 1100 15500 1100
Wire Wire Line
	14900 1000 15500 1000
Wire Wire Line
	14900 2300 15500 2300
Wire Wire Line
	14900 2400 15500 2400
Wire Wire Line
	14900 2500 15500 2500
Wire Wire Line
	14900 2600 15500 2600
Wire Wire Line
	14900 2700 15500 2700
Wire Wire Line
	14900 2800 15500 2800
Wire Wire Line
	14900 2900 15500 2900
Wire Wire Line
	14900 3000 15500 3000
Wire Wire Line
	14900 4500 15500 4500
Wire Wire Line
	14900 4600 15500 4600
Wire Wire Line
	14900 4700 15500 4700
Wire Wire Line
	14900 4800 15500 4800
Wire Wire Line
	14900 4900 15500 4900
Wire Wire Line
	14900 5000 15500 5000
Wire Wire Line
	14900 5100 15500 5100
Wire Wire Line
	14900 5200 15500 5200
Wire Wire Line
	14900 5900 15500 5900
Wire Wire Line
	14900 5800 15500 5800
Wire Wire Line
	14900 6000 15500 6000
Wire Wire Line
	14900 6100 15500 6100
Wire Wire Line
	14900 6200 15500 6200
Wire Wire Line
	14900 6300 15500 6300
Wire Wire Line
	14900 6400 15500 6400
Wire Wire Line
	14900 6500 15500 6500
Text Label 15050 5200 0    50   ~ 0
B_Out_8
Text Label 15050 5100 0    50   ~ 0
B_Out_7
Text Label 15050 5000 0    50   ~ 0
B_Out_6
Text Label 15050 4900 0    50   ~ 0
B_Out_5
Text Label 15050 4800 0    50   ~ 0
B_Out_4
Text Label 15050 4700 0    50   ~ 0
B_Out_3
Text Label 15050 4600 0    50   ~ 0
B_Out_2
Text Label 15050 4500 0    50   ~ 0
B_Out_1
Text Label 15050 5800 0    50   ~ 0
B_Out_9
Text Label 15050 5900 0    50   ~ 0
B_Out_10
Text Label 15050 6000 0    50   ~ 0
B_Out_11
Text Label 15050 6100 0    50   ~ 0
B_Out_12
Text Label 15050 6200 0    50   ~ 0
B_Out_13
Text Label 15050 6300 0    50   ~ 0
B_Out_14
Text Label 15050 6400 0    50   ~ 0
B_Out_15
Text Label 15050 6500 0    50   ~ 0
B_Out_16
Text Label 15050 2400 0    50   ~ 0
A_Out_10
Text Label 15050 2500 0    50   ~ 0
A_Out_11
Text Label 15050 2600 0    50   ~ 0
A_Out_12
Text Label 15050 2700 0    50   ~ 0
A_Out_13
Text Label 15050 2800 0    50   ~ 0
A_Out_14
Text Label 15050 2900 0    50   ~ 0
A_Out_15
Text Label 15050 3000 0    50   ~ 0
A_Out_16
Entry Wire Line
	15500 5200 15600 5300
Entry Wire Line
	15500 5100 15600 5200
Entry Wire Line
	15500 5000 15600 5100
Entry Wire Line
	15500 4900 15600 5000
Entry Wire Line
	15500 4800 15600 4900
Entry Wire Line
	15500 4700 15600 4800
Entry Wire Line
	15500 4600 15600 4700
Entry Wire Line
	15500 4500 15600 4600
Entry Wire Line
	15500 5800 15600 5900
Entry Wire Line
	15500 5900 15600 6000
Entry Wire Line
	15500 6000 15600 6100
Entry Wire Line
	15500 6100 15600 6200
Entry Wire Line
	15500 6200 15600 6300
Entry Wire Line
	15500 6300 15600 6400
Entry Wire Line
	15500 6400 15600 6500
Entry Wire Line
	15500 6500 15600 6600
Entry Wire Line
	15500 2300 15600 2400
Entry Wire Line
	15500 1000 15600 1100
Entry Wire Line
	15500 1100 15600 1200
Entry Wire Line
	15500 1200 15600 1300
Entry Wire Line
	15500 1300 15600 1400
Entry Wire Line
	15500 1400 15600 1500
Entry Wire Line
	15500 1500 15600 1600
Entry Wire Line
	15500 1600 15600 1700
Entry Wire Line
	15500 1700 15600 1800
Entry Wire Line
	15500 2400 15600 2500
Entry Wire Line
	15500 2500 15600 2600
Entry Wire Line
	15500 2600 15600 2700
Entry Wire Line
	15500 2700 15600 2800
Entry Wire Line
	15500 2800 15600 2900
Entry Wire Line
	15500 2900 15600 3000
Entry Wire Line
	15500 3000 15600 3100
Wire Wire Line
	13600 8600 14200 8600
Wire Wire Line
	13600 8500 14200 8500
Wire Wire Line
	13600 8400 14200 8400
Wire Wire Line
	13600 8300 14200 8300
Wire Wire Line
	13600 8200 14200 8200
Wire Wire Line
	13600 8100 14200 8100
Wire Wire Line
	13600 8000 14200 8000
Wire Wire Line
	13600 7900 14200 7900
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 635925BF
P 14550 1250
F 0 "U?" H 14800 1850 50  0000 C CNN
F 1 "74HC541" H 14550 1874 50  0000 C CNN
F 2 "" H 14500 1350 50  0001 C CNN
F 3 "" H 14500 1350 50  0001 C CNN
	1    14550 1250
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 635925C5
P 14550 2550
F 0 "U?" H 14800 3150 50  0000 C CNN
F 1 "74HC541" H 14550 3174 50  0000 C CNN
F 2 "" H 14500 2650 50  0001 C CNN
F 3 "" H 14500 2650 50  0001 C CNN
	1    14550 2550
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 635925CB
P 14550 6050
F 0 "U?" H 14800 6650 50  0000 C CNN
F 1 "74HC541" H 14550 6674 50  0000 C CNN
F 2 "" H 14500 6150 50  0001 C CNN
F 3 "" H 14500 6150 50  0001 C CNN
	1    14550 6050
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 635925D1
P 14550 4750
F 0 "U?" H 14800 5350 50  0000 C CNN
F 1 "74HC541" H 14550 5374 50  0000 C CNN
F 2 "" H 14500 4850 50  0001 C CNN
F 3 "" H 14500 4850 50  0001 C CNN
	1    14550 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	14100 6500 14200 6500
Wire Wire Line
	14200 5600 14100 5600
Connection ~ 14100 5600
Wire Wire Line
	14100 5600 14100 6500
Wire Wire Line
	14200 4300 14100 4300
Wire Wire Line
	14100 4300 14100 5200
Wire Wire Line
	14200 2100 14100 2100
Connection ~ 14100 2100
Wire Wire Line
	14100 2100 14100 3000
Wire Wire Line
	14200 800  14100 800 
Wire Wire Line
	14100 800  14100 1700
Wire Wire Line
	14200 1700 14100 1700
Connection ~ 14100 1700
Wire Wire Line
	14100 1700 14100 2100
Wire Wire Line
	14200 3000 14100 3000
Wire Wire Line
	14200 5200 14100 5200
Connection ~ 14100 5200
Wire Wire Line
	14100 5200 14100 5600
Wire Wire Line
	14900 5600 15000 5600
Wire Wire Line
	15000 800  14900 800 
Wire Wire Line
	15000 2100 14900 2100
Wire Wire Line
	14900 4300 15000 4300
Text Label 14050 2900 2    50   ~ 0
D_Out_D_16
Text Label 14050 2800 2    50   ~ 0
D_Out_D_15
Text Label 14050 2700 2    50   ~ 0
D_Out_D_14
Text Label 14050 2600 2    50   ~ 0
D_Out_D_13
Text Label 14050 2500 2    50   ~ 0
D_Out_D_12
Text Label 14050 2400 2    50   ~ 0
D_Out_D_11
Text Label 14050 2300 2    50   ~ 0
D_Out_D_10
Text Label 14050 1600 2    50   ~ 0
D_Out_D_8
Text Label 14050 2200 2    50   ~ 0
D_Out_D_9
Text Label 14050 1500 2    50   ~ 0
D_Out_D_7
Text Label 14050 1400 2    50   ~ 0
D_Out_D_6
Text Label 14050 1300 2    50   ~ 0
D_Out_D_5
Text Label 14050 1200 2    50   ~ 0
D_Out_D_4
Text Label 14050 1100 2    50   ~ 0
D_Out_D_3
Text Label 14050 900  2    50   ~ 0
D_Out_D_1
Entry Wire Line
	13600 2900 13500 3000
Entry Wire Line
	13600 2800 13500 2900
Entry Wire Line
	13600 2700 13500 2800
Entry Wire Line
	13600 2600 13500 2700
Entry Wire Line
	13600 2500 13500 2600
Entry Wire Line
	13600 2400 13500 2500
Entry Wire Line
	13600 2300 13500 2400
Entry Wire Line
	13600 1600 13500 1700
Entry Wire Line
	13600 1500 13500 1600
Entry Wire Line
	13600 1400 13500 1500
Entry Wire Line
	13600 1300 13500 1400
Entry Wire Line
	13600 1200 13500 1300
Entry Wire Line
	13600 1100 13500 1200
Entry Wire Line
	13600 1000 13500 1100
Entry Wire Line
	13600 900  13500 1000
Wire Wire Line
	14200 1600 13600 1600
Wire Wire Line
	14200 1500 13600 1500
Wire Wire Line
	14200 1400 13600 1400
Wire Wire Line
	14200 1300 13600 1300
Wire Wire Line
	14200 1200 13600 1200
Wire Wire Line
	14200 1100 13600 1100
Wire Wire Line
	14200 1000 13600 1000
Wire Wire Line
	14200 900  13600 900 
Entry Wire Line
	13600 2200 13500 2300
Wire Wire Line
	13600 2200 14200 2200
Wire Wire Line
	14200 2300 13600 2300
Wire Wire Line
	13600 2400 14200 2400
Wire Wire Line
	14200 2500 13600 2500
Wire Wire Line
	14200 2600 13600 2600
Wire Wire Line
	13600 2700 14200 2700
Wire Wire Line
	14200 2800 13600 2800
Wire Wire Line
	14200 2900 13600 2900
Text Label 14050 6400 2    50   ~ 0
D_Out_D_16
Text Label 14050 6300 2    50   ~ 0
D_Out_D_15
Text Label 14050 6200 2    50   ~ 0
D_Out_D_14
Text Label 14050 6100 2    50   ~ 0
D_Out_D_13
Text Label 14050 6000 2    50   ~ 0
D_Out_D_12
Text Label 14050 5900 2    50   ~ 0
D_Out_D_11
Text Label 14050 5800 2    50   ~ 0
D_Out_D_10
Text Label 14050 5100 2    50   ~ 0
D_Out_D_8
Text Label 14050 5700 2    50   ~ 0
D_Out_D_9
Text Label 14050 5000 2    50   ~ 0
D_Out_D_7
Text Label 14050 4900 2    50   ~ 0
D_Out_D_6
Text Label 14050 4800 2    50   ~ 0
D_Out_D_5
Text Label 14050 4700 2    50   ~ 0
D_Out_D_4
Text Label 14050 4600 2    50   ~ 0
D_Out_D_3
Text Label 14050 4500 2    50   ~ 0
D_Out_D_2
Text Label 14050 4400 2    50   ~ 0
D_Out_D_1
Entry Wire Line
	13600 6400 13500 6500
Entry Wire Line
	13600 6300 13500 6400
Entry Wire Line
	13600 6200 13500 6300
Entry Wire Line
	13600 6100 13500 6200
Entry Wire Line
	13600 6000 13500 6100
Entry Wire Line
	13600 5900 13500 6000
Entry Wire Line
	13600 5800 13500 5900
Entry Wire Line
	13600 5100 13500 5200
Entry Wire Line
	13600 5000 13500 5100
Entry Wire Line
	13600 4900 13500 5000
Entry Wire Line
	13600 4800 13500 4900
Entry Wire Line
	13600 4700 13500 4800
Entry Wire Line
	13600 4600 13500 4700
Entry Wire Line
	13600 4500 13500 4600
Entry Wire Line
	13600 4400 13500 4500
Wire Wire Line
	14200 5100 13600 5100
Wire Wire Line
	14200 5000 13600 5000
Wire Wire Line
	14200 4900 13600 4900
Wire Wire Line
	14200 4800 13600 4800
Wire Wire Line
	14200 4700 13600 4700
Wire Wire Line
	14200 4600 13600 4600
Wire Wire Line
	14200 4500 13600 4500
Wire Wire Line
	14200 4400 13600 4400
Entry Wire Line
	13600 5700 13500 5800
Wire Wire Line
	13600 5700 14200 5700
Wire Wire Line
	14200 5800 13600 5800
Wire Wire Line
	13600 5900 14200 5900
Wire Wire Line
	14200 6000 13600 6000
Wire Wire Line
	14200 6100 13600 6100
Wire Wire Line
	13600 6200 14200 6200
Wire Wire Line
	14200 6300 13600 6300
Wire Wire Line
	14200 6400 13600 6400
Text Label 15050 1700 0    50   ~ 0
A_Out_8
Text Label 15050 2300 0    50   ~ 0
A_Out_9
Text Label 15050 1600 0    50   ~ 0
A_Out_7
Text Label 15050 1500 0    50   ~ 0
A_Out_6
Text Label 15050 1400 0    50   ~ 0
A_Out_5
Text Label 15050 1300 0    50   ~ 0
A_Out_4
Text Label 15050 1200 0    50   ~ 0
A_Out_3
Text Label 15050 1100 0    50   ~ 0
A_Out_2
Text Label 15050 1000 0    50   ~ 0
A_Out_1
Text Label 14050 1000 2    50   ~ 0
D_Out_D_2
Entry Wire Line
	13600 9950 13500 10050
Entry Wire Line
	13600 9850 13500 9950
Entry Wire Line
	13600 9750 13500 9850
Entry Wire Line
	13600 9650 13500 9750
Entry Wire Line
	13600 9550 13500 9650
Entry Wire Line
	13600 9450 13500 9550
Entry Wire Line
	13600 9350 13500 9450
Entry Wire Line
	13600 9250 13500 9350
Entry Wire Line
	13600 8500 13500 8600
Entry Wire Line
	13600 8400 13500 8500
Entry Wire Line
	13600 8300 13500 8400
Entry Wire Line
	13600 7900 13500 8000
Entry Wire Line
	13600 8000 13500 8100
Entry Wire Line
	13600 8100 13500 8200
Entry Wire Line
	13600 8200 13500 8300
Entry Wire Line
	13600 8600 13500 8700
Wire Wire Line
	13600 9950 14050 9950
Wire Wire Line
	14050 9850 13600 9850
Wire Wire Line
	13600 9750 14050 9750
Wire Wire Line
	14050 9650 13600 9650
Wire Wire Line
	13600 9550 14050 9550
Wire Wire Line
	14050 9450 13600 9450
Wire Wire Line
	14050 9350 13600 9350
Wire Wire Line
	13600 9250 14050 9250
Wire Wire Line
	14100 7800 14100 8700
Connection ~ 14100 9150
Wire Wire Line
	14100 10050 14200 10050
Wire Wire Line
	14100 9150 14100 10050
Entry Wire Line
	15500 9250 15600 9350
Wire Wire Line
	15000 9150 15000 7800
Wire Wire Line
	14900 9150 15000 9150
Connection ~ 14100 8700
Wire Wire Line
	14100 9150 14200 9150
Wire Wire Line
	14100 8700 14100 9150
$Comp
L Computer_Component_Library:74HC573 U13
U 1 1 63592685
P 14550 9600
F 0 "U13" H 14800 10200 50  0000 C CNN
F 1 "74HC573" H 14550 10224 50  0000 C CNN
F 2 "" H 14500 10050 50  0001 C CNN
F 3 "" H 14500 10050 50  0001 C CNN
	1    14550 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	14900 7900 15500 7900
Wire Wire Line
	14900 8000 15500 8000
Wire Wire Line
	14900 8100 15500 8100
Wire Wire Line
	14900 8200 15500 8200
Wire Wire Line
	14900 8300 15500 8300
Wire Wire Line
	14900 8400 15500 8400
Wire Wire Line
	14900 8500 15500 8500
Wire Wire Line
	14900 8600 15500 8600
Entry Wire Line
	15500 7900 15600 8000
Entry Wire Line
	15500 8000 15600 8100
Entry Wire Line
	15500 8100 15600 8200
Entry Wire Line
	15500 8200 15600 8300
Entry Wire Line
	15500 8300 15600 8400
Entry Wire Line
	15500 8400 15600 8500
Entry Wire Line
	15500 8500 15600 8600
Entry Wire Line
	15500 8600 15600 8700
Entry Wire Line
	15500 9350 15600 9450
Entry Wire Line
	15500 9450 15600 9550
Entry Wire Line
	15500 9550 15600 9650
Entry Wire Line
	15500 9650 15600 9750
Entry Wire Line
	15500 9750 15600 9850
Entry Wire Line
	15500 9850 15600 9950
Entry Wire Line
	15500 9950 15600 10050
Text Label 15050 7900 0    50   ~ 0
D_Out_D_1
Text Label 15050 8000 0    50   ~ 0
D_Out_D_2
Text Label 15050 8100 0    50   ~ 0
D_Out_D_3
Text Label 15050 8200 0    50   ~ 0
D_Out_D_4
Text Label 15050 8300 0    50   ~ 0
D_Out_D_5
Text Label 15050 8400 0    50   ~ 0
D_Out_D_6
Text Label 15050 8500 0    50   ~ 0
D_Out_D_7
Text Label 15050 9250 0    50   ~ 0
D_Out_D_9
Text Label 15050 8600 0    50   ~ 0
D_Out_D_8
Text Label 15050 9350 0    50   ~ 0
D_Out_D_10
Text Label 15050 9450 0    50   ~ 0
D_Out_D_11
Text Label 15050 9550 0    50   ~ 0
D_Out_D_12
Text Label 15050 9650 0    50   ~ 0
D_Out_D_13
Text Label 15050 9750 0    50   ~ 0
D_Out_D_14
Text Label 15050 9850 0    50   ~ 0
D_Out_D_15
Text Label 15050 9950 0    50   ~ 0
D_Out_D_16
Text Label 13700 9950 0    50   ~ 0
D_In_16
Text Label 13700 9850 0    50   ~ 0
D_In_15
Text Label 13700 9750 0    50   ~ 0
D_In_14
Text Label 13700 9650 0    50   ~ 0
D_In_13
Text Label 13700 9550 0    50   ~ 0
D_In_12
Text Label 13700 9450 0    50   ~ 0
D_In_11
Text Label 13700 9350 0    50   ~ 0
D_In_10
Text Label 13700 9250 0    50   ~ 0
D_In_9
Text Label 13700 8600 0    50   ~ 0
D_In_8
Text Label 13700 8500 0    50   ~ 0
D_In_7
Text Label 13700 8400 0    50   ~ 0
D_In_6
Text Label 13700 8300 0    50   ~ 0
D_In_5
Text Label 13700 8200 0    50   ~ 0
D_In_4
Text Label 13700 8100 0    50   ~ 0
D_In_3
Text Label 13700 7900 0    50   ~ 0
D_In_1
Text Label 13700 8000 0    50   ~ 0
D_In_2
Wire Wire Line
	14200 8700 14100 8700
Wire Wire Line
	14900 7800 15000 7800
Wire Wire Line
	14200 7800 14100 7800
$Comp
L Computer_Component_Library:74HC573 U14
U 1 1 635926C5
P 14550 8250
F 0 "U14" H 14800 8850 50  0000 C CNN
F 1 "74HC573" H 14550 8874 50  0000 C CNN
F 2 "" H 14500 8700 50  0001 C CNN
F 3 "" H 14500 8700 50  0001 C CNN
	1    14550 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	17400 1700 18000 1700
Wire Wire Line
	17400 1600 18000 1600
Wire Wire Line
	17400 1500 18000 1500
Wire Wire Line
	17400 1400 18000 1400
Wire Wire Line
	17400 1300 18000 1300
Wire Wire Line
	17400 1200 18000 1200
Wire Wire Line
	17500 2100 17500 800 
Wire Wire Line
	17400 1100 18000 1100
Wire Wire Line
	17400 1000 18000 1000
Wire Wire Line
	17400 2300 18000 2300
Wire Wire Line
	17400 2400 18000 2400
Wire Wire Line
	17400 2500 18000 2500
Wire Wire Line
	17400 2600 18000 2600
Wire Wire Line
	17400 2700 18000 2700
Wire Wire Line
	17400 2800 18000 2800
Wire Wire Line
	17400 2900 18000 2900
Wire Wire Line
	17400 3000 18000 3000
Wire Wire Line
	17400 4500 18000 4500
Wire Wire Line
	17400 4600 18000 4600
Wire Wire Line
	17400 4700 18000 4700
Wire Wire Line
	17400 4800 18000 4800
Wire Wire Line
	17400 4900 18000 4900
Wire Wire Line
	17400 5000 18000 5000
Wire Wire Line
	17400 5100 18000 5100
Wire Wire Line
	17400 5200 18000 5200
Wire Wire Line
	17400 5900 18000 5900
Wire Wire Line
	17400 5800 18000 5800
Wire Wire Line
	17400 6000 18000 6000
Wire Wire Line
	17400 6100 18000 6100
Wire Wire Line
	17400 6200 18000 6200
Wire Wire Line
	17400 6300 18000 6300
Wire Wire Line
	17400 6400 18000 6400
Wire Wire Line
	17400 6500 18000 6500
Text Label 17550 5200 0    50   ~ 0
B_Out_8
Text Label 17550 5100 0    50   ~ 0
B_Out_7
Text Label 17550 5000 0    50   ~ 0
B_Out_6
Text Label 17550 4900 0    50   ~ 0
B_Out_5
Text Label 17550 4800 0    50   ~ 0
B_Out_4
Text Label 17550 4700 0    50   ~ 0
B_Out_3
Text Label 17550 4600 0    50   ~ 0
B_Out_2
Text Label 17550 4500 0    50   ~ 0
B_Out_1
Text Label 17550 5800 0    50   ~ 0
B_Out_9
Text Label 17550 5900 0    50   ~ 0
B_Out_10
Text Label 17550 6000 0    50   ~ 0
B_Out_11
Text Label 17550 6100 0    50   ~ 0
B_Out_12
Text Label 17550 6200 0    50   ~ 0
B_Out_13
Text Label 17550 6300 0    50   ~ 0
B_Out_14
Text Label 17550 6400 0    50   ~ 0
B_Out_15
Text Label 17550 6500 0    50   ~ 0
B_Out_16
Text Label 17550 2400 0    50   ~ 0
A_Out_10
Text Label 17550 2500 0    50   ~ 0
A_Out_11
Text Label 17550 2600 0    50   ~ 0
A_Out_12
Text Label 17550 2700 0    50   ~ 0
A_Out_13
Text Label 17550 2800 0    50   ~ 0
A_Out_14
Text Label 17550 2900 0    50   ~ 0
A_Out_15
Text Label 17550 3000 0    50   ~ 0
A_Out_16
Entry Wire Line
	18000 5200 18100 5300
Entry Wire Line
	18000 5100 18100 5200
Entry Wire Line
	18000 5000 18100 5100
Entry Wire Line
	18000 4900 18100 5000
Entry Wire Line
	18000 4800 18100 4900
Entry Wire Line
	18000 4700 18100 4800
Entry Wire Line
	18000 4600 18100 4700
Entry Wire Line
	18000 4500 18100 4600
Entry Wire Line
	18000 5800 18100 5900
Entry Wire Line
	18000 5900 18100 6000
Entry Wire Line
	18000 6000 18100 6100
Entry Wire Line
	18000 6100 18100 6200
Entry Wire Line
	18000 6200 18100 6300
Entry Wire Line
	18000 6300 18100 6400
Entry Wire Line
	18000 6400 18100 6500
Entry Wire Line
	18000 6500 18100 6600
Entry Wire Line
	18000 2300 18100 2400
Entry Wire Line
	18000 1000 18100 1100
Entry Wire Line
	18000 1100 18100 1200
Entry Wire Line
	18000 1200 18100 1300
Entry Wire Line
	18000 1300 18100 1400
Entry Wire Line
	18000 1400 18100 1500
Entry Wire Line
	18000 1500 18100 1600
Entry Wire Line
	18000 1600 18100 1700
Entry Wire Line
	18000 1700 18100 1800
Entry Wire Line
	18000 2400 18100 2500
Entry Wire Line
	18000 2500 18100 2600
Entry Wire Line
	18000 2600 18100 2700
Entry Wire Line
	18000 2700 18100 2800
Entry Wire Line
	18000 2800 18100 2900
Entry Wire Line
	18000 2900 18100 3000
Entry Wire Line
	18000 3000 18100 3100
Wire Wire Line
	16100 8600 16700 8600
Wire Wire Line
	16100 8500 16700 8500
Wire Wire Line
	16100 8400 16700 8400
Wire Wire Line
	16100 8300 16700 8300
Wire Wire Line
	16100 8200 16700 8200
Wire Wire Line
	16100 8100 16700 8100
Wire Wire Line
	16100 8000 16700 8000
Wire Wire Line
	16100 7900 16700 7900
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 636987EE
P 17050 1250
F 0 "U?" H 17300 1850 50  0000 C CNN
F 1 "74HC541" H 17050 1874 50  0000 C CNN
F 2 "" H 17000 1350 50  0001 C CNN
F 3 "" H 17000 1350 50  0001 C CNN
	1    17050 1250
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 636987F4
P 17050 2550
F 0 "U?" H 17300 3150 50  0000 C CNN
F 1 "74HC541" H 17050 3174 50  0000 C CNN
F 2 "" H 17000 2650 50  0001 C CNN
F 3 "" H 17000 2650 50  0001 C CNN
	1    17050 2550
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 636987FA
P 17050 6050
F 0 "U?" H 17300 6650 50  0000 C CNN
F 1 "74HC541" H 17050 6674 50  0000 C CNN
F 2 "" H 17000 6150 50  0001 C CNN
F 3 "" H 17000 6150 50  0001 C CNN
	1    17050 6050
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 63698800
P 17050 4750
F 0 "U?" H 17300 5350 50  0000 C CNN
F 1 "74HC541" H 17050 5374 50  0000 C CNN
F 2 "" H 17000 4850 50  0001 C CNN
F 3 "" H 17000 4850 50  0001 C CNN
	1    17050 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	16600 6500 16700 6500
Wire Wire Line
	16700 5600 16600 5600
Connection ~ 16600 5600
Wire Wire Line
	16700 4300 16600 4300
Wire Wire Line
	16600 4300 16600 5200
Wire Wire Line
	16700 2100 16600 2100
Connection ~ 16600 2100
Wire Wire Line
	16600 2100 16600 3000
Wire Wire Line
	16700 800  16600 800 
Wire Wire Line
	16600 800  16600 1700
Wire Wire Line
	16700 1700 16600 1700
Connection ~ 16600 1700
Wire Wire Line
	16600 1700 16600 2100
Wire Wire Line
	16700 3000 16600 3000
Wire Wire Line
	16700 5200 16600 5200
Connection ~ 16600 5200
Wire Wire Line
	16600 5200 16600 5600
Wire Wire Line
	17400 5600 17500 5600
Wire Wire Line
	17500 800  17400 800 
Wire Wire Line
	17500 2100 17400 2100
Wire Wire Line
	17400 4300 17500 4300
Text Label 16550 2900 2    50   ~ 0
D_Out_F_16
Text Label 16550 2800 2    50   ~ 0
D_Out_F_15
Text Label 16550 2700 2    50   ~ 0
D_Out_F_14
Text Label 16550 2600 2    50   ~ 0
D_Out_F_13
Text Label 16550 2500 2    50   ~ 0
D_Out_F_12
Text Label 16550 2400 2    50   ~ 0
D_Out_F_11
Text Label 16550 2300 2    50   ~ 0
D_Out_F_10
Text Label 16550 1600 2    50   ~ 0
D_Out_F_8
Text Label 16550 2200 2    50   ~ 0
D_Out_F_9
Text Label 16550 1500 2    50   ~ 0
D_Out_F_7
Text Label 16550 1400 2    50   ~ 0
D_Out_F_6
Text Label 16550 1300 2    50   ~ 0
D_Out_F_5
Text Label 16550 1200 2    50   ~ 0
D_Out_F_4
Text Label 16550 1100 2    50   ~ 0
D_Out_F_3
Text Label 16550 900  2    50   ~ 0
D_Out_F_1
Entry Wire Line
	16100 2900 16000 3000
Entry Wire Line
	16100 2800 16000 2900
Entry Wire Line
	16100 2700 16000 2800
Entry Wire Line
	16100 2600 16000 2700
Entry Wire Line
	16100 2500 16000 2600
Entry Wire Line
	16100 2400 16000 2500
Entry Wire Line
	16100 2300 16000 2400
Entry Wire Line
	16100 1600 16000 1700
Entry Wire Line
	16100 1500 16000 1600
Entry Wire Line
	16100 1400 16000 1500
Entry Wire Line
	16100 1300 16000 1400
Entry Wire Line
	16100 1200 16000 1300
Entry Wire Line
	16100 1100 16000 1200
Entry Wire Line
	16100 1000 16000 1100
Entry Wire Line
	16100 900  16000 1000
Wire Wire Line
	16700 1600 16100 1600
Wire Wire Line
	16700 1500 16100 1500
Wire Wire Line
	16700 1400 16100 1400
Wire Wire Line
	16700 1300 16100 1300
Wire Wire Line
	16700 1200 16100 1200
Wire Wire Line
	16700 1100 16100 1100
Wire Wire Line
	16700 1000 16100 1000
Wire Wire Line
	16700 900  16100 900 
Entry Wire Line
	16100 2200 16000 2300
Wire Wire Line
	16100 2200 16700 2200
Wire Wire Line
	16700 2300 16100 2300
Wire Wire Line
	16100 2400 16700 2400
Wire Wire Line
	16700 2500 16100 2500
Wire Wire Line
	16700 2600 16100 2600
Wire Wire Line
	16100 2700 16700 2700
Wire Wire Line
	16700 2800 16100 2800
Wire Wire Line
	16700 2900 16100 2900
Text Label 16550 6400 2    50   ~ 0
D_Out_F_16
Text Label 16550 6300 2    50   ~ 0
D_Out_F_15
Text Label 16550 6200 2    50   ~ 0
D_Out_F_14
Text Label 16550 6100 2    50   ~ 0
D_Out_F_13
Text Label 16550 6000 2    50   ~ 0
D_Out_F_12
Text Label 16550 5900 2    50   ~ 0
D_Out_F_11
Text Label 16550 5800 2    50   ~ 0
D_Out_F_10
Text Label 16550 5100 2    50   ~ 0
D_Out_F_8
Text Label 16550 5700 2    50   ~ 0
D_Out_F_9
Text Label 16550 5000 2    50   ~ 0
D_Out_F_7
Text Label 16550 4900 2    50   ~ 0
D_Out_F_6
Text Label 16550 4800 2    50   ~ 0
D_Out_F_5
Text Label 16550 4700 2    50   ~ 0
D_Out_F_4
Text Label 16550 4600 2    50   ~ 0
D_Out_F_3
Text Label 16550 4500 2    50   ~ 0
D_Out_F_2
Text Label 16550 4400 2    50   ~ 0
D_Out_F_1
Entry Wire Line
	16100 6400 16000 6500
Entry Wire Line
	16100 6300 16000 6400
Entry Wire Line
	16100 6200 16000 6300
Entry Wire Line
	16100 6100 16000 6200
Entry Wire Line
	16100 6000 16000 6100
Entry Wire Line
	16100 5900 16000 6000
Entry Wire Line
	16100 5800 16000 5900
Entry Wire Line
	16100 5100 16000 5200
Entry Wire Line
	16100 5000 16000 5100
Entry Wire Line
	16100 4900 16000 5000
Entry Wire Line
	16100 4800 16000 4900
Entry Wire Line
	16100 4700 16000 4800
Entry Wire Line
	16100 4600 16000 4700
Entry Wire Line
	16100 4500 16000 4600
Entry Wire Line
	16100 4400 16000 4500
Wire Wire Line
	16700 5100 16100 5100
Wire Wire Line
	16700 5000 16100 5000
Wire Wire Line
	16700 4900 16100 4900
Wire Wire Line
	16700 4800 16100 4800
Wire Wire Line
	16700 4700 16100 4700
Wire Wire Line
	16700 4600 16100 4600
Wire Wire Line
	16700 4500 16100 4500
Wire Wire Line
	16700 4400 16100 4400
Entry Wire Line
	16100 5700 16000 5800
Wire Wire Line
	16100 5700 16700 5700
Wire Wire Line
	16700 5800 16100 5800
Wire Wire Line
	16100 5900 16700 5900
Wire Wire Line
	16700 6000 16100 6000
Wire Wire Line
	16700 6100 16100 6100
Wire Wire Line
	16100 6200 16700 6200
Wire Wire Line
	16700 6300 16100 6300
Wire Wire Line
	16700 6400 16100 6400
Text Label 17550 1700 0    50   ~ 0
A_Out_8
Text Label 17550 2300 0    50   ~ 0
A_Out_9
Text Label 17550 1600 0    50   ~ 0
A_Out_7
Text Label 17550 1500 0    50   ~ 0
A_Out_6
Text Label 17550 1400 0    50   ~ 0
A_Out_5
Text Label 17550 1300 0    50   ~ 0
A_Out_4
Text Label 17550 1200 0    50   ~ 0
A_Out_3
Text Label 17550 1100 0    50   ~ 0
A_Out_2
Text Label 17550 1000 0    50   ~ 0
A_Out_1
Text Label 16550 1000 2    50   ~ 0
D_Out_F_2
Entry Wire Line
	16100 9950 16000 10050
Entry Wire Line
	16100 9850 16000 9950
Entry Wire Line
	16100 9750 16000 9850
Entry Wire Line
	16100 9650 16000 9750
Entry Wire Line
	16100 9550 16000 9650
Entry Wire Line
	16100 9450 16000 9550
Entry Wire Line
	16100 9350 16000 9450
Entry Wire Line
	16100 9250 16000 9350
Entry Wire Line
	16100 8500 16000 8600
Entry Wire Line
	16100 8400 16000 8500
Entry Wire Line
	16100 8300 16000 8400
Entry Wire Line
	16100 7900 16000 8000
Entry Wire Line
	16100 8000 16000 8100
Entry Wire Line
	16100 8100 16000 8200
Entry Wire Line
	16100 8200 16000 8300
Entry Wire Line
	16100 8600 16000 8700
Wire Wire Line
	16600 7800 16600 8700
Connection ~ 16600 9150
Wire Wire Line
	16600 10050 16700 10050
Wire Wire Line
	16600 9150 16600 10050
Wire Wire Line
	17400 9950 18000 9950
Wire Wire Line
	17400 9850 18000 9850
Wire Wire Line
	18000 9750 17400 9750
Wire Wire Line
	17400 9650 18000 9650
Wire Wire Line
	17400 9550 18000 9550
Wire Wire Line
	18000 9450 17400 9450
Wire Wire Line
	17400 9350 18000 9350
Wire Wire Line
	18000 9250 17400 9250
Entry Wire Line
	18000 9250 18100 9350
Wire Wire Line
	17500 9150 17500 7800
Wire Wire Line
	17400 9150 17500 9150
Connection ~ 16600 8700
Wire Wire Line
	16600 9150 16700 9150
Wire Wire Line
	16600 8700 16600 9150
$Comp
L Computer_Component_Library:74HC573 U15
U 1 1 636988B4
P 17050 9600
F 0 "U15" H 17300 10200 50  0000 C CNN
F 1 "74HC573" H 17050 10224 50  0000 C CNN
F 2 "" H 17000 10050 50  0001 C CNN
F 3 "" H 17000 10050 50  0001 C CNN
	1    17050 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	17400 7900 18000 7900
Wire Wire Line
	17400 8000 18000 8000
Wire Wire Line
	17400 8100 18000 8100
Wire Wire Line
	17400 8200 18000 8200
Wire Wire Line
	17400 8300 18000 8300
Wire Wire Line
	17400 8400 18000 8400
Wire Wire Line
	17400 8500 18000 8500
Wire Wire Line
	17400 8600 18000 8600
Entry Wire Line
	18000 7900 18100 8000
Entry Wire Line
	18000 8000 18100 8100
Entry Wire Line
	18000 8100 18100 8200
Entry Wire Line
	18000 8200 18100 8300
Entry Wire Line
	18000 8300 18100 8400
Entry Wire Line
	18000 8400 18100 8500
Entry Wire Line
	18000 8500 18100 8600
Entry Wire Line
	18000 8600 18100 8700
Entry Wire Line
	18000 9350 18100 9450
Entry Wire Line
	18000 9450 18100 9550
Entry Wire Line
	18000 9550 18100 9650
Entry Wire Line
	18000 9650 18100 9750
Entry Wire Line
	18000 9750 18100 9850
Entry Wire Line
	18000 9850 18100 9950
Entry Wire Line
	18000 9950 18100 10050
Text Label 17550 7900 0    50   ~ 0
D_Out_F_1
Text Label 17550 8000 0    50   ~ 0
D_Out_F_2
Text Label 17550 8100 0    50   ~ 0
D_Out_F_3
Text Label 17550 8200 0    50   ~ 0
D_Out_F_4
Text Label 17550 8300 0    50   ~ 0
D_Out_F_5
Text Label 17550 8400 0    50   ~ 0
D_Out_F_6
Text Label 17550 8500 0    50   ~ 0
D_Out_F_7
Text Label 17550 9250 0    50   ~ 0
D_Out_F_9
Text Label 17550 8600 0    50   ~ 0
D_Out_F_8
Text Label 17550 9350 0    50   ~ 0
D_Out_F_10
Text Label 17550 9450 0    50   ~ 0
D_Out_F_11
Text Label 17550 9550 0    50   ~ 0
D_Out_F_12
Text Label 17550 9650 0    50   ~ 0
D_Out_F_13
Text Label 17550 9750 0    50   ~ 0
D_Out_F_14
Text Label 17550 9850 0    50   ~ 0
D_Out_F_15
Text Label 17550 9950 0    50   ~ 0
D_Out_F_16
Text Label 16200 9950 0    50   ~ 0
D_In_16
Text Label 16200 9850 0    50   ~ 0
D_In_15
Text Label 16200 9750 0    50   ~ 0
D_In_14
Text Label 16200 9650 0    50   ~ 0
D_In_13
Text Label 16200 9550 0    50   ~ 0
D_In_12
Text Label 16200 9450 0    50   ~ 0
D_In_11
Text Label 16200 9350 0    50   ~ 0
D_In_10
Text Label 16200 9250 0    50   ~ 0
D_In_9
Text Label 16200 8600 0    50   ~ 0
D_In_8
Text Label 16200 8500 0    50   ~ 0
D_In_7
Text Label 16200 8400 0    50   ~ 0
D_In_6
Text Label 16200 8300 0    50   ~ 0
D_In_5
Text Label 16200 8200 0    50   ~ 0
D_In_4
Text Label 16200 8100 0    50   ~ 0
D_In_3
Text Label 16200 7900 0    50   ~ 0
D_In_1
Text Label 16200 8000 0    50   ~ 0
D_In_2
Wire Wire Line
	16700 8700 16600 8700
Wire Wire Line
	17400 7800 17500 7800
Wire Wire Line
	16700 7800 16600 7800
$Comp
L Computer_Component_Library:74HC573 U16
U 1 1 636988F4
P 17050 8250
F 0 "U16" H 17300 8850 50  0000 C CNN
F 1 "74HC573" H 17050 8874 50  0000 C CNN
F 2 "" H 17000 8700 50  0001 C CNN
F 3 "" H 17000 8700 50  0001 C CNN
	1    17050 8250
	1    0    0    -1  
$EndComp
Text Notes 1600 700  0    50   ~ 10
IP\n
Text Notes 4100 700  0    50   ~ 10
SP\n
Text Notes 6600 700  0    50   ~ 10
A
Text Notes 9100 700  0    50   ~ 10
B
Text Notes 11600 700  0    50   ~ 10
C
Text Notes 14100 700  0    50   ~ 10
D
Text Notes 16600 700  0    50   ~ 10
FLAG
Text Label 4050 2600 2    50   ~ 0
D_Out_SP_13
Text Label 4050 2800 2    50   ~ 0
D_Out_SP_15
Wire Wire Line
	1600 10250 1600 10050
Connection ~ 4100 10000
Connection ~ 1600 10050
Wire Wire Line
	9100 10250 9100 10050
Connection ~ 9100 10050
Wire Wire Line
	11600 10250 11600 10050
Connection ~ 11600 10050
Wire Wire Line
	14100 10250 14100 10050
Connection ~ 14100 10050
Connection ~ 16600 10050
Wire Wire Line
	16600 10050 16600 10250
Wire Wire Line
	2400 1000 3000 1000
Wire Wire Line
	2400 1100 3000 1100
Wire Wire Line
	2400 1200 3000 1200
Wire Wire Line
	2400 1300 3000 1300
Wire Wire Line
	2400 1400 3000 1400
Wire Wire Line
	2400 1500 3000 1500
Wire Wire Line
	2400 1600 3000 1600
Wire Wire Line
	2400 1700 3000 1700
Wire Bus Line
	18100 7500 16000 7500
Wire Bus Line
	15600 7500 13500 7500
Wire Bus Line
	13100 7500 11000 7500
Wire Bus Line
	10600 7500 8500 7500
Wire Bus Line
	8100 7500 6000 7500
Wire Bus Line
	5600 7500 3500 7500
Wire Bus Line
	3100 7500 1000 7500
Wire Bus Line
	13100 4000 15600 4000
Connection ~ 15600 4000
Wire Bus Line
	13100 4000 10600 4000
Connection ~ 13100 4000
Wire Bus Line
	10600 4000 8100 4000
Connection ~ 10600 4000
Wire Bus Line
	8100 4000 5600 4000
Connection ~ 8100 4000
Wire Bus Line
	5600 4000 3100 4000
Connection ~ 5600 4000
Wire Bus Line
	3150 550  5600 550 
Connection ~ 5600 550 
Wire Bus Line
	5600 550  8100 550 
Connection ~ 8100 550 
Wire Bus Line
	8100 550  10600 550 
Connection ~ 10600 550 
Wire Bus Line
	10600 550  13100 550 
Connection ~ 13100 550 
Wire Bus Line
	13100 550  15600 550 
Connection ~ 15600 550 
Wire Bus Line
	1000 10200 3500 10200
Wire Bus Line
	3500 10200 6000 10200
Connection ~ 3500 10200
Wire Bus Line
	6000 10150 6000 10200
Wire Bus Line
	6000 10200 8500 10200
Connection ~ 6000 10200
Wire Bus Line
	8500 10200 11000 10200
Connection ~ 8500 10200
Wire Bus Line
	11000 10200 13500 10200
Connection ~ 11000 10200
Wire Bus Line
	13500 10200 16000 10200
Connection ~ 13500 10200
Wire Wire Line
	1600 10250 4100 10250
Wire Wire Line
	4100 10000 4100 10250
Wire Wire Line
	6600 10050 6600 10250
Wire Wire Line
	6600 10250 4100 10250
Connection ~ 6600 10050
Connection ~ 4100 10250
Connection ~ 6600 10250
Wire Wire Line
	6600 10250 9100 10250
Connection ~ 9100 10250
Wire Wire Line
	9100 10250 11600 10250
Connection ~ 11600 10250
Wire Wire Line
	11600 10250 14100 10250
Connection ~ 14100 10250
Wire Wire Line
	14100 10250 16600 10250
Wire Wire Line
	17500 9150 17500 10350
Wire Wire Line
	2500 10350 2500 9150
Connection ~ 17500 9150
Connection ~ 2500 9150
Wire Wire Line
	5000 9100 5000 10350
Wire Wire Line
	2500 10350 5000 10350
Connection ~ 5000 9100
Connection ~ 5000 10350
Wire Wire Line
	7500 9150 7500 10350
Connection ~ 7500 9150
Connection ~ 7500 10350
Wire Wire Line
	12500 9150 12500 10350
Connection ~ 12500 9150
Connection ~ 12500 10350
Wire Wire Line
	14900 9950 15500 9950
Wire Wire Line
	14900 9850 15500 9850
Wire Wire Line
	15500 9750 14900 9750
Wire Wire Line
	14900 9650 15500 9650
Wire Wire Line
	14900 9550 15500 9550
Wire Wire Line
	15500 9450 14900 9450
Wire Wire Line
	14900 9350 15500 9350
Wire Wire Line
	15500 9250 14900 9250
Wire Wire Line
	14900 10050 14950 10050
Wire Wire Line
	14950 10050 14950 8700
Wire Wire Line
	14950 8700 14900 8700
Wire Wire Line
	17400 10050 17450 10050
Wire Wire Line
	17450 10050 17450 8700
Wire Wire Line
	17450 8700 17400 8700
Wire Wire Line
	12400 10050 12450 10050
Wire Wire Line
	12450 10050 12450 8700
Wire Wire Line
	12450 8700 12400 8700
Wire Wire Line
	9900 10050 9950 10050
Wire Wire Line
	9950 10050 9950 8700
Wire Wire Line
	9950 8700 9900 8700
Wire Wire Line
	7400 8700 7450 8700
Wire Wire Line
	7450 8700 7450 10050
Wire Wire Line
	7450 10050 7400 10050
Wire Wire Line
	4900 10000 4950 10000
Wire Wire Line
	4950 10000 4950 8650
Wire Wire Line
	4950 8650 4900 8650
Wire Wire Line
	2400 10050 2450 10050
Wire Wire Line
	2450 10050 2450 8700
Wire Wire Line
	2450 8700 2400 8700
Wire Wire Line
	4900 2200 4950 2200
Wire Wire Line
	4950 2200 4950 900 
Wire Wire Line
	4950 900  4900 900 
Wire Wire Line
	2400 900  2450 900 
Wire Wire Line
	2450 900  2450 2200
Wire Wire Line
	2450 2200 2400 2200
Wire Wire Line
	7400 2200 7450 2200
Wire Wire Line
	7450 2200 7450 900 
Wire Wire Line
	7450 900  7400 900 
Wire Wire Line
	9900 900  9950 900 
Wire Wire Line
	9950 2200 9900 2200
Wire Wire Line
	12450 2200 12450 900 
Wire Wire Line
	12450 900  12400 900 
Wire Wire Line
	12450 2200 12400 2200
Wire Wire Line
	14900 2200 14950 2200
Wire Wire Line
	14950 2200 14950 900 
Wire Wire Line
	14950 900  14900 900 
Wire Wire Line
	17400 2200 17450 2200
Wire Wire Line
	17450 2200 17450 900 
Wire Wire Line
	17450 900  17400 900 
Connection ~ 17450 2200
Connection ~ 14950 2200
Connection ~ 12450 2200
Wire Wire Line
	9950 900  9950 2200
Connection ~ 9950 2200
Connection ~ 7450 2200
Connection ~ 4950 2200
Connection ~ 2450 2200
Connection ~ 17500 5600
Wire Wire Line
	7500 4300 7500 5600
Wire Wire Line
	21400 4000 20800 4000
Wire Wire Line
	21400 4100 20800 4100
Wire Wire Line
	21400 4200 20800 4200
Wire Wire Line
	21400 4300 20800 4300
Wire Wire Line
	21400 4400 20800 4400
Wire Wire Line
	21400 4500 20800 4500
Wire Wire Line
	21400 4600 20800 4600
Wire Wire Line
	21400 4700 20800 4700
Wire Wire Line
	21400 4900 20800 4900
Wire Wire Line
	21400 4800 20800 4800
Wire Wire Line
	21400 5000 20800 5000
Wire Wire Line
	21400 5100 20800 5100
Wire Wire Line
	21400 5200 20800 5200
Wire Wire Line
	21400 5300 20800 5300
Wire Wire Line
	21400 5400 20800 5400
Wire Wire Line
	21400 5500 20800 5500
Text Label 21250 4700 2    50   ~ 0
B_Out_8
Text Label 21250 4600 2    50   ~ 0
B_Out_7
Text Label 21250 4500 2    50   ~ 0
B_Out_6
Text Label 21250 4400 2    50   ~ 0
B_Out_5
Text Label 21250 4300 2    50   ~ 0
B_Out_4
Text Label 21250 4200 2    50   ~ 0
B_Out_3
Text Label 21250 4100 2    50   ~ 0
B_Out_2
Text Label 21250 4000 2    50   ~ 0
B_Out_1
Text Label 21250 4800 2    50   ~ 0
B_Out_9
Text Label 21250 4900 2    50   ~ 0
B_Out_10
Text Label 21250 5000 2    50   ~ 0
B_Out_11
Text Label 21250 5100 2    50   ~ 0
B_Out_12
Text Label 21250 5200 2    50   ~ 0
B_Out_13
Text Label 21250 5300 2    50   ~ 0
B_Out_14
Text Label 21250 5400 2    50   ~ 0
B_Out_15
Text Label 21250 5500 2    50   ~ 0
B_Out_16
Entry Wire Line
	20800 4700 20700 4800
Entry Wire Line
	20800 4600 20700 4700
Entry Wire Line
	20800 4500 20700 4600
Entry Wire Line
	20800 4400 20700 4500
Entry Wire Line
	20800 4300 20700 4400
Entry Wire Line
	20800 4200 20700 4300
Entry Wire Line
	20800 4100 20700 4200
Entry Wire Line
	20800 4000 20700 4100
Entry Wire Line
	20800 4800 20700 4900
Entry Wire Line
	20800 4900 20700 5000
Entry Wire Line
	20800 5000 20700 5100
Entry Wire Line
	20800 5100 20700 5200
Entry Wire Line
	20800 5200 20700 5300
Entry Wire Line
	20800 5300 20700 5400
Entry Wire Line
	20800 5400 20700 5500
Entry Wire Line
	20800 5500 20700 5600
Wire Bus Line
	18100 7500 18300 7500
Connection ~ 18100 7500
Wire Wire Line
	1100 5700 1700 5700
Wire Wire Line
	1100 2200 1700 2200
Wire Wire Line
	1700 5800 1100 5800
Wire Wire Line
	1700 2300 1100 2300
Wire Wire Line
	1100 5900 1700 5900
Wire Wire Line
	1100 2400 1700 2400
Wire Wire Line
	1700 6000 1100 6000
Wire Wire Line
	1700 2500 1100 2500
Wire Wire Line
	1700 6100 1100 6100
Wire Wire Line
	1700 2600 1100 2600
Wire Wire Line
	1100 6200 1700 6200
Wire Wire Line
	1100 2700 1700 2700
Wire Wire Line
	1700 6300 1100 6300
Wire Wire Line
	1700 2800 1100 2800
Wire Wire Line
	1700 6400 1100 6400
Wire Wire Line
	1700 2900 1100 2900
Entry Wire Line
	1100 2200 1000 2300
Entry Wire Line
	1100 900  1000 1000
Entry Wire Line
	1100 1000 1000 1100
Entry Wire Line
	1100 1100 1000 1200
Entry Wire Line
	1100 1200 1000 1300
Entry Wire Line
	1100 1300 1000 1400
Entry Wire Line
	1100 1400 1000 1500
Entry Wire Line
	1100 1500 1000 1600
Entry Wire Line
	1100 1600 1000 1700
Entry Wire Line
	1100 2300 1000 2400
Entry Wire Line
	1100 2400 1000 2500
Entry Wire Line
	1100 2500 1000 2600
Entry Wire Line
	1100 2600 1000 2700
Entry Wire Line
	1100 2700 1000 2800
Entry Wire Line
	1100 2800 1000 2900
Entry Wire Line
	1100 2900 1000 3000
Entry Wire Line
	1100 5800 1000 5900
Entry Wire Line
	1100 5900 1000 6000
Entry Wire Line
	1100 6000 1000 6100
Entry Wire Line
	1100 6100 1000 6200
Entry Wire Line
	1100 6200 1000 6300
Entry Wire Line
	1100 6300 1000 6400
Entry Wire Line
	1100 6400 1000 6500
Entry Wire Line
	1100 4400 1000 4500
Entry Wire Line
	1100 5700 1000 5800
Entry Wire Line
	1100 4500 1000 4600
Entry Wire Line
	1100 4600 1000 4700
Entry Wire Line
	1100 4700 1000 4800
Entry Wire Line
	1100 4800 1000 4900
Entry Wire Line
	1100 4900 1000 5000
Entry Wire Line
	1100 5000 1000 5100
Entry Wire Line
	1100 5100 1000 5200
Wire Wire Line
	18800 10450 18800 10050
Connection ~ 18800 10050
Connection ~ 2450 10050
Connection ~ 4950 10000
Wire Wire Line
	5000 10350 7500 10350
Connection ~ 9950 10050
Connection ~ 7450 10050
Wire Wire Line
	7500 10350 12500 10350
Connection ~ 12450 10050
Connection ~ 14950 10050
Connection ~ 17450 10050
Wire Wire Line
	9950 10050 9950 11000
Wire Wire Line
	7450 10050 7450 11050
Wire Wire Line
	4950 10000 4950 11100
Wire Wire Line
	2450 10050 2450 11150
$Comp
L 74xx:74LS139 U18
U 1 1 68B507F8
P 18750 11100
F 0 "U18" H 18750 10633 50  0000 C CNN
F 1 "74LS139" H 18750 10724 50  0000 C CNN
F 2 "" H 18750 11100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 18750 11100 50  0001 C CNN
	1    18750 11100
	-1   0    0    1   
$EndComp
Wire Wire Line
	22250 7250 22250 6850
$Comp
L 74xx:74HC00 U17
U 1 1 6BB98FA5
P 22350 6500
F 0 "U17" V 22304 6688 50  0000 L CNN
F 1 "74HC00" V 22395 6688 50  0000 L CNN
F 2 "" H 22350 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 22350 6500 50  0001 C CNN
	1    22350 6500
	0    1    -1   0   
$EndComp
$Comp
L 74xx:74HC00 U17
U 5 1 6BBA587D
P 21500 9950
F 0 "U17" V 21133 9950 50  0000 C CNN
F 1 "74HC00" V 21224 9950 50  0000 C CNN
F 2 "" H 21500 9950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 21500 9950 50  0001 C CNN
	5    21500 9950
	0    1    1    0   
$EndComp
$Comp
L 74xx:74HC00 U17
U 2 1 6BBAA43D
P 22400 3050
F 0 "U17" V 22354 3238 50  0000 L CNN
F 1 "74HC00" V 22445 3238 50  0000 L CNN
F 2 "" H 22400 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 22400 3050 50  0001 C CNN
	2    22400 3050
	0    1    -1   0   
$EndComp
$Comp
L 74xx:74HC00 U17
U 4 1 6BBAB218
P 21500 11250
F 0 "U17" H 21500 11575 50  0000 C CNN
F 1 "74HC00" H 21500 11484 50  0000 C CNN
F 2 "" H 21500 11250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 21500 11250 50  0001 C CNN
	4    21500 11250
	1    0    0    -1  
$EndComp
Wire Wire Line
	22250 6800 22250 6850
Connection ~ 22250 6850
Wire Wire Line
	22250 6850 22450 6850
Wire Wire Line
	22450 6850 22450 6800
Connection ~ 16600 10250
Text Label 22500 10550 2    50   ~ 0
CLK_F
Text Label 22500 10450 2    50   ~ 0
CLK_R
Text Label 22500 10250 2    50   ~ 0
GND
Text Label 22500 10350 2    50   ~ 0
Vcc
$Comp
L Connector:Conn_01x04_Female J6
U 1 1 61AD6EA2
P 22700 10350
F 0 "J6" H 22592 9925 50  0000 C CNN
F 1 "Service_Connector" H 22592 10016 50  0000 C CNN
F 2 "" H 22700 10350 50  0001 C CNN
F 3 "~" H 22700 10350 50  0001 C CNN
	1    22700 10350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 65F13C17
P 22200 10200
F 0 "#PWR?" H 22200 9950 50  0001 C CNN
F 1 "GND" H 22205 10027 50  0000 C CNN
F 2 "" H 22200 10200 50  0001 C CNN
F 3 "" H 22200 10200 50  0001 C CNN
	1    22200 10200
	-1   0    0    1   
$EndComp
Connection ~ 22200 10250
Wire Wire Line
	22200 10250 22500 10250
Wire Wire Line
	22200 10200 22200 10250
Wire Wire Line
	16600 10250 21000 10250
Wire Wire Line
	18800 10450 22500 10450
Wire Wire Line
	22500 10350 22000 10350
Connection ~ 17500 10350
Wire Wire Line
	22000 9950 22000 10350
Connection ~ 22000 10350
Wire Wire Line
	22000 10350 17500 10350
Wire Wire Line
	21000 9950 21000 10250
Connection ~ 21000 10250
Wire Wire Line
	21000 10250 22200 10250
Wire Wire Line
	22300 3350 22300 3400
Wire Wire Line
	22300 3400 22500 3400
Wire Wire Line
	22500 3400 22500 3350
Wire Bus Line
	15600 550  18100 550 
Wire Bus Line
	15600 4000 18100 4000
$Comp
L Connector:Conn_01x16_Female J0
U 1 1 61AB96F4
P 20750 8600
F 0 "J0" H 20642 9485 50  0000 C CNN
F 1 "D_In" H 20642 9394 50  0000 C CNN
F 2 "" H 20750 8600 50  0001 C CNN
F 3 "~" H 20750 8600 50  0001 C CNN
	1    20750 8600
	1    0    0    -1  
$EndComp
Wire Wire Line
	20550 7900 19700 7900
Wire Wire Line
	19900 1700 20500 1700
Wire Wire Line
	19900 1600 20500 1600
Wire Wire Line
	19900 1500 20500 1500
Wire Wire Line
	19900 1400 20500 1400
Wire Wire Line
	19900 1300 20500 1300
Wire Wire Line
	19900 1200 20500 1200
Wire Wire Line
	20000 2100 20000 800 
Wire Wire Line
	19900 1100 20500 1100
Wire Wire Line
	19900 1000 20500 1000
Wire Wire Line
	19900 2300 20500 2300
Wire Wire Line
	19900 2400 20500 2400
Wire Wire Line
	19900 2500 20500 2500
Wire Wire Line
	19900 2600 20500 2600
Wire Wire Line
	19900 2700 20500 2700
Wire Wire Line
	19900 2800 20500 2800
Wire Wire Line
	19900 2900 20500 2900
Wire Wire Line
	19900 3000 20500 3000
Text Label 20050 2400 0    50   ~ 0
A_Out_10
Text Label 20050 2500 0    50   ~ 0
A_Out_11
Text Label 20050 2600 0    50   ~ 0
A_Out_12
Text Label 20050 2700 0    50   ~ 0
A_Out_13
Text Label 20050 2800 0    50   ~ 0
A_Out_14
Text Label 20050 2900 0    50   ~ 0
A_Out_15
Text Label 20050 3000 0    50   ~ 0
A_Out_16
Entry Wire Line
	20500 2300 20600 2400
Entry Wire Line
	20500 1000 20600 1100
Entry Wire Line
	20500 1100 20600 1200
Entry Wire Line
	20500 1200 20600 1300
Entry Wire Line
	20500 1300 20600 1400
Entry Wire Line
	20500 1400 20600 1500
Entry Wire Line
	20500 1500 20600 1600
Entry Wire Line
	20500 1600 20600 1700
Entry Wire Line
	20500 1700 20600 1800
Entry Wire Line
	20500 2400 20600 2500
Entry Wire Line
	20500 2500 20600 2600
Entry Wire Line
	20500 2600 20600 2700
Entry Wire Line
	20500 2700 20600 2800
Entry Wire Line
	20500 2800 20600 2900
Entry Wire Line
	20500 2900 20600 3000
Entry Wire Line
	20500 3000 20600 3100
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 76BCD390
P 19550 1250
F 0 "U?" H 19800 1850 50  0000 C CNN
F 1 "74HC541" H 19550 1874 50  0000 C CNN
F 2 "" H 19500 1350 50  0001 C CNN
F 3 "" H 19500 1350 50  0001 C CNN
	1    19550 1250
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 76BCD396
P 19550 2550
F 0 "U?" H 19800 3150 50  0000 C CNN
F 1 "74HC541" H 19550 3174 50  0000 C CNN
F 2 "" H 19500 2650 50  0001 C CNN
F 3 "" H 19500 2650 50  0001 C CNN
	1    19550 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	19200 2100 19100 2100
Connection ~ 19100 2100
Wire Wire Line
	19100 2100 19100 2200
Wire Wire Line
	19200 800  19100 800 
Wire Wire Line
	19200 1700 19100 1700
Connection ~ 19100 1700
Wire Wire Line
	19100 1700 19100 2100
Wire Wire Line
	19200 3000 19100 3000
Wire Wire Line
	20000 800  19900 800 
Wire Wire Line
	20000 2100 19900 2100
Text Label 20050 1700 0    50   ~ 0
A_Out_8
Text Label 20050 2300 0    50   ~ 0
A_Out_9
Text Label 20050 1600 0    50   ~ 0
A_Out_7
Text Label 20050 1500 0    50   ~ 0
A_Out_6
Text Label 20050 1400 0    50   ~ 0
A_Out_5
Text Label 20050 1300 0    50   ~ 0
A_Out_4
Text Label 20050 1200 0    50   ~ 0
A_Out_3
Text Label 20050 1100 0    50   ~ 0
A_Out_2
Text Label 20050 1000 0    50   ~ 0
A_Out_1
Text Notes 19100 700  0    50   ~ 10
ZERO\n
Wire Wire Line
	19900 2200 19950 2200
Wire Wire Line
	19950 2200 19950 900 
Wire Wire Line
	19950 900  19900 900 
Connection ~ 19950 2200
Wire Bus Line
	18100 550  20600 550 
Wire Wire Line
	19900 5150 20500 5150
Wire Wire Line
	19900 5050 20500 5050
Wire Wire Line
	19900 4950 20500 4950
Wire Wire Line
	19900 4850 20500 4850
Wire Wire Line
	19900 4750 20500 4750
Wire Wire Line
	19900 4650 20500 4650
Wire Wire Line
	20000 5550 20000 4250
Wire Wire Line
	19900 4550 20500 4550
Wire Wire Line
	19900 4450 20500 4450
Wire Wire Line
	19900 5750 20500 5750
Wire Wire Line
	19900 5850 20500 5850
Wire Wire Line
	19900 5950 20500 5950
Wire Wire Line
	19900 6050 20500 6050
Wire Wire Line
	19900 6150 20500 6150
Wire Wire Line
	19900 6250 20500 6250
Wire Wire Line
	19900 6350 20500 6350
Wire Wire Line
	19900 6450 20500 6450
Text Label 20050 5850 0    50   ~ 0
A_Out_10
Text Label 20050 5950 0    50   ~ 0
A_Out_11
Text Label 20050 6050 0    50   ~ 0
A_Out_12
Text Label 20050 6150 0    50   ~ 0
A_Out_13
Text Label 20050 6250 0    50   ~ 0
A_Out_14
Text Label 20050 6350 0    50   ~ 0
A_Out_15
Text Label 20050 6450 0    50   ~ 0
A_Out_16
Entry Wire Line
	20500 5750 20600 5850
Entry Wire Line
	20500 4450 20600 4550
Entry Wire Line
	20500 4550 20600 4650
Entry Wire Line
	20500 4650 20600 4750
Entry Wire Line
	20500 4750 20600 4850
Entry Wire Line
	20500 4850 20600 4950
Entry Wire Line
	20500 4950 20600 5050
Entry Wire Line
	20500 5050 20600 5150
Entry Wire Line
	20500 5150 20600 5250
Entry Wire Line
	20500 5850 20600 5950
Entry Wire Line
	20500 5950 20600 6050
Entry Wire Line
	20500 6050 20600 6150
Entry Wire Line
	20500 6150 20600 6250
Entry Wire Line
	20500 6250 20600 6350
Entry Wire Line
	20500 6350 20600 6450
Entry Wire Line
	20500 6450 20600 6550
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 76DC4FBF
P 19550 4700
F 0 "U?" H 19800 5300 50  0000 C CNN
F 1 "74HC541" H 19550 5324 50  0000 C CNN
F 2 "" H 19500 4800 50  0001 C CNN
F 3 "" H 19500 4800 50  0001 C CNN
	1    19550 4700
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC541 U?
U 1 1 76DC4FC5
P 19550 6000
F 0 "U?" H 19800 6600 50  0000 C CNN
F 1 "74HC541" H 19550 6624 50  0000 C CNN
F 2 "" H 19500 6100 50  0001 C CNN
F 3 "" H 19500 6100 50  0001 C CNN
	1    19550 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	19200 5550 19100 5550
Connection ~ 19100 5550
Wire Wire Line
	19100 5550 19100 5650
Wire Wire Line
	19200 4250 19100 4250
Wire Wire Line
	19100 4250 19100 4450
Wire Wire Line
	19200 5150 19100 5150
Connection ~ 19100 5150
Wire Wire Line
	19100 5150 19100 5550
Wire Wire Line
	19200 6450 19100 6450
Wire Wire Line
	20000 4250 19900 4250
Wire Wire Line
	20000 5550 19900 5550
Text Label 20050 5150 0    50   ~ 0
A_Out_8
Text Label 20050 5750 0    50   ~ 0
A_Out_9
Text Label 20050 5050 0    50   ~ 0
A_Out_7
Text Label 20050 4950 0    50   ~ 0
A_Out_6
Text Label 20050 4850 0    50   ~ 0
A_Out_5
Text Label 20050 4750 0    50   ~ 0
A_Out_4
Text Label 20050 4650 0    50   ~ 0
A_Out_3
Text Label 20050 4550 0    50   ~ 0
A_Out_2
Text Label 20050 4450 0    50   ~ 0
A_Out_1
Wire Wire Line
	19900 5650 19950 5650
Wire Wire Line
	19950 5650 19950 4350
Wire Wire Line
	19950 4350 19900 4350
Wire Bus Line
	18100 4000 20600 4000
Wire Wire Line
	20000 2100 20000 4250
Connection ~ 20000 2100
Connection ~ 20000 4250
Wire Wire Line
	19100 3000 19100 4250
Connection ~ 19100 3000
Connection ~ 19100 4250
Wire Wire Line
	19100 6450 19100 6700
Wire Wire Line
	1600 6700 1600 6500
Connection ~ 19100 6450
Connection ~ 1600 6500
Wire Wire Line
	4100 6500 4100 6700
Connection ~ 4100 6500
Connection ~ 4100 6700
Wire Wire Line
	4100 6700 2500 6700
Wire Wire Line
	6600 6500 6600 6700
Connection ~ 6600 6500
Connection ~ 6600 6700
Wire Wire Line
	6600 6700 5000 6700
Wire Wire Line
	11600 6500 11600 6700
Connection ~ 11600 6500
Connection ~ 11600 6700
Wire Wire Line
	11600 6700 10000 6700
Wire Wire Line
	14100 6500 14100 6700
Connection ~ 14100 6500
Connection ~ 14100 6700
Wire Wire Line
	14100 6700 12500 6700
Wire Wire Line
	16600 5600 16600 6500
Connection ~ 16600 6700
Connection ~ 16600 6500
Wire Wire Line
	16600 6500 16600 6700
Wire Wire Line
	18900 7400 18900 7800
Connection ~ 18900 7800
Wire Wire Line
	19100 6700 19100 7450
Wire Wire Line
	19100 7450 19800 7450
Wire Wire Line
	19800 7450 19800 7800
Connection ~ 19100 6700
Connection ~ 19800 7800
Wire Wire Line
	16600 6700 17500 6700
Wire Wire Line
	19200 1600 19100 1600
Connection ~ 19100 1600
Wire Wire Line
	19100 1600 19100 1700
Wire Wire Line
	19200 1500 19100 1500
Connection ~ 19100 1500
Wire Wire Line
	19100 1500 19100 1600
Wire Wire Line
	19200 1400 19100 1400
Connection ~ 19100 1400
Wire Wire Line
	19100 1400 19100 1500
Wire Wire Line
	19200 1300 19100 1300
Connection ~ 19100 1300
Wire Wire Line
	19100 1300 19100 1400
Wire Wire Line
	19200 1200 19100 1200
Wire Wire Line
	19100 800  19100 1000
Connection ~ 19100 1200
Wire Wire Line
	19100 1200 19100 1300
Wire Wire Line
	19200 1100 19100 1100
Connection ~ 19100 1100
Wire Wire Line
	19100 1100 19100 1200
Wire Wire Line
	19200 1000 19100 1000
Connection ~ 19100 1000
Wire Wire Line
	19100 1000 19100 1100
Wire Wire Line
	19200 900  19000 900 
Wire Wire Line
	19000 900  19000 4350
Wire Wire Line
	19000 4350 19200 4350
Wire Wire Line
	19200 4450 19100 4450
Connection ~ 19100 4450
Wire Wire Line
	19100 4450 19100 4550
Wire Wire Line
	19200 4550 19100 4550
Connection ~ 19100 4550
Wire Wire Line
	19100 4550 19100 4650
Wire Wire Line
	19200 4650 19100 4650
Connection ~ 19100 4650
Wire Wire Line
	19100 4650 19100 4750
Wire Wire Line
	19200 4750 19100 4750
Connection ~ 19100 4750
Wire Wire Line
	19100 4750 19100 4850
Wire Wire Line
	19200 4850 19100 4850
Connection ~ 19100 4850
Wire Wire Line
	19100 4850 19100 4950
Wire Wire Line
	19200 4950 19100 4950
Connection ~ 19100 4950
Wire Wire Line
	19100 4950 19100 5050
Wire Wire Line
	19200 5050 19100 5050
Connection ~ 19100 5050
Wire Wire Line
	19100 5050 19100 5150
Wire Wire Line
	19200 5750 19100 5750
Connection ~ 19100 5750
Wire Wire Line
	19100 5750 19100 5850
Wire Wire Line
	19100 5650 19200 5650
Connection ~ 19100 5650
Wire Wire Line
	19100 5650 19100 5750
Wire Wire Line
	19200 5850 19100 5850
Connection ~ 19100 5850
Wire Wire Line
	19100 5850 19100 5950
Wire Wire Line
	19200 5950 19100 5950
Connection ~ 19100 5950
Wire Wire Line
	19100 5950 19100 6050
Wire Wire Line
	19200 6050 19100 6050
Connection ~ 19100 6050
Wire Wire Line
	19100 6050 19100 6150
Wire Wire Line
	19200 6150 19100 6150
Connection ~ 19100 6150
Wire Wire Line
	19100 6150 19100 6250
Wire Wire Line
	19200 6250 19100 6250
Connection ~ 19100 6250
Wire Wire Line
	19100 6250 19100 6350
Wire Wire Line
	19200 6350 19100 6350
Connection ~ 19100 6350
Wire Wire Line
	19100 6350 19100 6450
Wire Wire Line
	19200 2200 19100 2200
Connection ~ 19100 2200
Wire Wire Line
	19100 2200 19100 2300
Wire Wire Line
	19200 2300 19100 2300
Connection ~ 19100 2300
Wire Wire Line
	19100 2300 19100 2400
Wire Wire Line
	19200 2400 19100 2400
Connection ~ 19100 2400
Wire Wire Line
	19100 2400 19100 2500
Wire Wire Line
	19200 2500 19100 2500
Connection ~ 19100 2500
Wire Wire Line
	19100 2500 19100 2600
Wire Wire Line
	19200 2600 19100 2600
Connection ~ 19100 2600
Wire Wire Line
	19100 2600 19100 2700
Wire Wire Line
	19200 2700 19100 2700
Connection ~ 19100 2700
Wire Wire Line
	19100 2700 19100 2800
Wire Wire Line
	19200 2800 19100 2800
Connection ~ 19100 2800
Wire Wire Line
	19100 2800 19100 2900
Wire Wire Line
	19200 2900 19100 2900
Connection ~ 19100 2900
Wire Wire Line
	19100 2900 19100 3000
Wire Wire Line
	12450 10050 12450 10950
Wire Wire Line
	14950 10050 14950 10900
Wire Wire Line
	17150 11150 17150 11850
Wire Wire Line
	2450 11150 17150 11150
Wire Wire Line
	17200 11750 17200 11100
Wire Wire Line
	4950 11100 17200 11100
Wire Wire Line
	17250 11050 17250 11650
Wire Wire Line
	7450 11050 17250 11050
Wire Wire Line
	17300 11200 17300 11000
Wire Wire Line
	9950 11000 17300 11000
Wire Wire Line
	17350 11100 17350 10950
Wire Wire Line
	12450 10950 17350 10950
Wire Wire Line
	17400 10900 17400 11000
Wire Wire Line
	14950 10900 17400 10900
Wire Wire Line
	17400 11000 18250 11000
Wire Wire Line
	17350 11100 18250 11100
Wire Wire Line
	17300 11200 18250 11200
Wire Wire Line
	17250 11650 18250 11650
Wire Wire Line
	17200 11750 18250 11750
Wire Wire Line
	17150 11850 18250 11850
Wire Wire Line
	19250 11100 20000 11100
Wire Wire Line
	20000 11100 20000 11850
Wire Wire Line
	20000 11850 19250 11850
Wire Wire Line
	19250 11950 20050 11950
Wire Wire Line
	20050 11950 20050 11200
Wire Wire Line
	20050 11200 19250 11200
Connection ~ 20000 11100
Connection ~ 20050 11200
Wire Wire Line
	20100 11300 20100 11650
$Comp
L 74xx:74HC00 U17
U 3 1 6BBA7193
P 20250 10900
F 0 "U17" H 20250 10583 50  0000 C CNN
F 1 "74HC00" H 20250 10674 50  0000 C CNN
F 2 "" H 20250 10900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 20250 10900 50  0001 C CNN
	3    20250 10900
	-1   0    0    1   
$EndComp
Wire Wire Line
	20100 11300 20600 11300
Wire Wire Line
	20050 11200 20650 11200
Wire Wire Line
	20600 11300 20600 11000
Wire Wire Line
	20600 11000 20550 11000
Connection ~ 20600 11300
Wire Wire Line
	20600 11300 20650 11300
Wire Wire Line
	20600 11000 20600 10800
Wire Wire Line
	20600 10800 20550 10800
Connection ~ 20600 11000
Wire Wire Line
	20000 11100 20650 11100
$Comp
L 74xx:74LS139 U18
U 2 1 842055DF
P 18750 11850
F 0 "U18" H 18750 11383 50  0000 C CNN
F 1 "74LS139" H 18750 11474 50  0000 C CNN
F 2 "" H 18750 11850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 18750 11850 50  0001 C CNN
	2    18750 11850
	-1   0    0    1   
$EndComp
Wire Wire Line
	21000 9950 21000 9250
Connection ~ 21000 9950
Wire Wire Line
	22000 9950 22000 9250
Connection ~ 22000 9950
$Comp
L 74xx:74LS139 U18
U 3 1 846715BE
P 21500 9250
F 0 "U18" V 21133 9250 50  0000 C CNN
F 1 "74LS139" V 21224 9250 50  0000 C CNN
F 2 "" H 21500 9250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 21500 9250 50  0001 C CNN
	3    21500 9250
	0    1    1    0   
$EndComp
Connection ~ 22000 9250
Wire Wire Line
	22000 9250 22000 8600
Connection ~ 21000 9250
Wire Wire Line
	21000 9250 21000 8600
$Comp
L Connector:Conn_01x04_Female J7
U 1 1 848B04EB
P 21950 12250
F 0 "J7" H 21978 12226 50  0000 L CNN
F 1 "Controll_Connector" H 21978 12135 50  0000 L CNN
F 2 "" H 21950 12250 50  0001 C CNN
F 3 "~" H 21950 12250 50  0001 C CNN
	1    21950 12250
	1    0    0    -1  
$EndComp
Text Label 21350 12150 0    50   ~ 0
WE
Text Label 21350 12250 0    50   ~ 0
S_SUP
Text Label 21350 12350 0    50   ~ 0
R_Sup
Text Label 21350 12450 0    50   ~ 0
ZERO_ONE
Wire Wire Line
	21750 12350 21100 12350
Wire Wire Line
	21750 12250 21100 12250
Wire Wire Line
	21750 12150 21100 12150
Text Label 21250 550  2    50   ~ 0
A_Out_1
Text Label 21250 650  2    50   ~ 0
A_Out_2
Text Label 21250 750  2    50   ~ 0
A_Out_3
Text Label 21250 850  2    50   ~ 0
A_Out_4
Text Label 21250 950  2    50   ~ 0
A_Out_5
Text Label 21250 1050 2    50   ~ 0
A_Out_6
Text Label 21250 1150 2    50   ~ 0
A_Out_7
Text Label 21250 1350 2    50   ~ 0
A_Out_9
Text Label 21250 1250 2    50   ~ 0
A_Out_8
Entry Wire Line
	20800 2050 20700 2150
Entry Wire Line
	20800 1950 20700 2050
Entry Wire Line
	20800 1850 20700 1950
Entry Wire Line
	20800 1750 20700 1850
Entry Wire Line
	20800 1650 20700 1750
Entry Wire Line
	20800 1550 20700 1650
Entry Wire Line
	20800 1450 20700 1550
Entry Wire Line
	20800 1250 20700 1350
Entry Wire Line
	20800 1150 20700 1250
Entry Wire Line
	20800 1050 20700 1150
Entry Wire Line
	20800 950  20700 1050
Entry Wire Line
	20800 850  20700 950 
Entry Wire Line
	20800 750  20700 850 
Entry Wire Line
	20800 650  20700 750 
Entry Wire Line
	20800 550  20700 650 
Entry Wire Line
	20800 1350 20700 1450
Text Label 21250 2050 2    50   ~ 0
A_Out_16
Text Label 21250 1950 2    50   ~ 0
A_Out_15
Text Label 21250 1850 2    50   ~ 0
A_Out_14
Text Label 21250 1750 2    50   ~ 0
A_Out_13
Text Label 21250 1650 2    50   ~ 0
A_Out_12
Text Label 21250 1550 2    50   ~ 0
A_Out_11
Text Label 21250 1450 2    50   ~ 0
A_Out_10
Wire Wire Line
	21400 2050 20800 2050
Wire Wire Line
	21400 1950 20800 1950
Wire Wire Line
	21400 1850 20800 1850
Wire Wire Line
	21400 1750 20800 1750
Wire Wire Line
	21400 1650 20800 1650
Wire Wire Line
	21400 1550 20800 1550
Wire Wire Line
	21400 1450 20800 1450
Wire Wire Line
	21400 1350 20800 1350
Wire Wire Line
	21400 550  20800 550 
Wire Wire Line
	21400 650  20800 650 
Wire Wire Line
	21400 750  20800 750 
Wire Wire Line
	21400 850  20800 850 
Wire Wire Line
	21400 950  20800 950 
Wire Wire Line
	21400 1050 20800 1050
Wire Wire Line
	21400 1150 20800 1150
Wire Wire Line
	21400 1250 20800 1250
$Comp
L Connector:Conn_01x16_Female J2
U 1 1 61AC1212
P 21600 1250
F 0 "J2" H 21628 1226 50  0000 L CNN
F 1 "B_Out" H 21628 1135 50  0000 L CNN
F 2 "" H 21600 1250 50  0001 C CNN
F 3 "~" H 21600 1250 50  0001 C CNN
	1    21600 1250
	1    0    0    -1  
$EndComp
Wire Bus Line
	20700 550  20600 550 
Connection ~ 20600 550 
Wire Bus Line
	20700 4000 20600 4000
Connection ~ 20600 4000
Wire Wire Line
	14100 6700 15000 6700
Wire Wire Line
	15000 10350 17500 10350
Wire Wire Line
	12500 10350 15000 10350
Connection ~ 15000 10350
Connection ~ 15000 9150
Wire Wire Line
	15000 9150 15000 10350
Wire Wire Line
	11600 3000 11600 4300
Connection ~ 11600 3000
Connection ~ 11600 4300
Wire Wire Line
	11600 4300 11600 5200
Wire Wire Line
	12500 2100 12500 4300
Connection ~ 12500 2100
Connection ~ 12500 4300
Wire Wire Line
	15000 5600 15000 6700
Connection ~ 15000 5600
Connection ~ 15000 6700
Wire Wire Line
	15000 6700 16600 6700
Wire Wire Line
	12500 5600 12500 6700
Connection ~ 12500 5600
Connection ~ 12500 6700
Wire Wire Line
	12500 6700 11600 6700
Wire Wire Line
	10000 5600 10000 6700
Connection ~ 10000 5600
Connection ~ 10000 6700
Wire Wire Line
	7500 5600 7500 6700
Wire Wire Line
	6600 6700 7500 6700
Connection ~ 7500 5600
Connection ~ 7500 6700
Wire Wire Line
	7500 6700 10000 6700
Wire Wire Line
	5000 5600 5000 6700
Connection ~ 5000 5600
Connection ~ 5000 6700
Wire Wire Line
	5000 6700 4100 6700
Wire Wire Line
	2500 5600 2500 6700
Connection ~ 2500 5600
Connection ~ 2500 6700
Wire Wire Line
	2500 6700 1600 6700
Wire Wire Line
	1600 3000 1600 4300
Connection ~ 1600 3000
Connection ~ 1600 4300
Wire Wire Line
	1600 4300 1600 5200
Wire Wire Line
	2500 2100 2500 4300
Connection ~ 2500 2100
Connection ~ 2500 4300
Wire Wire Line
	2500 4300 2500 5600
Wire Wire Line
	5000 2100 5000 4300
Connection ~ 5000 2100
Connection ~ 5000 4300
Wire Wire Line
	7500 800  7500 2100
Connection ~ 7500 4300
Connection ~ 7500 2100
Wire Wire Line
	7500 2100 7500 4300
Wire Wire Line
	6600 2100 6600 3000
Connection ~ 6600 4300
Connection ~ 6600 3000
Wire Wire Line
	6600 3000 6600 4300
Wire Wire Line
	9100 2100 9100 3000
Connection ~ 9100 4300
Connection ~ 9100 3000
Wire Wire Line
	9100 3000 9100 4300
Wire Wire Line
	10000 800  10000 2100
Connection ~ 10000 2100
Wire Wire Line
	10000 2100 10000 4300
Connection ~ 10000 4300
Wire Wire Line
	10000 4300 10000 5600
Wire Wire Line
	14100 4300 14100 3000
Connection ~ 14100 4300
Connection ~ 14100 3000
Wire Wire Line
	15000 800  15000 2100
Connection ~ 15000 2100
Wire Wire Line
	15000 2100 15000 4300
Connection ~ 15000 4300
Wire Wire Line
	15000 4300 15000 5600
Wire Wire Line
	16600 4300 16600 3000
Connection ~ 16600 4300
Connection ~ 16600 3000
Wire Wire Line
	17500 2100 17500 4300
Connection ~ 17500 2100
Connection ~ 17500 4300
Wire Wire Line
	17500 4300 17500 5600
Wire Wire Line
	17500 5600 17500 6700
Connection ~ 17500 6700
Wire Wire Line
	17500 6700 19100 6700
Wire Wire Line
	17400 5700 17450 5700
Wire Wire Line
	17450 5700 17450 4400
Wire Wire Line
	17450 4400 17400 4400
Wire Wire Line
	17450 5700 17450 6800
Connection ~ 17450 5700
Wire Wire Line
	14950 6850 14950 5700
Wire Wire Line
	14950 5700 14900 5700
Wire Wire Line
	14950 5700 14950 4400
Wire Wire Line
	14950 4400 14900 4400
Connection ~ 14950 5700
Wire Wire Line
	12400 4400 12450 4400
Wire Wire Line
	12450 4400 12450 5700
Wire Wire Line
	12450 5700 12400 5700
Connection ~ 12450 5700
Wire Wire Line
	12450 5700 12450 6900
Wire Wire Line
	9950 6950 9950 5700
Wire Wire Line
	9950 4400 9900 4400
Wire Wire Line
	9950 5700 9900 5700
Connection ~ 9950 5700
Wire Wire Line
	9950 5700 9950 4400
Wire Wire Line
	7450 7000 7450 5700
Wire Wire Line
	7400 4400 7450 4400
Wire Wire Line
	7450 5700 7400 5700
Connection ~ 7450 5700
Wire Wire Line
	7450 5700 7450 4400
Wire Wire Line
	4900 4400 4950 4400
Wire Wire Line
	4950 4400 4950 5700
Wire Wire Line
	2450 7100 2450 5700
Wire Wire Line
	2450 4400 2400 4400
Wire Wire Line
	2450 5700 2400 5700
Connection ~ 2450 5700
Wire Wire Line
	2450 5700 2450 4400
Wire Wire Line
	4950 5700 4900 5700
Connection ~ 4950 5700
Wire Wire Line
	4950 5700 4950 7050
Wire Wire Line
	19950 2200 19950 3700
Wire Wire Line
	20650 3350 17450 3350
Wire Wire Line
	17450 2200 17450 3350
Wire Wire Line
	14950 2200 14950 3400
Wire Wire Line
	12450 2200 12450 3450
Wire Wire Line
	9950 2200 9950 3500
Wire Wire Line
	7450 2200 7450 3550
Wire Wire Line
	4950 2200 4950 3600
Wire Wire Line
	2450 2200 2450 3650
Wire Wire Line
	20000 5550 20000 7400
Wire Wire Line
	18900 7400 20000 7400
Connection ~ 20000 5550
Wire Wire Line
	19950 5650 19950 7150
Connection ~ 19950 5650
$Comp
L 74xx:74LS139 U19
U 3 1 8EA36390
P 21500 8600
F 0 "U19" V 21867 8600 50  0000 C CNN
F 1 "74LS139" V 21776 8600 50  0000 C CNN
F 2 "" H 21500 8600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 21500 8600 50  0001 C CNN
	3    21500 8600
	0    -1   -1   0   
$EndComp
Connection ~ 21000 8600
Connection ~ 22000 8600
$Comp
L 74xx:74LS139 U20
U 3 1 8EA37C02
P 21500 7950
F 0 "U20" V 21133 7950 50  0000 C CNN
F 1 "74LS139" V 21224 7950 50  0000 C CNN
F 2 "" H 21500 7950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 21500 7950 50  0001 C CNN
	3    21500 7950
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS139 U19
U 1 1 8EA3A564
P 21500 6300
F 0 "U19" H 21500 5833 50  0000 C CNN
F 1 "74LS139" H 21500 5924 50  0000 C CNN
F 2 "" H 21500 6300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 21500 6300 50  0001 C CNN
	1    21500 6300
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74LS139 U20
U 1 1 8EA3BE39
P 21500 2850
F 0 "U20" H 21500 2383 50  0000 C CNN
F 1 "74LS139" H 21500 2474 50  0000 C CNN
F 2 "" H 21500 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 21500 2850 50  0001 C CNN
	1    21500 2850
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74LS139 U19
U 2 1 8EA3E33E
P 21500 7050
F 0 "U19" H 21500 6583 50  0000 C CNN
F 1 "74LS139" H 21500 6674 50  0000 C CNN
F 2 "" H 21500 7050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 21500 7050 50  0001 C CNN
	2    21500 7050
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74LS139 U20
U 2 1 8EA3EFA6
P 21500 3600
F 0 "U20" H 21500 3133 50  0000 C CNN
F 1 "74LS139" H 21500 3224 50  0000 C CNN
F 2 "" H 21500 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 21500 3600 50  0001 C CNN
	2    21500 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	21000 7950 21000 8600
Wire Wire Line
	22000 7950 22000 8600
Wire Wire Line
	20950 7100 20950 7050
Wire Wire Line
	2450 7100 20950 7100
Wire Wire Line
	20900 6950 20900 7050
Wire Wire Line
	4950 7050 20900 7050
Wire Wire Line
	20850 7000 20850 6850
Wire Wire Line
	7450 7000 20850 7000
Wire Wire Line
	20800 6400 20800 6950
Wire Wire Line
	9950 6950 20800 6950
Wire Wire Line
	20900 6950 21000 6950
Wire Wire Line
	20850 6850 21000 6850
Wire Wire Line
	20950 7050 21000 7050
Wire Wire Line
	19950 7150 21000 7150
Wire Wire Line
	20750 6900 20750 6300
Wire Wire Line
	12450 6900 20750 6900
Wire Wire Line
	20800 6400 21000 6400
Wire Wire Line
	20750 6300 21000 6300
Wire Wire Line
	21000 6200 20700 6200
Wire Wire Line
	20700 6200 20700 6850
Wire Wire Line
	14950 6850 20700 6850
Wire Wire Line
	20650 6800 20650 6100
Wire Wire Line
	20650 6100 21000 6100
Wire Wire Line
	17450 6800 20650 6800
Wire Wire Line
	19950 3700 21000 3700
Wire Wire Line
	21000 3600 20950 3600
Wire Wire Line
	20950 3600 20950 3650
Wire Wire Line
	2450 3650 20950 3650
Wire Wire Line
	20900 3600 20900 3500
Wire Wire Line
	20900 3500 21000 3500
Wire Wire Line
	4950 3600 20900 3600
Wire Wire Line
	21000 3400 20850 3400
Wire Wire Line
	20850 3400 20850 3550
Wire Wire Line
	7450 3550 20850 3550
Wire Wire Line
	21000 2950 20800 2950
Wire Wire Line
	20800 2950 20800 3500
Wire Wire Line
	9950 3500 20800 3500
Wire Wire Line
	20750 3450 20750 2850
Wire Wire Line
	20750 2850 21000 2850
Wire Wire Line
	12450 3450 20750 3450
Wire Wire Line
	21000 2750 20700 2750
Wire Wire Line
	20700 2750 20700 3400
Wire Wire Line
	14950 3400 20700 3400
Wire Wire Line
	20650 2650 21000 2650
Wire Wire Line
	20650 2650 20650 3350
Connection ~ 22300 3400
Wire Wire Line
	22400 2650 22000 2650
Wire Wire Line
	22400 2650 22400 2750
Wire Wire Line
	22450 3600 22050 3600
Wire Wire Line
	22450 3700 22100 3700
Wire Wire Line
	22050 3600 22050 2850
Wire Wire Line
	22050 2850 22000 2850
Connection ~ 22050 3600
Wire Wire Line
	22050 3600 22000 3600
Wire Wire Line
	22000 2950 22100 2950
Wire Wire Line
	22100 2950 22100 3700
Connection ~ 22100 3700
Wire Wire Line
	22100 3700 22000 3700
Wire Wire Line
	22300 3400 22000 3400
Wire Wire Line
	22000 7150 22100 7150
Wire Wire Line
	22300 3800 22450 3800
Wire Wire Line
	22300 3400 22300 3800
Wire Wire Line
	22450 7050 22050 7050
Wire Wire Line
	22050 7050 22050 6300
Wire Wire Line
	22050 6300 22000 6300
Connection ~ 22050 7050
Wire Wire Line
	22050 7050 22000 7050
Wire Wire Line
	22100 7150 22100 6400
Wire Wire Line
	22100 6400 22000 6400
Connection ~ 22100 7150
Wire Wire Line
	22100 7150 22450 7150
Wire Wire Line
	22250 6850 22000 6850
Wire Wire Line
	22250 7250 22450 7250
Wire Wire Line
	22350 6100 22000 6100
Wire Wire Line
	22350 6100 22350 6200
Wire Wire Line
	19000 4350 19000 7300
Wire Wire Line
	19000 7300 18200 7300
Connection ~ 19000 4350
Wire Wire Line
	21750 12450 18200 12450
Wire Wire Line
	18200 12450 18200 7300
Wire Wire Line
	22000 10350 22000 11950
Wire Wire Line
	21000 10250 21000 11950
Wire Wire Line
	17450 10050 17450 10900
Wire Wire Line
	17450 10900 18250 10900
Wire Wire Line
	16100 9250 16700 9250
Wire Wire Line
	16100 9350 16700 9350
Wire Wire Line
	16100 9450 16700 9450
Wire Wire Line
	16100 9550 16700 9550
Wire Wire Line
	16100 9650 16700 9650
Wire Wire Line
	16100 9750 16700 9750
Wire Wire Line
	16100 9850 16700 9850
Wire Wire Line
	16100 9950 16700 9950
Wire Bus Line
	3500 1000 3500 1450
Wire Bus Line
	3100 4000 3100 6600
Wire Bus Line
	3100 550  3100 3100
Wire Bus Line
	1000 8000 1000 10200
Wire Bus Line
	3100 7500 3100 10050
Wire Bus Line
	5600 4000 5600 6600
Wire Bus Line
	5600 550  5600 3100
Wire Bus Line
	3500 7950 3500 10200
Wire Bus Line
	5600 7500 5600 10000
Wire Bus Line
	8100 4000 8100 6600
Wire Bus Line
	8100 550  8100 3100
Wire Bus Line
	6000 8000 6000 10200
Wire Bus Line
	8100 7500 8100 10050
Wire Bus Line
	10600 4000 10600 6600
Wire Bus Line
	10600 550  10600 3100
Wire Bus Line
	8500 8000 8500 10200
Wire Bus Line
	10600 7500 10600 10050
Wire Bus Line
	13100 4000 13100 6600
Wire Bus Line
	13100 550  13100 3100
Wire Bus Line
	11000 8000 11000 10200
Wire Bus Line
	13100 7500 13100 10050
Wire Bus Line
	15600 4000 15600 6600
Wire Bus Line
	15600 550  15600 3100
Wire Bus Line
	13500 8000 13500 10200
Wire Bus Line
	15600 7500 15600 10050
Wire Bus Line
	18100 4000 18100 6600
Wire Bus Line
	18100 550  18100 3100
Wire Bus Line
	16000 8000 16000 10200
Wire Bus Line
	18100 7500 18100 10050
Wire Bus Line
	20700 4000 20700 5600
Wire Bus Line
	20600 550  20600 3100
Wire Bus Line
	20600 4000 20600 6550
Wire Bus Line
	20700 550  20700 2150
Wire Bus Line
	18300 7500 18300 10050
Wire Bus Line
	3500 1500 3500 7500
Wire Bus Line
	1000 1000 1000 7500
Wire Bus Line
	16000 1000 16000 7500
Wire Bus Line
	13500 1000 13500 7500
Wire Bus Line
	11000 1000 11000 7500
Wire Bus Line
	8500 1000 8500 7500
Wire Bus Line
	6000 1000 6000 7500
$EndSCHEMATC
