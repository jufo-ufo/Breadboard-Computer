EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Memory"
Date "2022-01-02"
Rev "v0.1"
Comp ""
Comment1 ""
Comment2 "https://github.com/jufo-ufo/Breadboard-Computer/blob/specification-finish/LICENSE"
Comment3 "License: Apache License 2.0"
Comment4 "Author: Alexander Wersching"
$EndDescr
$Comp
L Connector:Conn_01x16_Female J?
U 1 1 624118DC
P 850 1850
F 0 "J?" H 742 825 50  0000 C CNN
F 1 "D_In" H 742 916 50  0000 C CNN
F 2 "" H 850 1850 50  0001 C CNN
F 3 "~" H 850 1850 50  0001 C CNN
	1    850  1850
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x16_Female D_Bank_IO
U 1 1 6241427A
P 10950 2050
F 0 "D_Bank_IO" H 10842 1025 50  0000 C CNN
F 1 "Conn_01x16_Female" H 10842 1116 50  0000 C CNN
F 2 "" H 10950 2050 50  0001 C CNN
F 3 "~" H 10950 2050 50  0001 C CNN
	1    10950 2050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x16_Female J?
U 1 1 62414B0B
P 10950 4150
F 0 "J?" H 10842 3125 50  0000 C CNN
F 1 "D_Out" H 10842 3216 50  0000 C CNN
F 2 "" H 10950 4150 50  0001 C CNN
F 3 "~" H 10950 4150 50  0001 C CNN
	1    10950 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1050 1050 1800 1050
Wire Wire Line
	1800 1150 1050 1150
Wire Wire Line
	1050 1250 1800 1250
Wire Wire Line
	1800 1350 1050 1350
Wire Wire Line
	1050 1450 1800 1450
Wire Wire Line
	1800 1550 1050 1550
Wire Wire Line
	1050 1650 1800 1650
Wire Wire Line
	1050 1850 1450 1850
Wire Wire Line
	1450 1850 1450 2700
Wire Wire Line
	1450 2700 1800 2700
Wire Wire Line
	1800 2800 1400 2800
Wire Wire Line
	1400 2800 1400 1950
Wire Wire Line
	1400 1950 1050 1950
Wire Wire Line
	1050 2050 1350 2050
Wire Wire Line
	1350 2050 1350 2900
Wire Wire Line
	1350 2900 1800 2900
Wire Wire Line
	1800 3000 1300 3000
Wire Wire Line
	1300 3000 1300 2150
Wire Wire Line
	1300 2150 1050 2150
Wire Wire Line
	1050 2250 1250 2250
Wire Wire Line
	1250 2250 1250 3100
Wire Wire Line
	1200 2350 1050 2350
Wire Wire Line
	1200 2350 1200 3200
Wire Wire Line
	1050 2450 1150 2450
Wire Wire Line
	1150 2450 1150 3300
Wire Wire Line
	1100 3400 1100 2550
Wire Wire Line
	1100 2550 1050 2550
Wire Wire Line
	1050 1750 1800 1750
$Comp
L Computer_Component_Library:74HC573 U?
U 1 1 6241EA82
P 2200 1400
F 0 "U?" H 2500 2050 50  0000 C CNN
F 1 "74HC573" H 1950 2050 50  0000 C CNN
F 2 "" H 2150 1850 50  0001 C CNN
F 3 "" H 2150 1850 50  0001 C CNN
	1    2200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 900  2600 900 
$Comp
L power:+5V #PWR?
U 1 1 62480A58
P 2200 700
F 0 "#PWR?" H 2200 550 50  0001 C CNN
F 1 "+5V" H 2215 873 50  0000 C CNN
F 2 "" H 2200 700 50  0001 C CNN
F 3 "" H 2200 700 50  0001 C CNN
	1    2200 700 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62481FCA
P 2200 2350
F 0 "#PWR?" H 2200 2200 50  0001 C CNN
F 1 "+5V" H 2215 2523 50  0000 C CNN
F 2 "" H 2200 2350 50  0001 C CNN
F 3 "" H 2200 2350 50  0001 C CNN
	1    2200 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6248411C
P 2200 3550
F 0 "#PWR?" H 2200 3300 50  0001 C CNN
F 1 "GND" H 2205 3377 50  0000 C CNN
F 2 "" H 2200 3550 50  0001 C CNN
F 3 "" H 2200 3550 50  0001 C CNN
	1    2200 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 624855B8
P 2200 1900
F 0 "#PWR?" H 2200 1650 50  0001 C CNN
F 1 "GND" H 2205 1727 50  0000 C CNN
F 2 "" H 2200 1900 50  0001 C CNN
F 3 "" H 2200 1900 50  0001 C CNN
	1    2200 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3100 1800 3100
Wire Wire Line
	1200 3200 1800 3200
Wire Wire Line
	1150 3300 1800 3300
Wire Wire Line
	1100 3400 1800 3400
$Comp
L power:GND #PWR?
U 1 1 624B87AB
P 1800 2550
F 0 "#PWR?" H 1800 2300 50  0001 C CNN
F 1 "GND" V 1805 2422 50  0000 R CNN
F 2 "" H 1800 2550 50  0001 C CNN
F 3 "" H 1800 2550 50  0001 C CNN
	1    1800 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 624B8D19
