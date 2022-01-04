EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Memory"
Date "2022-01-04"
Rev "v0.2"
Comp ""
Comment1 ""
Comment2 "https://github.com/jufo-ufo/Breadboard-Computer/blob/specification-finish/LICENSE"
Comment3 "License: Apache License 2.0"
Comment4 "Author: Alexander Wersching"
$EndDescr
$Comp
L Connector:Conn_01x16_Female D_Bank_IO
U 1 1 6241427A
P 10500 4800
F 0 "D_Bank_IO" H 10392 3775 50  0000 C CNN
F 1 "Conn_01x16_Female" H 10392 3866 50  0000 C CNN
F 2 "" H 10500 4800 50  0001 C CNN
F 3 "~" H 10500 4800 50  0001 C CNN
	1    10500 4800
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x16_Female J?
U 1 1 62414B0B
P 10500 2050
F 0 "J?" H 10400 3000 50  0000 C CNN
F 1 "A_Bank_Out" H 10400 2900 50  0000 C CNN
F 2 "" H 10500 2050 50  0001 C CNN
F 3 "~" H 10500 2050 50  0001 C CNN
	1    10500 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1350 2200 1350
Wire Wire Line
	2200 1450 1250 1450
Wire Wire Line
	1250 1550 2200 1550
Wire Wire Line
	2200 1650 1250 1650
Wire Wire Line
	1250 1750 2200 1750
Wire Wire Line
	2200 1850 1250 1850
Wire Wire Line
	1250 1950 2200 1950
Wire Wire Line
	1250 2150 2000 2150
Wire Wire Line
	2000 2150 2000 3000
Wire Wire Line
	2000 3000 2200 3000
Wire Wire Line
	2200 3100 1950 3100
Wire Wire Line
	1950 3100 1950 2250
Wire Wire Line
	1950 2250 1250 2250
Wire Wire Line
	1250 2350 1900 2350
Wire Wire Line
	1900 2350 1900 3200
Wire Wire Line
	1900 3200 2200 3200
Wire Wire Line
	2200 3300 1850 3300
Wire Wire Line
	1850 3300 1850 2450
Wire Wire Line
	1850 2450 1250 2450
Wire Wire Line
	1250 2550 1800 2550
Wire Wire Line
	1800 2550 1800 3400
Wire Wire Line
	1750 2650 1250 2650
Wire Wire Line
	1750 2650 1750 3500
Wire Wire Line
	1250 2750 1700 2750
Wire Wire Line
	1700 2750 1700 3600
Wire Wire Line
	1650 3700 1650 2850
Wire Wire Line
	1650 2850 1250 2850
Wire Wire Line
	1250 2050 2200 2050
$Comp
L Computer_Component_Library:74HC573 U?
U 1 1 6241EA82
P 2600 1700
F 0 "U?" H 2900 2350 50  0000 C CNN
F 1 "74HC573" H 2350 2350 50  0000 C CNN
F 2 "" H 2550 2150 50  0001 C CNN
F 3 "" H 2550 2150 50  0001 C CNN
	1    2600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1200 3000 1200
$Comp
L power:+5V #PWR?
U 1 1 62480A58
P 2600 1000
F 0 "#PWR?" H 2600 850 50  0001 C CNN
F 1 "+5V" H 2615 1173 50  0000 C CNN
F 2 "" H 2600 1000 50  0001 C CNN
F 3 "" H 2600 1000 50  0001 C CNN
	1    2600 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62481FCA
P 2600 2650
F 0 "#PWR?" H 2600 2500 50  0001 C CNN
F 1 "+5V" H 2615 2823 50  0000 C CNN
F 2 "" H 2600 2650 50  0001 C CNN
F 3 "" H 2600 2650 50  0001 C CNN
	1    2600 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6248411C
P 2600 3850
F 0 "#PWR?" H 2600 3600 50  0001 C CNN
F 1 "GND" H 2605 3677 50  0000 C CNN
F 2 "" H 2600 3850 50  0001 C CNN
F 3 "" H 2600 3850 50  0001 C CNN
	1    2600 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 624855B8
P 2600 2200
F 0 "#PWR?" H 2600 1950 50  0001 C CNN
F 1 "GND" H 2605 2027 50  0000 C CNN
F 2 "" H 2600 2200 50  0001 C CNN
F 3 "" H 2600 2200 50  0001 C CNN
	1    2600 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3400 2200 3400
Wire Wire Line
	1750 3500 2200 3500
Wire Wire Line
	1700 3600 2200 3600
Wire Wire Line
	1650 3700 2200 3700
$Comp
L Computer_Component_Library:74HC573 U?
U 1 1 624D05E2
P 2900 8800
F 0 "U?" H 3200 9450 50  0000 C CNN
F 1 "74HC573" H 2650 9450 50  0000 C CNN
F 2 "" H 2850 9250 50  0001 C CNN
F 3 "" H 2850 9250 50  0001 C CNN
	1    2900 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 6800 2500 6800
Wire Wire Line
	2500 6900 1750 6900
Wire Wire Line
	1750 7000 2500 7000
Wire Wire Line
	2500 7100 1750 7100
Wire Wire Line
	1750 7200 2500 7200
Wire Wire Line
	2500 7300 1750 7300
Wire Wire Line
	1750 7400 2500 7400
Wire Wire Line
	1750 7600 2150 7600
Wire Wire Line
	2150 7600 2150 8450
Wire Wire Line
	2150 8450 2500 8450
Wire Wire Line
	2500 8550 2100 8550
Wire Wire Line
	2100 8550 2100 7700
Wire Wire Line
	2100 7700 1750 7700
Wire Wire Line
	1750 7800 2050 7800
Wire Wire Line
	2050 7800 2050 8650
Wire Wire Line
	2050 8650 2500 8650
Wire Wire Line
	2500 8750 2000 8750
Wire Wire Line
	2000 8750 2000 7900
Wire Wire Line
	2000 7900 1750 7900
Wire Wire Line
	1750 8000 1950 8000
Wire Wire Line
	1950 8000 1950 8850
Wire Wire Line
	1900 8100 1750 8100
Wire Wire Line
	1900 8100 1900 8950
Wire Wire Line
	1750 8200 1850 8200
Wire Wire Line
	1850 8200 1850 9050
