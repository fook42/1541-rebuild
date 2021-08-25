EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "1541-rebuid"
Date "2021-08-26"
Rev "1.4.2"
Comp ""
Comment1 "Erstellt von: Thorsten Kattanek"
Comment2 "redesign and i2c added: F00K42"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 600  7700 0    60   ~ 0
Am meiner 1541II Platine (ASSY NO 345003 REV 9) habe ich folgende modifiktionen durchgeführt:\n- U8 (VIA 6522) ausgelötet und gesockelt\n- Dauerläufer behoben durch trennen einer Leiterbahn zwischen R/W Amp Pin 32 (Power On) und den 220 Ohm Widerstand
$Comp
L Oscillator:TCXO-14 X1
U 1 1 55F7CB9E
P 3000 2900
F 0 "X1" H 3150 3200 70  0000 C CNN
F 1 "24Mhz" H 3250 2650 70  0000 C CNN
F 2 "Oscillator:Oscillator_DIP-14_LargePads" H 3000 2900 60  0001 C CNN
F 3 "" H 3000 2900 60  0000 C CNN
	1    3000 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 55F7D4E4
P 2150 2550
F 0 "#PWR08" H 2150 2400 50  0001 C CNN
F 1 "+5V" H 2150 2690 50  0000 C CNN
F 2 "" H 2150 2550 60  0000 C CNN
F 3 "" H 2150 2550 60  0000 C CNN
	1    2150 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C3
U 1 1 55F7D642
P 2250 2900
F 0 "C3" H 2275 3000 50  0000 L CNN
F 1 "100n" H 2275 2800 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 2288 2750 30  0001 C CNN
F 3 "" H 2250 2900 60  0000 C CNN
	1    2250 2900
	1    0    0    -1  
$EndComp
NoConn ~ 4350 2500
$Comp
L power:+5V #PWR05
U 1 1 55F7F7C2
P 5000 1550
F 0 "#PWR05" H 5000 1400 50  0001 C CNN
F 1 "+5V" H 5000 1690 50  0000 C CNN
F 2 "" H 5000 1550 60  0000 C CNN
F 3 "" H 5000 1550 60  0000 C CNN
	1    5000 1550
	1    0    0    -1  
$EndComp
NoConn ~ 4350 2700
$Comp
L Device:R R1
U 1 1 55F7EA97
P 3800 2100
F 0 "R1" V 3880 2100 50  0000 C CNN
F 1 "10k" V 3800 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3730 2100 30  0001 C CNN
F 3 "" H 3800 2100 30  0000 C CNN
	1    3800 2100
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 55F7ED10
P 3500 2100
F 0 "#PWR07" H 3500 1950 50  0001 C CNN
F 1 "+5V" H 3500 2240 50  0000 C CNN
F 2 "" H 3500 2100 60  0000 C CNN
F 3 "" H 3500 2100 60  0000 C CNN
	1    3500 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 55F7F83D
P 1350 1250
F 0 "C1" H 1375 1350 50  0000 L CNN
F 1 "100n" H 1375 1150 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 1388 1100 30  0001 C CNN
F 3 "" H 1350 1250 60  0000 C CNN
	1    1350 1250
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 55F7FBA4
P 1350 1550
F 0 "C2" H 1375 1650 50  0000 L CNN
F 1 "100n" H 1375 1450 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 1388 1400 30  0001 C CNN
F 3 "" H 1350 1550 60  0000 C CNN
	1    1350 1550
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 55F800FF
P 1500 1050
F 0 "#PWR03" H 1500 900 50  0001 C CNN
F 1 "+5V" H 1500 1190 50  0000 C CNN
F 2 "" H 1500 1050 60  0000 C CNN
F 3 "" H 1500 1050 60  0000 C CNN
	1    1500 1050
	1    0    0    -1  