P 1800 900
F 0 "#PWR?" H 1800 650 50  0001 C CNN
F 1 "GND" V 1805 772 50  0000 R CNN
F 2 "" H 1800 900 50  0001 C CNN
F 3 "" H 1800 900 50  0001 C CNN
	1    1800 900 
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x16_Female J?
U 1 1 624D05DC
P 1000 7300
F 0 "J?" H 892 6275 50  0000 C CNN
F 1 "A_In" H 892 6366 50  0000 C CNN
F 2 "" H 1000 7300 50  0001 C CNN
F 3 "~" H 1000 7300 50  0001 C CNN
	1    1000 7300
	-1   0    0    1   
$EndComp
$Comp
L Computer_Component_Library:74HC573 U?
U 1 1 624D05E2
P 2350 8500
F 0 "U?" H 2650 9150 50  0000 C CNN
F 1 "74HC573" H 2100 9150 50  0000 C CNN
F 2 "" H 2300 8950 50  0001 C CNN
F 3 "" H 2300 8950 50  0001 C CNN
	1    2350 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6500 1950 6500
Wire Wire Line
	1950 6600 1200 6600
Wire Wire Line
	1200 6700 1950 6700
Wire Wire Line
	1950 6800 1200 6800
Wire Wire Line
	1200 6900 1950 6900
Wire Wire Line
	1950 7000 1200 7000
Wire Wire Line
	1200 7100 1950 7100
Wire Wire Line
	1200 7300 1600 7300
Wire Wire Line
	1600 7300 1600 8150
Wire Wire Line
	1600 8150 1950 8150
Wire Wire Line
	1950 8250 1550 8250
Wire Wire Line
	1550 8250 1550 7400
Wire Wire Line
	1550 7400 1200 7400
Wire Wire Line
	1200 7500 1500 7500
Wire Wire Line
	1500 7500 1500 8350
Wire Wire Line
	1500 8350 1950 8350
Wire Wire Line
	1950 8450 1450 8450
Wire Wire Line
	1450 8450 1450 7600
Wire Wire Line
	1450 7600 1200 7600
Wire Wire Line
	1200 7700 1400 7700
Wire Wire Line
	1400 7700 1400 8550
Wire Wire Line
	1350 7800 1200 7800
Wire Wire Line
	1350 7800 1350 8650
Wire Wire Line
	1200 7900 1300 7900
Wire Wire Line
	1300 7900 1300 8750
Wire Wire Line
	1250 8850 1250 8000
Wire Wire Line
	1250 8000 1200 8000
Wire Wire Line
	1200 7200 1950 7200
$Comp
L Computer_Component_Library:74HC573 U?
U 1 1 624D0604
P 2350 6850
F 0 "U?" H 2650 7500 50  0000 C CNN
F 1 "74HC573" H 2100 7500 50  0000 C CNN
F 2 "" H 2300 7300 50  0001 C CNN
F 3 "" H 2300 7300 50  0001 C CNN
	1    2350 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 8000 2800 8000
Wire Wire Line
	2800 8000 2800 6350
Wire Wire Line
	2800 6350 2750 6350
Wire Wire Line
	2950 8150 2750 8150
Wire Wire Line
	2950 7300 2950 8150
Wire Wire Line
	2750 8250 3000 8250
Wire Wire Line
	3000 8250 3000 7400
Wire Wire Line
	3050 7500 3050 8350
Wire Wire Line
	3050 8350 2750 8350
Wire Wire Line
	2750 8450 3100 8450
Wire Wire Line
	3100 8450 3100 7600
Wire Wire Line
	3150 7700 3150 8550
Wire Wire Line
	3150 8550 2750 8550
Wire Wire Line
	2750 8650 3200 8650
Wire Wire Line
	3200 8650 3200 7800
Wire Wire Line
	3250 7900 3250 8750
Wire Wire Line
	3250 8750 2750 8750
Wire Wire Line
	2750 8850 3300 8850
Wire Wire Line
	3300 8850 3300 8000
$Comp
L power:+5V #PWR?
U 1 1 624D062D
P 2350 6150
F 0 "#PWR?" H 2350 6000 50  0001 C CNN
F 1 "+5V" H 2365 6323 50  0000 C CNN
F 2 "" H 2350 6150 50  0001 C CNN
F 3 "" H 2350 6150 50  0001 C CNN
	1    2350 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 624D0633
P 2350 7800
F 0 "#PWR?" H 2350 7650 50  0001 C CNN
F 1 "+5V" H 2365 7973 50  0000 C CNN
F 2 "" H 2350 7800 50  0001 C CNN
F 3 "" H 2350 7800 50  0001 C CNN
	1    2350 7800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 624D0639
P 2350 9000
F 0 "#PWR?" H 2350 8750 50  0001 C CNN
F 1 "GND" H 2355 8827 50  0000 C CNN
F 2 "" H 2350 9000 50  0001 C CNN
F 3 "" H 2350 9000 50  0001 C CNN
	1    2350 9000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 624D063F
P 2350 7350
F 0 "#PWR?" H 2350 7100 50  0001 C CNN
F 1 "GND" H 2355 7177 50  0000 C CNN
F 2 "" H 2350 7350 50  0001 C CNN
F 3 "" H 2350 7350 50  0001 C CNN
	1    2350 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 8550 1950 8550
Wire Wire Line
	1350 8650 1950 8650
Wire Wire Line
	1300 8750 1950 8750
Wire Wire Line
	1250 8850 1950 8850
$Comp
L power:GND #PWR?
U 1 1 624D0649
P 1950 8000
F 0 "#PWR?" H 1950 7750 50  0001 C CNN
F 1 "GND" V 1955 7872 50  0000 R CNN
F 2 "" H 1950 8000 50  0001 C CNN
F 3 "" H 1950 8000 50  0001 C CNN
	1    1950 8000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 624D064F
