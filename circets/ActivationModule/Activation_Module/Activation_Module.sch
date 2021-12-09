EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Activation Module"
Date "2021-12-07"
Rev "v0.1"
Comp ""
Comment1 ""
Comment2 "https://github.com/jufo-ufo/Breadboard-Computer/blob/master/LICENSE"
Comment3 "Licens: Apache License 2.0"
Comment4 "Author: Alexander Wersching"
$EndDescr
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 61AFB64B
P 850 3350
F 0 "J1" H 800 3500 50  0000 C CNN
F 1 "Service Connector" H 950 3100 50  0000 C CNN
F 2 "" H 850 3350 50  0001 C CNN
F 3 "~" H 850 3350 50  0001 C CNN
	1    850  3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 3250 1350 3250
Text Label 1100 3250 0    50   ~ 0
Vcc
Text Label 1100 3350 0    50   ~ 0
GND
Text Label 1100 3450 0    50   ~ 0
CLK_R
Text Label 1100 3550 0    50   ~ 0
CLK_F
Connection ~ 1350 3250
Wire Wire Line
	1050 3350 1650 3350
Connection ~ 2350 3350
$Comp
L 74xx:74HC86 U2
U 5 1 61B1EB53
P 1850 2350
F 0 "U2" V 1483 2350 50  0000 C CNN
F 1 "74HC86" V 1574 2350 50  0000 C CNN
F 2 "" H 1850 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 1850 2350 50  0001 C CNN
	5    1850 2350
	0    1    1    0   
$EndComp
$Comp
L 74xx:74HC86 U3
U 5 1 61B2B0C4
P 1850 1700
F 0 "U3" V 1483 1700 50  0000 C CNN
F 1 "74HC86" V 1574 1700 50  0000 C CNN
F 2 "" H 1850 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 1850 1700 50  0001 C CNN
	5    1850 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 1700 2350 2350
Connection ~ 2350 2350
Wire Wire Line
	1350 1700 1350 2350
Connection ~ 1350 2350
$Comp
L 74xx:74HC86 U2
U 4 1 61B2D713
P 5700 1500
F 0 "U2" H 5950 1450 50  0000 C CNN
F 1 "74HC86" H 6000 1600 50  0000 C CNN
F 2 "" H 5700 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 5700 1500 50  0001 C CNN
	4    5700 1500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U3
U 4 1 61B2ED6E
P 5700 2900
F 0 "U3" H 5950 2850 50  0000 C CNN
F 1 "74HC86" H 6000 3000 50  0000 C CNN
F 2 "" H 5700 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 5700 2900 50  0001 C CNN
	4    5700 2900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U2
U 3 1 61B31CB6
P 5700 1850
F 0 "U2" H 5950 1800 50  0000 C CNN
F 1 "74HC86" H 6000 1950 50  0000 C CNN
F 2 "" H 5700 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 5700 1850 50  0001 C CNN
	3    5700 1850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U3
U 3 1 61B32AD6
P 5700 3250
F 0 "U3" H 5950 3200 50  0000 C CNN
F 1 "74HC86" H 6000 3350 50  0000 C CNN
F 2 "" H 5700 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 5700 3250 50  0001 C CNN
	3    5700 3250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U2
U 2 1 61B348DE
P 5700 2200
F 0 "U2" H 5950 2150 50  0000 C CNN
F 1 "74HC86" H 6000 2300 50  0000 C CNN
F 2 "" H 5700 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 5700 2200 50  0001 C CNN
	2    5700 2200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U3
U 2 1 61B358ED
P 5700 3600
F 0 "U3" H 5950 3550 50  0000 C CNN
F 1 "74HC86" H 6000 3700 50  0000 C CNN
F 2 "" H 5700 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 5700 3600 50  0001 C CNN
	2    5700 3600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U2
U 1 1 61B3754C
P 5700 2550
F 0 "U2" H 5950 2500 50  0000 C CNN
F 1 "74HC86" H 6000 2650 50  0000 C CNN
F 2 "" H 5700 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 5700 2550 50  0001 C CNN
	1    5700 2550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U3
U 1 1 61B39359
P 5700 3950
F 0 "U3" H 5950 3900 50  0000 C CNN
F 1 "74HC86" H 6000 4050 50  0000 C CNN
F 2 "" H 5700 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 5700 3950 50  0001 C CNN
	1    5700 3950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x08 SW1
