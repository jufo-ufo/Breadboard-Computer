EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "2022-01-13"
Rev "v0.3"
Comp ""
Comment1 ""
Comment2 "https://github.com/jufo-ufo/Breadboard-Computer/blob/master/LICENSE"
Comment3 "License: Apache License 2.0"
Comment4 "Author: Alexander Wersching"
$EndDescr
$Comp
L Computer_Component_Library:Bus_Connector J1
U 1 1 61D5D066
P 2700 1150
F 0 "J1" H 1826 1201 50  0000 R CNN
F 1 "Bus_Connector" H 1826 1110 50  0000 R CNN
F 2 "Computer_Component_Library:PinHeader_1x78_P2.54mm_Horizontal" H 1400 500 50  0001 C CNN
F 3 "" H 1400 500 50  0001 C CNN
	1    2700 1150
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:AM-Connector U1
U 4 1 61D5E9D5
P 2050 2550
F 0 "U1" H 1723 3525 50  0000 C CNN
F 1 "AM-Connector" H 1723 3434 50  0000 C CNN
F 2 "Computer_Component_Library:PinHeader_1x42_P2.54mm_Horizontal" H 2200 2550 50  0001 C CNN
F 3 "" H 2200 2550 50  0001 C CNN
	4    2050 2550
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:AM-Connector U1
U 2 1 61D5FB9D
P 8950 4950
F 0 "U1" H 8574 5001 50  0000 R CNN
F 1 "AM-Connector" H 8574 4910 50  0000 R CNN
F 2 "Computer_Component_Library:PinHeader_1x42_P2.54mm_Horizontal" H 9100 4950 50  0001 C CNN
F 3 "" H 9100 4950 50  0001 C CNN
	2    8950 4950
	-1   0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:Bus_Connector J1
U 10 1 61D61397
P 8600 5700
F 0 "J1" H 8462 6025 50  0000 C CNN
F 1 "Bus_Connector" H 8462 5934 50  0000 C CNN
F 2 "Computer_Component_Library:PinHeader_1x78_P2.54mm_Horizontal" H 7300 5050 50  0001 C CNN
F 3 "" H 7300 5050 50  0001 C CNN
	10   8600 5700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Female J3
U 1 1 61D64B40
P 6450 5800
F 0 "J3" H 6478 5776 50  0000 L CNN
F 1 "D_L" H 6478 5685 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x16_P2.00mm_Vertical" H 6450 5800 50  0001 C CNN
F 3 "~" H 6450 5800 50  0001 C CNN
	1    6450 5800
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC573 U6
U 1 1 61D75243
P 5350 5450
F 0 "U6" H 5050 6100 50  0000 C CNN
F 1 "74HC573" H 5550 6100 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 5300 5900 50  0001 C CNN
F 3 "" H 5300 5900 50  0001 C CNN
	1    5350 5450
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC573 U7
U 1 1 61D781EA
P 5350 7100
F 0 "U7" H 5050 7750 50  0000 C CNN
F 1 "74HC573" H 5550 7750 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 5300 7550 50  0001 C CNN
F 3 "" H 5300 7550 50  0001 C CNN
	1    5350 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5100 6250 5100
Wire Wire Line
	6250 5200 5750 5200
Wire Wire Line
	5750 5300 6250 5300
Wire Wire Line
	6250 5400 5750 5400
Wire Wire Line
	5750 5500 6250 5500
Wire Wire Line
	6250 5600 5750 5600
Wire Wire Line
	5750 5700 6250 5700
Wire Wire Line
	5750 5800 6250 5800
Wire Wire Line
	6250 5900 5850 5900
Wire Wire Line
	5850 5900 5850 6750
Wire Wire Line
	5850 6750 5750 6750
Wire Wire Line
	5750 6850 5900 6850
Wire Wire Line
	5900 6850 5900 6000
Wire Wire Line
	5900 6000 6250 6000
Wire Wire Line
	6250 6100 5950 6100
Wire Wire Line
	5950 6100 5950 6950
Wire Wire Line
	5950 6950 5750 6950
Wire Wire Line
	5750 7050 6000 7050
Wire Wire Line
	6000 7050 6000 6200
Wire Wire Line
	6000 6200 6250 6200
Wire Wire Line
	6250 6300 6050 6300
Wire Wire Line
	6050 6300 6050 7150
Wire Wire Line
	6050 7150 5750 7150
