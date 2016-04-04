EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
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
LIBS:valves
LIBS:pro4
LIBS:gsm
LIBS:supervisor-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
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
L CONN_02X20 P1
U 1 1 56E9B9CC
P 1850 2250
F 0 "P1" H 1850 3300 50  0000 C CNN
F 1 "RASPI-CONNECT" V 1850 2250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20" H 1850 1300 50  0001 C CNN
F 3 "" H 1850 1300 50  0000 C CNN
	1    1850 2250
	1    0    0    -1  
$EndComp
Text Label 1250 1300 0    60   ~ 0
+3V3
Text Label 2100 1300 0    60   ~ 0
+5V
Text Label 2100 1400 0    60   ~ 0
+5V
Text Label 2100 1500 0    60   ~ 0
GND
Text Label 2100 1600 0    60   ~ 0
IO14
Text Label 2100 1700 0    60   ~ 0
IO15
Text Label 2100 1800 0    60   ~ 0
IO18
Text Label 2100 1900 0    60   ~ 0
GND
Text Label 2100 2000 0    60   ~ 0
IO23
Text Label 2100 2100 0    60   ~ 0
IO24
Text Label 2100 2200 0    60   ~ 0
GND
Text Label 2100 2300 0    60   ~ 0
IO25
Text Label 2100 2400 0    60   ~ 0
IO08
Text Label 2100 2500 0    60   ~ 0
IO07
Text Label 2100 2700 0    60   ~ 0
GND
Text Label 2100 2800 0    60   ~ 0
IO12
Text Label 2100 2900 0    60   ~ 0
GND
Text Label 2100 3000 0    60   ~ 0
IO16
Text Label 2100 3100 0    60   ~ 0
IO20
Text Label 2100 3200 0    60   ~ 0
IO21
Text Label 1400 3200 0    60   ~ 0
GND
Text Label 1400 3100 0    60   ~ 0
IO26
Text Label 1400 3000 0    60   ~ 0
IO19
Text Label 1400 2900 0    60   ~ 0
IO13
Text Label 1400 2800 0    60   ~ 0
IO06
Text Label 1400 2700 0    60   ~ 0
IO05
Text Label 1400 2500 0    60   ~ 0
GND
Text Label 1400 2400 0    60   ~ 0
IO11
Text Label 1400 2300 0    60   ~ 0
IO09
Text Label 1400 2200 0    60   ~ 0
IO10
Text Label 1400 2100 0    60   ~ 0
+3V3
Text Label 1400 2000 0    60   ~ 0
IO22
Text Label 1400 1900 0    60   ~ 0
IO27
Text Label 1400 1800 0    60   ~ 0
IO17
Text Label 1400 1700 0    60   ~ 0
GND
Text Label 1400 1600 0    60   ~ 0
IO04
Text Label 1400 1500 0    60   ~ 0
IO03
Text Label 1400 1400 0    60   ~ 0
IO02
Text Label 1400 2600 0    60   ~ 0
IDSD
Text Label 2100 2600 0    60   ~ 0
IDSC
$Comp
L CONN_01X02 P2
U 1 1 56E9DB2F
P 2950 1250
F 0 "P2" H 2950 1400 50  0000 C CNN
F 1 "POWER" V 3050 1250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 2950 1250 50  0001 C CNN
F 3 "" H 2950 1250 50  0000 C CNN
	1    2950 1250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 56E9DC9F
P 3200 1350
F 0 "#PWR01" H 3200 1100 50  0001 C CNN
F 1 "GND" H 3200 1200 50  0000 C CNN
F 2 "" H 3200 1350 50  0000 C CNN
F 3 "" H 3200 1350 50  0000 C CNN
	1    3200 1350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 56E9DCB7
P 3200 1150
F 0 "#PWR02" H 3200 1000 50  0001 C CNN
F 1 "+5V" H 3200 1290 50  0000 C CNN
F 2 "" H 3200 1150 50  0000 C CNN
F 3 "" H 3200 1150 50  0000 C CNN
	1    3200 1150
	1    0    0    -1  
$EndComp
$Comp
L SIM900 IC10
U 1 1 56E9D20B
P 13250 3150
F 0 "IC10" H 12450 5100 50  0000 L CNN
F 1 "SIM900" H 12450 5000 50  0000 L CNN
F 2 "gsm:QFP 68" H 11200 4300 60  0001 C CNN
F 3 "http://simcom.ee/documents/?dir=SIM900" V 13250 3250 60  0000 C CNN
	1    13250 3150
	1    0    0    -1  
$EndComp
$Comp
L RF_CONN U1
U 1 1 56E9D244
P 14750 1950
F 0 "U1" H 14750 1950 60  0000 C CNN
F 1 "RF_CONN" H 14750 1850 60  0000 C CNN
F 2 "gsm:SMA_SMD" H 14750 1950 60  0001 C CNN
F 3 "" H 14750 1950 60  0000 C CNN
	1    14750 1950
	1    0    0    -1  
$EndComp
$Comp
L SIM_HOLDER U2
U 1 1 56E9D345
P 15400 3100
F 0 "U2" H 15400 3000 60  0000 C CNN
F 1 "SIM_HOLDER" H 15400 2900 60  0000 C CNN
F 2 "gsm:SIM_HOLDER" H 15400 3100 60  0001 C CNN
F 3 "" H 15400 3100 60  0000 C CNN
	1    15400 3100
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR03
U 1 1 56F3EBDB
P 2350 1250
F 0 "#PWR03" H 2350 1100 50  0001 C CNN
F 1 "+5V" H 2350 1390 50  0000 C CNN
F 2 "" H 2350 1250 50  0000 C CNN
F 3 "" H 2350 1250 50  0000 C CNN
	1    2350 1250
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR04
U 1 1 56F3EC61
P 1200 1250
F 0 "#PWR04" H 1200 1100 50  0001 C CNN
F 1 "+3V3" H 1200 1390 50  0000 C CNN
F 2 "" H 1200 1250 50  0000 C CNN
F 3 "" H 1200 1250 50  0000 C CNN
	1    1200 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 56F3ECB4
P 2600 1500
F 0 "#PWR05" H 2600 1250 50  0001 C CNN
F 1 "GND" H 2600 1350 50  0000 C CNN
F 2 "" H 2600 1500 50  0000 C CNN
F 3 "" H 2600 1500 50  0000 C CNN
	1    2600 1500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR06
U 1 1 56F3F086
P 2600 1900
F 0 "#PWR06" H 2600 1650 50  0001 C CNN
F 1 "GND" H 2600 1750 50  0000 C CNN
F 2 "" H 2600 1900 50  0000 C CNN
F 3 "" H 2600 1900 50  0000 C CNN
	1    2600 1900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 56F3F0A4