U 1 1 61B3B825
P 2100 4550
F 0 "SW1" H 2100 5217 50  0000 C CNN
F 1 "SW_DIP_x08" H 2100 5126 50  0000 C CNN
F 2 "" H 2100 4550 50  0001 C CNN
F 3 "~" H 2100 4550 50  0001 C CNN
	1    2100 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4150 1800 4150
Wire Wire Line
	1800 4850 1750 4850
Wire Wire Line
	1750 4850 1750 4750
Connection ~ 1750 4150
Wire Wire Line
	1800 4250 1750 4250
Connection ~ 1750 4250
Wire Wire Line
	1750 4250 1750 4150
Wire Wire Line
	1800 4350 1750 4350
Connection ~ 1750 4350
Wire Wire Line
	1750 4350 1750 4250
Wire Wire Line
	1800 4450 1750 4450
Connection ~ 1750 4450
Wire Wire Line
	1750 4450 1750 4350
Wire Wire Line
	1800 4550 1750 4550
Connection ~ 1750 4550
Wire Wire Line
	1750 4550 1750 4450
Wire Wire Line
	1800 4650 1750 4650
Connection ~ 1750 4650
Wire Wire Line
	1750 4650 1750 4550
Wire Wire Line
	1800 4750 1750 4750
Connection ~ 1750 4750
Wire Wire Line
	1750 4750 1750 4650
Wire Wire Line
	1350 3250 1750 3250
$Comp
L Device:R R1
U 1 1 61B55B48
P 2500 3900
F 0 "R1" H 2550 3950 50  0000 L CNN
F 1 "10k" H 2550 3850 50  0000 L CNN
F 2 "" V 2430 3900 50  0001 C CNN
F 3 "~" H 2500 3900 50  0001 C CNN
	1    2500 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 61B57FC0
P 2750 3900
F 0 "R2" H 2820 3946 50  0000 L CNN
F 1 "10k" H 2820 3855 50  0000 L CNN
F 2 "" V 2680 3900 50  0001 C CNN
F 3 "~" H 2750 3900 50  0001 C CNN
	1    2750 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 61B58E85
P 3000 3900
F 0 "R3" H 3050 3950 50  0000 L CNN
F 1 "10k" H 3050 3850 50  0000 L CNN
F 2 "" V 2930 3900 50  0001 C CNN
F 3 "~" H 3000 3900 50  0001 C CNN
	1    3000 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 61B58E8B
P 3250 3900
F 0 "R4" H 3320 3946 50  0000 L CNN
F 1 "10k" H 3320 3855 50  0000 L CNN
F 2 "" V 3180 3900 50  0001 C CNN
F 3 "~" H 3250 3900 50  0001 C CNN
	1    3250 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 61B6767E
P 3500 3900
F 0 "R5" H 3550 3950 50  0000 L CNN
F 1 "10k" H 3550 3850 50  0000 L CNN
F 2 "" V 3430 3900 50  0001 C CNN
F 3 "~" H 3500 3900 50  0001 C CNN
	1    3500 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 61B67684
P 3750 3900
F 0 "R6" H 3820 3946 50  0000 L CNN
F 1 "10k" H 3820 3855 50  0000 L CNN
F 2 "" V 3680 3900 50  0001 C CNN
F 3 "~" H 3750 3900 50  0001 C CNN
	1    3750 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 61B6768A
P 4000 3900
F 0 "R7" H 4050 3950 50  0000 L CNN
F 1 "10k" H 4050 3850 50  0000 L CNN
F 2 "" V 3930 3900 50  0001 C CNN
F 3 "~" H 4000 3900 50  0001 C CNN
	1    4000 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 61B67690
P 4250 3900
F 0 "R8" H 4320 3946 50  0000 L CNN
F 1 "10k" H 4320 3855 50  0000 L CNN
F 2 "" V 4180 3900 50  0001 C CNN
F 3 "~" H 4250 3900 50  0001 C CNN
	1    4250 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3350 2500 3350
Wire Wire Line
	2500 3750 2500 3650
Connection ~ 2500 3350
Wire Wire Line
	2500 3650 2750 3650
Wire Wire Line
	2750 3650 2750 3750
Connection ~ 2500 3650
Wire Wire Line
	2750 3650 3000 3650
Wire Wire Line
	3000 3650 3000 3750
Connection ~ 2750 3650
Wire Wire Line
	3000 3650 3250 3650
Wire Wire Line
	3250 3650 3250 3750
Connection ~ 3000 3650
Wire Wire Line
	3250 3650 3500 3650