Wire Wire Line
	6250 6400 6100 6400
Wire Wire Line
	6100 6400 6100 7250
Wire Wire Line
	6100 7250 5750 7250
Wire Wire Line
	5750 7350 6150 7350
Wire Wire Line
	6150 7350 6150 6500
Wire Wire Line
	6150 6500 6250 6500
Wire Wire Line
	6250 6600 6200 6600
Wire Wire Line
	6200 6600 6200 7450
Wire Wire Line
	6200 7450 5750 7450
$Comp
L power:+5V #PWR0101
U 1 1 61DBABB7
P 5350 6400
F 0 "#PWR0101" H 5350 6250 50  0001 C CNN
F 1 "+5V" H 5365 6573 50  0000 C CNN
F 2 "" H 5350 6400 50  0001 C CNN
F 3 "" H 5350 6400 50  0001 C CNN
	1    5350 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 61DCC6E9
P 5350 4750
F 0 "#PWR0102" H 5350 4600 50  0001 C CNN
F 1 "+5V" H 5365 4923 50  0000 C CNN
F 2 "" H 5350 4750 50  0001 C CNN
F 3 "" H 5350 4750 50  0001 C CNN
	1    5350 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 61DD6EA4
P 5350 7000
F 0 "#PWR0103" H 5350 6750 50  0001 C CNN
F 1 "GND" H 5355 6827 50  0000 C CNN
F 2 "" H 5350 7000 50  0001 C CNN
F 3 "" H 5350 7000 50  0001 C CNN
	1    5350 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 61DE0344
P 5350 5950
F 0 "#PWR0104" H 5350 5700 50  0001 C CNN
F 1 "GND" H 5355 5777 50  0000 C CNN
F 2 "" H 5350 5950 50  0001 C CNN
F 3 "" H 5350 5950 50  0001 C CNN
	1    5350 5950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Female J2
U 1 1 61E097AF
P 6450 2500
F 0 "J2" H 6478 2476 50  0000 L CNN
F 1 "D_H" H 6478 2385 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x16_P2.00mm_Vertical" H 6450 2500 50  0001 C CNN
F 3 "~" H 6450 2500 50  0001 C CNN
	1    6450 2500
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC573 U4
U 1 1 61E097B5
P 5350 2150
F 0 "U4" H 5050 2800 50  0000 C CNN
F 1 "74HC573" H 5550 2800 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 5300 2600 50  0001 C CNN
F 3 "" H 5300 2600 50  0001 C CNN
	1    5350 2150
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC573 U5
U 1 1 61E097BB
P 5350 3800
F 0 "U5" H 5050 4450 50  0000 C CNN
F 1 "74HC573" H 5550 4450 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 5300 4250 50  0001 C CNN
F 3 "" H 5300 4250 50  0001 C CNN
	1    5350 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1800 6250 1800
Wire Wire Line
	6250 1900 5750 1900
Wire Wire Line
	5750 2000 6250 2000
Wire Wire Line
	6250 2100 5750 2100
Wire Wire Line
	5750 2200 6250 2200
Wire Wire Line
	6250 2300 5750 2300
Wire Wire Line
	5750 2400 6250 2400
Wire Wire Line
	5750 2500 6250 2500
Wire Wire Line
	6250 2600 5850 2600
Wire Wire Line
	5850 2600 5850 3450
Wire Wire Line
	5850 3450 5750 3450
Wire Wire Line
	5750 3550 5900 3550
Wire Wire Line
	5900 3550 5900 2700
Wire Wire Line
	5900 2700 6250 2700
Wire Wire Line
	6250 2800 5950 2800
Wire Wire Line
	5950 2800 5950 3650
Wire Wire Line
	5950 3650 5750 3650
Wire Wire Line
	5750 3750 6000 3750
Wire Wire Line
	6000 3750 6000 2900
Wire Wire Line
	6000 2900 6250 2900
Wire Wire Line
	6250 3000 6050 3000
Wire Wire Line
	6050 3000 6050 3850
Wire Wire Line
	6050 3850 5750 3850
Wire Wire Line
	6250 3100 6100 3100
Wire Wire Line
	6100 3100 6100 3950
Wire Wire Line
	6100 3950 5750 3950
Wire Wire Line
	5750 4050 6150 4050
Wire Wire Line
	6150 4050 6150 3200
Wire Wire Line
	6150 3200 6250 3200