$EndComp
Text Notes 750  750  0    60   ~ 0
Stützkondensatoren für IC1
$Sheet
S 6000 3850 700  600 
U 55F9179B
F0 "LCD Display" 60
F1 "lcd.sch" 60
F2 "D6" I L 6000 4100 60 
F3 "D7" I L 6000 4200 60 
F4 "RS" I L 6000 4300 60 
F5 "EN" I L 6000 4400 60 
F6 "D4_SCL" I L 6000 3900 60 
F7 "D5_SDA" I L 6000 4000 60 
F8 "DSP_PWR" I R 6700 4400 60 
$EndSheet
$Sheet
S 7600 1550 1100 1300
U 55F9B22C
F0 "VIA 6522 Sockel" 60
F1 "via6522_sockel.sch" 60
F2 "PA0" I L 7600 2100 60 
F3 "PA1" I L 7600 2200 60 
F4 "PA2" I L 7600 2300 60 
F5 "PA3" I L 7600 2400 60 
F6 "PA4" I L 7600 2500 60 
F7 "PA5" I L 7600 2600 60 
F8 "PA6" I L 7600 2700 60 
F9 "PA7" I L 7600 2800 60 
F10 "BRDY" I L 7600 1600 60 
F11 "SYNC" I L 7600 1700 60 
F12 "OE" I R 8700 1900 60 
F13 "SOE" I L 7600 1800 60 
F14 "MTR" I R 8700 1600 60 
F15 "WPS" I L 7600 1900 60 
F16 "~RESET" I R 8700 2200 60 
F17 "SOE_GA" I L 7600 2000 60 
F18 "STP0" I R 8700 1700 60 
F19 "STP1" I R 8700 1800 60 
$EndSheet
Wire Wire Line
	4950 1800 4950 1600
Wire Wire Line
	4950 1600 5000 1600
Wire Wire Line
	5000 1600 5000 1550
Wire Wire Line
	5050 1600 5050 1800
Connection ~ 5000 1600
Wire Wire Line
	3650 2100 3500 2100
Wire Wire Line
	3950 2100 4050 2100
Wire Wire Line
	1200 1050 1200 1250
Connection ~ 1200 1250
Wire Wire Line
	1500 1050 1500 1250
Connection ~ 1500 1250
Wire Wire Line
	7950 4000 7850 4000
Wire Wire Line
	4050 2100 4050 1000
Wire Wire Line
	3850 1000 4050 1000
Connection ~ 4050 2100
$Comp
L power:+5V #PWR04
U 1 1 58409984
P 8450 3900
F 0 "#PWR04" H 8450 3750 50  0001 C CNN
F 1 "+5V" H 8450 4050 50  0000 C CNN
F 2 "" H 8450 3900 60  0000 C CNN
F 3 "" H 8450 3900 60  0000 C CNN
	1    8450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4100 8450 4150
Text Notes 9500 2300 0    60   ~ 0
Jumper Normal offen
$Comp
L Switch:SW_Push SW1
U 1 1 5ADB99AF
P 3650 1000
F 0 "SW1" H 3800 1110 50  0000 C CNN
F 1 "RESET" H 3650 920 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 3650 1000 60  0001 C CNN
F 3 "" H 3650 1000 60  0000 C CNN
	1    3650 1000
	1    0    0    -1  
$EndComp
Connection ~ 4050 1000
Wire Wire Line
	3100 1000 3450 1000
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5AEE499C
P 10200 3000
F 0 "J2" H 10200 3200 50  0000 C CNN
F 1 "KEYS" H 10200 2700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10200 3000 50  0001 C CNN
F 3 "" H 10200 3000 50  0001 C CNN
	1    10200 3000
	1    0    0    -1  
$EndComp
Text Notes 9500 3950 0    60   ~ 0
Pinbelegung für KEYS\n\nPIN1: GND (gemeinsam)\nPIN2: Taster1\nPIN3: Taster2\nPIN4: Taster3
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 5AEEAD70
P 8150 4000
F 0 "J1" H 8200 4200 50  0000 C CNN
F 1 "ISP" H 8200 3800 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x03_P2.54mm_Vertical" H 8150 4000 50  0001 C CNN
F 3 "" H 8150 4000 50  0001 C CNN
	1    8150 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5AEECDDD
P 9850 1850
F 0 "J3" H 9850 1950 50  0000 C CNN
F 1 "RESET_1541" H 9850 1650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9850 1850 50  0001 C CNN
F 3 "" H 9850 1850 50  0001 C CNN
	1    9850 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9950 2200 9950 2050