Wire Wire Line
	1800 9150 1800 8300
Wire Wire Line
	1800 8300 1750 8300
Wire Wire Line
	1750 7500 2500 7500
$Comp
L Computer_Component_Library:74HC573 U?
U 1 1 624D0604
P 2900 7150
F 0 "U?" H 3200 7800 50  0000 C CNN
F 1 "74HC573" H 2650 7800 50  0000 C CNN
F 2 "" H 2850 7600 50  0001 C CNN
F 3 "" H 2850 7600 50  0001 C CNN
	1    2900 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 8300 3350 8300
Wire Wire Line
	3350 8300 3350 6650
Wire Wire Line
	3350 6650 3300 6650
Wire Wire Line
	3500 8450 3300 8450
Wire Wire Line
	3500 7600 3500 8450
Wire Wire Line
	3300 8550 3550 8550
Wire Wire Line
	3550 8550 3550 7700
Wire Wire Line
	3600 7800 3600 8650
Wire Wire Line
	3600 8650 3300 8650
Wire Wire Line
	3300 8750 3650 8750
Wire Wire Line
	3650 8750 3650 7900
Wire Wire Line
	3700 8000 3700 8850
Wire Wire Line
	3700 8850 3300 8850
Wire Wire Line
	3300 8950 3750 8950
Wire Wire Line
	3750 8950 3750 8100
Wire Wire Line
	3800 9050 3300 9050
Wire Wire Line
	3300 9150 3850 9150
$Comp
L power:+5V #PWR?
U 1 1 624D062D
P 2900 6450
F 0 "#PWR?" H 2900 6300 50  0001 C CNN
F 1 "+5V" H 2915 6623 50  0000 C CNN
F 2 "" H 2900 6450 50  0001 C CNN
F 3 "" H 2900 6450 50  0001 C CNN
	1    2900 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 624D0633
P 2900 8100
F 0 "#PWR?" H 2900 7950 50  0001 C CNN
F 1 "+5V" H 2915 8273 50  0000 C CNN
F 2 "" H 2900 8100 50  0001 C CNN
F 3 "" H 2900 8100 50  0001 C CNN
	1    2900 8100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 624D0639
P 2900 9300
F 0 "#PWR?" H 2900 9050 50  0001 C CNN
F 1 "GND" H 2905 9127 50  0000 C CNN
F 2 "" H 2900 9300 50  0001 C CNN
F 3 "" H 2900 9300 50  0001 C CNN
	1    2900 9300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 624D063F
P 2900 7650
F 0 "#PWR?" H 2900 7400 50  0001 C CNN
F 1 "GND" H 2905 7477 50  0000 C CNN
F 2 "" H 2900 7650 50  0001 C CNN
F 3 "" H 2900 7650 50  0001 C CNN
	1    2900 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 8850 2500 8850
Wire Wire Line
	1900 8950 2500 8950
Wire Wire Line
	1850 9050 2500 9050
Wire Wire Line
	1800 9150 2500 9150
$Comp
L power:GND #PWR?
U 1 1 624D0649
P 2500 8300
F 0 "#PWR?" H 2500 8050 50  0001 C CNN
F 1 "GND" V 2505 8172 50  0000 R CNN
F 2 "" H 2500 8300 50  0001 C CNN
F 3 "" H 2500 8300 50  0001 C CNN
	1    2500 8300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 624D064F
P 2500 6650
F 0 "#PWR?" H 2500 6400 50  0001 C CNN
F 1 "GND" V 2505 6522 50  0000 R CNN
F 2 "" H 2500 6650 50  0001 C CNN
F 3 "" H 2500 6650 50  0001 C CNN
	1    2500 6650
	0    1    1    0   
$EndComp
$Comp
L Computer_Component_Library:AS6C62256-55PCN U?
U 1 1 624FA407
P 5850 4850
F 0 "U?" H 6250 5650 50  0000 C CNN
F 1 "AS6C62256-55PCN" H 5400 5650 50  0000 C CNN
F 2 "" H 5600 4750 50  0001 C CNN
F 3 "" H 5600 4750 50  0001 C CNN
	1    5850 4850
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:28C256 U?
U 1 1 62538094
P 5850 2350
F 0 "U?" H 6100 3400 50  0000 C CNN
F 1 "28C256" H 5600 3400 50  0000 C CNN
F 2 "" H 5850 2350 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 5850 2350 50  0001 C CNN
	1    5850 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6253C158
P 5850 5700
F 0 "#PWR?" H 5850 5450 50  0001 C CNN
F 1 "GND" H 5855 5527 50  0000 C CNN
F 2 "" H 5850 5700 50  0001 C CNN
F 3 "" H 5850 5700 50  0001 C CNN
	1    5850 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6253CE04
P 5850 3450
F 0 "#PWR?" H 5850 3200 50  0001 C CNN
F 1 "GND" H 5855 3277 50  0000 C CNN
F 2 "" H 5850 3450 50  0001 C CNN
F 3 "" H 5850 3450 50  0001 C CNN
	1    5850 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6253FD0E
P 5450 3050
F 0 "#PWR?" H 5450 2900 50  0001 C CNN
F 1 "+5V" V 5465 3178 50  0000 L CNN
F 2 "" H 5450 3050 50  0001 C CNN
F 3 "" H 5450 3050 50  0001 C CNN
	1    5450 3050
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62540328
P 5850 1250
F 0 "#PWR?" H 5850 1100 50  0001 C CNN
F 1 "+5V" H 5865 1423 50  0000 C CNN
F 2 "" H 5850 1250 50  0001 C CNN
F 3 "" H 5850 1250 50  0001 C CNN
	1    5850 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62541B72
P 5850 4000
F 0 "#PWR?" H 5850 3850 50  0001 C CNN
F 1 "+5V" H 5865 4173 50  0000 C CNN
F 2 "" H 5850 4000 50  0001 C CNN
F 3 "" H 5850 4000 50  0001 C CNN
	1    5850 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 625466BB
P 6400 5350
F 0 "#PWR?" H 6400 5100 50  0001 C CNN
F 1 "GND" V 6405 5222 50  0000 R CNN
F 2 "" H 6400 5350 50  0001 C CNN
F 3 "" H 6400 5350 50  0001 C CNN
	1    6400 5350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62547D1A