Wire Wire Line
	6250 3300 6200 3300
Wire Wire Line
	6200 3300 6200 4150
$Comp
L power:+5V #PWR0105
U 1 1 61E097E1
P 5350 3100
F 0 "#PWR0105" H 5350 2950 50  0001 C CNN
F 1 "+5V" H 5365 3273 50  0000 C CNN
F 2 "" H 5350 3100 50  0001 C CNN
F 3 "" H 5350 3100 50  0001 C CNN
	1    5350 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 61E097E7
P 5350 1450
F 0 "#PWR0106" H 5350 1300 50  0001 C CNN
F 1 "+5V" H 5365 1623 50  0000 C CNN
F 2 "" H 5350 1450 50  0001 C CNN
F 3 "" H 5350 1450 50  0001 C CNN
	1    5350 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 61E097ED
P 5350 4300
F 0 "#PWR0107" H 5350 4050 50  0001 C CNN
F 1 "GND" H 5355 4127 50  0000 C CNN
F 2 "" H 5350 4300 50  0001 C CNN
F 3 "" H 5350 4300 50  0001 C CNN
	1    5350 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 61E097F3
P 5350 2650
F 0 "#PWR0108" H 5350 2400 50  0001 C CNN
F 1 "GND" H 5355 2477 50  0000 C CNN
F 2 "" H 5350 2650 50  0001 C CNN
F 3 "" H 5350 2650 50  0001 C CNN
	1    5350 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1800 4550 1800
Wire Wire Line
	4550 1800 4550 5100
Wire Wire Line
	4550 5100 4950 5100
Wire Wire Line
	4950 5200 4500 5200
Wire Wire Line
	4500 5200 4500 1900
Wire Wire Line
	4500 1900 4950 1900
Wire Wire Line
	4950 2000 4450 2000
Wire Wire Line
	4450 2000 4450 5300
Wire Wire Line
	4450 5300 4950 5300
Wire Wire Line
	4400 2100 4950 2100
Wire Wire Line
	4950 2200 4350 2200
Wire Wire Line
	4350 2200 4350 5500
Wire Wire Line
	4400 5400 4950 5400
Wire Wire Line
	4400 5400 4400 2100
Wire Wire Line
	4350 5500 4950 5500
Wire Wire Line
	4950 2300 4300 2300
Wire Wire Line
	4300 2300 4300 5600
Wire Wire Line
	4300 5600 4950 5600
Wire Wire Line
	4250 5700 4250 2400
Wire Wire Line
	4250 2400 4950 2400
Wire Wire Line
	4950 2500 4200 2500
Wire Wire Line
	4200 2500 4200 5800
Wire Wire Line
	4200 5800 4950 5800
Wire Wire Line
	4250 5700 4950 5700
Wire Wire Line
	4100 3450 4100 6750
Wire Wire Line
	4100 6750 4950 6750
Wire Wire Line
	4950 6850 4050 6850
Wire Wire Line
	4050 6850 4050 3550
Wire Wire Line
	4050 3550 4950 3550
Wire Wire Line
	4950 3650 4000 3650
Wire Wire Line
	4000 3650 4000 6950
Wire Wire Line
	4000 6950 4950 6950
Wire Wire Line
	4950 7050 3950 7050
Wire Wire Line
	3950 7050 3950 3750
Wire Wire Line
	3950 3750 4950 3750
Wire Wire Line
	4950 3850 3900 3850
Wire Wire Line
	3900 3850 3900 7150
Wire Wire Line
	3900 7150 4950 7150
Wire Wire Line
	3850 7250 3850 3950
Wire Wire Line
	3850 3950 4950 3950
Wire Wire Line
	4950 4050 3800 4050
Wire Wire Line
	3800 4050 3800 7350
Wire Wire Line
	3800 7350 4950 7350
Wire Wire Line
	3850 7250 4950 7250
Wire Wire Line
	4950 7450 3750 7450
Wire Wire Line
	3750 7450 3750 4150
Wire Wire Line
	3750 4150 4950 4150
Wire Wire Line
	4550 1800 3700 1800
Connection ~ 4550 1800
Connection ~ 4500 1900
Wire Wire Line
	4450 2000 3700 2000
Connection ~ 4450 2000
Wire Wire Line
	3700 1900 4500 1900
Wire Wire Line
	3700 2100 4400 2100