Wire Wire Line
	3500 3650 3500 3750
Connection ~ 3250 3650
Wire Wire Line
	3500 3650 3750 3650
Wire Wire Line
	3750 3650 3750 3750
Connection ~ 3500 3650
Wire Wire Line
	3750 3650 4000 3650
Wire Wire Line
	4000 3650 4000 3750
Connection ~ 3750 3650
Wire Wire Line
	4000 3650 4250 3650
Wire Wire Line
	4250 3650 4250 3750
Connection ~ 4000 3650
Wire Wire Line
	2500 4050 2500 4150
Wire Wire Line
	2500 4150 2400 4150
Wire Wire Line
	2400 4250 2750 4250
Wire Wire Line
	2750 4250 2750 4050
Wire Wire Line
	3000 4050 3000 4350
Wire Wire Line
	3000 4350 2400 4350
Wire Wire Line
	1750 3250 1750 4150
Connection ~ 1750 3250
Wire Wire Line
	3250 4450 2400 4450
Wire Wire Line
	3250 4050 3250 4450
Wire Wire Line
	3500 4050 3500 4550
Wire Wire Line
	3500 4550 2400 4550
Wire Wire Line
	2400 4650 3750 4650
Wire Wire Line
	3750 4650 3750 4050
Wire Wire Line
	4000 4050 4000 4750
Wire Wire Line
	4000 4750 2400 4750
Wire Wire Line
	2400 4850 4250 4850
Wire Wire Line
	4250 4850 4250 4050
Connection ~ 2500 4150
Connection ~ 2750 4250
Connection ~ 3000 4350
Connection ~ 3250 4450
Connection ~ 3500 4550
Connection ~ 3750 4650
Connection ~ 4000 4750
Connection ~ 4250 4850
Wire Wire Line
	4500 4150 4500 1400
Wire Wire Line
	2500 4150 4500 4150
Wire Wire Line
	2750 4250 4550 4250
Wire Wire Line
	3000 4350 4600 4350
Wire Wire Line
	3250 4450 4650 4450
Wire Wire Line
	3500 4550 4700 4550
Wire Wire Line
	4600 2100 4600 4350
Wire Wire Line
	4700 2800 4700 4550
Wire Wire Line
	3750 4650 4750 4650
Wire Wire Line
	4800 3500 4800 4750
Wire Wire Line
	4000 4750 4800 4750
Wire Wire Line
	4250 4850 4850 4850
Wire Wire Line
	5400 4050 5300 4050
Wire Wire Line
	5250 3700 5400 3700
Wire Wire Line
	5400 3350 5200 3350
Wire Wire Line
	4550 1750 4550 4250
Wire Wire Line
	4750 3150 4750 4650
Wire Wire Line
	5400 3000 5150 3000
Wire Wire Line
	5400 2650 5100 2650
Wire Wire Line
	5400 2300 5050 2300
Wire Wire Line
	5400 1950 5000 1950
Wire Wire Line
	4850 3850 5400 3850
Wire Wire Line
	4800 3500 5400 3500
Wire Wire Line
	4750 3150 5400 3150
Wire Wire Line
	4700 2800 5400 2800
Wire Wire Line
	4650 2450 4650 4450
Wire Wire Line
	4500 1400 5400 1400
Wire Wire Line
	4550 1750 5400 1750
Wire Wire Line
	4600 2100 5400 2100
Wire Wire Line
	4650 2450 5400 2450
Wire Wire Line
	5400 1600 4950 1600
$Comp
L Connector:Conn_01x08_Male J2
U 1 1 61C8D530
P 2200 5850
F 0 "J2" V 2150 6150 50  0000 C CNN
F 1 "ctrl line input" V 2150 5750 50  0000 C CNN
F 2 "" H 2200 5850 50  0001 C CNN
F 3 "~" H 2200 5850 50  0001 C CNN
	1    2200 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3850 4850 4850
Wire Wire Line
	2500 3650 2500 3350
Wire Wire Line
	6400 3100 6350 3100
Wire Wire Line
	6350 3100 6350 3950
Wire Wire Line
	6350 3950 6000 3950
Wire Wire Line
	6400 3000 6300 3000
Wire Wire Line
	6300 3000 6300 3600
Wire Wire Line
	6300 3600 6000 3600
Wire Wire Line
	6400 2900 6250 2900
Wire Wire Line
	6250 2900 6250 3250
Wire Wire Line
	6250 3250 6000 3250