Wire Wire Line
	9850 2200 9850 2050
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5AEF69AF
P 9400 5950
F 0 "J5" H 9400 6050 50  0000 C CNN
F 1 "EXT_5V" H 9400 5750 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9400 5950 50  0001 C CNN
F 3 "" H 9400 5950 50  0001 C CNN
	1    9400 5950
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 5AEF757D
P 9300 6300
F 0 "#PWR019" H 9300 6150 50  0001 C CNN
F 1 "+5V" H 9300 6440 50  0000 C CNN
F 2 "" H 9300 6300 60  0000 C CNN
F 3 "" H 9300 6300 60  0000 C CNN
	1    9300 6300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 6150 9400 6300
Wire Wire Line
	9500 6300 9500 6150
Wire Wire Line
	9400 6300 9300 6300
Wire Wire Line
	9500 6300 9600 6300
Text Notes 8750 5750 0    60   ~ 0
Externe Spannungsversorgung,\nnur verwenden wenn _kein_\nFloppy-Netzteil angeschlossen wird !
Wire Wire Line
	3800 2300 4350 2300
$Comp
L power:GND #PWR02
U 1 1 5AF09AC0
P 1200 1050
F 0 "#PWR02" H 1200 800 50  0001 C CNN
F 1 "GND" H 1200 900 50  0000 C CNN
F 2 "" H 1200 1050 50  0001 C CNN
F 3 "" H 1200 1050 50  0001 C CNN
	1    1200 1050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5AF09DC8
P 3100 1000
F 0 "#PWR01" H 3100 750 50  0001 C CNN
F 1 "GND" H 3100 850 50  0000 C CNN
F 2 "" H 3100 1000 50  0001 C CNN
F 3 "" H 3100 1000 50  0001 C CNN
	1    3100 1000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5AF0A3CF
P 2150 3250
F 0 "#PWR010" H 2150 3000 50  0001 C CNN
F 1 "GND" H 2150 3100 50  0000 C CNN
F 2 "" H 2150 3250 50  0001 C CNN
F 3 "" H 2150 3250 50  0001 C CNN
	1    2150 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5AF0A9E7
P 9600 6300
F 0 "#PWR020" H 9600 6050 50  0001 C CNN
F 1 "GND" H 9600 6150 50  0000 C CNN
F 2 "" H 9600 6300 50  0001 C CNN
F 3 "" H 9600 6300 50  0001 C CNN
	1    9600 6300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5AF0ADEC
P 4950 5950
F 0 "#PWR017" H 4950 5700 50  0001 C CNN
F 1 "GND" H 4950 5800 50  0000 C CNN
F 2 "" H 4950 5950 50  0001 C CNN
F 3 "" H 4950 5950 50  0001 C CNN
	1    4950 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5AF0B2ED
P 8450 4150
F 0 "#PWR06" H 8450 3900 50  0001 C CNN
F 1 "GND" H 8450 4000 50  0000 C CNN
F 2 "" H 8450 4150 50  0001 C CNN
F 3 "" H 8450 4150 50  0001 C CNN
	1    8450 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5AF1E3E7
P 2450 6250
F 0 "#PWR018" H 2450 6000 50  0001 C CNN
F 1 "GND" H 2450 6100 50  0000 C CNN
F 2 "" H 2450 6250 50  0001 C CNN
F 3 "" H 2450 6250 50  0001 C CNN
	1    2450 6250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5000 1600 5050 1600
Wire Wire Line
	1200 1250 1200 1550
Wire Wire Line
	1500 1250 1500 1550
Wire Wire Line
	4050 2100 4350 2100
Wire Wire Line
	4950 5800 4950 5950
Wire Wire Line
	2150 2550 2250 2550
Wire Wire Line
	2150 3250 2250 3250
Wire Wire Line
	3000 3250 3000 3200
Wire Wire Line
	3000 2550 3000 2600
Wire Wire Line
	3800 2300 3800 2900
Wire Wire Line
	3800 2900 3300 2900
Wire Wire Line
	2250 2750 2250 2550
Connection ~ 2250 2550
Wire Wire Line
	2250 2550 3000 2550
Wire Wire Line
	2250 3050 2250 3250