P 1950 6350
F 0 "#PWR?" H 1950 6100 50  0001 C CNN
F 1 "GND" V 1955 6222 50  0000 R CNN
F 2 "" H 1950 6350 50  0001 C CNN
F 3 "" H 1950 6350 50  0001 C CNN
	1    1950 6350
	0    1    1    0   
$EndComp
$Comp
L Computer_Component_Library:AS6C62256-55PCN U?
U 1 1 624FA407
P 5300 4550
F 0 "U?" H 5700 5350 50  0000 C CNN
F 1 "AS6C62256-55PCN" H 4850 5350 50  0000 C CNN
F 2 "" H 5050 4450 50  0001 C CNN
F 3 "" H 5050 4450 50  0001 C CNN
	1    5300 4550
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:28C256 U?
U 1 1 62538094
P 5300 2050
F 0 "U?" H 5550 3100 50  0000 C CNN
F 1 "28C256" H 5050 3100 50  0000 C CNN
F 2 "" H 5300 2050 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 5300 2050 50  0001 C CNN
	1    5300 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6253C158
P 5300 5400
F 0 "#PWR?" H 5300 5150 50  0001 C CNN
F 1 "GND" H 5305 5227 50  0000 C CNN
F 2 "" H 5300 5400 50  0001 C CNN
F 3 "" H 5300 5400 50  0001 C CNN
	1    5300 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6253CE04
P 5300 3150
F 0 "#PWR?" H 5300 2900 50  0001 C CNN
F 1 "GND" H 5305 2977 50  0000 C CNN
F 2 "" H 5300 3150 50  0001 C CNN
F 3 "" H 5300 3150 50  0001 C CNN
	1    5300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6253FD0E
P 4900 2750
F 0 "#PWR?" H 4900 2600 50  0001 C CNN
F 1 "+5V" V 4915 2878 50  0000 L CNN
F 2 "" H 4900 2750 50  0001 C CNN
F 3 "" H 4900 2750 50  0001 C CNN
	1    4900 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62540328
P 5300 950
F 0 "#PWR?" H 5300 800 50  0001 C CNN
F 1 "+5V" H 5315 1123 50  0000 C CNN
F 2 "" H 5300 950 50  0001 C CNN
F 3 "" H 5300 950 50  0001 C CNN
	1    5300 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62541B72
P 5300 3700
F 0 "#PWR?" H 5300 3550 50  0001 C CNN
F 1 "+5V" H 5315 3873 50  0000 C CNN
F 2 "" H 5300 3700 50  0001 C CNN
F 3 "" H 5300 3700 50  0001 C CNN
	1    5300 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 625466BB
P 5850 5050
F 0 "#PWR?" H 5850 4800 50  0001 C CNN
F 1 "GND" V 5855 4922 50  0000 R CNN
F 2 "" H 5850 5050 50  0001 C CNN
F 3 "" H 5850 5050 50  0001 C CNN
	1    5850 5050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62547D1A
P 4900 2950
F 0 "#PWR?" H 4900 2700 50  0001 C CNN
F 1 "GND" V 4905 2822 50  0000 R CNN
F 2 "" H 4900 2950 50  0001 C CNN
F 3 "" H 4900 2950 50  0001 C CNN
	1    4900 2950
	0    1    1    0   
$EndComp
$Comp
L Computer_Component_Library:74HC573 U?
U 1 1 624206DD
P 2200 3050
F 0 "U?" H 2500 3700 50  0000 C CNN
F 1 "74HC573" H 1950 3700 50  0000 C CNN
F 2 "" H 2150 3500 50  0001 C CNN
F 3 "" H 2150 3500 50  0001 C CNN
	1    2200 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2550 2650 2550
Wire Wire Line
	2700 2700 2600 2700
Wire Wire Line
	2600 2800 2750 2800
Wire Wire Line
	2800 2900 2600 2900
Wire Wire Line
	2600 3000 2850 3000
Wire Wire Line
	2900 3100 2600 3100
Wire Wire Line
	2600 3200 2950 3200
Wire Wire Line
	3000 3300 2600 3300
Wire Wire Line
	2600 3400 3050 3400
Text Label 3100 1050 0    50   ~ 0
Data0
Text Label 3100 1150 0    50   ~ 0
Data1
Text Label 3100 1250 0    50   ~ 0
Data2
Text Label 3100 1350 0    50   ~ 0
Data3
Text Label 3100 1450 0    50   ~ 0
Data4
Text Label 3100 1550 0    50   ~ 0
Data5
Text Label 3100 1650 0    50   ~ 0
Data6
Text Label 3100 1750 0    50   ~ 0
Data7
Text Label 3100 1850 0    50   ~ 0
Data8
Text Label 3100 1950 0    50   ~ 0
Data9
Text Label 3100 2050 0    50   ~ 0
Data10
Text Label 3100 2150 0    50   ~ 0
Data11
Text Label 3100 2250 0    50   ~ 0
Data12
Text Label 3100 2350 0    50   ~ 0
Data13
Text Label 3100 2450 0    50   ~ 0
Data14
Text Label 3100 2550 0    50   ~ 0
Data15
Wire Wire Line
	2600 1750 3100 1750
Wire Wire Line
	2600 1650 3100 1650
Wire Wire Line
	2600 1550 3100 1550
Wire Wire Line
	2600 1450 3100 1450
Text Label 5700 1150 0    50   ~ 0
Data0
Text Label 5700 1250 0    50   ~ 0
Data1
Text Label 5700 1350 0    50   ~ 0
Data2
Text Label 5700 1450 0    50   ~ 0
Data3
Text Label 5700 1550 0    50   ~ 0
Data4
Text Label 5700 1650 0    50   ~ 0
Data5
Text Label 5700 1750 0    50   ~ 0
Data6
Text Label 5700 1850 0    50   ~ 0
Data7
Wire Wire Line
	2750 6600 3350 6600