Wire Wire Line
	6400 2800 6200 2800
Wire Wire Line
	6200 2800 6200 2900
Wire Wire Line
	6200 2900 6000 2900
Wire Wire Line
	6400 2700 6200 2700
Wire Wire Line
	6200 2700 6200 2550
Wire Wire Line
	6200 2550 6000 2550
Wire Wire Line
	6400 2600 6250 2600
Wire Wire Line
	6250 2600 6250 2200
Wire Wire Line
	6250 2200 6000 2200
Wire Wire Line
	6400 2500 6300 2500
Wire Wire Line
	6300 2500 6300 1850
Wire Wire Line
	6300 1850 6000 1850
Wire Wire Line
	6400 2400 6350 2400
Wire Wire Line
	6350 2400 6350 1500
Wire Wire Line
	6350 1500 6000 1500
$Comp
L 74xx:74LS32 U4
U 1 1 61AF4FA2
P 8100 3100
F 0 "U4" H 8100 3425 50  0000 C CNN
F 1 "74LS32" H 8100 3334 50  0000 C CNN
F 2 "" H 8100 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8100 3100 50  0001 C CNN
	1    8100 3100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U4
U 4 1 61AFE0FA
P 8100 1600
F 0 "U4" H 8100 1925 50  0000 C CNN
F 1 "74LS32" H 8100 1834 50  0000 C CNN
F 2 "" H 8100 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8100 1600 50  0001 C CNN
	4    8100 1600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U4
U 5 1 61B014D2
P 1850 1050
F 0 "U4" V 1483 1050 50  0000 C CNN
F 1 "74LS32" V 1574 1050 50  0000 C CNN
F 2 "" H 1850 1050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 1850 1050 50  0001 C CNN
	5    1850 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 1700 1350 1050
Connection ~ 1350 1700
Wire Wire Line
	2350 1050 2350 1700
Connection ~ 2350 1700
Wire Wire Line
	1650 3350 1650 5050
Wire Wire Line
	1650 5050 2500 5050
Connection ~ 1650 3350
Wire Wire Line
	1650 3350 2350 3350
$Comp
L Device:R R9
U 1 1 61B3ADE7
P 2500 5300
F 0 "R9" H 2550 5350 50  0000 L CNN
F 1 "10k" H 2550 5250 50  0000 L CNN
F 2 "" V 2430 5300 50  0001 C CNN
F 3 "~" H 2500 5300 50  0001 C CNN
	1    2500 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 61B3EA69
P 2750 5300
F 0 "R10" H 2800 5350 50  0000 L CNN
F 1 "10k" H 2800 5250 50  0000 L CNN
F 2 "" V 2680 5300 50  0001 C CNN
F 3 "~" H 2750 5300 50  0001 C CNN
	1    2750 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 61B42642
P 3000 5300
F 0 "R11" H 3050 5350 50  0000 L CNN
F 1 "10k" H 3050 5250 50  0000 L CNN
F 2 "" V 2930 5300 50  0001 C CNN
F 3 "~" H 3000 5300 50  0001 C CNN
	1    3000 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 61B462C7
P 3250 5300
F 0 "R12" H 3300 5350 50  0000 L CNN
F 1 "10k" H 3300 5250 50  0000 L CNN
F 2 "" V 3180 5300 50  0001 C CNN
F 3 "~" H 3250 5300 50  0001 C CNN
	1    3250 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 61B4DC5D
P 3750 5300
F 0 "R14" H 3800 5350 50  0000 L CNN
F 1 "10k" H 3800 5250 50  0000 L CNN
F 2 "" V 3680 5300 50  0001 C CNN
F 3 "~" H 3750 5300 50  0001 C CNN
	1    3750 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 61B51954
P 4000 5300
F 0 "R15" H 4050 5350 50  0000 L CNN
F 1 "10k" H 4050 5250 50  0000 L CNN
F 2 "" V 3930 5300 50  0001 C CNN
F 3 "~" H 4000 5300 50  0001 C CNN
	1    4000 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 61B5564D
P 4250 5300
F 0 "R16" H 4300 5350 50  0000 L CNN
F 1 "10k" H 4300 5250 50  0000 L CNN
F 2 "" V 4180 5300 50  0001 C CNN
F 3 "~" H 4250 5300 50  0001 C CNN
	1    4250 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5150 2500 5050
Connection ~ 2500 5050
Wire Wire Line
	2500 5050 2750 5050