Connection ~ 4400 2100
Wire Wire Line
	4350 2200 3700 2200
Connection ~ 4350 2200
Wire Wire Line
	3700 2300 4300 2300
Connection ~ 4300 2300
Wire Wire Line
	4250 2400 3700 2400
Connection ~ 4250 2400
Wire Wire Line
	3700 2500 4200 2500
Connection ~ 4200 2500
$Comp
L Computer_Component_Library:AM-Connector U1
U 1 1 61F7CA0B
P 8300 3850
F 0 "U1" H 7680 3809 50  0000 R CNN
F 1 "AM-Connector" H 7680 3900 50  0000 R CNN
F 2 "Computer_Component_Library:PinHeader_1x42_P2.54mm_Horizontal" H 8450 3850 50  0001 C CNN
F 3 "" H 8450 3850 50  0001 C CNN
	1    8300 3850
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74LS00 U9
U 5 1 61F8EA4D
P 9200 2400
F 0 "U9" H 9430 2446 50  0000 L CNN
F 1 "74LS00" H 9430 2355 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 9200 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 9200 2400 50  0001 C CNN
	5    9200 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 61F9047B
P 9200 2900
F 0 "#PWR0109" H 9200 2650 50  0001 C CNN
F 1 "GND" H 9205 2727 50  0000 C CNN
F 2 "" H 9200 2900 50  0001 C CNN
F 3 "" H 9200 2900 50  0001 C CNN
	1    9200 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 61F98093
P 9200 1900
F 0 "#PWR0110" H 9200 1750 50  0001 C CNN
F 1 "+5V" H 9215 2073 50  0000 C CNN
F 2 "" H 9200 1900 50  0001 C CNN
F 3 "" H 9200 1900 50  0001 C CNN
	1    9200 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4950 5800 6600
Wire Wire Line
	5800 6600 5750 6600
Connection ~ 5800 4950
Wire Wire Line
	5800 4950 5750 4950
$Comp
L 74xx:74LS08 U8
U 1 1 620A8EFE
P 7450 4950
F 0 "U8" H 7450 4633 50  0000 C CNN
F 1 "74LS08" H 7450 4724 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 7450 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 7450 4950 50  0001 C CNN
	1    7450 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 4150 6200 4150
Wire Wire Line
	5750 1650 5800 1650
Wire Wire Line
	5750 3300 5800 3300
Wire Wire Line
	5800 3300 5800 1650
Connection ~ 5800 1650
$Comp
L 74xx:74LS00 U9
U 3 1 6216F5A5
P 7800 3350
F 0 "U9" V 7846 3170 50  0000 R CNN
F 1 "74LS00" V 7755 3170 50  0000 R CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 7800 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 7800 3350 50  0001 C CNN
	3    7800 3350
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74LS08 U8
U 2 1 62192E43
P 7500 1650
F 0 "U8" H 7500 1333 50  0000 C CNN
F 1 "74LS08" H 7500 1424 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 7500 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 7500 1650 50  0001 C CNN
	2    7500 1650
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74LS08 U8
U 5 1 62196AE3
P 10450 2400
F 0 "U8" H 10680 2446 50  0000 L CNN
F 1 "74LS08" H 10680 2355 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 10450 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 10450 2400 50  0001 C CNN
	5    10450 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 621A3547
P 10450 1900
F 0 "#PWR0111" H 10450 1750 50  0001 C CNN
F 1 "+5V" H 10465 2073 50  0000 C CNN
F 2 "" H 10450 1900 50  0001 C CNN
F 3 "" H 10450 1900 50  0001 C CNN
	1    10450 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 621A4653
P 10450 2900
F 0 "#PWR0112" H 10450 2650 50  0001 C CNN
F 1 "GND" H 10455 2727 50  0000 C CNN
F 2 "" H 10450 2900 50  0001 C CNN
F 3 "" H 10450 2900 50  0001 C CNN
	1    10450 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4850 7800 4850
$Comp
L power:GND #PWR0113
U 1 1 6230ACFA
P 2850 1000
F 0 "#PWR0113" H 2850 750 50  0001 C CNN
F 1 "GND" V 2855 872 50  0000 R CNN
F 2 "" H 2850 1000 50  0001 C CNN
F 3 "" H 2850 1000 50  0001 C CNN
	1    2850 1000
	0    -1   1    0   
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 6230BEF9
P 2850 1100
F 0 "#PWR0114" H 2850 950 50  0001 C CNN
F 1 "+5V" V 2865 1228 50  0000 L CNN
F 2 "" H 2850 1100 50  0001 C CNN
F 3 "" H 2850 1100 50  0001 C CNN
	1    2850 1100
	0    1    -1   0   