Connection ~ 2250 3250
Wire Wire Line
	2250 3250 3000 3250
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J4
U 1 1 5E991479
P 2200 4700
F 0 "J4" H 2250 5250 50  0000 C CNN
F 1 "SD Card Module Connector" H 2200 5150 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical" H 2200 4700 50  0001 C CNN
F 3 "~" H 2200 4700 50  0001 C CNN
	1    2200 4700
	1    0    0    -1  
$EndComp
Text GLabel 1650 4500 0    60   Input ~ 0
MISO
Text GLabel 2850 4500 2    60   Input ~ 0
MISO
Wire Wire Line
	1650 4500 2000 4500
Wire Wire Line
	2500 4500 2850 4500
$Comp
L power:GND #PWR016
U 1 1 5E9BBC13
P 2600 5100
F 0 "#PWR016" H 2600 4850 50  0001 C CNN
F 1 "GND" V 2605 4972 50  0000 R CNN
F 2 "" H 2600 5100 50  0001 C CNN
F 3 "" H 2600 5100 50  0001 C CNN
	1    2600 5100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5E9BC3F8
P 1900 5100
F 0 "#PWR015" H 1900 4850 50  0001 C CNN
F 1 "GND" V 1905 4972 50  0000 R CNN
F 2 "" H 1900 5100 50  0001 C CNN
F 3 "" H 1900 5100 50  0001 C CNN
	1    1900 5100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5E9BC951
P 1900 4400
F 0 "#PWR011" H 1900 4150 50  0001 C CNN
F 1 "GND" V 1905 4272 50  0000 R CNN
F 2 "" H 1900 4400 50  0001 C CNN
F 3 "" H 1900 4400 50  0001 C CNN
	1    1900 4400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5E9BCBA4
P 2600 4400
F 0 "#PWR012" H 2600 4150 50  0001 C CNN
F 1 "GND" V 2605 4272 50  0000 R CNN
F 2 "" H 2600 4400 50  0001 C CNN
F 3 "" H 2600 4400 50  0001 C CNN
	1    2600 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1900 4400 2000 4400
Wire Wire Line
	2500 4400 2600 4400
Wire Wire Line
	2500 5100 2600 5100
Wire Wire Line
	1900 5100 2000 5100
Text GLabel 1650 4600 0    60   Input ~ 0
SCK
Text GLabel 2850 4600 2    60   Input ~ 0
SCK
Text GLabel 1650 4700 0    60   Input ~ 0
MOSI
Text GLabel 2850 4700 2    60   Input ~ 0
MOSI
Text GLabel 1650 4800 0    60   Input ~ 0
CS
Text GLabel 2850 4800 2    60   Input ~ 0
CS
$Comp
L power:+5V #PWR013
U 1 1 5E9D1262
P 1900 4900
F 0 "#PWR013" H 1900 4750 50  0001 C CNN
F 1 "+5V" V 1900 5100 50  0000 C CNN
F 2 "" H 1900 4900 60  0000 C CNN
F 3 "" H 1900 4900 60  0000 C CNN
	1    1900 4900
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 5E9D1A0B
P 2600 4900
F 0 "#PWR014" H 2600 4750 50  0001 C CNN
F 1 "+5V" V 2600 5100 50  0000 C CNN
F 2 "" H 2600 4900 60  0000 C CNN
F 3 "" H 2600 4900 60  0000 C CNN
	1    2600 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 4900 2600 4900
Wire Wire Line
	1900 4900 2000 4900
Wire Wire Line
	1650 4800 2000 4800
Wire Wire Line
	2500 4800 2850 4800
Wire Wire Line
	2500 4600 2850 4600
Wire Wire Line
	2850 4700 2500 4700
Wire Wire Line
	2000 4600 1650 4600
Wire Wire Line
	2000 4700 1650 4700
Text GLabel 8650 3700 2    60   Input ~ 0
SCK
Text GLabel 8650 3600 2    60   Input ~ 0
MISO
Text GLabel 8650 3500 2    60   Input ~ 0
MOSI
Text GLabel 8650 3400 2    60   Input ~ 0
CS
Text Label 5550 3200 0    60   ~ 0
SD_DETECT
Text Label 5550 3300 0    60   ~ 0
SD_WP
Text GLabel 8650 3300 2    60   Input ~ 0
PB3
Text GLabel 8650 3200 2    60   Input ~ 0
PB2
Text GLabel 2250 6100 1    60   Input ~ 0
PB2
Text GLabel 2150 6100 1    60   Input ~ 0
PB3
Wire Wire Line
	2150 6100 2150 6350