Wire Wire Line
	2750 5150 2750 5050
Connection ~ 2750 5050
Wire Wire Line
	2750 5050 3000 5050
Wire Wire Line
	3000 5150 3000 5050
Connection ~ 3000 5050
Wire Wire Line
	3000 5050 3250 5050
Wire Wire Line
	3250 5150 3250 5050
Connection ~ 3250 5050
Wire Wire Line
	3250 5050 3500 5050
Wire Wire Line
	3500 5150 3500 5050
Connection ~ 3500 5050
Wire Wire Line
	3750 5150 3750 5050
Wire Wire Line
	3500 5050 3750 5050
Connection ~ 3750 5050
Wire Wire Line
	3750 5050 4000 5050
Wire Wire Line
	4000 5150 4000 5050
Connection ~ 4000 5050
Wire Wire Line
	4000 5050 4250 5050
Wire Wire Line
	4250 5150 4250 5050
Wire Wire Line
	2500 5450 2500 5550
Wire Wire Line
	2500 5550 2400 5550
Wire Wire Line
	2750 5450 2750 5650
Wire Wire Line
	2750 5650 2400 5650
Wire Wire Line
	3000 5450 3000 5750
Wire Wire Line
	3000 5750 2400 5750
Wire Wire Line
	3250 5450 3250 5850
Wire Wire Line
	3250 5850 2400 5850
Wire Wire Line
	3500 5450 3500 5950
Wire Wire Line
	3500 5950 2400 5950
Wire Wire Line
	2400 6050 3750 6050
Wire Wire Line
	3750 6050 3750 5450
Wire Wire Line
	4000 5450 4000 6150
Wire Wire Line
	4000 6150 2400 6150
Wire Wire Line
	2400 6250 4250 6250
Wire Wire Line
	4250 6250 4250 5450
Wire Wire Line
	4950 5550 2500 5550
Wire Wire Line
	4950 1600 4950 5550
Connection ~ 2500 5550
Wire Wire Line
	2750 5650 5000 5650
Wire Wire Line
	5000 1950 5000 5650
Connection ~ 2750 5650
Wire Wire Line
	5050 5750 3000 5750
Wire Wire Line
	5050 2300 5050 5750
Connection ~ 3000 5750
Wire Wire Line
	3250 5850 5100 5850
Wire Wire Line
	5100 2650 5100 5850
Connection ~ 3250 5850
Wire Wire Line
	5150 5950 3500 5950
Wire Wire Line
	5150 3000 5150 5950
Connection ~ 3500 5950
Wire Wire Line
	3750 6050 5200 6050
Wire Wire Line
	5200 3350 5200 6050
Connection ~ 3750 6050
Wire Wire Line
	5250 6150 4000 6150
Wire Wire Line
	5250 3700 5250 6150
Connection ~ 4000 6150
Wire Wire Line
	5300 6250 4250 6250
Wire Wire Line
	5300 4050 5300 6250
Connection ~ 4250 6250
$Comp
L Switch:SW_DIP_x01 SW2
U 1 1 61CCA2AA
P 2950 2750
F 0 "SW2" H 2950 3017 50  0000 C CNN
F 1 "RW" H 2950 2926 50  0000 C CNN
F 2 "" H 2950 2750 50  0001 C CNN
F 3 "~" H 2950 2750 50  0001 C CNN
	1    2950 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2750 2600 2750
$Comp
L Device:R R?
U 1 1 61CD4A8D
P 3350 3000
F 0 "R?" H 3400 3050 50  0000 L CNN
F 1 "10k" H 3400 2950 50  0000 L CNN
F 2 "" V 3280 3000 50  0001 C CNN
F 3 "~" H 3350 3000 50  0001 C CNN
	1    3350 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2750 3350 2750
Wire Wire Line
	3350 2750 3350 2850
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 61D28570
P 9800 1700
F 0 "J3" H 9828 1676 50  0000 L CNN
F 1 "Signal_Out" H 9828 1585 50  0000 L CNN
F 2 "" H 9800 1700 50  0001 C CNN
F 3 "~" H 9800 1700 50  0001 C CNN
	1    9800 1700
	1    0    0    -1  
$EndComp
$Comp
L 4xxx_IEEE:4078 U5
U 1 1 61D81B04
P 6900 2750
F 0 "U5" H 6900 3366 50  0000 C CNN
F 1 "4078" H 6900 3275 50  0000 C CNN
F 2 "" H 6900 2750 50  0001 C CNN
F 3 "" H 6900 2750 50  0001 C CNN
	1    6900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5050 6900 5050