$EndComp
Wire Wire Line
	7750 5050 8000 5050
Connection ~ 8000 5050
Wire Wire Line
	8000 5050 8100 5050
Wire Wire Line
	8800 4950 8700 4950
$Comp
L Computer_Component_Library:74HC573 U3
U 1 1 62635D9C
P 3300 3800
F 0 "U3" H 3000 4450 50  0000 C CNN
F 1 "74HC573" H 3500 4450 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 3250 4250 50  0001 C CNN
F 3 "" H 3250 4250 50  0001 C CNN
	1    3300 3800
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:74HC573 U2
U 1 1 6264077A
P 3300 2150
F 0 "U2" H 3000 2800 50  0000 C CNN
F 1 "74HC573" H 3500 2800 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 3250 2600 50  0001 C CNN
F 3 "" H 3250 2600 50  0001 C CNN
	1    3300 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 62644CBA
P 3300 1450
F 0 "#PWR0115" H 3300 1300 50  0001 C CNN
F 1 "+5V" H 3315 1623 50  0000 C CNN
F 2 "" H 3300 1450 50  0001 C CNN
F 3 "" H 3300 1450 50  0001 C CNN
	1    3300 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 626464AB
P 3300 2650
F 0 "#PWR0116" H 3300 2400 50  0001 C CNN
F 1 "GND" H 3305 2477 50  0000 C CNN
F 2 "" H 3300 2650 50  0001 C CNN
F 3 "" H 3300 2650 50  0001 C CNN
	1    3300 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0117
U 1 1 626495D0
P 3300 3100
F 0 "#PWR0117" H 3300 2950 50  0001 C CNN
F 1 "+5V" H 3315 3273 50  0000 C CNN
F 2 "" H 3300 3100 50  0001 C CNN
F 3 "" H 3300 3100 50  0001 C CNN
	1    3300 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 6264B022
P 3300 4300
F 0 "#PWR0118" H 3300 4050 50  0001 C CNN
F 1 "GND" H 3305 4127 50  0000 C CNN
F 2 "" H 3300 4300 50  0001 C CNN
F 3 "" H 3300 4300 50  0001 C CNN
	1    3300 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1200 3750 1200
Wire Wire Line
	3750 1200 3750 1650
Wire Wire Line
	3750 3300 3700 3300
Wire Wire Line
	3750 1650 3700 1650
Connection ~ 3750 1650
Wire Wire Line
	3750 1650 3750 3300
Wire Wire Line
	3700 3450 4100 3450
Connection ~ 4100 3450
Wire Wire Line
	4100 3450 4950 3450
Wire Wire Line
	4050 3550 3700 3550
Connection ~ 4050 3550
Wire Wire Line
	3700 3650 4000 3650
Connection ~ 4000 3650
Wire Wire Line
	3950 3750 3700 3750
Connection ~ 3950 3750
Wire Wire Line
	3700 3850 3900 3850
Connection ~ 3900 3850
Wire Wire Line
	3850 3950 3700 3950
Connection ~ 3850 3950
Wire Wire Line
	3700 4050 3800 4050
Connection ~ 3800 4050
Wire Wire Line
	3700 4150 3750 4150
Connection ~ 3750 4150
Wire Wire Line
	2200 1800 2900 1800
Wire Wire Line
	2900 1900 2200 1900
Wire Wire Line
	2200 2000 2900 2000
Wire Wire Line
	2900 2100 2200 2100
Wire Wire Line
	2200 2200 2900 2200
Wire Wire Line
	2900 2300 2200 2300
Wire Wire Line
	2200 2400 2900 2400
Wire Wire Line
	2900 2500 2200 2500
$Comp
L power:GND #PWR0119
U 1 1 62745E53
P 2900 3300
F 0 "#PWR0119" H 2900 3050 50  0001 C CNN
F 1 "GND" V 2905 3172 50  0000 R CNN
F 2 "" H 2900 3300 50  0001 C CNN
F 3 "" H 2900 3300 50  0001 C CNN
	1    2900 3300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 62746BC9