Wire Wire Line
	2250 6350 2250 6100
Text Notes 1750 5800 0    60   ~ 0
Nicht benutzte IO Pins\nFür evtl. Erweiterungen
Wire Wire Line
	2450 6250 2350 6250
Wire Wire Line
	2350 6250 2350 6350
Text Label 9700 3000 0    60   ~ 0
BT1
Text Label 9700 3100 0    60   ~ 0
BT2
Text Label 9700 3200 0    60   ~ 0
BT3
Wire Wire Line
	9900 2900 10000 2900
Wire Wire Line
	9900 2900 9900 2800
$Comp
L Connector_Generic:Conn_01x03 J6
U 1 1 5E9CAC1A
P 2250 6550
F 0 "J6" V 2250 6750 50  0000 L CNN
F 1 "IO" V 2350 6550 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2250 6550 50  0001 C CNN
F 3 "~" H 2250 6550 50  0001 C CNN
	1    2250 6550
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 3000 10000 3000
Wire Wire Line
	5550 3100 10000 3100
$Comp
L 1541-rebuild-rescue:ATmega1284P-PU-MCU_Microchip_ATmega-1541-rebuild-rescue IC1
U 1 1 55F7E447
P 4950 3800
F 0 "IC1" H 4450 5750 40  0000 L BNN
F 1 "ATMEGA1284P-P" H 5050 1800 40  0000 L BNN
F 2 "Package_DIP:DIP-40_W15.24mm_Socket_LongPads" H 4950 3800 30  0000 C CIN
F 3 "" H 4950 3800 60  0000 C CNN
	1    4950 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3200 9350 4500
Wire Wire Line
	7950 3900 7950 3600
Wire Wire Line
	8450 4000 8550 4000
Wire Wire Line
	5550 2800 7600 2800
Wire Wire Line
	5550 2700 7600 2700
Wire Wire Line
	5550 2600 7600 2600
Wire Wire Line
	5550 2500 7600 2500
Wire Wire Line
	5550 2400 7600 2400
Wire Wire Line
	5550 2300 7600 2300
Wire Wire Line
	5550 2200 7600 2200
Wire Wire Line
	5550 2100 7600 2100
$Comp
L power:GND #PWR0101
U 1 1 6143BCAE
P 9900 2800
F 0 "#PWR0101" H 9900 2550 50  0001 C CNN
F 1 "GND" H 9900 2650 50  0000 C CNN
F 2 "" H 9900 2800 50  0001 C CNN
F 3 "" H 9900 2800 50  0001 C CNN
	1    9900 2800
	-1   0    0    1   
$EndComp
Connection ~ 8550 3500
Wire Wire Line
	4050 1000 10650 1000
Wire Wire Line
	7850 3700 7850 4000
Wire Wire Line
	7950 4100 7950 4400
Wire Wire Line
	7950 4400 10650 4400
Wire Wire Line
	7850 3700 8650 3700
Wire Wire Line
	8550 3500 8650 3500
Wire Wire Line
	8550 3500 8550 4000
Wire Wire Line
	8650 3600 7950 3600
Wire Wire Line
	7950 3600 5550 3600
Connection ~ 7950 3600
Wire Wire Line
	5550 3700 7850 3700
Connection ~ 7850 3700
Wire Wire Line
	5550 3500 8550 3500
Wire Wire Line
	5550 3400 8650 3400
Wire Wire Line
	5550 3300 8650 3300
Wire Wire Line
	5550 3200 8650 3200
Wire Wire Line
	5550 5100 7000 5100
Wire Wire Line
	7000 5100 7000 1600
Wire Wire Line
	7000 1600 7600 1600
Wire Wire Line
	5550 5200 7100 5200
Wire Wire Line
	7100 5200 7100 1800
Wire Wire Line
	7100 1800 7600 1800
Wire Wire Line
	7600 2000 7200 2000
Wire Wire Line
	7200 2000 7200 5300
Wire Wire Line
	7200 5300 5550 5300
Wire Wire Line
	5550 4800 9050 4800