P 2600 2200
F 0 "#PWR07" H 2600 1950 50  0001 C CNN
F 1 "GND" H 2600 2050 50  0000 C CNN
F 2 "" H 2600 2200 50  0000 C CNN
F 3 "" H 2600 2200 50  0000 C CNN
	1    2600 2200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 56F3F0C2
P 1200 1700
F 0 "#PWR08" H 1200 1450 50  0001 C CNN
F 1 "GND" H 1200 1550 50  0000 C CNN
F 2 "" H 1200 1700 50  0000 C CNN
F 3 "" H 1200 1700 50  0000 C CNN
	1    1200 1700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 56F3F0E0
P 1200 2500
F 0 "#PWR09" H 1200 2250 50  0001 C CNN
F 1 "GND" H 1200 2350 50  0000 C CNN
F 2 "" H 1200 2500 50  0000 C CNN
F 3 "" H 1200 2500 50  0000 C CNN
	1    1200 2500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 56F3F18A
P 1200 3200
F 0 "#PWR010" H 1200 2950 50  0001 C CNN
F 1 "GND" H 1200 3050 50  0000 C CNN
F 2 "" H 1200 3200 50  0000 C CNN
F 3 "" H 1200 3200 50  0000 C CNN
	1    1200 3200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR011
U 1 1 56F3F1A8
P 2600 2900
F 0 "#PWR011" H 2600 2650 50  0001 C CNN
F 1 "GND" H 2600 2750 50  0000 C CNN
F 2 "" H 2600 2900 50  0000 C CNN
F 3 "" H 2600 2900 50  0000 C CNN
	1    2600 2900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR012
U 1 1 56F3F1C6
P 2600 2700
F 0 "#PWR012" H 2600 2450 50  0001 C CNN
F 1 "GND" H 2600 2550 50  0000 C CNN
F 2 "" H 2600 2700 50  0000 C CNN
F 3 "" H 2600 2700 50  0000 C CNN
	1    2600 2700
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR013
U 1 1 56F3F27A
P 1200 2050
F 0 "#PWR013" H 1200 1900 50  0001 C CNN
F 1 "+3V3" H 1200 2190 50  0000 C CNN
F 2 "" H 1200 2050 50  0000 C CNN
F 3 "" H 1200 2050 50  0000 C CNN
	1    1200 2050
	1    0    0    -1  
$EndComp
Text GLabel 1300 1500 0    60   Input ~ 0
SCL
Text GLabel 1300 1400 0    60   Input ~ 0
SDA
Text GLabel 2400 1600 2    60   Input ~ 0
TXD
Text GLabel 2400 1700 2    60   Input ~ 0
RXD
Text GLabel 1250 2200 0    60   Input ~ 0
NC
Text GLabel 1250 2300 0    60   Input ~ 0
NC
Text GLabel 1250 2400 0    60   Input ~ 0
NC
Text GLabel 2400 2400 2    60   Input ~ 0
NC
Text GLabel 2400 2500 2    60   Input ~ 0
NC
Text GLabel 2400 2300 2    60   Input ~ 0
NC
Text GLabel 2400 2100 2    60   Input ~ 0
NC
$Comp
L RELAY K1
U 1 1 56F404B9
P 3900 5600
F 0 "K1" H 3650 5950 70  0000 C CNN
F 1 "RELAY" H 4150 5500 70  0000 C CNN
F 2 "Relays_ThroughHole:Relay_SPDT_SingleRow_Standing_FinderType34Point51" H 3900 5800 60  0001 C CNN
F 3 "" H 3900 5800 60  0000 C CNN
	1    3900 5600
	1    0    0    -1  
$EndComp
$Comp
L RELAY K2
U 1 1 56F4085C
P 3900 6350
F 0 "K2" H 3650 6700 70  0000 C CNN
F 1 "RELAY" H 4150 6250 70  0000 C CNN
F 2 "Relays_ThroughHole:Relay_SPDT_SingleRow_Standing_FinderType34Point51" H 3900 6550 60  0001 C CNN
F 3 "" H 3900 6550 60  0000 C CNN
	1    3900 6350
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 56F40A36
P 2100 6150
F 0 "SW2" H 2250 6260 50  0000 C CNN
F 1 "SW_PUSH" H 2100 6070 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 2100 6150 50  0001 C CNN
F 3 "" H 2100 6150 50  0000 C CNN
	1    2100 6150
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 56F40AEB
P 2100 5900
F 0 "SW1" H 2250 6010 50  0000 C CNN
F 1 "SW_PUSH" H 2100 5820 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 2100 5900 50  0001 C CNN
F 3 "" H 2100 5900 50  0000 C CNN
	1    2100 5900
	1    0    0    -1  
$EndComp
Text GLabel 7200 700  0    60   Input ~ 0
string_out0
Text GLabel 7200 900  0    60   Input ~ 0
string_out1
Text GLabel 7200 1100 0    60   Input ~ 0
string_out2
Text GLabel 7200 1300 0    60   Input ~ 0
string_out3
Text GLabel 7900 700  2    60   Input ~ 0
string_in0
Text GLabel 7900 900  2    60   Input ~ 0
string_in1
Text GLabel 7900 1100 2    60   Input ~ 0
string_in2
Text GLabel 7900 1300 2    60   Input ~ 0
string_in3
$Comp
L ACS723 IC4
U 1 1 56F43520
P 7500 2150
F 0 "IC4" H 7300 2850 60  0000 C CNN
F 1 "ACS723LLCTR-10AU-T" H 7500 2150 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 7500 2150 60  0001 C CNN
F 3 "" H 7500 2150 60  0000 C CNN
	1    7500 2150
	1    0    0    -1  
$EndComp
Text GLabel 6900 1550 0    60   Input ~ 0
string_in0
Text GLabel 6900 1900 0    60   Input ~ 0
string_out0
$Comp
L GND #PWR014
U 1 1 56F45740
P 8700 2100
F 0 "#PWR014" H 8700 1850 50  0001 C CNN
F 1 "GND" H 8700 1950 50  0000 C CNN
F 2 "" H 8700 2100 50  0000 C CNN
F 3 "" H 8700 2100 50  0000 C CNN
	1    8700 2100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 56F457DD
P 8700 1500
F 0 "#PWR015" H 8700 1350 50  0001 C CNN
F 1 "+5V" H 8700 1640 50  0000 C CNN
F 2 "" H 8700 1500 50  0000 C CNN
F 3 "" H 8700 1500 50  0000 C CNN
	1    8700 1500
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 56F458C9
P 8700 1750
F 0 "C3" H 8725 1850 50  0000 L CNN
F 1 "0.1 uF" H 8725 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8738 1600 50  0001 C CNN
F 3 "" H 8700 1750 50  0000 C CNN
	1    8700 1750
	1    0    0    -1  