P 5450 3250
F 0 "#PWR?" H 5450 3000 50  0001 C CNN
F 1 "GND" V 5455 3122 50  0000 R CNN
F 2 "" H 5450 3250 50  0001 C CNN
F 3 "" H 5450 3250 50  0001 C CNN
	1    5450 3250
	0    1    1    0   
$EndComp
$Comp
L Computer_Component_Library:74HC573 U?
U 1 1 624206DD
P 2600 3350
F 0 "U?" H 2900 4000 50  0000 C CNN
F 1 "74HC573" H 2350 4000 50  0000 C CNN
F 2 "" H 2550 3800 50  0001 C CNN
F 3 "" H 2550 3800 50  0001 C CNN
	1    2600 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2850 3100 2850
Wire Wire Line
	3200 3000 3000 3000
Wire Wire Line
	3000 3100 3250 3100
Wire Wire Line
	3300 3200 3000 3200
Wire Wire Line
	3000 3300 3350 3300
Wire Wire Line
	3400 3400 3000 3400
Wire Wire Line
	3000 3500 3450 3500
Wire Wire Line
	3500 3600 3000 3600
Wire Wire Line
	3000 3700 3550 3700
Wire Wire Line
	3000 2050 3600 2050
Wire Wire Line
	3000 1950 3600 1950
Wire Wire Line
	3000 1850 3600 1850
Wire Wire Line
	3000 1750 3600 1750
Text Label 6250 1450 0    50   ~ 0
Data0
Text Label 6250 1550 0    50   ~ 0
Data1
Text Label 6250 1650 0    50   ~ 0
Data2
Text Label 6250 1750 0    50   ~ 0
Data3
Text Label 6250 1850 0    50   ~ 0
Data4
Text Label 6250 1950 0    50   ~ 0
Data5
Text Label 6250 2050 0    50   ~ 0
Data6
Text Label 6250 2150 0    50   ~ 0
Data7
Wire Wire Line
	3300 6900 3900 6900
Wire Wire Line
	3300 7000 3900 7000
Wire Wire Line
	3300 7100 3900 7100
Wire Wire Line
	3300 7200 3900 7200
Wire Wire Line
	3300 7300 3900 7300
Wire Wire Line
	3300 7400 3900 7400
Wire Wire Line
	3300 7500 3900 7500
Wire Wire Line
	3500 7600 3900 7600
Wire Wire Line
	3550 7700 3900 7700
Wire Wire Line
	3600 7800 3900 7800
Wire Wire Line
	3650 7900 3900 7900
Wire Wire Line
	3700 8000 3900 8000
Wire Wire Line
	3750 8100 3900 8100
Wire Wire Line
	5450 1450 5150 1450
Wire Wire Line
	5450 1550 5150 1550
Wire Wire Line
	5150 1650 5450 1650
Wire Wire Line
	5450 1750 5150 1750
Wire Wire Line
	5150 1850 5450 1850
Wire Wire Line
	5450 1950 5150 1950
Wire Wire Line
	5450 2050 5150 2050
Wire Wire Line
	5150 2150 5450 2150
Wire Wire Line
	5450 2250 5150 2250
Wire Wire Line
	5150 2350 5450 2350
Wire Wire Line
	5450 2450 5150 2450
Wire Wire Line
	5150 2550 5450 2550
Wire Wire Line
	5450 2650 5150 2650
Wire Wire Line
	5150 2750 5450 2750
Text Label 5150 1450 0    50   ~ 0
Addr0
Text Label 5150 1550 0    50   ~ 0
Addr1
Text Label 5150 1650 0    50   ~ 0
Addr2
Text Label 5150 1750 0    50   ~ 0
Addr3
Text Label 5150 1850 0    50   ~ 0
Addr4
Text Label 5150 1950 0    50   ~ 0
Addr5
Text Label 5150 2050 0    50   ~ 0
Addr6
Text Label 5150 2150 0    50   ~ 0
Addr7
Text Label 5150 2250 0    50   ~ 0
Addr8
Text Label 5150 2350 0    50   ~ 0
Addr9
Text Label 5150 2450 0    50   ~ 0
Addr10
Text Label 5150 2550 0    50   ~ 0
Addr11
Text Label 5150 2650 0    50   ~ 0
Addr12
Text Label 5150 2750 0    50   ~ 0
Addr13
$Comp
L Memory_EEPROM:28C256 U?
U 1 1 628F8F90
P 8000 2350
F 0 "U?" H 8250 3400 50  0000 C CNN
F 1 "28C256" H 7750 3400 50  0000 C CNN
F 2 "" H 8000 2350 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 8000 2350 50  0001 C CNN
	1    8000 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628F8F96
P 8000 3450
F 0 "#PWR?" H 8000 3200 50  0001 C CNN
F 1 "GND" H 8005 3277 50  0000 C CNN
F 2 "" H 8000 3450 50  0001 C CNN
F 3 "" H 8000 3450 50  0001 C CNN
	1    8000 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 628F8F9C
P 7600 3050
F 0 "#PWR?" H 7600 2900 50  0001 C CNN
F 1 "+5V" V 7615 3178 50  0000 L CNN
F 2 "" H 7600 3050 50  0001 C CNN
F 3 "" H 7600 3050 50  0001 C CNN
	1    7600 3050
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 628F8FA2
P 8000 1250
F 0 "#PWR?" H 8000 1100 50  0001 C CNN
F 1 "+5V" H 8015 1423 50  0000 C CNN
F 2 "" H 8000 1250 50  0001 C CNN
F 3 "" H 8000 1250 50  0001 C CNN
	1    8000 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 628F8FA8
P 7600 3250
F 0 "#PWR?" H 7600 3000 50  0001 C CNN
F 1 "GND" V 7605 3122 50  0000 R CNN
F 2 "" H 7600 3250 50  0001 C CNN
F 3 "" H 7600 3250 50  0001 C CNN
	1    7600 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 1450 7300 1450
Wire Wire Line
	7600 1550 7300 1550
Wire Wire Line
	7300 1650 7600 1650
Wire Wire Line
	7600 1750 7300 1750
Wire Wire Line
	7300 1850 7600 1850