Wire Wire Line
	2750 6700 3350 6700
Wire Wire Line
	2750 6800 3350 6800
Wire Wire Line
	2750 6900 3350 6900
Wire Wire Line
	2750 7000 3350 7000
Wire Wire Line
	2750 7100 3350 7100
Wire Wire Line
	2750 7200 3350 7200
Wire Wire Line
	2950 7300 3350 7300
Wire Wire Line
	3000 7400 3350 7400
Wire Wire Line
	3050 7500 3350 7500
Wire Wire Line
	3100 7600 3350 7600
Wire Wire Line
	3150 7700 3350 7700
Wire Wire Line
	3200 7800 3350 7800
Wire Wire Line
	4900 1150 4600 1150
Wire Wire Line
	4900 1250 4600 1250
Wire Wire Line
	4600 1350 4900 1350
Wire Wire Line
	4900 1450 4600 1450
Wire Wire Line
	4600 1550 4900 1550
Wire Wire Line
	4900 1650 4600 1650
Wire Wire Line
	4900 1750 4600 1750
Wire Wire Line
	4600 1850 4900 1850
Wire Wire Line
	4900 1950 4600 1950
Wire Wire Line
	4600 2050 4900 2050
Wire Wire Line
	4900 2150 4600 2150
Wire Wire Line
	4600 2250 4900 2250
Wire Wire Line
	4900 2350 4600 2350
Wire Wire Line
	4600 2450 4900 2450
Text Label 4600 1150 0    50   ~ 0
Addr0
Text Label 4600 1250 0    50   ~ 0
Addr1
Text Label 4600 1350 0    50   ~ 0
Addr2
Text Label 4600 1450 0    50   ~ 0
Addr3
Text Label 4600 1550 0    50   ~ 0
Addr4
Text Label 4600 1650 0    50   ~ 0
Addr5
Text Label 4600 1750 0    50   ~ 0
Addr6
Text Label 4600 1850 0    50   ~ 0
Addr7
Text Label 4600 1950 0    50   ~ 0
Addr8
Text Label 4600 2050 0    50   ~ 0
Addr9
Text Label 4600 2150 0    50   ~ 0
Addr10
Text Label 4600 2250 0    50   ~ 0
Addr11
Text Label 4600 2350 0    50   ~ 0
Addr12
Text Label 4600 2450 0    50   ~ 0
Addr13
$Comp
L Memory_EEPROM:28C256 U?
U 1 1 628F8F90
P 7450 2050
F 0 "U?" H 7700 3100 50  0000 C CNN
F 1 "28C256" H 7200 3100 50  0000 C CNN
F 2 "" H 7450 2050 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 7450 2050 50  0001 C CNN
	1    7450 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628F8F96
P 7450 3150
F 0 "#PWR?" H 7450 2900 50  0001 C CNN
F 1 "GND" H 7455 2977 50  0000 C CNN
F 2 "" H 7450 3150 50  0001 C CNN
F 3 "" H 7450 3150 50  0001 C CNN
	1    7450 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 628F8F9C
P 7050 2750
F 0 "#PWR?" H 7050 2600 50  0001 C CNN
F 1 "+5V" V 7065 2878 50  0000 L CNN
F 2 "" H 7050 2750 50  0001 C CNN
F 3 "" H 7050 2750 50  0001 C CNN
	1    7050 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 628F8FA2
P 7450 950
F 0 "#PWR?" H 7450 800 50  0001 C CNN
F 1 "+5V" H 7465 1123 50  0000 C CNN
F 2 "" H 7450 950 50  0001 C CNN
F 3 "" H 7450 950 50  0001 C CNN
	1    7450 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628F8FA8
P 7050 2950
F 0 "#PWR?" H 7050 2700 50  0001 C CNN
F 1 "GND" V 7055 2822 50  0000 R CNN
F 2 "" H 7050 2950 50  0001 C CNN
F 3 "" H 7050 2950 50  0001 C CNN
	1    7050 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 1150 6750 1150
Wire Wire Line
	7050 1250 6750 1250
Wire Wire Line
	6750 1350 7050 1350
Wire Wire Line
	7050 1450 6750 1450
Wire Wire Line
	6750 1550 7050 1550
Wire Wire Line
	7050 1650 6750 1650
Wire Wire Line
	7050 1750 6750 1750
Wire Wire Line
	6750 1850 7050 1850
Wire Wire Line
	7050 1950 6750 1950
Wire Wire Line
	6750 2050 7050 2050
Wire Wire Line
	7050 2150 6750 2150
Wire Wire Line
	6750 2250 7050 2250
Wire Wire Line
	7050 2350 6750 2350
Wire Wire Line
	6750 2450 7050 2450