Wire Wire Line
	9050 4800 9050 1800
Wire Wire Line
	9050 1800 8700 1800
Wire Wire Line
	8700 1700 9150 1700
Wire Wire Line
	9150 1700 9150 4900
Wire Wire Line
	9150 4900 5550 4900
Wire Wire Line
	5550 5000 9250 5000
Wire Wire Line
	9250 5000 9250 1600
Wire Wire Line
	9250 1600 8700 1600
Wire Wire Line
	9350 3200 10000 3200
Wire Wire Line
	5550 4500 9350 4500
Wire Wire Line
	5550 5400 7300 5400
Wire Wire Line
	7300 5400 7300 1900
Wire Wire Line
	7300 1900 7600 1900
Wire Wire Line
	7600 1700 7400 1700
Wire Wire Line
	7400 5500 5550 5500
Wire Wire Line
	7400 1700 7400 5500
Wire Wire Line
	5550 4600 8950 4600
Wire Wire Line
	8950 4600 8950 1900
Wire Wire Line
	8950 1900 8700 1900
Wire Wire Line
	10650 1000 10650 2200
Wire Wire Line
	8700 2200 9850 2200
Wire Wire Line
	9950 2200 10650 2200
Connection ~ 10650 2200
Wire Wire Line
	10650 2200 10650 4400
Wire Wire Line
	5550 3900 6000 3900
Wire Wire Line
	6000 4000 5550 4000
Wire Wire Line
	5550 4100 6000 4100
Wire Wire Line
	6000 4200 5550 4200
Wire Wire Line
	5550 4300 6000 4300
Wire Wire Line
	6000 4400 5550 4400
$Comp
L power:+3.3V #PWR0102
U 1 1 6157C362
P 2600 5000
F 0 "#PWR0102" H 2600 4850 50  0001 C CNN
F 1 "+3.3V" V 2600 5150 50  0000 L CNN
F 2 "" H 2600 5000 50  0001 C CNN
F 3 "" H 2600 5000 50  0001 C CNN
	1    2600 5000
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0103
U 1 1 6157CBB8
P 1900 5000
F 0 "#PWR0103" H 1900 4850 50  0001 C CNN
F 1 "+3.3V" V 1900 5150 50  0000 L CNN
F 2 "" H 1900 5000 50  0001 C CNN
F 3 "" H 1900 5000 50  0001 C CNN
	1    1900 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1900 5000 2000 5000
Wire Wire Line
	2500 5000 2600 5000
Text Notes 3250 5150 0    60   ~ 0
3.3V werden vom\nSD-Modul generiert
$Comp
L Connector_Generic:Conn_01x03 Display_Power1
U 1 1 6159A997
P 6850 5950
F 0 "Display_Power1" V 6850 6150 50  0000 L CNN
F 1 "Display Power" V 6950 5950 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6850 5950 50  0001 C CNN
F 3 "~" H 6850 5950 50  0001 C CNN
	1    6850 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 4400 6850 4400
Wire Wire Line
	6850 4400 6850 5750
$Comp
L power:+5V #PWR0104
U 1 1 615A42CD
P 6950 5750
F 0 "#PWR0104" H 6950 5600 50  0001 C CNN
F 1 "+5V" V 6950 5950 50  0000 C CNN
F 2 "" H 6950 5750 60  0000 C CNN
F 3 "" H 6950 5750 60  0000 C CNN
	1    6950 5750
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0105
U 1 1 615A5347
P 6750 5750
F 0 "#PWR0105" H 6750 5600 50  0001 C CNN
F 1 "+3.3V" V 6750 5900 50  0000 L CNN
F 2 "" H 6750 5750 50  0001 C CNN
F 3 "" H 6750 5750 50  0001 C CNN
	1    6750 5750
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C4
U 1 1 61268758
P 1350 2000
F 0 "C4" V 1095 2000 50  0000 C CNN
F 1 "47µF" V 1186 2000 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1388 1850 50  0001 C CNN
F 3 "~" H 1350 2000 50  0001 C CNN
	1    1350 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 1550 1200 2000
Connection ~ 1200 1550
Wire Wire Line
	1500 2000 1500 1550
Connection ~ 1500 1550
$EndSCHEMATC