Wire Wire Line
	7600 1950 7300 1950
Wire Wire Line
	7600 2050 7300 2050
Wire Wire Line
	7300 2150 7600 2150
Wire Wire Line
	7600 2250 7300 2250
Wire Wire Line
	7300 2350 7600 2350
Wire Wire Line
	7600 2450 7300 2450
Wire Wire Line
	7300 2550 7600 2550
Wire Wire Line
	7600 2650 7300 2650
Wire Wire Line
	7300 2750 7600 2750
Text Label 7300 1450 0    50   ~ 0
Addr0
Text Label 7300 1550 0    50   ~ 0
Addr1
Text Label 7300 1650 0    50   ~ 0
Addr2
Text Label 7300 1750 0    50   ~ 0
Addr3
Text Label 7300 1850 0    50   ~ 0
Addr4
Text Label 7300 1950 0    50   ~ 0
Addr5
Text Label 7300 2050 0    50   ~ 0
Addr6
Text Label 7300 2150 0    50   ~ 0
Addr7
Text Label 7300 2250 0    50   ~ 0
Addr8
Text Label 7300 2350 0    50   ~ 0
Addr9
Text Label 7300 2450 0    50   ~ 0
Addr10
Text Label 7300 2550 0    50   ~ 0
Addr11
Text Label 7300 2650 0    50   ~ 0
Addr12
Text Label 7300 2750 0    50   ~ 0
Addr13
Text Label 8400 1450 0    50   ~ 0
Data8
Text Label 8400 1550 0    50   ~ 0
Data9
Text Label 8400 1650 0    50   ~ 0
Data10
Text Label 8400 1750 0    50   ~ 0
Data11
Text Label 8400 1850 0    50   ~ 0
Data12
Text Label 8400 1950 0    50   ~ 0
Data13
Text Label 8400 2050 0    50   ~ 0
Data14
Text Label 8400 2150 0    50   ~ 0
Data15
Wire Wire Line
	5000 4250 5300 4250
Wire Wire Line
	5000 4350 5300 4350
Wire Wire Line
	5000 4450 5300 4450
Wire Wire Line
	5000 4550 5300 4550
Wire Wire Line
	5000 4650 5300 4650
Wire Wire Line
	5000 4750 5300 4750
Wire Wire Line
	5000 4850 5300 4850
Wire Wire Line
	5000 4950 5300 4950
Wire Wire Line
	5000 5050 5300 5050
Wire Wire Line
	5000 5150 5300 5150
Wire Wire Line
	5000 5250 5300 5250
Wire Wire Line
	5000 5350 5300 5350
Wire Wire Line
	5000 5450 5300 5450
Wire Wire Line
	5000 5550 5300 5550
Text Label 5000 5550 0    50   ~ 0
Addr0
Text Label 5000 5450 0    50   ~ 0
Addr1
Text Label 5000 5350 0    50   ~ 0
Addr2
Text Label 5000 5250 0    50   ~ 0
Addr3
Text Label 5000 5150 0    50   ~ 0
Addr4
Text Label 5000 5050 0    50   ~ 0
Addr5
Text Label 5000 4950 0    50   ~ 0
Addr6
Text Label 5000 4850 0    50   ~ 0
Addr7
Text Label 5000 4750 0    50   ~ 0
Addr8
Text Label 5000 4650 0    50   ~ 0
Addr9
Text Label 5000 4550 0    50   ~ 0
Addr10
Text Label 5000 4450 0    50   ~ 0
Addr11
Text Label 5000 4350 0    50   ~ 0
Addr12
Text Label 5000 4250 0    50   ~ 0
Addr13
Text Label 6400 4150 0    50   ~ 0
Data0
Text Label 6400 4250 0    50   ~ 0
Data1
Text Label 6400 4350 0    50   ~ 0
Data2
Text Label 6400 4450 0    50   ~ 0
Data3
Text Label 6400 4550 0    50   ~ 0
Data4
Text Label 6400 4650 0    50   ~ 0
Data5
Text Label 6400 4750 0    50   ~ 0
Data6
$Comp
L Computer_Component_Library:AS6C62256-55PCN U?
U 1 1 62C95DFA
P 8000 4850
F 0 "U?" H 8400 5650 50  0000 C CNN
F 1 "AS6C62256-55PCN" H 7550 5650 50  0000 C CNN
F 2 "" H 7750 4750 50  0001 C CNN
F 3 "" H 7750 4750 50  0001 C CNN
	1    8000 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62C95E00
P 8000 5700
F 0 "#PWR?" H 8000 5450 50  0001 C CNN
F 1 "GND" H 8005 5527 50  0000 C CNN
F 2 "" H 8000 5700 50  0001 C CNN
F 3 "" H 8000 5700 50  0001 C CNN
	1    8000 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62C95E06
P 8000 4000
F 0 "#PWR?" H 8000 3850 50  0001 C CNN
F 1 "+5V" H 8015 4173 50  0000 C CNN
F 2 "" H 8000 4000 50  0001 C CNN
F 3 "" H 8000 4000 50  0001 C CNN
	1    8000 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62C95E0C
P 8550 5350
F 0 "#PWR?" H 8550 5100 50  0001 C CNN
F 1 "GND" V 8555 5222 50  0000 R CNN
F 2 "" H 8550 5350 50  0001 C CNN
F 3 "" H 8550 5350 50  0001 C CNN
	1    8550 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 4250 7450 4250
Wire Wire Line
	7150 4350 7450 4350
Wire Wire Line
	7150 4450 7450 4450
Wire Wire Line
	7150 4550 7450 4550
Wire Wire Line
	7150 4650 7450 4650
Wire Wire Line
	7150 4750 7450 4750
Wire Wire Line
	7150 4850 7450 4850
Wire Wire Line
	7150 4950 7450 4950
Wire Wire Line
	7150 5050 7450 5050
Wire Wire Line
	7150 5150 7450 5150
Wire Wire Line
	7150 5250 7450 5250
Wire Wire Line
	7150 5350 7450 5350
Wire Wire Line
	7150 5450 7450 5450
Wire Wire Line
	7150 5550 7450 5550