Text Label 6750 1150 0    50   ~ 0
Addr0
Text Label 6750 1250 0    50   ~ 0
Addr1
Text Label 6750 1350 0    50   ~ 0
Addr2
Text Label 6750 1450 0    50   ~ 0
Addr3
Text Label 6750 1550 0    50   ~ 0
Addr4
Text Label 6750 1650 0    50   ~ 0
Addr5
Text Label 6750 1750 0    50   ~ 0
Addr6
Text Label 6750 1850 0    50   ~ 0
Addr7
Text Label 6750 1950 0    50   ~ 0
Addr8
Text Label 6750 2050 0    50   ~ 0
Addr9
Text Label 6750 2150 0    50   ~ 0
Addr10
Text Label 6750 2250 0    50   ~ 0
Addr11
Text Label 6750 2350 0    50   ~ 0
Addr12
Text Label 6750 2450 0    50   ~ 0
Addr13
Text Label 7850 1150 0    50   ~ 0
Data8
Text Label 7850 1250 0    50   ~ 0
Data9
Text Label 7850 1350 0    50   ~ 0
Data10
Text Label 7850 1450 0    50   ~ 0
Data11
Text Label 7850 1550 0    50   ~ 0
Data12
Text Label 7850 1650 0    50   ~ 0
Data13
Text Label 7850 1750 0    50   ~ 0
Data14
Text Label 7850 1850 0    50   ~ 0
Data15
Wire Wire Line
	4450 3950 4750 3950
Wire Wire Line
	4450 4050 4750 4050
Wire Wire Line
	4450 4150 4750 4150
Wire Wire Line
	4450 4250 4750 4250
Wire Wire Line
	4450 4350 4750 4350
Wire Wire Line
	4450 4450 4750 4450
Wire Wire Line
	4450 4550 4750 4550
Wire Wire Line
	4450 4650 4750 4650
Wire Wire Line
	4450 4750 4750 4750
Wire Wire Line
	4450 4850 4750 4850
Wire Wire Line
	4450 4950 4750 4950
Wire Wire Line
	4450 5050 4750 5050
Wire Wire Line
	4450 5150 4750 5150
Wire Wire Line
	4450 5250 4750 5250
Text Label 4450 5250 0    50   ~ 0
Addr0
Text Label 4450 5150 0    50   ~ 0
Addr1
Text Label 4450 5050 0    50   ~ 0
Addr2
Text Label 4450 4950 0    50   ~ 0
Addr3
Text Label 4450 4850 0    50   ~ 0
Addr4
Text Label 4450 4750 0    50   ~ 0
Addr5
Text Label 4450 4650 0    50   ~ 0
Addr6
Text Label 4450 4550 0    50   ~ 0
Addr7
Text Label 4450 4450 0    50   ~ 0
Addr8
Text Label 4450 4350 0    50   ~ 0
Addr9
Text Label 4450 4250 0    50   ~ 0
Addr10
Text Label 4450 4150 0    50   ~ 0
Addr11
Text Label 4450 4050 0    50   ~ 0
Addr12
Text Label 4450 3950 0    50   ~ 0
Addr13
Text Label 5850 3850 0    50   ~ 0
Data0
Text Label 5850 3950 0    50   ~ 0
Data1
Text Label 5850 4050 0    50   ~ 0
Data2
Text Label 5850 4150 0    50   ~ 0
Data3
Text Label 5850 4250 0    50   ~ 0
Data4
Text Label 5850 4350 0    50   ~ 0
Data5
Text Label 5850 4450 0    50   ~ 0
Data6
$Comp
L Computer_Component_Library:AS6C62256-55PCN U?
U 1 1 62C95DFA
P 7450 4550
F 0 "U?" H 7850 5350 50  0000 C CNN
F 1 "AS6C62256-55PCN" H 7000 5350 50  0000 C CNN
F 2 "" H 7200 4450 50  0001 C CNN
F 3 "" H 7200 4450 50  0001 C CNN
	1    7450 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62C95E00
P 7450 5400
F 0 "#PWR?" H 7450 5150 50  0001 C CNN
F 1 "GND" H 7455 5227 50  0000 C CNN
F 2 "" H 7450 5400 50  0001 C CNN
F 3 "" H 7450 5400 50  0001 C CNN
	1    7450 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62C95E06
P 7450 3700
F 0 "#PWR?" H 7450 3550 50  0001 C CNN
F 1 "+5V" H 7465 3873 50  0000 C CNN
F 2 "" H 7450 3700 50  0001 C CNN
F 3 "" H 7450 3700 50  0001 C CNN
	1    7450 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62C95E0C
P 8000 5050
F 0 "#PWR?" H 8000 4800 50  0001 C CNN
F 1 "GND" V 8005 4922 50  0000 R CNN
F 2 "" H 8000 5050 50  0001 C CNN
F 3 "" H 8000 5050 50  0001 C CNN
	1    8000 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 3950 6900 3950
Wire Wire Line
	6600 4050 6900 4050
Wire Wire Line
	6600 4150 6900 4150
Wire Wire Line
	6600 4250 6900 4250
Wire Wire Line
	6600 4350 6900 4350
Wire Wire Line
	6600 4450 6900 4450
Wire Wire Line
	6600 4550 6900 4550
Wire Wire Line
	6600 4650 6900 4650
Wire Wire Line
	6600 4750 6900 4750
Wire Wire Line
	6600 4850 6900 4850
Wire Wire Line
	6600 4950 6900 4950
Wire Wire Line
	6600 5050 6900 5050
Wire Wire Line
	6600 5150 6900 5150
Wire Wire Line
	6600 5250 6900 5250