P 2900 1650
F 0 "#PWR0120" H 2900 1400 50  0001 C CNN
F 1 "GND" V 2905 1522 50  0000 R CNN
F 2 "" H 2900 1650 50  0001 C CNN
F 3 "" H 2900 1650 50  0001 C CNN
	1    2900 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 2600 2600 2600
Wire Wire Line
	2600 2600 2600 3450
Wire Wire Line
	2600 3450 2900 3450
Wire Wire Line
	2900 3550 2550 3550
Wire Wire Line
	2550 3550 2550 2700
Wire Wire Line
	2550 2700 2200 2700
Wire Wire Line
	2200 2800 2500 2800
Wire Wire Line
	2500 2800 2500 3650
Wire Wire Line
	2500 3650 2900 3650
Wire Wire Line
	2900 3750 2450 3750
Wire Wire Line
	2450 3750 2450 2900
Wire Wire Line
	2450 2900 2200 2900
Wire Wire Line
	2200 3000 2400 3000
Wire Wire Line
	2400 3000 2400 3850
Wire Wire Line
	2400 3850 2900 3850
Wire Wire Line
	2350 3950 2350 3100
Wire Wire Line
	2350 3100 2200 3100
Wire Wire Line
	2200 3200 2300 3200
Wire Wire Line
	2300 3200 2300 4050
Wire Wire Line
	2300 4050 2900 4050
Wire Wire Line
	2350 3950 2900 3950
Wire Wire Line
	2900 4150 2250 4150
Wire Wire Line
	2250 4150 2250 3300
Wire Wire Line
	2250 3300 2200 3300
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 61D7AD38
P 9300 5500
F 0 "J4" H 9272 5432 50  0000 R CNN
F 1 "Conn_01x03_Male" H 9272 5523 50  0000 R CNN
F 2 "Connector_PinSocket_2.00mm:PinSocket_1x03_P2.00mm_Vertical" H 9300 5500 50  0001 C CNN
F 3 "~" H 9300 5500 50  0001 C CNN
	1    9300 5500
	-1   0    0    1   
$EndComp
Wire Wire Line
	8800 5150 8800 5500
Wire Wire Line
	8800 5500 9100 5500
Wire Wire Line
	8700 5150 8800 5150
$Comp
L power:+5V #PWR0121
U 1 1 61DC47CD
P 9100 5400
F 0 "#PWR0121" H 9100 5250 50  0001 C CNN
F 1 "+5V" V 9115 5528 50  0000 L CNN
F 2 "" H 9100 5400 50  0001 C CNN
F 3 "" H 9100 5400 50  0001 C CNN
	1    9100 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8750 5600 9100 5600
Wire Wire Line
	7800 1750 7800 3000
Wire Wire Line
	5800 1650 7200 1650
Wire Wire Line
	5800 4950 7150 4950
Wire Wire Line
	8000 1550 8000 5050
Wire Wire Line
	7800 1550 8000 1550
Wire Wire Line
	7700 3650 7700 3700
Wire Wire Line
	7700 3700 7800 3700
Wire Wire Line
	7900 3700 7900 3650
Connection ~ 7800 3700
Wire Wire Line
	7800 3700 7900 3700
Wire Wire Line
	4950 3300 4900 3300
Wire Wire Line
	7800 3700 7800 3800
Wire Wire Line
	8150 3800 7800 3800
Connection ~ 7800 3800
Wire Wire Line
	7800 3800 7800 4850
$Comp
L 74xx:74LS08 U8
U 3 1 624A320A
P 8400 5050
F 0 "U8" H 8400 4733 50  0000 C CNN
F 1 "74LS08" H 8400 4824 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 8400 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 8400 5050 50  0001 C CNN
	3    8400 5050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 624F6856
P 4950 1650
F 0 "#PWR0122" H 4950 1400 50  0001 C CNN
F 1 "GND" V 4955 1522 50  0000 R CNN
F 2 "" H 4950 1650 50  0001 C CNN
F 3 "" H 4950 1650 50  0001 C CNN
	1    4950 1650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 624F7ED8
P 4900 3300
F 0 "#PWR0123" H 4900 3050 50  0001 C CNN
F 1 "GND" V 4905 3172 50  0000 R CNN
F 2 "" H 4900 3300 50  0001 C CNN
F 3 "" H 4900 3300 50  0001 C CNN
	1    4900 3300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 624FDE1A