Text Label 7150 5550 0    50   ~ 0
Addr0
Text Label 7150 5450 0    50   ~ 0
Addr1
Text Label 7150 5350 0    50   ~ 0
Addr2
Text Label 7150 5250 0    50   ~ 0
Addr3
Text Label 7150 5150 0    50   ~ 0
Addr4
Text Label 7150 5050 0    50   ~ 0
Addr5
Text Label 7150 4950 0    50   ~ 0
Addr6
Text Label 7150 4850 0    50   ~ 0
Addr7
Text Label 7150 4750 0    50   ~ 0
Addr8
Text Label 7150 4650 0    50   ~ 0
Addr9
Text Label 7150 4550 0    50   ~ 0
Addr10
Text Label 7150 4450 0    50   ~ 0
Addr11
Text Label 7150 4350 0    50   ~ 0
Addr12
Text Label 7150 4250 0    50   ~ 0
Addr13
Text Label 8550 4150 0    50   ~ 0
Data8
Text Label 8550 4350 0    50   ~ 0
Data10
Text Label 8550 4450 0    50   ~ 0
Data11
Text Label 8550 4550 0    50   ~ 0
Data12
Text Label 8550 4650 0    50   ~ 0
Data13
Text Label 8550 4750 0    50   ~ 0
Data14
Text Label 8550 4850 0    50   ~ 0
Data15
Text Label 8550 4250 0    50   ~ 0
Data9
$Comp
L power:GND #PWR?
U 1 1 6309299B
P 7450 4150
F 0 "#PWR?" H 7450 3900 50  0001 C CNN
F 1 "GND" V 7455 4022 50  0000 R CNN
F 2 "" H 7450 4150 50  0001 C CNN
F 3 "" H 7450 4150 50  0001 C CNN
	1    7450 4150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 630935A0
P 5300 4150
F 0 "#PWR?" H 5300 3900 50  0001 C CNN
F 1 "GND" V 5305 4022 50  0000 R CNN
F 2 "" H 5300 4150 50  0001 C CNN
F 3 "" H 5300 4150 50  0001 C CNN
	1    5300 4150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63095589
P 5450 2850
F 0 "#PWR?" H 5450 2600 50  0001 C CNN
F 1 "GND" V 5455 2722 50  0000 R CNN
F 2 "" H 5450 2850 50  0001 C CNN
F 3 "" H 5450 2850 50  0001 C CNN
	1    5450 2850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63096CA2
P 7600 2850
F 0 "#PWR?" H 7600 2600 50  0001 C CNN
F 1 "GND" V 7605 2722 50  0000 R CNN
F 2 "" H 7600 2850 50  0001 C CNN
F 3 "" H 7600 2850 50  0001 C CNN
	1    7600 2850
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS00 U?
U 3 1 630FAF28
P 1750 950
F 0 "U?" H 1750 1275 50  0000 C CNN
F 1 "74LS00" H 1750 1184 50  0000 C CNN
F 2 "" H 1750 950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 1750 950 50  0001 C CNN
	3    1750 950 
	1    0    0    -1  
$EndComp
Text Label 6400 4850 0    50   ~ 0
Data7
Wire Wire Line
	5450 3150 5100 3150
Text Label 5100 3150 0    50   ~ 0
RE_ROM
Text Label 7250 3150 0    50   ~ 0
RE_ROM
Wire Wire Line
	7250 3150 7600 3150
Text Label 6400 5200 0    50   ~ 0
RE_RAM
Text Label 8550 5200 0    50   ~ 0
RE_RAM
Text Label 8550 5050 0    50   ~ 0
WE_RAM
Text Label 6400 5050 0    50   ~ 0
WE_RAM
Wire Wire Line
	1400 950  1400 1050
Wire Wire Line
	1400 1050 1450 1050
Wire Wire Line
	1400 950  1200 950 
Text Label 1200 950  0    50   ~ 0
WE
Wire Wire Line
	3350 6650 3400 6650
Connection ~ 3350 6650
Wire Wire Line
	3550 2850 3600 2850
Wire Wire Line
	3550 2850 3550 3700
Wire Wire Line
	3600 2750 3500 2750
Wire Wire Line
	3500 2750 3500 3600
Wire Wire Line
	3450 2650 3600 2650
Wire Wire Line
	3450 2650 3450 3500
Wire Wire Line
	3600 2550 3400 2550
Wire Wire Line
	3400 2550 3400 3400
Wire Wire Line
	3350 2450 3600 2450
Wire Wire Line
	3350 2450 3350 3300
Wire Wire Line
	3300 2350 3600 2350
Wire Wire Line
	3300 2350 3300 3200
Wire Wire Line
	3600 2250 3250 2250
Wire Wire Line
	3250 2250 3250 3100
Wire Wire Line
	3200 2150 3600 2150
Wire Wire Line
	3200 2150 3200 3000
Wire Wire Line
	3100 2850 3100 1200
Text Label 3400 6650 0    50   ~ 0
CLK_R
Wire Wire Line
	3000 1650 3600 1650
Wire Wire Line
	3000 1550 3600 1550
Wire Wire Line
	3000 1450 3600 1450
Wire Wire Line
	3000 1350 3600 1350
Text Label 10300 4000 2    50   ~ 0
Data0
Text Label 10300 4100 2    50   ~ 0
Data1
Text Label 10300 4200 2    50   ~ 0
Data2
Text Label 10300 4300 2    50   ~ 0
Data3
Text Label 10300 4400 2    50   ~ 0
Data4
Text Label 10300 4500 2    50   ~ 0
Data5
Text Label 10300 4600 2    50   ~ 0
Data6
Text Label 10300 4700 2    50   ~ 0
Data7
Text Label 10300 4800 2    50   ~ 0
Data8
Text Label 10300 4900 2    50   ~ 0
Data9
Text Label 10300 5000 2    50   ~ 0
Data10
Text Label 10300 5100 2    50   ~ 0
Data11
Text Label 10300 5200 2    50   ~ 0
Data12
Text Label 10300 5300 2    50   ~ 0
Data13
Text Label 10300 5400 2    50   ~ 0
Data14
Text Label 10300 5500 2    50   ~ 0
Data15
$Comp
L Computer_Component_Library:Bus_Connector J?
U 1 1 61D98759
P 1450 10200
F 0 "J?" H 1109 10575 50  0000 C CNN
F 1 "Bus_Connector" H 1109 10484 50  0000 C CNN
F 2 "" H 150 9550 50  0001 C CNN
F 3 "" H 150 9550 50  0001 C CNN
	1    1450 10200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61DFC7B1