Text Label 6600 5250 0    50   ~ 0
Addr0
Text Label 6600 5150 0    50   ~ 0
Addr1
Text Label 6600 5050 0    50   ~ 0
Addr2
Text Label 6600 4950 0    50   ~ 0
Addr3
Text Label 6600 4850 0    50   ~ 0
Addr4
Text Label 6600 4750 0    50   ~ 0
Addr5
Text Label 6600 4650 0    50   ~ 0
Addr6
Text Label 6600 4550 0    50   ~ 0
Addr7
Text Label 6600 4450 0    50   ~ 0
Addr8
Text Label 6600 4350 0    50   ~ 0
Addr9
Text Label 6600 4250 0    50   ~ 0
Addr10
Text Label 6600 4150 0    50   ~ 0
Addr11
Text Label 6600 4050 0    50   ~ 0
Addr12
Text Label 6600 3950 0    50   ~ 0
Addr13
Text Label 8000 3850 0    50   ~ 0
Data8
Text Label 8000 4050 0    50   ~ 0
Data10
Text Label 8000 4150 0    50   ~ 0
Data11
Text Label 8000 4250 0    50   ~ 0
Data12
Text Label 8000 4350 0    50   ~ 0
Data13
Text Label 8000 4450 0    50   ~ 0
Data14
Text Label 8000 4550 0    50   ~ 0
Data15
Text Label 8000 3950 0    50   ~ 0
Data9
Text Label 11150 3350 0    50   ~ 0
Data0
Text Label 11150 3450 0    50   ~ 0
Data1
Text Label 11150 3550 0    50   ~ 0
Data2
Text Label 11150 3650 0    50   ~ 0
Data3
Text Label 11150 3750 0    50   ~ 0
Data4
Text Label 11150 3850 0    50   ~ 0
Data5
Text Label 11150 3950 0    50   ~ 0
Data6
Text Label 11150 4050 0    50   ~ 0
Data7
Text Label 11150 4150 0    50   ~ 0
Data8
Text Label 11150 4250 0    50   ~ 0
Data9
Text Label 11150 4350 0    50   ~ 0
Data10
Text Label 11150 4450 0    50   ~ 0
Data11
Text Label 11150 4550 0    50   ~ 0
Data12
Text Label 11150 4650 0    50   ~ 0
Data13
Text Label 11150 4750 0    50   ~ 0
Data14
Text Label 11150 4850 0    50   ~ 0
Data15
$Comp
L 74xx:74LS139 U?
U 3 1 63034246
P 1550 4950
F 0 "U?" V 1183 4950 50  0000 C CNN
F 1 "74LS139" V 1274 4950 50  0000 C CNN
F 2 "" H 1550 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 1550 4950 50  0001 C CNN
	3    1550 4950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 630388DC
P 1050 4950
F 0 "#PWR?" H 1050 4700 50  0001 C CNN
F 1 "GND" V 1055 4822 50  0000 R CNN
F 2 "" H 1050 4950 50  0001 C CNN
F 3 "" H 1050 4950 50  0001 C CNN
	1    1050 4950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 630391E1
P 2050 4950
F 0 "#PWR?" H 2050 4800 50  0001 C CNN
F 1 "+5V" V 2065 5078 50  0000 L CNN
F 2 "" H 2050 4950 50  0001 C CNN
F 3 "" H 2050 4950 50  0001 C CNN
	1    2050 4950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6309299B
P 6900 3850
F 0 "#PWR?" H 6900 3600 50  0001 C CNN
F 1 "GND" V 6905 3722 50  0000 R CNN
F 2 "" H 6900 3850 50  0001 C CNN
F 3 "" H 6900 3850 50  0001 C CNN
	1    6900 3850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 630935A0
P 4750 3850
F 0 "#PWR?" H 4750 3600 50  0001 C CNN
F 1 "GND" V 4755 3722 50  0000 R CNN
F 2 "" H 4750 3850 50  0001 C CNN
F 3 "" H 4750 3850 50  0001 C CNN
	1    4750 3850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63095589
P 4900 2550
F 0 "#PWR?" H 4900 2300 50  0001 C CNN
F 1 "GND" V 4905 2422 50  0000 R CNN
F 2 "" H 4900 2550 50  0001 C CNN
F 3 "" H 4900 2550 50  0001 C CNN
	1    4900 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63096CA2
P 7050 2550
F 0 "#PWR?" H 7050 2300 50  0001 C CNN
F 1 "GND" V 7055 2422 50  0000 R CNN
F 2 "" H 7050 2550 50  0001 C CNN
F 3 "" H 7050 2550 50  0001 C CNN
	1    7050 2550
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS00 U?
U 1 1 630F2E78
P 5550 7400
F 0 "U?" H 5550 7725 50  0000 C CNN
F 1 "74LS00" H 5550 7634 50  0000 C CNN
F 2 "" H 5550 7400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 5550 7400 50  0001 C CNN
	1    5550 7400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U?
U 3 1 630FAF28
P 6000 7850
F 0 "U?" H 6000 8175 50  0000 C CNN
F 1 "74LS00" H 6000 8084 50  0000 C CNN
F 2 "" H 6000 7850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6000 7850 50  0001 C CNN
	3    6000 7850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U?
U 5 1 63100B65
P 1550 4300
F 0 "U?" V 1917 4300 50  0000 C CNN
F 1 "74LS00" V 1826 4300 50  0000 C CNN
F 2 "" H 1550 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 1550 4300 50  0001 C CNN
	5    1550 4300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6310735B
P 1050 4300
F 0 "#PWR?" H 1050 4050 50  0001 C CNN
F 1 "GND" V 1055 4172 50  0000 R CNN
F 2 "" H 1050 4300 50  0001 C CNN
F 3 "" H 1050 4300 50  0001 C CNN
	1    1050 4300
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63107A62
P 2050 4300
F 0 "#PWR?" H 2050 4150 50  0001 C CNN
F 1 "+5V" V 2065 4428 50  0000 L CNN
F 2 "" H 2050 4300 50  0001 C CNN
F 3 "" H 2050 4300 50  0001 C CNN
	1    2050 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 7300 5250 7300