P 4950 4950
F 0 "#PWR0124" H 4950 4700 50  0001 C CNN
F 1 "GND" V 4955 4822 50  0000 R CNN
F 2 "" H 4950 4950 50  0001 C CNN
F 3 "" H 4950 4950 50  0001 C CNN
	1    4950 4950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 62500A9E
P 4950 6600
F 0 "#PWR0125" H 4950 6350 50  0001 C CNN
F 1 "GND" V 4955 6472 50  0000 R CNN
F 2 "" H 4950 6600 50  0001 C CNN
F 3 "" H 4950 6600 50  0001 C CNN
	1    4950 6600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 6270DDCB
P 7050 3000
F 0 "#PWR0126" H 7050 2750 50  0001 C CNN
F 1 "GND" V 7055 2872 50  0000 R CNN
F 2 "" H 7050 3000 50  0001 C CNN
F 3 "" H 7050 3000 50  0001 C CNN
	1    7050 3000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 6270ED5A
P 7100 3800
F 0 "#PWR0127" H 7100 3550 50  0001 C CNN
F 1 "GND" V 7105 3672 50  0000 R CNN
F 2 "" H 7100 3800 50  0001 C CNN
F 3 "" H 7100 3800 50  0001 C CNN
	1    7100 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 627123E8
P 7250 3800
F 0 "R2" V 7043 3800 50  0000 C CNN
F 1 "220" V 7134 3800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" V 7180 3800 50  0001 C CNN
F 3 "~" H 7250 3800 50  0001 C CNN
	1    7250 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 6271369D
P 7200 3000
F 0 "R1" V 6993 3000 50  0000 C CNN
F 1 "220" V 7084 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" V 7130 3000 50  0001 C CNN
F 3 "~" H 7200 3000 50  0001 C CNN
	1    7200 3000
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 6271B621
P 7550 3800
F 0 "D2" H 7543 4017 50  0000 C CNN
F 1 "LED" H 7543 3926 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7550 3800 50  0001 C CNN
F 3 "~" H 7550 3800 50  0001 C CNN
	1    7550 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 6271CFFA
P 7500 3000
F 0 "D1" H 7493 3217 50  0000 C CNN
F 1 "LED" H 7493 3126 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7500 3000 50  0001 C CNN
F 3 "~" H 7500 3000 50  0001 C CNN
	1    7500 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3800 7700 3800
Wire Wire Line
	7800 3000 7650 3000
Connection ~ 7800 3000
Wire Wire Line
	7800 3000 7800 3050
$Comp
L power:+5V #PWR0128
U 1 1 61E0E9FC
P 8850 2550
F 0 "#PWR0128" H 8850 2400 50  0001 C CNN
F 1 "+5V" V 8865 2678 50  0000 L CNN
F 2 "" H 8850 2550 50  0001 C CNN
F 3 "" H 8850 2550 50  0001 C CNN
	1    8850 2550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 61E140DD
P 8850 2250
F 0 "#PWR0129" H 8850 2000 50  0001 C CNN
F 1 "GND" V 8855 2122 50  0000 R CNN
F 2 "" H 8850 2250 50  0001 C CNN
F 3 "" H 8850 2250 50  0001 C CNN
	1    8850 2250
	-1   0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 61E14F5E
P 8850 2400
F 0 "C5" V 8598 2400 50  0000 C CNN
F 1 "0.1µF" V 8689 2400 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D8.0mm_W5.0mm_P5.00mm" H 8888 2250 50  0001 C CNN
F 3 "~" H 8850 2400 50  0001 C CNN
	1    8850 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0130
U 1 1 61E64B39
P 10100 2550
F 0 "#PWR0130" H 10100 2400 50  0001 C CNN
F 1 "+5V" V 10115 2678 50  0000 L CNN
F 2 "" H 10100 2550 50  0001 C CNN
F 3 "" H 10100 2550 50  0001 C CNN
	1    10100 2550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 61E64B3F
P 10100 2250
F 0 "#PWR0131" H 10100 2000 50  0001 C CNN
F 1 "GND" V 10105 2122 50  0000 R CNN
F 2 "" H 10100 2250 50  0001 C CNN
F 3 "" H 10100 2250 50  0001 C CNN
	1    10100 2250
	-1   0    0    1   