Wire Wire Line
	6900 5050 6900 3150
Wire Wire Line
	6900 2350 6900 1250
Wire Wire Line
	6900 1250 4200 1250
Wire Wire Line
	4200 1250 4200 3250
Wire Wire Line
	4300 3450 4300 1000
Wire Wire Line
	1050 3550 4400 3550
Wire Wire Line
	1050 3450 4300 3450
Wire Wire Line
	4400 3550 4400 1100
Wire Wire Line
	4400 1100 7550 1100
Wire Wire Line
	3350 2750 4100 2750
Wire Wire Line
	4100 2750 4100 900 
Connection ~ 3350 2750
Wire Wire Line
	7800 1500 7650 1500
Wire Wire Line
	7650 1500 7650 3000
Wire Wire Line
	7650 3000 7800 3000
Wire Wire Line
	1750 3250 3350 3250
Wire Wire Line
	2500 3350 2600 3350
Wire Wire Line
	2600 2750 2600 3350
Connection ~ 2600 3350
Wire Wire Line
	2600 3350 3600 3350
Wire Wire Line
	3350 3150 3350 3250
Connection ~ 3350 3250
Wire Wire Line
	3350 3250 4200 3250
Wire Wire Line
	7650 900  7650 1500
Wire Wire Line
	4100 900  7650 900 
Connection ~ 7650 1500
Wire Wire Line
	7550 1100 7550 3200
Wire Wire Line
	7550 3200 7800 3200
Wire Wire Line
	7800 1700 7750 1700
Wire Wire Line
	4300 1000 7750 1000
Wire Wire Line
	7750 1000 7750 1700
$Comp
L Computer_Component_Library:SN54LS08 U1
U 1 1 61EDEBDF
P 8750 1700
F 0 "U1" H 8775 2025 50  0000 C CNN
F 1 "SN54LS08" H 8775 1934 50  0000 C CNN
F 2 "" H 8750 1700 50  0001 C CNN
F 3 "" H 8750 1700 50  0001 C CNN
	1    8750 1700
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:SN54LS08 U1
U 2 1 61EE15E2
P 8700 3200
F 0 "U1" H 8725 3525 50  0000 C CNN
F 1 "SN54LS08" H 8725 3434 50  0000 C CNN
F 2 "" H 8700 3200 50  0001 C CNN
F 3 "" H 8700 3200 50  0001 C CNN
	2    8700 3200
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:SN54LS08 U1
U 5 1 61EE530B
P 1850 3000
F 0 "U1" H 1825 3315 50  0000 C CNN
F 1 "SN54LS08" H 1825 3224 50  0000 C CNN
F 2 "" H 1850 3000 50  0001 C CNN
F 3 "" H 1850 3000 50  0001 C CNN
	5    1850 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2350 1350 3000
Wire Wire Line
	2200 3000 2350 3000
Wire Wire Line
	2350 2350 2350 3000
Connection ~ 2350 3000
Wire Wire Line
	2350 3000 2350 3350
Wire Wire Line
	1450 3000 1350 3000
Connection ~ 1350 3000
Wire Wire Line
	1350 3000 1350 3250
Wire Wire Line
	8500 3300 8450 3300
Wire Wire Line
	8450 3300 8450 1800
Wire Wire Line
	8450 1800 8550 1800
Wire Wire Line
	8550 1600 8400 1600
Wire Wire Line
	8500 3100 8400 3100
Wire Wire Line
	8450 3300 7450 3300
Wire Wire Line
	7450 3300 7450 2750
Wire Wire Line
	7450 2750 7400 2750
Connection ~ 8450 3300
Wire Wire Line
	9000 1700 9600 1700
Text Label 9050 1700 0    50   ~ 0
Signal_Out_1
Wire Wire Line
	9600 1800 9000 1800
Wire Wire Line
	9000 1800 9000 3200
Wire Wire Line
	9000 3200 8950 3200
Text Label 9050 1800 0    50   ~ 0
Signal_Out_2
$Comp
L Device:R R13
U 1 1 61B4A036
P 3500 5300
F 0 "R13" H 3550 5350 50  0000 L CNN
F 1 "10k" H 3550 5250 50  0000 L CNN
F 2 "" V 3430 5300 50  0001 C CNN
F 3 "~" H 3500 5300 50  0001 C CNN
	1    3500 5300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