$EndComp
Text GLabel 8100 1700 2    60   Input ~ 0
isense0
Text GLabel 1650 5900 0    60   Input ~ 0
BT0
Text GLabel 1650 6150 0    60   Input ~ 0
BT1
Text GLabel 2400 3200 2    60   Input ~ 0
BT0
Text GLabel 2400 3100 2    60   Input ~ 0
BT1
$Comp
L CONN_01X06 P3
U 1 1 56F496B6
P 5100 5850
F 0 "P3" H 5100 6200 50  0000 C CNN
F 1 "RELAY CONNECTOR" V 5200 5850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 5100 5850 50  0001 C CNN
F 3 "" H 5100 5850 50  0000 C CNN
	1    5100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1400 2100 1400
Wire Wire Line
	2100 1500 2600 1500
Wire Wire Line
	2100 1600 2400 1600
Wire Wire Line
	2100 1700 2400 1700
Wire Wire Line
	2100 1800 2300 1800
Wire Wire Line
	2100 1900 2600 1900
Wire Wire Line
	2100 2000 2300 2000
Wire Wire Line
	2100 2100 2300 2100
Wire Wire Line
	2100 2200 2600 2200
Wire Wire Line
	2100 2300 2300 2300
Wire Wire Line
	2100 2400 2300 2400
Wire Wire Line
	2100 2500 2300 2500
Wire Wire Line
	2100 2600 2300 2600
Wire Wire Line
	2100 2700 2600 2700
Wire Wire Line
	2100 2800 2300 2800
Wire Wire Line
	2100 2900 2600 2900
Wire Wire Line
	2100 3000 2300 3000
Wire Wire Line
	2100 3100 2400 3100
Wire Wire Line
	2100 3200 2400 3200
Wire Wire Line
	1200 1300 1600 1300
Wire Wire Line
	1300 1400 1600 1400
Wire Wire Line
	1300 1500 1600 1500
Wire Wire Line
	1400 1600 1600 1600
Wire Wire Line
	1200 1700 1600 1700
Wire Wire Line
	1400 1800 1600 1800
Wire Wire Line
	1400 1900 1600 1900
Wire Wire Line
	1400 2000 1600 2000
Wire Wire Line
	1200 2100 1600 2100
Wire Wire Line
	1400 2200 1600 2200
Wire Wire Line
	1400 2300 1600 2300
Wire Wire Line
	1400 2400 1600 2400
Wire Wire Line
	1200 2500 1600 2500
Wire Wire Line
	1400 2600 1600 2600
Wire Wire Line
	1250 2700 1600 2700
Wire Wire Line
	1250 2800 1600 2800
Wire Wire Line
	1250 2900 1600 2900
Wire Wire Line
	1250 3000 1600 3000
Wire Wire Line
	1250 3100 1600 3100
Wire Wire Line
	1200 3200 1600 3200
Wire Wire Line
	2100 1300 2350 1300
Wire Wire Line
	3150 1200 3200 1200
Wire Wire Line
	3200 1200 3200 1150
Wire Wire Line
	3150 1300 3200 1300
Wire Wire Line
	3200 1300 3200 1350
Wire Wire Line
	2350 1250 2350 1400
Connection ~ 2350 1300
Wire Wire Line
	1200 1300 1200 1250
Wire Wire Line
	1200 2100 1200 2050
Wire Wire Line
	6900 1550 7050 1550
Wire Wire Line
	7050 1650 7000 1650
Wire Wire Line
	7000 1650 7000 1550
Connection ~ 7000 1550
Wire Wire Line
	6900 1900 7050 1900
Wire Wire Line
	7050 2000 7000 2000
Wire Wire Line
	7000 2000 7000 1900
Connection ~ 7000 1900
Wire Wire Line
	8000 2000 8700 2000
Wire Wire Line
	8700 1900 8700 2100
Wire Wire Line
	8000 1550 8700 1550
Wire Wire Line
	8700 1500 8700 1600
Connection ~ 8700 1550
Connection ~ 8700 2000
Wire Wire Line
	8000 1850 8600 1850
Wire Wire Line
	8600 1850 8600 1550
Connection ~ 8600 1550
Wire Wire Line
	8100 1700 8000 1700
Wire Wire Line
	2500 6150 2400 6150
Wire Wire Line
	2400 5900 2500 5900
Wire Wire Line
	1800 5900 1650 5900
Wire Wire Line
	1800 6150 1650 6150
Wire Wire Line
	4900 5700 4700 5700
Wire Wire Line
	4700 5700 4700 5200
Wire Wire Line
	4700 5200 3400 5200
Wire Wire Line
	3400 5200 3400 5450
Wire Wire Line
	3400 5450 3500 5450
Wire Wire Line
	4300 5350 4650 5350
Wire Wire Line
	4650 5800 4900 5800
Wire Wire Line
	4900 5900 4550 5900
Wire Wire Line
	4550 5900 4550 6300
Wire Wire Line
	4550 6300 4300 6300
Wire Wire Line
	3400 6200 3400 5950
Wire Wire Line
	3400 6200 3500 6200
Wire Wire Line
	4900 6100 4300 6100
Wire Wire Line
	4650 5350 4650 5800
Wire Wire Line
	4900 5600 4500 5600
Wire Wire Line
	4500 5600 4500 5550
Wire Wire Line
	4500 5550 4300 5550
$Comp
L ACS723 IC5
U 1 1 56F4CD10
P 7500 3200
F 0 "IC5" H 7300 3900 60  0000 C CNN
F 1 "ACS723LLCTR-10AU-T" H 7500 3200 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 7500 3200 60  0001 C CNN
F 3 "" H 7500 3200 60  0000 C CNN
	1    7500 3200
	1    0    0    -1  
$EndComp
Text GLabel 6900 2600 0    60   Input ~ 0
string_in1
Text GLabel 6900 2950 0    60   Input ~ 0
string_out1
$Comp
L GND #PWR016
U 1 1 56F4CD18
P 8700 3150
F 0 "#PWR016" H 8700 2900 50  0001 C CNN
F 1 "GND" H 8700 3000 50  0000 C CNN
F 2 "" H 8700 3150 50  0000 C CNN
F 3 "" H 8700 3150 50  0000 C CNN
	1    8700 3150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR017
U 1 1 56F4CD1E
P 8700 2550
F 0 "#PWR017" H 8700 2400 50  0001 C CNN
F 1 "+5V" H 8700 2690 50  0000 C CNN
F 2 "" H 8700 2550 50  0000 C CNN
F 3 "" H 8700 2550 50  0000 C CNN
	1    8700 2550
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 56F4CD24
P 8700 2800
F 0 "C4" H 8725 2900 50  0000 L CNN
F 1 "0.1 uF" H 8725 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8738 2650 50  0001 C CNN
F 3 "" H 8700 2800 50  0000 C CNN
	1    8700 2800
	1    0    0    -1  
$EndComp
Text GLabel 8100 2750 2    60   Input ~ 0
isense1
Wire Wire Line
	6900 2600 7050 2600
Wire Wire Line
	7050 2700 7000 2700
Wire Wire Line
	7000 2700 7000 2600