Wire Wire Line
	5250 7500 5200 7500
Wire Wire Line
	5200 7500 5200 7300
Wire Wire Line
	5200 6300 5250 6300
$Comp
L 74xx:74LS00 U?
U 1 1 63163A18
P 7500 6850
F 0 "U?" H 7500 7175 50  0000 C CNN
F 1 "74LS00" H 7500 7100 50  0000 C CNN
F 2 "" H 7500 6850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 7500 6850 50  0001 C CNN
	1    7500 6850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U?
U 2 1 63165F43
P 6700 7500
F 0 "U?" H 6700 7825 50  0000 C CNN
F 1 "74LS00" H 6700 7734 50  0000 C CNN
F 2 "" H 6700 7500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6700 7500 50  0001 C CNN
	2    6700 7500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U?
U 3 1 631683C4
P 6200 6300
F 0 "U?" H 6200 6625 50  0000 C CNN
F 1 "74LS00" H 6200 6534 50  0000 C CNN
F 2 "" H 6200 6300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6200 6300 50  0001 C CNN
	3    6200 6300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U?
U 5 1 6316D629
P 3200 4300
F 0 "U?" V 2833 4300 50  0000 C CNN
F 1 "74LS00" V 2924 4300 50  0000 C CNN
F 2 "" H 3200 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 3200 4300 50  0001 C CNN
	5    3200 4300
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63170F3F
P 3700 4300
F 0 "#PWR?" H 3700 4150 50  0001 C CNN
F 1 "+5V" V 3715 4428 50  0000 L CNN
F 2 "" H 3700 4300 50  0001 C CNN
F 3 "" H 3700 4300 50  0001 C CNN
	1    3700 4300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63172612
P 2700 4300
F 0 "#PWR?" H 2700 4050 50  0001 C CNN
F 1 "GND" V 2705 4172 50  0000 R CNN
F 2 "" H 2700 4300 50  0001 C CNN
F 3 "" H 2700 4300 50  0001 C CNN
	1    2700 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 7400 6350 7400
Wire Wire Line
	6350 7400 6350 7050
Wire Wire Line
	6350 7050 6400 7050
Connection ~ 6350 7400
Wire Wire Line
	5900 6200 5800 6200
Wire Wire Line
	6400 6850 6250 6850
Text Label 5800 6200 0    50   ~ 0
RE
Text Label 6250 6850 0    50   ~ 0
WE
$Comp
L 74xx:74LS08 U?
U 5 1 633AB3CB
P 3200 4950
F 0 "U?" V 2833 4950 50  0000 C CNN
F 1 "74LS08" V 2924 4950 50  0000 C CNN
F 2 "" H 3200 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3200 4950 50  0001 C CNN
	5    3200 4950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 633B06BA
P 2700 4950
F 0 "#PWR?" H 2700 4700 50  0001 C CNN
F 1 "GND" V 2705 4822 50  0000 R CNN
F 2 "" H 2700 4950 50  0001 C CNN
F 3 "" H 2700 4950 50  0001 C CNN
	1    2700 4950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 633B7312
P 3700 4950
F 0 "#PWR?" H 3700 4800 50  0001 C CNN
F 1 "+5V" V 3715 5078 50  0000 L CNN
F 2 "" H 3700 4950 50  0001 C CNN
F 3 "" H 3700 4950 50  0001 C CNN
	1    3700 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 6950 7000 6950
Wire Wire Line
	7200 6750 6950 6750
Text Label 6950 6750 0    50   ~ 0
CLK_F
Text Label 5850 4550 0    50   ~ 0
Data7
Text Label 7800 6850 0    50   ~ 0
WE_RAM
Text Label 7000 7500 0    50   ~ 0
RE_RAM
Text Label 6500 6300 0    50   ~ 0
RE_ROM
$Comp
L 74xx:74LS139 U?
U 1 1 63032E97
P 4600 6600
F 0 "U?" H 4600 6967 50  0000 C CNN
F 1 "74LS139" H 4600 6876 50  0000 C CNN
F 2 "" H 4600 6600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 4600 6600 50  0001 C CNN
	1    4600 6600
	1    0    0    -1  
$EndComp
Connection ~ 5200 7300
Wire Wire Line
	5100 6600 5200 6600
Wire Wire Line
	5200 6500 5250 6500
Wire Wire Line
	5200 6500 5100 6500
Connection ~ 5200 6500
Wire Wire Line
	4900 2850 4550 2850
Text Label 4550 2850 0    50   ~ 0
RE_ROM
Text Label 6700 2850 0    50   ~ 0
RE_ROM
Wire Wire Line
	6700 2850 7050 2850
Text Label 5850 4900 0    50   ~ 0
RE_RAM
Text Label 8000 4900 0    50   ~ 0
RE_RAM
Text Label 8000 4750 0    50   ~ 0
WE_RAM
Text Label 5850 4750 0    50   ~ 0
WE_RAM
Wire Wire Line
	5850 7400 6350 7400
Wire Wire Line
	6300 7850 6350 7850
Wire Wire Line
	6350 7850 6350 7600
Wire Wire Line
	6350 7600 6400 7600
Wire Wire Line
	5700 7750 5650 7750
Wire Wire Line
	5650 7750 5650 7950
Wire Wire Line
	5650 7950 5700 7950
Wire Wire Line
	5650 7750 5500 7750
Connection ~ 5650 7750
Text Label 5500 7750 0    50   ~ 0
WE
Wire Wire Line
	5200 6300 5200 6500