P 1600 10050
F 0 "#PWR?" H 1600 9800 50  0001 C CNN
F 1 "GND" V 1605 9922 50  0000 R CNN
F 2 "" H 1600 10050 50  0001 C CNN
F 3 "" H 1600 10050 50  0001 C CNN
	1    1600 10050
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61DFCEE3
P 1600 10150
F 0 "#PWR?" H 1600 10000 50  0001 C CNN
F 1 "+5V" V 1615 10278 50  0000 L CNN
F 2 "" H 1600 10150 50  0001 C CNN
F 3 "" H 1600 10150 50  0001 C CNN
	1    1600 10150
	0    1    1    0   
$EndComp
$Comp
L Computer_Component_Library:AM-Connector U?
U 2 1 61E8785D
P 2450 10150
F 0 "U?" H 2359 10475 50  0000 C CNN
F 1 "AM-Connector" H 2359 10384 50  0000 C CNN
F 2 "" H 2600 10150 50  0001 C CNN
F 3 "" H 2600 10150 50  0001 C CNN
	2    2450 10150
	1    0    0    -1  
$EndComp
Text Label 2600 10150 0    50   ~ 0
WE_F
Text Label 2600 10250 0    50   ~ 0
WE
$Comp
L Computer_Component_Library:AM-Connector U?
U 3 1 61FB8EB6
P 2450 10750
F 0 "U?" H 2386 10975 50  0000 C CNN
F 1 "AM-Connector" H 2386 10884 50  0000 C CNN
F 2 "" H 2600 10750 50  0001 C CNN
F 3 "" H 2600 10750 50  0001 C CNN
	3    2450 10750
	1    0    0    -1  
$EndComp
Text Label 2600 10750 0    50   ~ 0
RE
Text Notes 550  2200 0    50   ~ 0
D_In
Text Notes 1100 6850 0    50   ~ 0
A_In
$Comp
L Computer_Component_Library:Bus_Connector J?
U 2 1 61E0F510
P 1100 2100
F 0 "J?" H 910 3075 50  0000 C CNN
F 1 "Bus_Connector" H 910 2984 50  0000 C CNN
F 2 "" H -200 1450 50  0001 C CNN
F 3 "" H -200 1450 50  0001 C CNN
	2    1100 2100
	1    0    0    -1  
$EndComp
$Comp
L Computer_Component_Library:Bus_Connector J?
U 3 1 61E3FB06
P 1600 7550
F 0 "J?" H 1410 8525 50  0000 C CNN
F 1 "Bus_Connector" H 1410 8434 50  0000 C CNN
F 2 "" H 300 6900 50  0001 C CNN
F 3 "" H 300 6900 50  0001 C CNN
	3    1600 7550
	1    0    0    -1  
$EndComp
Text Label 3900 6800 0    50   ~ 0
Addr0
Text Label 3900 6900 0    50   ~ 0
Addr1
Text Label 3900 7000 0    50   ~ 0
Addr2
Text Label 3900 7100 0    50   ~ 0
Addr3
Text Label 3900 7200 0    50   ~ 0
Addr4
Text Label 3900 7300 0    50   ~ 0
Addr5
Text Label 3900 7400 0    50   ~ 0
Addr6
Text Label 3900 7500 0    50   ~ 0
Addr7
Text Label 3900 7600 0    50   ~ 0
Addr8
Text Label 3900 7700 0    50   ~ 0
Addr9
Text Label 3900 7800 0    50   ~ 0
Addr10
Text Label 3900 7900 0    50   ~ 0
Addr11
Text Label 3900 8000 0    50   ~ 0
Addr12
Text Label 3900 8100 0    50   ~ 0
Addr13
Text Label 3900 8200 0    50   ~ 0
Addr14
Text Label 3900 8300 0    50   ~ 0
Addr15
Wire Wire Line
	3300 6800 3900 6800
Text Label 1300 1350 0    50   ~ 0
Bus_D0
Text Label 1300 1450 0    50   ~ 0
Bus_D1
Text Label 1300 1550 0    50   ~ 0
Bus_D2
Text Label 1300 1650 0    50   ~ 0
Bus_D3
Text Label 1300 1750 0    50   ~ 0
Bus_D4
Text Label 1300 1850 0    50   ~ 0
Bus_D5
Text Label 1300 1950 0    50   ~ 0
Bus_D6
Text Label 1300 2050 0    50   ~ 0
Bus_D7
Text Label 1300 2150 0    50   ~ 0
Bus_D8
Text Label 1300 2250 0    50   ~ 0
Bus_D9
Text Label 1300 2350 0    50   ~ 0
Bus_D10
Text Label 1300 2450 0    50   ~ 0
Bus_D11
Text Label 1300 2550 0    50   ~ 0
Bus_D12
Text Label 1300 2650 0    50   ~ 0
Bus_D13
Text Label 1300 2750 0    50   ~ 0
Bus_D14
Text Label 1300 2850 0    50   ~ 0
Bus_D15
Wire Wire Line
	2200 2850 2100 2850
Wire Wire Line
	2100 2850 2100 1200
Wire Wire Line
	3100 1200 3150 1200
Connection ~ 3100 1200
Wire Wire Line
	2100 1200 2200 1200