Connection ~ 7000 2600
Wire Wire Line
	6900 2950 7050 2950
Wire Wire Line
	7050 3050 7000 3050
Wire Wire Line
	7000 3050 7000 2950
Connection ~ 7000 2950
Wire Wire Line
	8000 3050 8700 3050
Wire Wire Line
	8700 2950 8700 3150
Wire Wire Line
	8000 2600 8700 2600
Wire Wire Line
	8700 2550 8700 2650
Connection ~ 8700 2600
Connection ~ 8700 3050
Wire Wire Line
	8000 2900 8600 2900
Wire Wire Line
	8600 2900 8600 2600
Connection ~ 8600 2600
Wire Wire Line
	8100 2750 8000 2750
$Comp
L ACS723 IC6
U 1 1 56F4D0C9
P 7500 4300
F 0 "IC6" H 7300 5000 60  0000 C CNN
F 1 "ACS723LLCTR-10AU-T" H 7500 4300 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 7500 4300 60  0001 C CNN
F 3 "" H 7500 4300 60  0000 C CNN
	1    7500 4300
	1    0    0    -1  
$EndComp
Text GLabel 6900 3700 0    60   Input ~ 0
string_in2
Text GLabel 6900 4050 0    60   Input ~ 0
string_out2
$Comp
L GND #PWR018
U 1 1 56F4D0D1
P 8700 4250
F 0 "#PWR018" H 8700 4000 50  0001 C CNN
F 1 "GND" H 8700 4100 50  0000 C CNN
F 2 "" H 8700 4250 50  0000 C CNN
F 3 "" H 8700 4250 50  0000 C CNN
	1    8700 4250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR019
U 1 1 56F4D0D7
P 8700 3650
F 0 "#PWR019" H 8700 3500 50  0001 C CNN
F 1 "+5V" H 8700 3790 50  0000 C CNN
F 2 "" H 8700 3650 50  0000 C CNN
F 3 "" H 8700 3650 50  0000 C CNN
	1    8700 3650
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 56F4D0DD
P 8700 3900
F 0 "C5" H 8725 4000 50  0000 L CNN
F 1 "0.1 uF" H 8725 3800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8738 3750 50  0001 C CNN
F 3 "" H 8700 3900 50  0000 C CNN
	1    8700 3900
	1    0    0    -1  
$EndComp
Text GLabel 8100 3850 2    60   Input ~ 0
isense2
Wire Wire Line
	6900 3700 7050 3700
Wire Wire Line
	7050 3800 7000 3800
Wire Wire Line
	7000 3800 7000 3700
Connection ~ 7000 3700
Wire Wire Line
	6900 4050 7050 4050
Wire Wire Line
	7050 4150 7000 4150
Wire Wire Line
	7000 4150 7000 4050
Connection ~ 7000 4050
Wire Wire Line
	8000 4150 8700 4150
Wire Wire Line
	8700 4050 8700 4250
Wire Wire Line
	8000 3700 8700 3700
Wire Wire Line
	8700 3650 8700 3750
Connection ~ 8700 3700
Connection ~ 8700 4150
Wire Wire Line
	8000 4000 8600 4000
Wire Wire Line
	8600 4000 8600 3700
Connection ~ 8600 3700
Wire Wire Line
	8100 3850 8000 3850
$Comp
L ACS723 IC7
U 1 1 56F4D2AA
P 7500 5400
F 0 "IC7" H 7300 6100 60  0000 C CNN
F 1 "ACS723LLCTR-10AU-T" H 7500 5400 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 7500 5400 60  0001 C CNN
F 3 "" H 7500 5400 60  0000 C CNN
	1    7500 5400
	1    0    0    -1  
$EndComp
Text GLabel 6900 4800 0    60   Input ~ 0
string_in3
Text GLabel 6900 5150 0    60   Input ~ 0
string_out3
$Comp
L GND #PWR020
U 1 1 56F4D2B2
P 8700 5350
F 0 "#PWR020" H 8700 5100 50  0001 C CNN
F 1 "GND" H 8700 5200 50  0000 C CNN
F 2 "" H 8700 5350 50  0000 C CNN
F 3 "" H 8700 5350 50  0000 C CNN
	1    8700 5350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR021
U 1 1 56F4D2B8
P 8700 4750
F 0 "#PWR021" H 8700 4600 50  0001 C CNN
F 1 "+5V" H 8700 4890 50  0000 C CNN
F 2 "" H 8700 4750 50  0000 C CNN
F 3 "" H 8700 4750 50  0000 C CNN
	1    8700 4750
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 56F4D2BE
P 8700 5000
F 0 "C6" H 8725 5100 50  0000 L CNN
F 1 "0.1 uF" H 8725 4900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8738 4850 50  0001 C CNN
F 3 "" H 8700 5000 50  0000 C CNN
	1    8700 5000
	1    0    0    -1  
$EndComp
Text GLabel 8100 4950 2    60   Input ~ 0
isense3
Wire Wire Line
	6900 4800 7050 4800
Wire Wire Line
	7050 4900 7000 4900
Wire Wire Line
	7000 4900 7000 4800
Connection ~ 7000 4800
Wire Wire Line
	6900 5150 7050 5150
Wire Wire Line
	7050 5250 7000 5250
Wire Wire Line
	7000 5250 7000 5150
Connection ~ 7000 5150
Wire Wire Line
	8000 5250 8700 5250
Wire Wire Line
	8700 5150 8700 5350
Wire Wire Line
	8000 4800 8700 4800
Wire Wire Line
	8700 4750 8700 4850
Connection ~ 8700 4800
Connection ~ 8700 5250
Wire Wire Line
	8000 5100 8600 5100
Wire Wire Line
	8600 5100 8600 4800
Connection ~ 8600 4800
Wire Wire Line
	8100 4950 8000 4950
Wire Wire Line
	13450 950  13450 1150
Wire Wire Line
	13450 1050 13650 1050
Wire Wire Line
	13550 1050 13550 1150
Connection ~ 13450 1050
Wire Wire Line
	13650 1050 13650 1150
Connection ~ 13550 1050
$Comp
L +3V3 #PWR022
U 1 1 56F4EE16
P 13450 950
F 0 "#PWR022" H 13450 800 50  0001 C CNN
F 1 "+3V3" H 13450 1090 50  0000 C CNN
F 2 "" H 13450 950 50  0000 C CNN
F 3 "" H 13450 950 50  0000 C CNN
	1    13450 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 56F4F1B8
P 13750 5150
F 0 "#PWR023" H 13750 4900 50  0001 C CNN
F 1 "GND" H 13750 5000 50  0000 C CNN
F 2 "" H 13750 5150 50  0000 C CNN
F 3 "" H 13750 5150 50  0000 C CNN
	1    13750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	13750 5050 13750 5150
Wire Wire Line
	12750 5100 13750 5100
Wire Wire Line
	12750 5100 12750 5050