$EndComp
$Comp
L Device:C C6
U 1 1 61E64B45
P 10100 2400
F 0 "C6" V 9848 2400 50  0000 C CNN
F 1 "0.1µF" V 9939 2400 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D8.0mm_W5.0mm_P5.00mm" H 10138 2250 50  0001 C CNN
F 3 "~" H 10100 2400 50  0001 C CNN
	1    10100 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0132
U 1 1 61EB7975
P 2850 6200
F 0 "#PWR0132" H 2850 6050 50  0001 C CNN
F 1 "+5V" V 2865 6328 50  0000 L CNN
F 2 "" H 2850 6200 50  0001 C CNN
F 3 "" H 2850 6200 50  0001 C CNN
	1    2850 6200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 61EB797B
P 3150 6200
F 0 "#PWR0133" H 3150 5950 50  0001 C CNN
F 1 "GND" V 3155 6072 50  0000 R CNN
F 2 "" H 3150 6200 50  0001 C CNN
F 3 "" H 3150 6200 50  0001 C CNN
	1    3150 6200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C4
U 1 1 61EB7981
P 3000 6200
F 0 "C4" V 2748 6200 50  0000 C CNN
F 1 "0.1µF" V 2839 6200 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D8.0mm_W5.0mm_P5.00mm" H 3038 6050 50  0001 C CNN
F 3 "~" H 3000 6200 50  0001 C CNN
	1    3000 6200
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0134
U 1 1 61EC693D
P 2850 5800
F 0 "#PWR0134" H 2850 5650 50  0001 C CNN
F 1 "+5V" V 2865 5928 50  0000 L CNN
F 2 "" H 2850 5800 50  0001 C CNN
F 3 "" H 2850 5800 50  0001 C CNN
	1    2850 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 61EC6943
P 3150 5800
F 0 "#PWR0135" H 3150 5550 50  0001 C CNN
F 1 "GND" V 3155 5672 50  0000 R CNN
F 2 "" H 3150 5800 50  0001 C CNN
F 3 "" H 3150 5800 50  0001 C CNN
	1    3150 5800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C3
U 1 1 61EC6949
P 3000 5800
F 0 "C3" V 2748 5800 50  0000 C CNN
F 1 "0.1µF" V 2839 5800 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D8.0mm_W5.0mm_P5.00mm" H 3038 5650 50  0001 C CNN
F 3 "~" H 3000 5800 50  0001 C CNN
	1    3000 5800
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0136
U 1 1 61ED5C0D
P 2850 5400
F 0 "#PWR0136" H 2850 5250 50  0001 C CNN
F 1 "+5V" V 2865 5528 50  0000 L CNN
F 2 "" H 2850 5400 50  0001 C CNN
F 3 "" H 2850 5400 50  0001 C CNN
	1    2850 5400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 61ED5C13
P 3150 5400
F 0 "#PWR0137" H 3150 5150 50  0001 C CNN
F 1 "GND" V 3155 5272 50  0000 R CNN
F 2 "" H 3150 5400 50  0001 C CNN
F 3 "" H 3150 5400 50  0001 C CNN
	1    3150 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 61ED5C19
P 3000 5400
F 0 "C2" V 2748 5400 50  0000 C CNN
F 1 "0.1µF" V 2839 5400 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D8.0mm_W5.0mm_P5.00mm" H 3038 5250 50  0001 C CNN
F 3 "~" H 3000 5400 50  0001 C CNN
	1    3000 5400
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0138
U 1 1 61EE4B37
P 2850 5000
F 0 "#PWR0138" H 2850 4850 50  0001 C CNN
F 1 "+5V" V 2865 5128 50  0000 L CNN
F 2 "" H 2850 5000 50  0001 C CNN
F 3 "" H 2850 5000 50  0001 C CNN
	1    2850 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 61EE4B3D
P 3150 5000
F 0 "#PWR0139" H 3150 4750 50  0001 C CNN
F 1 "GND" V 3155 4872 50  0000 R CNN
F 2 "" H 3150 5000 50  0001 C CNN
F 3 "" H 3150 5000 50  0001 C CNN
	1    3150 5000
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 61EE4B43
P 3000 5000
F 0 "C1" V 2748 5000 50  0000 C CNN
F 1 "0.1µF" V 2839 5000 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D8.0mm_W5.0mm_P5.00mm" H 3038 4850 50  0001 C CNN
F 3 "~" H 3000 5000 50  0001 C CNN
	1    3000 5000
	0    1    1    0   
$EndComp
$EndSCHEMATC