Text Label 3600 2850 0    50   ~ 0
Data15
Text Label 3600 2750 0    50   ~ 0
Data14
Text Label 3600 2650 0    50   ~ 0
Data13
Text Label 3600 2550 0    50   ~ 0
Data12
Text Label 3600 2450 0    50   ~ 0
Data11
Text Label 3600 2350 0    50   ~ 0
Data10
Text Label 3600 2250 0    50   ~ 0
Data9
Text Label 3600 2150 0    50   ~ 0
Data8
Text Label 3600 2050 0    50   ~ 0
Data7
Text Label 3600 1950 0    50   ~ 0
Data6
Text Label 3600 1850 0    50   ~ 0
Data5
Text Label 3600 1750 0    50   ~ 0
Data4
Text Label 3600 1650 0    50   ~ 0
Data3
Text Label 3600 1550 0    50   ~ 0
Data2
Text Label 3600 1450 0    50   ~ 0
Data1
Text Label 3600 1350 0    50   ~ 0
Data0
Text Label 10000 1350 0    50   ~ 0
Addr0
Text Label 10000 1450 0    50   ~ 0
Addr1
Text Label 10000 1550 0    50   ~ 0
Addr2
Text Label 10000 1650 0    50   ~ 0
Addr3
Text Label 10000 1750 0    50   ~ 0
Addr4
Text Label 10000 1850 0    50   ~ 0
Addr5
Text Label 10000 1950 0    50   ~ 0
Addr6
Text Label 10000 2050 0    50   ~ 0
Addr7
Text Label 10000 2150 0    50   ~ 0
Addr8
Text Label 10000 2250 0    50   ~ 0
Addr9
Text Label 10000 2350 0    50   ~ 0
Addr10
Text Label 10000 2450 0    50   ~ 0
Addr11
Text Label 10000 2550 0    50   ~ 0
Addr12
Text Label 10000 2650 0    50   ~ 0
Addr13
Text Label 10000 2750 0    50   ~ 0
Addr14
Text Label 10000 2850 0    50   ~ 0
Addr15
Wire Wire Line
	10000 1350 10300 1350
Wire Wire Line
	10000 1450 10300 1450
Wire Wire Line
	10000 1550 10300 1550
Wire Wire Line
	10000 1650 10300 1650
Wire Wire Line
	10000 1750 10300 1750
Wire Wire Line
	10000 1850 10300 1850
Wire Wire Line
	10000 1950 10300 1950
Wire Wire Line
	10000 2050 10300 2050
Wire Wire Line
	10000 2150 10300 2150
Wire Wire Line
	10000 2250 10300 2250
Wire Wire Line
	10000 2350 10300 2350
Wire Wire Line
	10000 2450 10300 2450
Wire Wire Line
	10000 2550 10300 2550
Wire Wire Line
	10000 2650 10300 2650
Wire Wire Line
	10000 2750 10300 2750
Wire Wire Line
	10000 2850 10300 2850
Wire Wire Line
	2100 950  2100 1200
Connection ~ 2100 1200
Wire Wire Line
	2050 950  2100 950 
$Comp
L Computer_Component_Library:AM-Connector U?
U 5 1 6330702E
P 11600 4750
F 0 "U?" H 11450 5700 50  0000 R CNN
F 1 "AM-Connector" H 11600 5600 50  0000 R CNN
F 2 "" H 11750 4750 50  0001 C CNN
F 3 "" H 11750 4750 50  0001 C CNN
	5    11600 4750
	-1   0    0    -1  
$EndComp
Text Label 11450 4000 2    50   ~ 0
Data0
Text Label 11450 4100 2    50   ~ 0
Data1
Text Label 11450 4200 2    50   ~ 0
Data2
Text Label 11450 4300 2    50   ~ 0
Data3
Text Label 11450 4400 2    50   ~ 0
Data4
Text Label 11450 4500 2    50   ~ 0
Data5
Text Label 11450 4600 2    50   ~ 0
Data6
Text Label 11450 4700 2    50   ~ 0
Data7
Text Label 11450 4800 2    50   ~ 0
Data8
Text Label 11450 4900 2    50   ~ 0
Data9
Text Label 11450 5000 2    50   ~ 0
Data10
Text Label 11450 5100 2    50   ~ 0
Data11
Text Label 11450 5200 2    50   ~ 0
Data12
Text Label 11450 5300 2    50   ~ 0
Data13
Text Label 11450 5400 2    50   ~ 0
Data14
Text Label 11450 5500 2    50   ~ 0
Data15
$Comp
L Computer_Component_Library:Bus_Connector J?
U 10 1 63501B64
P 1450 10850
F 0 "J?" H 1312 11175 50  0000 C CNN
F 1 "Bus_Connector" H 1312 11084 50  0000 C CNN
F 2 "" H 150 10200 50  0001 C CNN
F 3 "" H 150 10200 50  0001 C CNN
	10   1450 10850
	1    0    0    -1  
$EndComp
Text Label 1600 10750 0    50   ~ 0
Sup
Wire Wire Line
	6400 9300 6200 9300
Text Label 6200 10050 0    50   ~ 0
WE_F
Wire Wire Line
	6200 8850 6400 8850
Wire Wire Line
	6400 8650 6200 8650
Text Label 6200 9300 0    50   ~ 0
RE
Wire Wire Line
	6200 10050 6400 10050
Wire Wire Line
	5550 9050 5550 9750
$Comp
L 74xx:74LS00 U?
U 2 1 630F9B85
P 5900 8850
F 0 "U?" H 5900 9175 50  0000 C CNN
F 1 "74LS00" H 5900 9084 50  0000 C CNN
F 2 "" H 5900 8850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 5900 8850 50  0001 C CNN
	2    5900 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 8750 5550 8950
Wire Wire Line
	6200 9850 6300 9850
Connection ~ 5550 8950
Wire Wire Line
	5550 8950 5450 8950
Wire Wire Line
	5550 8950 5600 8950
Wire Wire Line
	5450 9050 5550 9050
Connection ~ 5550 9750
$Comp
L 74xx:74LS139 U?
U 1 1 63032E97
P 4950 9050
F 0 "U?" H 4950 9417 50  0000 C CNN
F 1 "74LS139" H 4950 9326 50  0000 C CNN
F 2 "" H 4950 9050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 4950 9050 50  0001 C CNN
	1    4950 9050
	1    0    0    -1  
$EndComp
Text Label 6200 8650 0    50   ~ 0
RE
Connection ~ 6300 9850
Wire Wire Line
	6300 9500 6400 9500
Wire Wire Line
	6300 9850 6300 9500
Wire Wire Line
	6400 9850 6300 9850
Wire Wire Line
	5550 8750 5600 8750
Wire Wire Line
	5550 9950 5550 9750
Wire Wire Line
	5600 9950 5550 9950
Wire Wire Line
	5550 9750 5600 9750
$Comp
L 74xx:74LS00 U?
U 1 1 630F2E78
P 5900 9850
F 0 "U?" H 5900 10175 50  0000 C CNN
F 1 "74LS00" H 5900 10084 50  0000 C CNN
F 2 "" H 5900 9850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 5900 9850 50  0001 C CNN
	1    5900 9850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 850  1400 850 