Wire Wire Line
	12850 5050 12850 5100
Connection ~ 12850 5100
Wire Wire Line
	12950 5050 12950 5100
Connection ~ 12950 5100
Wire Wire Line
	13050 5050 13050 5100
Connection ~ 13050 5100
Wire Wire Line
	13150 5050 13150 5100
Connection ~ 13150 5100
Wire Wire Line
	13250 5050 13250 5100
Connection ~ 13250 5100
Wire Wire Line
	13350 5050 13350 5100
Connection ~ 13350 5100
Wire Wire Line
	13450 5050 13450 5100
Connection ~ 13450 5100
Wire Wire Line
	13550 5050 13550 5100
Connection ~ 13550 5100
Wire Wire Line
	13650 5050 13650 5100
Connection ~ 13650 5100
Connection ~ 13750 5100
Wire Wire Line
	15300 1950 14250 1950
Wire Wire Line
	14250 1550 15300 1550
Wire Wire Line
	14250 1750 14500 1750
Wire Wire Line
	15300 1550 15300 2000
Wire Wire Line
	15050 1750 15300 1750
Connection ~ 15300 1750
$Comp
L GND #PWR024
U 1 1 56F5166F
P 15300 2000
F 0 "#PWR024" H 15300 1750 50  0001 C CNN
F 1 "GND" H 15300 1850 50  0000 C CNN
F 2 "" H 15300 2000 50  0000 C CNN
F 3 "" H 15300 2000 50  0000 C CNN
	1    15300 2000
	1    0    0    -1  
$EndComp
Connection ~ 15300 1950
Wire Wire Line
	14250 1650 14500 1650
Wire Wire Line
	14500 1650 14500 1550
Connection ~ 14500 1550
Wire Wire Line
	14250 1850 14500 1850
Wire Wire Line
	14500 1850 14500 1950
Connection ~ 14500 1950
Wire Wire Line
	15000 3150 15000 3800
Wire Wire Line
	15000 3800 15150 3800
Wire Wire Line
	15150 3800 15150 3750
Wire Wire Line
	15250 3750 15250 3850
Wire Wire Line
	15250 3850 14950 3850
Wire Wire Line
	14950 3850 14950 3250
Wire Wire Line
	15150 2400 15150 2450
Wire Wire Line
	14950 2400 15150 2400
Wire Wire Line
	15000 2400 15000 3050
Wire Wire Line
	14250 2950 14800 2950
Wire Wire Line
	14800 2950 14800 3950
Wire Wire Line
	15350 3750 15350 4000
$Comp
L C C8
U 1 1 56F52B0A
P 15350 4150
F 0 "C8" H 15375 4250 50  0000 L CNN
F 1 "100nF" H 15375 4050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 15388 4000 50  0001 C CNN
F 3 "" H 15350 4150 50  0000 C CNN
	1    15350 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 56F52B4F
P 15350 4350
F 0 "#PWR025" H 15350 4100 50  0001 C CNN
F 1 "GND" H 15350 4200 50  0000 C CNN
F 2 "" H 15350 4350 50  0000 C CNN
F 3 "" H 15350 4350 50  0000 C CNN
	1    15350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	15350 4350 15350 4300
Wire Wire Line
	14800 3950 15350 3950
Connection ~ 15350 3950
$Comp
L R R5
U 1 1 56F53293
P 14550 3050
F 0 "R5" V 14630 3050 50  0000 C CNN
F 1 "22" V 14550 3050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 14480 3050 50  0001 C CNN
F 3 "" H 14550 3050 50  0000 C CNN
	1    14550 3050
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 56F532E4
P 14550 3150
F 0 "R6" V 14630 3150 50  0000 C CNN
F 1 "22" V 14550 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 14480 3150 50  0001 C CNN
F 3 "" H 14550 3150 50  0000 C CNN
	1    14550 3150
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 56F5333B
P 14550 3250
F 0 "R7" V 14630 3250 50  0000 C CNN
F 1 "22" V 14550 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 14480 3250 50  0001 C CNN
F 3 "" H 14550 3250 50  0000 C CNN
	1    14550 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	14400 3250 14250 3250
Wire Wire Line
	14250 3150 14400 3150
Wire Wire Line
	14250 3050 14400 3050
Wire Wire Line
	14950 3250 14700 3250
Wire Wire Line
	15000 3150 14700 3150
Wire Wire Line
	15000 3050 14700 3050
$Comp
L GND #PWR026
U 1 1 56F53F82
P 15450 2450
F 0 "#PWR026" H 15450 2200 50  0001 C CNN
F 1 "GND" H 15450 2300 50  0000 C CNN
F 2 "" H 15450 2450 50  0000 C CNN
F 3 "" H 15450 2450 50  0000 C CNN
	1    15450 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	15450 2450 15450 2400
Wire Wire Line
	15450 2400 15350 2400
Wire Wire Line
	15350 2400 15350 2450
$Comp
L C C7
U 1 1 56F55104
P 14800 2400
F 0 "C7" H 14825 2500 50  0000 L CNN
F 1 "22pF" H 14825 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 14838 2250 50  0001 C CNN
F 3 "" H 14800 2400 50  0000 C CNN
	1    14800 2400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR027
U 1 1 56F5515B
P 14550 2500
F 0 "#PWR027" H 14550 2250 50  0001 C CNN
F 1 "GND" H 14550 2350 50  0000 C CNN
F 2 "" H 14550 2500 50  0000 C CNN
F 3 "" H 14550 2500 50  0000 C CNN
	1    14550 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	14550 2500 14550 2400
Wire Wire Line
	14550 2400 14650 2400
Connection ~ 15000 2400
Wire Wire Line
	3400 4800 3500 4800
Wire Wire Line
	3400 4700 3500 4700
Wire Wire Line
	3400 4600 3500 4600
Wire Wire Line
	3400 4500 3500 4500
Wire Wire Line
	3700 4500 3850 4500
Wire Wire Line
	3850 4600 3700 4600
Wire Wire Line
	3850 4700 3700 4700
Wire Wire Line
	3850 4800 3700 4800
Wire Wire Line
	4900 6000 4500 6000
Wire Wire Line
	4500 6000 4500 5950
Wire Wire Line
	4500 5950 3400 5950
$Comp
L +5V #PWR028
U 1 1 56F5DA9B
P 3850 4400
F 0 "#PWR028" H 3850 4250 50  0001 C CNN
F 1 "+5V" H 3850 4540 50  0000 C CNN
F 2 "" H 3850 4400 50  0000 C CNN
F 3 "" H 3850 4400 50  0000 C CNN
	1    3850 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4400 3850 4800
Connection ~ 3850 4500
Connection ~ 3850 4600
Connection ~ 3850 4700
$Comp
L +5V #PWR029
U 1 1 56F5F9DF
P 3300 5550
F 0 "#PWR029" H 3300 5400 50  0001 C CNN
F 1 "+5V" H 3300 5690 50  0000 C CNN
F 2 "" H 3300 5550 50  0000 C CNN
F 3 "" H 3300 5550 50  0000 C CNN
	1    3300 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5650 3300 5650