$Comp
L 74xx:74LS00 U?
U 2 1 630F9B85
P 5550 6400
F 0 "U?" H 5550 6725 50  0000 C CNN
F 1 "74LS00" H 5550 6634 50  0000 C CNN
F 2 "" H 5550 6400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 5550 6400 50  0001 C CNN
	2    5550 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6600 5200 7300
$Comp
L 74xx:74LS08 U?
U 4 1 633A9178
P 6700 6950
F 0 "U?" H 6700 7275 50  0000 C CNN
F 1 "74LS08" H 6700 7184 50  0000 C CNN
F 2 "" H 6700 6950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6700 6950 50  0001 C CNN
	4    6700 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 6400 5900 6400
Wire Wire Line
	2800 6350 2850 6350
Connection ~ 2800 6350
Wire Wire Line
	3050 2550 3100 2550
Wire Wire Line
	3050 2550 3050 3400
Wire Wire Line
	3100 2450 3000 2450
Wire Wire Line
	3000 2450 3000 3300
Wire Wire Line
	2950 2350 3100 2350
Wire Wire Line
	2950 2350 2950 3200
Wire Wire Line
	3100 2250 2900 2250
Wire Wire Line
	2900 2250 2900 3100
Wire Wire Line
	2850 2150 3100 2150
Wire Wire Line
	2850 2150 2850 3000
Wire Wire Line
	2800 2050 3100 2050
Wire Wire Line
	2800 2050 2800 2900
Wire Wire Line
	3100 1950 2750 1950
Wire Wire Line
	2750 1950 2750 2800
Wire Wire Line
	2700 1850 3100 1850
Wire Wire Line
	2700 1850 2700 2700
Wire Wire Line
	2650 2550 2650 900 
Wire Wire Line
	2650 900  2700 900 
Connection ~ 2650 900 
Text Label 2850 6350 0    50   ~ 0
CLK_R
Text Label 2700 900  0    50   ~ 0
CLK_R
Wire Wire Line
	4100 6800 3950 6800
Text Label 3950 6800 0    50   ~ 0
SUP
Wire Wire Line
	3800 6600 4100 6600
$Comp
L 74xx:74LS08 U?
U 1 1 633A1E6A
P 6850 8300
F 0 "U?" H 6850 8625 50  0000 C CNN
F 1 "74LS08" H 6850 8534 50  0000 C CNN
F 2 "" H 6850 8300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6850 8300 50  0001 C CNN
	1    6850 8300
	1    0    0    -1  
$EndComp
Text Label 6300 8200 0    50   ~ 0
CLK_F
$Comp
L 74xx:74LS08 U?
U 2 1 633A4180
P 6050 8400
F 0 "U?" H 6050 8725 50  0000 C CNN
F 1 "74LS08" H 6050 8634 50  0000 C CNN
F 2 "" H 6050 8400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6050 8400 50  0001 C CNN
	2    6050 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 7950 5650 8300
Wire Wire Line
	5650 8300 5750 8300
Connection ~ 5650 7950
Wire Wire Line
	3800 8500 5750 8500
Wire Wire Line
	6300 8200 6550 8200
Wire Wire Line
	6550 8400 6350 8400
Text Label 7150 8300 0    50   ~ 0
WE_Bank
Wire Wire Line
	2600 1350 3100 1350
Wire Wire Line
	2600 1250 3100 1250
Wire Wire Line
	2600 1150 3100 1150
Wire Wire Line
	2600 1050 3100 1050
Text Label 11150 1250 0    50   ~ 0
Data0
Text Label 11150 1350 0    50   ~ 0
Data1
Text Label 11150 1450 0    50   ~ 0
Data2
Text Label 11150 1550 0    50   ~ 0
Data3
Text Label 11150 1650 0    50   ~ 0
Data4
Text Label 11150 1750 0    50   ~ 0
Data5
Text Label 11150 1850 0    50   ~ 0
Data6
Text Label 11150 1950 0    50   ~ 0
Data7
Text Label 11150 2050 0    50   ~ 0
Data8
Text Label 11150 2150 0    50   ~ 0
Data9
Text Label 11150 2250 0    50   ~ 0
Data10
Text Label 11150 2350 0    50   ~ 0
Data11
Text Label 11150 2450 0    50   ~ 0
Data12
Text Label 11150 2550 0    50   ~ 0
Data13
Text Label 11150 2650 0    50   ~ 0
Data14
Text Label 11150 2750 0    50   ~ 0
Data15
Wire Wire Line
	3250 7900 3350 7900
Wire Wire Line
	3300 8000 3350 8000
Wire Wire Line
	2750 6500 4100 6500
Wire Wire Line
	3800 6600 3800 8500
Text Label 3350 8000 0    50   ~ 0
Data0
Text Label 3350 7900 0    50   ~ 0
Data1
Text Label 3350 7800 0    50   ~ 0
Data2
Text Label 3350 7700 0    50   ~ 0
Data3
Text Label 3350 7600 0    50   ~ 0
Data4
Text Label 3350 7500 0    50   ~ 0
Data5
Text Label 3350 7400 0    50   ~ 0
Data6
Text Label 3350 7300 0    50   ~ 0
Data7
Text Label 3350 7200 0    50   ~ 0
Data8
Text Label 3350 7100 0    50   ~ 0
Data9
Text Label 3350 7000 0    50   ~ 0
Data10
Text Label 3350 6900 0    50   ~ 0
Data11
Text Label 3350 6800 0    50   ~ 0
Data12
Text Label 3350 6700 0    50   ~ 0
Data13
Text Label 3350 6600 0    50   ~ 0
Data14
Text Label 3350 6500 0    50   ~ 0
Data15
$EndSCHEMATC