Wire Wire Line
	1400 850  1400 950 
Connection ~ 1400 950 
Wire Wire Line
	3800 8200 3900 8200
Wire Wire Line
	3900 8300 3850 8300
Wire Wire Line
	3850 8300 3850 8950
Wire Wire Line
	3800 8200 3800 9050
Wire Wire Line
	4450 9050 3800 9050
Connection ~ 3800 9050
Wire Wire Line
	3850 8950 4450 8950
Connection ~ 3850 8950
Wire Wire Line
	3850 8950 3850 9150
Text Label 1600 10250 0    50   ~ 0
CLK_R
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 63E3F7A6
P 3500 10400
F 0 "J?" H 3528 10376 50  0000 L CNN
F 1 "Bank_Controller_Enable_Out" H 3528 10285 50  0000 L CNN
F 2 "" H 3500 10400 50  0001 C CNN
F 3 "~" H 3500 10400 50  0001 C CNN
	1    3500 10400
	1    0    0    -1  
$EndComp
Text Label 2100 950  0    50   ~ 0
~WE
Text Label 3300 10500 2    50   ~ 0
RE
Text Label 3300 10400 2    50   ~ 0
WE
$Comp
L power:+5V #PWR?
U 1 1 630391E1
P 2150 5800
F 0 "#PWR?" H 2150 5650 50  0001 C CNN
F 1 "+5V" V 2165 5928 50  0000 L CNN
F 2 "" H 2150 5800 50  0001 C CNN
F 3 "" H 2150 5800 50  0001 C CNN
	1    2150 5800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 630388DC
P 1150 5800
F 0 "#PWR?" H 1150 5550 50  0001 C CNN
F 1 "GND" V 1155 5672 50  0000 R CNN
F 2 "" H 1150 5800 50  0001 C CNN
F 3 "" H 1150 5800 50  0001 C CNN
	1    1150 5800
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS139 U?
U 3 1 63034246
P 1650 5800
F 0 "U?" V 1283 5800 50  0000 C CNN
F 1 "74LS139" V 1374 5800 50  0000 C CNN
F 2 "" H 1650 5800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 1650 5800 50  0001 C CNN
	3    1650 5800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63172612
P 1150 4500
F 0 "#PWR?" H 1150 4250 50  0001 C CNN
F 1 "GND" V 1155 4372 50  0000 R CNN
F 2 "" H 1150 4500 50  0001 C CNN
F 3 "" H 1150 4500 50  0001 C CNN
	1    1150 4500
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63170F3F
P 2150 4500
F 0 "#PWR?" H 2150 4350 50  0001 C CNN
F 1 "+5V" V 2165 4628 50  0000 L CNN
F 2 "" H 2150 4500 50  0001 C CNN
F 3 "" H 2150 4500 50  0001 C CNN
	1    2150 4500
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS00 U?
U 5 1 6316D629
P 1650 4500
F 0 "U?" V 1283 4500 50  0000 C CNN
F 1 "74LS00" V 1374 4500 50  0000 C CNN
F 2 "" H 1650 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 1650 4500 50  0001 C CNN
	5    1650 4500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6310735B
P 1150 5150
F 0 "#PWR?" H 1150 4900 50  0001 C CNN
F 1 "GND" V 1155 5022 50  0000 R CNN
F 2 "" H 1150 5150 50  0001 C CNN
F 3 "" H 1150 5150 50  0001 C CNN
	1    1150 5150
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63107A62
P 2150 5150
F 0 "#PWR?" H 2150 5000 50  0001 C CNN
F 1 "+5V" V 2165 5278 50  0000 L CNN
F 2 "" H 2150 5150 50  0001 C CNN
F 3 "" H 2150 5150 50  0001 C CNN
	1    2150 5150
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS00 U?
U 5 1 63100B65
P 1650 5150
F 0 "U?" V 2017 5150 50  0000 C CNN
F 1 "74LS00" V 1926 5150 50  0000 C CNN
F 2 "" H 1650 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 1650 5150 50  0001 C CNN
	5    1650 5150
	0    -1   -1   0   
$EndComp
Text Label 3650 9550 2    50   ~ 0
SUP
Text Label 7000 9950 0    50   ~ 0
WE_RAM
Text Label 7000 9400 0    50   ~ 0
RE_RAM
Text Label 7000 8750 0    50   ~ 0
RE_ROM
$Comp
L 74xx:74LS00 U?
U 1 1 63163A18
P 6700 9950
F 0 "U?" H 6700 10275 50  0000 C CNN
F 1 "74LS00" H 6700 10200 50  0000 C CNN
F 2 "" H 6700 9950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6700 9950 50  0001 C CNN
	1    6700 9950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U?
U 2 1 63165F43
P 6700 9400
F 0 "U?" H 6700 9725 50  0000 C CNN
F 1 "74LS00" H 6700 9634 50  0000 C CNN
F 2 "" H 6700 9400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6700 9400 50  0001 C CNN
	2    6700 9400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U?
U 3 1 631683C4
P 6700 8750
F 0 "U?" H 6700 9075 50  0000 C CNN
F 1 "74LS00" H 6700 8984 50  0000 C CNN
F 2 "" H 6700 8750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6700 8750 50  0001 C CNN
	3    6700 8750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 U?
U 4 1 61FE8FB9
P 4050 9550
F 0 "U?" H 4050 9875 50  0000 C CNN
F 1 "74LS00" H 4050 9784 50  0000 C CNN
F 2 "" H 4050 9550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 4050 9550 50  0001 C CNN
	4    4050 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 9250 4400 9250
Wire Wire Line
	4400 9250 4400 9550
Wire Wire Line
	4400 9550 4350 9550
Wire Wire Line
	3750 9450 3700 9450
Wire Wire Line
	3700 9650 3750 9650
Wire Wire Line
	3700 9450 3700 9550
Wire Wire Line
	3700 9550 3650 9550
Connection ~ 3700 9550
Wire Wire Line
	3700 9550 3700 9650
Text Label 3150 1200 0    50   ~ 0
CLK_R
$EndSCHEMATC