Wire Wire Line
	3300 5650 3300 5550
$Comp
L +5V #PWR030
U 1 1 56F600AC
P 3300 6300
F 0 "#PWR030" H 3300 6150 50  0001 C CNN
F 1 "+5V" H 3300 6440 50  0000 C CNN
F 2 "" H 3300 6300 50  0000 C CNN
F 3 "" H 3300 6300 50  0000 C CNN
	1    3300 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6300 3300 6400
Wire Wire Line
	3300 6400 3500 6400
$Comp
L ULN200XA IC2
U 1 1 56F64897
P 2050 5100
F 0 "IC2" H 1900 5550 60  0000 C CNN
F 1 "ULN2003A" H 2050 4650 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 2300 4450 60  0001 C CNN
F 3 "" H 2300 4450 60  0000 C CNN
	1    2050 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5750 3500 5750
Wire Wire Line
	3200 5150 3200 5750
Wire Wire Line
	2650 4500 3200 4500
Wire Wire Line
	2650 4500 2650 4750
Wire Wire Line
	2650 4750 2450 4750
Wire Wire Line
	2450 4850 2750 4850
Wire Wire Line
	2750 4850 2750 4600
Wire Wire Line
	2750 4600 3200 4600
Wire Wire Line
	2850 4700 3200 4700
Wire Wire Line
	2850 4700 2850 4950
Wire Wire Line
	2850 4950 2450 4950
Wire Wire Line
	2950 4800 3200 4800
Wire Wire Line
	2950 4800 2950 5050
Wire Wire Line
	2950 5050 2450 5050
Wire Wire Line
	3200 5150 2450 5150
Wire Wire Line
	2450 5250 3100 5250
Wire Wire Line
	3100 5250 3100 6500
Wire Wire Line
	3100 6500 3500 6500
Text GLabel 1400 4750 0    60   Input ~ 0
LED0
Text GLabel 1400 4850 0    60   Input ~ 0
LED1
Text GLabel 1400 5150 0    60   Input ~ 0
RLY0
Text GLabel 1400 5250 0    60   Input ~ 0
RLY1
Wire Wire Line
	1400 4750 1650 4750
Wire Wire Line
	1400 4850 1650 4850
Wire Wire Line
	1400 5150 1650 5150
Wire Wire Line
	1400 5250 1650 5250
Text GLabel 1400 4950 0    60   Input ~ 0
GSM_LED0
Text GLabel 1400 5050 0    60   Input ~ 0
GSM_LED1
Wire Wire Line
	1400 4950 1650 4950
Wire Wire Line
	1400 5050 1650 5050
Text GLabel 12100 3450 0    60   Input ~ 0
GSM_LED0
Text GLabel 12100 3550 0    60   Input ~ 0
GSM_LED1
Wire Wire Line
	12250 3450 12100 3450
Wire Wire Line
	12250 3550 12100 3550
Text GLabel 1250 3000 0    60   Input ~ 0
LED0
Text GLabel 1250 3100 0    60   Input ~ 0
LED1
Text GLabel 1250 2900 0    60   Input ~ 0
RLY1
Text GLabel 1250 2800 0    60   Input ~ 0
RLY0
Connection ~ 2500 6150
Wire Wire Line
	2500 5900 2500 6300
$Comp
L GND #PWR031
U 1 1 56F58A0F
P 2500 6300
F 0 "#PWR031" H 2500 6050 50  0001 C CNN
F 1 "GND" H 2500 6150 50  0000 C CNN
F 2 "" H 2500 6300 50  0000 C CNN
F 3 "" H 2500 6300 50  0000 C CNN
	1    2500 6300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 56F7445D
P 1550 5550
F 0 "#PWR032" H 1550 5300 50  0001 C CNN
F 1 "GND" H 1550 5400 50  0000 C CNN
F 2 "" H 1550 5550 50  0000 C CNN
F 3 "" H 1550 5550 50  0000 C CNN
	1    1550 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5450 1550 5450
Wire Wire Line
	1550 5450 1550 5550
$Comp
L +5V #PWR033
U 1 1 56F7525B
P 2600 5450
F 0 "#PWR033" H 2600 5300 50  0001 C CNN
F 1 "+5V" H 2600 5590 50  0000 C CNN
F 2 "" H 2600 5450 50  0000 C CNN
F 3 "" H 2600 5450 50  0000 C CNN
	1    2600 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 5450 2600 5450
$Comp
L LM2596 IC1
U 1 1 56F7E8CA
P 1950 7600
F 0 "IC1" H 1700 7850 60  0000 C CNN
F 1 "LM2596-3.3" H 1900 7350 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-5Lead" H 1800 7350 60  0001 C CNN
F 3 "" H 1800 7350 60  0000 C CNN
	1    1950 7600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR034
U 1 1 56F7ED8E
P 1250 7400
F 0 "#PWR034" H 1250 7250 50  0001 C CNN
F 1 "+5V" H 1250 7540 50  0000 C CNN
F 2 "" H 1250 7400 50  0000 C CNN
F 3 "" H 1250 7400 50  0000 C CNN
	1    1250 7400
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR035
U 1 1 56F7EDE8
P 2650 7800
F 0 "#PWR035" H 2650 7650 50  0001 C CNN
F 1 "+3V3" H 2650 7940 50  0000 C CNN
F 2 "" H 2650 7800 50  0000 C CNN
F 3 "" H 2650 7800 50  0000 C CNN
	1    2650 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 7400 1250 7500
$Comp
L GND #PWR036
U 1 1 56F7F759
P 1350 7750
F 0 "#PWR036" H 1350 7500 50  0001 C CNN
F 1 "GND" H 1350 7600 50  0000 C CNN
F 2 "" H 1350 7750 50  0000 C CNN
F 3 "" H 1350 7750 50  0000 C CNN
	1    1350 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 7750 1350 7700
Wire Wire Line
	1350 7700 1400 7700
$Comp
L GND #PWR037
U 1 1 56F808A1
P 2450 7500
F 0 "#PWR037" H 2450 7250 50  0001 C CNN
F 1 "GND" H 2450 7350 50  0000 C CNN
F 2 "" H 2450 7500 50  0000 C CNN
F 3 "" H 2450 7500 50  0000 C CNN
	1    2450 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 7500 2450 7500
$Comp
L GND #PWR038
U 1 1 56F81167
P 1100 7850
F 0 "#PWR038" H 1100 7600 50  0001 C CNN
F 1 "GND" H 1100 7700 50  0000 C CNN
F 2 "" H 1100 7850 50  0000 C CNN
F 3 "" H 1100 7850 50  0000 C CNN
	1    1100 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 7500 1400 7500
Connection ~ 1250 7500
$Comp
L CP_Small C1
U 1 1 56F81ED5
P 1100 7650
F 0 "C1" H 1110 7720 50  0000 L CNN
F 1 "CP_Small" H 1110 7570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1100 7650 50  0001 C CNN
F 3 "" H 1100 7650 50  0000 C CNN
	1    1100 7650
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D2
U 1 1 56F833B7
P 3300 4500
F 0 "D2" H 3250 4625 50  0000 L CNN
F 1 "Led_Small" H 3125 4400 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" V 3300 4500 50  0001 C CNN
F 3 "" V 3300 4500 50  0000 C CNN
	1    3300 4500
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D3
U 1 1 56F83431
P 3300 4600
F 0 "D3" H 3250 4725 50  0000 L CNN
F 1 "Led_Small" H 3125 4500 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" V 3300 4600 50  0001 C CNN
F 3 "" V 3300 4600 50  0000 C CNN
	1    3300 4600
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D4
U 1 1 56F834AD
P 3300 4700
F 0 "D4" H 3250 4825 50  0000 L CNN
F 1 "Led_Small" H 3125 4600 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" V 3300 4700 50  0001 C CNN
F 3 "" V 3300 4700 50  0000 C CNN
	1    3300 4700
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D5
U 1 1 56F8352C
P 3300 4800
F 0 "D5" H 3250 4925 50  0000 L CNN
F 1 "Led_Small" H 3125 4700 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" V 3300 4800 50  0001 C CNN
F 3 "" V 3300 4800 50  0000 C CNN
	1    3300 4800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 56F83616
P 3600 4500
F 0 "R1" H 3630 4520 50  0000 L CNN
F 1 "R_Small" H 3630 4460 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3600 4500 50  0001 C CNN
F 3 "" H 3600 4500 50  0000 C CNN
	1    3600 4500
	0    1    1    0   
$EndComp
$Comp
L R_Small R2
U 1 1 56F83690
P 3600 4600
F 0 "R2" H 3630 4620 50  0000 L CNN
F 1 "R_Small" H 3630 4560 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3600 4600 50  0001 C CNN
F 3 "" H 3600 4600 50  0000 C CNN
	1    3600 4600
	0    1    1    0   
$EndComp
$Comp
L R_Small R3
U 1 1 56F8370C
P 3600 4700
F 0 "R3" H 3630 4720 50  0000 L CNN
F 1 "R_Small" H 3630 4660 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3600 4700 50  0001 C CNN
F 3 "" H 3600 4700 50  0000 C CNN
	1    3600 4700
	0    1    1    0   
$EndComp
$Comp
L R_Small R4
U 1 1 56F8378D
P 3600 4800
F 0 "R4" H 3630 4820 50  0000 L CNN
F 1 "R_Small" H 3630 4760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3600 4800 50  0001 C CNN
F 3 "" H 3600 4800 50  0000 C CNN
	1    3600 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 7600 1250 7600
Wire Wire Line
	1250 7600 1250 8100
$Comp
L ZENERsmall D1
U 1 1 56F8709C
P 1500 8300
F 0 "D1" H 1500 8400 50  0000 C CNN
F 1 "ZENERsmall" H 1500 8200 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Handsoldering" H 1500 8300 50  0001 C CNN
F 3 "" H 1500 8300 50  0000 C CNN
	1    1500 8300
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 8100 1700 8100
Wire Wire Line
	1500 8100 1500 8200
$Comp
L INDUCTOR_SMALL L1
U 1 1 56F8725D
P 1950 8100
F 0 "L1" H 1950 8200 50  0000 C CNN
F 1 "INDUCTOR_SMALL" H 1950 8050 50  0000 C CNN
F 2 "Inductors_NEOSID:Neosid_Inductor_SM1206" H 1950 8100 50  0001 C CNN
F 3 "" H 1950 8100 50  0000 C CNN
	1    1950 8100
	1    0    0    -1  
$EndComp
Connection ~ 1500 8100
$Comp
L C_Small C2
U 1 1 56F87444
P 2350 8300
F 0 "C2" H 2360 8370 50  0000 L CNN
F 1 "C_Small" H 2360 8220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2350 8300 50  0001 C CNN
F 3 "" H 2350 8300 50  0000 C CNN
	1    2350 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 8100 2200 8100
Wire Wire Line
	2350 8100 2350 8200
Wire Wire Line
	2350 7700 2450 7700
Wire Wire Line
	2450 7700 2450 8100
Connection ~ 2350 8100
Wire Wire Line
	2450 7900 2650 7900
Connection ~ 2450 7900
Wire Wire Line
	2650 7900 2650 7800
$Comp
L GND #PWR039
U 1 1 56F88033
P 1500 8550
F 0 "#PWR039" H 1500 8300 50  0001 C CNN
F 1 "GND" H 1500 8400 50  0000 C CNN
F 2 "" H 1500 8550 50  0000 C CNN
F 3 "" H 1500 8550 50  0000 C CNN
	1    1500 8550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 56F880BA
P 2350 8550
F 0 "#PWR040" H 2350 8300 50  0001 C CNN
F 1 "GND" H 2350 8400 50  0000 C CNN
F 2 "" H 2350 8550 50  0000 C CNN
F 3 "" H 2350 8550 50  0000 C CNN
	1    2350 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 8400 1500 8550
Wire Wire Line
	2350 8400 2350 8550
Wire Wire Line
	1100 7500 1100 7550
Wire Wire Line
	1100 7750 1100 7850
Wire Wire Line
	12250 1750 11600 1750
Wire Wire Line
	11600 1850 12250 1850
Text GLabel 10450 1750 0    60   Input ~ 0
RXD
Text GLabel 10450 1850 0    60   Input ~ 0
TXD
Wire Wire Line
	10450 1850 10600 1850
Wire Wire Line
	10450 1750 10600 1750
$Comp
L GND #PWR041
U 1 1 56F8F53F
P 10500 2050
F 0 "#PWR041" H 10500 1800 50  0001 C CNN
F 1 "GND" H 10500 1900 50  0000 C CNN
F 2 "" H 10500 2050 50  0000 C CNN
F 3 "" H 10500 2050 50  0000 C CNN
	1    10500 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 1950 10500 1950
Wire Wire Line
	10500 1950 10500 2050
$Comp
L +3V3 #PWR042
U 1 1 56F8F973
P 10500 1550
F 0 "#PWR042" H 10500 1400 50  0001 C CNN
F 1 "+3V3" H 10500 1690 50  0000 C CNN
F 2 "" H 10500 1550 50  0000 C CNN
F 3 "" H 10500 1550 50  0000 C CNN
	1    10500 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1550 10500 1650
Wire Wire Line
	10500 1650 10600 1650
$Comp
L NLSX4373 IC9
U 1 1 56F90638
P 11100 1800
F 0 "IC9" H 10850 2050 60  0000 C CNN
F 1 "NLSX4373" H 11100 1550 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 11100 1550 60  0001 C CNN
F 3 "" H 11100 1550 60  0000 C CNN
	1    11100 1800
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR043
U 1 1 56F90FAC
P 11800 1950
F 0 "#PWR043" H 11800 1800 50  0001 C CNN
F 1 "+3V3" H 11800 2090 50  0000 C CNN
F 2 "" H 11800 1950 50  0000 C CNN
F 3 "" H 11800 1950 50  0000 C CNN
	1    11800 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	11600 1950 11800 1950
Wire Wire Line
	12950 1150 12950 1000
Wire Wire Line
	12950 1000 11900 1000
Wire Wire Line
	11900 1000 11900 1650
Wire Wire Line
	11900 1650 11600 1650
Text GLabel 12100 2750 0    60   Input ~ 0
GSM_PKEY
Wire Wire Line
	12250 2750 12100 2750
Text GLabel 2500 5350 2    60   Input ~ 0
GSM_PKEY
Wire Wire Line
	2500 5350 2450 5350
Text GLabel 1400 5350 0    60   Input ~ 0
GSM_PWR
Wire Wire Line
	1650 5350 1400 5350
Text GLabel 1250 2700 0    60   Input ~ 0
GSM_PWR
$Comp
L NLSX4373 IC8
U 1 1 56FB1294
P 9150 7050
F 0 "IC8" H 8900 7300 60  0000 C CNN
F 1 "NLSX4373" H 9150 6800 60  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 9150 6800 60  0001 C CNN
F 3 "" H 9150 6800 60  0000 C CNN
	1    9150 7050
	1    0    0    -1  
$EndComp
$Comp
L MAX1161? IC3
U 1 1 56FB1F8C
P 7400 7150
F 0 "IC3" H 7100 7600 60  0000 C CNN
F 1 "MAX1161?" H 7400 6700 60  0000 C CNN
F 2 "Housings_SSOP:QSOP-16_3.9x4.9mm_Pitch0.635mm" H 7400 6700 60  0001 C CNN
F 3 "" H 7400 6700 60  0000 C CNN
	1    7400 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 7000 8650 7000
Wire Wire Line
	7950 7100 8650 7100
Text GLabel 6700 7200 0    60   Input ~ 0
isense0
Text GLabel 6700 7300 0    60   Input ~ 0
isense1
Text GLabel 6700 7400 0    60   Input ~ 0
isense2
Text GLabel 6700 7500 0    60   Input ~ 0
isense3
Wire Wire Line
	6700 7200 6850 7200
Wire Wire Line
	6700 7300 6850 7300
Wire Wire Line
	6700 7400 6850 7400
Wire Wire Line
	6700 7500 6850 7500
$Comp
L +5V #PWR044
U 1 1 56FB638C
P 8500 6750
F 0 "#PWR044" H 8500 6600 50  0001 C CNN
F 1 "+5V" H 8500 6890 50  0000 C CNN
F 2 "" H 8500 6750 50  0000 C CNN
F 3 "" H 8500 6750 50  0000 C CNN
	1    8500 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 6750 8500 6900
Wire Wire Line
	8500 6800 7950 6800
$Comp
L GND #PWR045
U 1 1 56FB6558
P 8100 6900
F 0 "#PWR045" H 8100 6650 50  0001 C CNN
F 1 "GND" H 8100 6750 50  0000 C CNN
F 2 "" H 8100 6900 50  0000 C CNN
F 3 "" H 8100 6900 50  0000 C CNN
	1    8100 6900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR046
U 1 1 56FB65C0
P 8600 7250
F 0 "#PWR046" H 8600 7000 50  0001 C CNN
F 1 "GND" H 8600 7100 50  0000 C CNN
F 2 "" H 8600 7250 50  0000 C CNN
F 3 "" H 8600 7250 50  0000 C CNN
	1    8600 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 7200 8600 7200
Wire Wire Line
	8600 7200 8600 7250
Wire Wire Line
	7950 6900 8100 6900
Wire Wire Line
	8500 6900 8650 6900
Connection ~ 8500 6800
Text GLabel 9850 7000 2    60   Input ~ 0
SDA
Text GLabel 9850 7100 2    60   Input ~ 0
SCL
Wire Wire Line
	9650 7000 9850 7000
Wire Wire Line
	9850 7100 9650 7100
$Comp
L +3V3 #PWR047
U 1 1 56FBA0A6
P 9750 6800
F 0 "#PWR047" H 9750 6650 50  0001 C CNN
F 1 "+3V3" H 9750 6940 50  0000 C CNN
F 2 "" H 9750 6800 50  0000 C CNN
F 3 "" H 9750 6800 50  0000 C CNN
	1    9750 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 6800 9750 6900
Wire Wire Line
	9750 6900 9650 6900
$Comp
L +5V #PWR048
U 1 1 56FBB2FA
P 9700 7200
F 0 "#PWR048" H 9700 7050 50  0001 C CNN
F 1 "+5V" H 9700 7340 50  0000 C CNN
F 2 "" H 9700 7200 50  0000 C CNN
F 3 "" H 9700 7200 50  0000 C CNN
	1    9700 7200
	0    1    1    0   
$EndComp
Wire Wire Line
	9700 7200 9650 7200
$Comp
L CONN_02X01 P4
U 1 1 56F5E028
P 7550 700
F 0 "P4" H 7550 800 50  0000 C CNN
F 1 "string0" H 7550 600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x01" H 7550 -500 50  0001 C CNN
F 3 "" H 7550 -500 50  0000 C CNN
	1    7550 700 
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X01 P5
U 1 1 56F5E0FA
P 7550 900
F 0 "P5" H 7550 1000 50  0000 C CNN
F 1 "string1" H 7550 800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x01" H 7550 -300 50  0001 C CNN
F 3 "" H 7550 -300 50  0000 C CNN
	1    7550 900 
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X01 P6
U 1 1 56F5E18C
P 7550 1100
F 0 "P6" H 7550 1200 50  0000 C CNN
F 1 "string2" H 7550 1000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x01" H 7550 -100 50  0001 C CNN
F 3 "" H 7550 -100 50  0000 C CNN
	1    7550 1100
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X01 P7
U 1 1 56F5E221
P 7550 1300
F 0 "P7" H 7550 1400 50  0000 C CNN
F 1 "string3" H 7550 1200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x01" H 7550 100 50  0001 C CNN
F 3 "" H 7550 100 50  0000 C CNN
	1    7550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1300 7300 1300
Wire Wire Line
	7200 1100 7300 1100
Wire Wire Line
	7200 900  7300 900 
Wire Wire Line
	7200 700  7300 700 
Wire Wire Line
	7800 700  7900 700 
Wire Wire Line
	7800 900  7900 900 
Wire Wire Line
	7800 1100 7900 1100
Wire Wire Line
	7800 1300 7900 1300
$EndSCHEMATC