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
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L CD74HC4046 U?
U 1 1 570CCCA7
P 3200 1575
AR Path="/570DBBD4/570CCCA7" Ref="U?"  Part="1" 
AR Path="/57385F9F/570CCCA7" Ref="U?"  Part="1" 
AR Path="/57386732/570CCCA7" Ref="U?"  Part="1" 
F 0 "U?" H 2900 2275 60  0000 C CNN
F 1 "CD74HC4046" H 3200 650 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 4000 575 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4046a.pdf" H 4050 675 60  0001 C CNN
	1    3200 1575
	1    0    0    -1  
$EndComp
NoConn ~ 3750 1425
NoConn ~ 3750 1125
NoConn ~ 3750 1225
NoConn ~ 3750 1325
$Comp
L C_Small C?
U 1 1 570CCCB3
P 3750 2225
AR Path="/570DBBD4/570CCCB3" Ref="C?"  Part="1" 
AR Path="/57385F9F/570CCCB3" Ref="C?"  Part="1" 
AR Path="/57386732/570CCCB3" Ref="C?"  Part="1" 
F 0 "C?" H 3760 2295 50  0000 L CNN
F 1 "C_Small" H 3760 2145 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3750 2225 50  0001 C CNN
F 3 "" H 3750 2225 50  0000 C CNN
	1    3750 2225
	1    0    0    -1  
$EndComp
NoConn ~ 3750 1875
$Comp
L C_Small C?
U 1 1 570CCCBB
P 1525 2000
AR Path="/570DBBD4/570CCCBB" Ref="C?"  Part="1" 
AR Path="/57385F9F/570CCCBB" Ref="C?"  Part="1" 
AR Path="/57386732/570CCCBB" Ref="C?"  Part="1" 
F 0 "C?" H 1535 2070 50  0000 L CNN
F 1 "C_Small" H 1535 1920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1525 2000 50  0001 C CNN
F 3 "" H 1525 2000 50  0000 C CNN
	1    1525 2000
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 570CCCC2
P 1325 1825
AR Path="/570DBBD4/570CCCC2" Ref="R?"  Part="1" 
AR Path="/57385F9F/570CCCC2" Ref="R?"  Part="1" 
AR Path="/57386732/570CCCC2" Ref="R?"  Part="1" 
F 0 "R?" V 1400 1750 50  0000 L CNN
F 1 "10k" V 1250 1750 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1325 1825 50  0001 C CNN
F 3 "" H 1325 1825 50  0000 C CNN
	1    1325 1825
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 570CCCC9
P 2450 1975
AR Path="/570DBBD4/570CCCC9" Ref="R?"  Part="1" 
AR Path="/57385F9F/570CCCC9" Ref="R?"  Part="1" 
AR Path="/57386732/570CCCC9" Ref="R?"  Part="1" 
F 0 "R?" V 2500 2050 50  0000 L CNN
F 1 "R_Small" V 2375 1900 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2450 1975 50  0001 C CNN
F 3 "" H 2450 1975 50  0000 C CNN
	1    2450 1975
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 570CCCD0
P 2450 2175
AR Path="/570DBBD4/570CCCD0" Ref="R?"  Part="1" 
AR Path="/57385F9F/570CCCD0" Ref="R?"  Part="1" 
AR Path="/57386732/570CCCD0" Ref="R?"  Part="1" 
F 0 "R?" V 2500 2250 50  0000 L CNN
F 1 "R_Small" V 2375 2100 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2450 2175 50  0001 C CNN
F 3 "" H 2450 2175 50  0000 C CNN
	1    2450 2175
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 570CCCD7
P 2450 1725
AR Path="/570DBBD4/570CCCD7" Ref="R?"  Part="1" 
AR Path="/57385F9F/570CCCD7" Ref="R?"  Part="1" 
AR Path="/57386732/570CCCD7" Ref="R?"  Part="1" 
F 0 "R?" H 2500 1675 50  0000 L CNN
F 1 "10k" H 2500 1750 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2450 1725 50  0001 C CNN
F 3 "" H 2450 1725 50  0000 C CNN
	1    2450 1725
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 570CCCDE
P 2525 925
AR Path="/570DBBD4/570CCCDE" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/570CCCDE" Ref="#PWR?"  Part="1" 
AR Path="/57386732/570CCCDE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2525 775 50  0001 C CNN
F 1 "+3V3" H 2525 1065 50  0000 C CNN
F 2 "" H 2525 925 50  0000 C CNN
F 3 "" H 2525 925 50  0000 C CNN
	1    2525 925 
	1    0    0    -1  
$EndComp
Text Notes 600  3000 0    60   ~ 0
Transmitter
Text Label 875  1825 0    60   ~ 0
TX1_in
$Comp
L POT RV?
U 1 1 570CCCE7
P 2000 2450
AR Path="/570DBBD4/570CCCE7" Ref="RV?"  Part="1" 
AR Path="/57385F9F/570CCCE7" Ref="RV?"  Part="1" 
AR Path="/57386732/570CCCE7" Ref="RV?"  Part="1" 
F 0 "RV?" H 2000 2350 50  0000 C CNN
F 1 "POT" H 2000 2450 50  0000 C CNN
F 2 "pro4:EVM-1USX30B14" H 2000 2450 50  0001 C CNN
F 3 "" H 2000 2450 50  0000 C CNN
	1    2000 2450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 570CCCEE
P 1850 2450
AR Path="/570DBBD4/570CCCEE" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/570CCCEE" Ref="#PWR?"  Part="1" 
AR Path="/57386732/570CCCEE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1850 2200 50  0001 C CNN
F 1 "GND" H 1850 2300 50  0000 C CNN
F 2 "" H 1850 2450 50  0000 C CNN
F 3 "" H 1850 2450 50  0000 C CNN
	1    1850 2450
	1    0    0    -1  
$EndComp
NoConn ~ 2000 2700
$Comp
L GND #PWR?
U 1 1 570CCCF5
P 1525 2100
AR Path="/570DBBD4/570CCCF5" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/570CCCF5" Ref="#PWR?"  Part="1" 
AR Path="/57386732/570CCCF5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1525 1850 50  0001 C CNN
F 1 "GND" H 1525 1950 50  0000 C CNN
F 2 "" H 1525 2100 50  0000 C CNN
F 3 "" H 1525 2100 50  0000 C CNN
	1    1525 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 570CCCFB
P 2250 2400
AR Path="/570DBBD4/570CCCFB" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/570CCCFB" Ref="#PWR?"  Part="1" 
AR Path="/57386732/570CCCFB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2250 2150 50  0001 C CNN
F 1 "GND" H 2250 2250 50  0000 C CNN
F 2 "" H 2250 2400 50  0000 C CNN
F 3 "" H 2250 2400 50  0000 C CNN
	1    2250 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 570CCD01
P 2650 1425
AR Path="/570DBBD4/570CCD01" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/570CCD01" Ref="#PWR?"  Part="1" 
AR Path="/57386732/570CCD01" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2650 1175 50  0001 C CNN
F 1 "GND" H 2650 1275 50  0000 C CNN
F 2 "" H 2650 1425 50  0000 C CNN
F 3 "" H 2650 1425 50  0000 C CNN
	1    2650 1425
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1725 4150 1725
Wire Wire Line
	1425 1825 2650 1825
Wire Wire Line
	2000 1975 2350 1975
Wire Wire Line
	2000 2175 2350 2175
Wire Wire Line
	1525 1575 1525 1900
Connection ~ 1525 1825
Wire Wire Line
	875  1825 1225 1825
Wire Wire Line
	2650 1975 2550 1975
Wire Wire Line
	2550 2175 2650 2175
$Comp
L C_Small C?
U 1 1 570CCD1D
P 2525 1125
AR Path="/570DBBD4/570CCD1D" Ref="C?"  Part="1" 
AR Path="/57385F9F/570CCD1D" Ref="C?"  Part="1" 
AR Path="/57386732/570CCD1D" Ref="C?"  Part="1" 
F 0 "C?" H 2625 1125 50  0000 L CNN
F 1 "100n" H 2535 1045 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2525 1125 60  0001 C CNN
F 3 "" H 2525 1125 60  0000 C CNN
	1    2525 1125
	1    0    0    -1  
$EndComp
Wire Wire Line
	2525 1225 2525 1425
Wire Wire Line
	2525 1425 2650 1425
Connection ~ 2525 1025
Connection ~ 2650 1425
Text HLabel 9125 4475 2    60   Input ~ 0
TX1_in
$Comp
L CD74HC4046 U?
U 1 1 570CB558
P 4425 5575
AR Path="/570DBBD4/570CB558" Ref="U?"  Part="1" 
AR Path="/57385F9F/570CB558" Ref="U?"  Part="1" 
AR Path="/57386732/570CB558" Ref="U?"  Part="1" 
F 0 "U?" H 4125 6275 60  0000 C CNN
F 1 "CD74HC4046" H 4425 4675 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 5225 4575 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4046a.pdf" H 5275 4675 60  0001 C CNN
	1    4425 5575
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 570CB55F
P 5575 6300
AR Path="/570DBBD4/570CB55F" Ref="R?"  Part="1" 
AR Path="/57385F9F/570CB55F" Ref="R?"  Part="1" 
AR Path="/57386732/570CB55F" Ref="R?"  Part="1" 
F 0 "R?" H 5605 6320 50  0000 L CNN
F 1 "50k" H 5605 6260 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 5575 6300 50  0001 C CNN
F 3 "" H 5575 6300 50  0000 C CNN
	1    5575 6300
	-1   0    0    1   
$EndComp
$Comp
L R_Small JP3.?
U 1 1 570CB566
P 5350 4900
AR Path="/570DBBD4/570CB566" Ref="JP3.?"  Part="1" 
AR Path="/57385F9F/570CB566" Ref="JP3.?"  Part="1" 
AR Path="/57386732/570CB566" Ref="JP3.?"  Part="1" 
F 0 "JP3.?" H 5100 4950 50  0000 L CNN
F 1 "R_Small" H 5000 4875 50  0001 L CNN
F 2 "Resistors_SMD:R_0603" H 5350 4900 50  0001 C CNN
F 3 "" H 5350 4900 50  0000 C CNN
	1    5350 4900
	-1   0    0    1   
$EndComp
$Comp
L R_Small R?
U 1 1 570CB56D
P 3325 5725
AR Path="/570DBBD4/570CB56D" Ref="R?"  Part="1" 
AR Path="/57385F9F/570CB56D" Ref="R?"  Part="1" 
AR Path="/57386732/570CB56D" Ref="R?"  Part="1" 
F 0 "R?" H 3200 5675 50  0000 L CNN
F 1 "10k" H 3150 5750 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 3325 5725 50  0001 C CNN
F 3 "" H 3325 5725 50  0000 C CNN
	1    3325 5725
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 570CB574
P 3675 5975
AR Path="/570DBBD4/570CB574" Ref="R?"  Part="1" 
AR Path="/57385F9F/570CB574" Ref="R?"  Part="1" 
AR Path="/57386732/570CB574" Ref="R?"  Part="1" 
F 0 "R?" V 3725 6050 50  0000 L CNN
F 1 "R_Small" V 3600 5900 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 3675 5975 50  0001 C CNN
F 3 "" H 3675 5975 50  0000 C CNN
	1    3675 5975
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 570CB57B
P 3675 6175
AR Path="/570DBBD4/570CB57B" Ref="R?"  Part="1" 
AR Path="/57385F9F/570CB57B" Ref="R?"  Part="1" 
AR Path="/57386732/570CB57B" Ref="R?"  Part="1" 
F 0 "R?" V 3725 6250 50  0000 L CNN
F 1 "R_Small" V 3600 6100 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 3675 6175 50  0001 C CNN
F 3 "" H 3675 6175 50  0000 C CNN
	1    3675 6175
	0    1    1    0   
$EndComp
$Comp
L C_Small C?
U 1 1 570CB582
P 4975 6225
AR Path="/570DBBD4/570CB582" Ref="C?"  Part="1" 
AR Path="/57385F9F/570CB582" Ref="C?"  Part="1" 
AR Path="/57386732/570CB582" Ref="C?"  Part="1" 
F 0 "C?" H 5000 6150 50  0000 L CNN
F 1 "C_Small" H 5000 6300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4975 6225 50  0001 C CNN
F 3 "" H 4975 6225 50  0000 C CNN
	1    4975 6225
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 570CB589
P 2575 5825
AR Path="/570DBBD4/570CB589" Ref="R?"  Part="1" 
AR Path="/57385F9F/570CB589" Ref="R?"  Part="1" 
AR Path="/57386732/570CB589" Ref="R?"  Part="1" 
F 0 "R?" V 2500 5675 50  0000 L CNN
F 1 "R_Small" V 2650 5600 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2575 5825 50  0001 C CNN
F 3 "" H 2575 5825 50  0000 C CNN
	1    2575 5825
	0    -1   -1   0   
$EndComp
Text Label 2475 5825 2    60   ~ 0
VCOin
Text Label 5350 4650 2    60   ~ 0
VCOin
Text Label 5250 5725 2    60   ~ 0
JP2
Text Label 3875 5325 2    60   ~ 0
JP2
$Comp
L R_Small JP3.?
U 1 1 570CB594
P 5725 4900
AR Path="/570DBBD4/570CB594" Ref="JP3.?"  Part="1" 
AR Path="/57385F9F/570CB594" Ref="JP3.?"  Part="1" 
AR Path="/57386732/570CB594" Ref="JP3.?"  Part="1" 
F 0 "JP3.?" H 5775 4850 50  0000 L CNN
F 1 "R_Small" H 5775 4925 50  0001 L CNN
F 2 "Resistors_SMD:R_0603" H 5725 4900 50  0001 C CNN
F 3 "" H 5725 4900 50  0000 C CNN
	1    5725 4900
	1    0    0    -1  
$EndComp
$Comp
L R_Small JP3.?
U 1 1 570CB59B
P 6100 4900
AR Path="/570DBBD4/570CB59B" Ref="JP3.?"  Part="1" 
AR Path="/57385F9F/570CB59B" Ref="JP3.?"  Part="1" 
AR Path="/57386732/570CB59B" Ref="JP3.?"  Part="1" 
F 0 "JP3.?" H 6150 4850 50  0000 L CNN
F 1 "R_Small" H 6150 4925 50  0001 L CNN
F 2 "Resistors_SMD:R_0603" H 6100 4900 50  0001 C CNN
F 3 "" H 6100 4900 50  0000 C CNN
	1    6100 4900
	1    0    0    -1  
$EndComp
NoConn ~ 4975 5425
$Comp
L C_Small C?
U 1 1 570CB5A3
P 2775 6075
AR Path="/570DBBD4/570CB5A3" Ref="C?"  Part="1" 
AR Path="/57385F9F/570CB5A3" Ref="C?"  Part="1" 
AR Path="/57386732/570CB5A3" Ref="C?"  Part="1" 
F 0 "C?" H 2800 6000 50  0000 L CNN
F 1 "C_Small" H 2800 6150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2775 6075 50  0001 C CNN
F 3 "" H 2775 6075 50  0000 C CNN
	1    2775 6075
	1    0    0    -1  
$EndComp
Text Notes 725  7075 0    60   ~ 0
Reciever
Text Label 1125 5450 0    60   ~ 0
coupling
$Comp
L POT RV?
U 1 1 570CB5AC
P 3325 6575
AR Path="/570DBBD4/570CB5AC" Ref="RV?"  Part="1" 
AR Path="/57385F9F/570CB5AC" Ref="RV?"  Part="1" 
AR Path="/57386732/570CB5AC" Ref="RV?"  Part="1" 
F 0 "RV?" H 3325 6475 50  0000 C CNN
F 1 "POT" H 3325 6575 50  0000 C CNN
F 2 "pro4:EVM-1USX30B14" H 3325 6575 50  0001 C CNN
F 3 "" H 3325 6575 50  0000 C CNN
	1    3325 6575
	0    -1   1    0   
$EndComp
Text Label 5600 5850 0    60   ~ 0
RX1_out
$Comp
L OPA376AIDCK U?
U 1 1 570CB5B5
P 2450 4925
AR Path="/570DBBD4/570CB5B5" Ref="U?"  Part="1" 
AR Path="/57385F9F/570CB5B5" Ref="U?"  Part="1" 
AR Path="/57386732/570CB5B5" Ref="U?"  Part="1" 
F 0 "U?" H 2450 5125 50  0000 C CNN
F 1 "OPA376AIDCK" H 2650 4725 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SC-70-6" H 2800 5150 50  0000 L CNN
F 3 "" H 2500 5125 50  0000 C CNN
	1    2450 4925
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 570CB5BC
P 2175 4450
AR Path="/570DBBD4/570CB5BC" Ref="C?"  Part="1" 
AR Path="/57385F9F/570CB5BC" Ref="C?"  Part="1" 
AR Path="/57386732/570CB5BC" Ref="C?"  Part="1" 
F 0 "C?" V 2300 4425 50  0000 L CNN
F 1 "0.1u" V 2075 4350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2175 4450 50  0001 C CNN
F 3 "" H 2175 4450 50  0000 C CNN
	1    2175 4450
	0    1    1    0   
$EndComp
$Comp
L C_Small C?
U 1 1 570CB5C3
P 2525 4450
AR Path="/570DBBD4/570CB5C3" Ref="C?"  Part="1" 
AR Path="/57385F9F/570CB5C3" Ref="C?"  Part="1" 
AR Path="/57386732/570CB5C3" Ref="C?"  Part="1" 
F 0 "C?" V 2650 4425 50  0000 L CNN
F 1 "1u" V 2425 4400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2525 4450 50  0001 C CNN
F 3 "" H 2525 4450 50  0000 C CNN
	1    2525 4450
	0    1    1    0   
$EndComp
$Comp
L C_Small C?
U 1 1 570CB5CA
P 1425 4825
AR Path="/570DBBD4/570CB5CA" Ref="C?"  Part="1" 
AR Path="/57385F9F/570CB5CA" Ref="C?"  Part="1" 
AR Path="/57386732/570CB5CA" Ref="C?"  Part="1" 
F 0 "C?" V 1375 4850 50  0000 L CNN
F 1 "C_Small" V 1475 4500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1425 4825 50  0001 C CNN
F 3 "" H 1425 4825 50  0000 C CNN
	1    1425 4825
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 570CB5D1
P 2075 4575
AR Path="/570DBBD4/570CB5D1" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/570CB5D1" Ref="#PWR?"  Part="1" 
AR Path="/57386732/570CB5D1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2075 4325 50  0001 C CNN
F 1 "GND" H 2075 4425 50  0000 C CNN
F 2 "" H 2075 4575 50  0000 C CNN
F 3 "" H 2075 4575 50  0000 C CNN
	1    2075 4575
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 570CB5D7
P 2625 4575
AR Path="/570DBBD4/570CB5D7" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/570CB5D7" Ref="#PWR?"  Part="1" 
AR Path="/57386732/570CB5D7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2625 4325 50  0001 C CNN
F 1 "GND" H 2625 4425 50  0000 C CNN
F 2 "" H 2625 4575 50  0000 C CNN
F 3 "" H 2625 4575 50  0000 C CNN
	1    2625 4575
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 570CB5DD
P 1650 4525
AR Path="/570DBBD4/570CB5DD" Ref="R?"  Part="1" 
AR Path="/57385F9F/570CB5DD" Ref="R?"  Part="1" 
AR Path="/57386732/570CB5DD" Ref="R?"  Part="1" 
F 0 "R?" H 1525 4550 50  0000 L CNN
F 1 "100k" H 1425 4475 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1650 4525 50  0001 C CNN
F 3 "" H 1650 4525 50  0000 C CNN
	1    1650 4525
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 570CB5E4
P 1650 5125
AR Path="/570DBBD4/570CB5E4" Ref="R?"  Part="1" 
AR Path="/57385F9F/570CB5E4" Ref="R?"  Part="1" 
AR Path="/57386732/570CB5E4" Ref="R?"  Part="1" 
F 0 "R?" H 1525 5150 50  0000 L CNN
F 1 "100k" H 1425 5075 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1650 5125 50  0001 C CNN
F 3 "" H 1650 5125 50  0000 C CNN
	1    1650 5125
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 570CB5EB
P 3200 4925
AR Path="/570DBBD4/570CB5EB" Ref="C?"  Part="1" 
AR Path="/57385F9F/570CB5EB" Ref="C?"  Part="1" 
AR Path="/57386732/570CB5EB" Ref="C?"  Part="1" 
F 0 "C?" V 3150 4975 50  0000 L CNN
F 1 "C_Small" V 3150 4600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3200 4925 50  0001 C CNN
F 3 "" H 3200 4925 50  0000 C CNN
	1    3200 4925
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 570CB5F2
P 2725 5425
AR Path="/570DBBD4/570CB5F2" Ref="R?"  Part="1" 
AR Path="/57385F9F/570CB5F2" Ref="R?"  Part="1" 
AR Path="/57386732/570CB5F2" Ref="R?"  Part="1" 
F 0 "R?" V 2800 5350 50  0000 L CNN
F 1 "R_Small" V 2650 5350 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2725 5425 50  0001 C CNN
F 3 "" H 2725 5425 50  0000 C CNN
	1    2725 5425
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 570CB5F9
P 1975 5550
AR Path="/570DBBD4/570CB5F9" Ref="R?"  Part="1" 
AR Path="/57385F9F/570CB5F9" Ref="R?"  Part="1" 
AR Path="/57386732/570CB5F9" Ref="R?"  Part="1" 
F 0 "R?" H 2005 5570 50  0000 L CNN
F 1 "R_Small" H 2005 5510 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1975 5550 50  0001 C CNN
F 3 "" H 1975 5550 50  0000 C CNN
	1    1975 5550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 570CB600
P 1650 5225
AR Path="/570DBBD4/570CB600" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/570CB600" Ref="#PWR?"  Part="1" 
AR Path="/57386732/570CB600" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1650 4975 50  0001 C CNN
F 1 "GND" H 1650 5075 50  0000 C CNN
F 2 "" H 1650 5225 50  0000 C CNN
F 3 "" H 1650 5225 50  0000 C CNN
	1    1650 5225
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 570CB606
P 2350 4300
AR Path="/570DBBD4/570CB606" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/570CB606" Ref="#PWR?"  Part="1" 
AR Path="/57386732/570CB606" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2350 4150 50  0001 C CNN
F 1 "+3V3" H 2350 4440 50  0000 C CNN
F 2 "" H 2350 4300 50  0000 C CNN
F 3 "" H 2350 4300 50  0000 C CNN
	1    2350 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 570CB60C
P 2350 5225
AR Path="/570DBBD4/570CB60C" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/570CB60C" Ref="#PWR?"  Part="1" 
AR Path="/57386732/570CB60C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2350 4975 50  0001 C CNN
F 1 "GND" H 2350 5075 50  0000 C CNN
F 2 "" H 2350 5225 50  0000 C CNN
F 3 "" H 2350 5225 50  0000 C CNN
	1    2350 5225
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 570CB612
P 1975 6050
AR Path="/570DBBD4/570CB612" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/570CB612" Ref="#PWR?"  Part="1" 
AR Path="/57386732/570CB612" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1975 5800 50  0001 C CNN
F 1 "GND" H 1975 5900 50  0000 C CNN
F 2 "" H 1975 6050 50  0000 C CNN
F 3 "" H 1975 6050 50  0000 C CNN
	1    1975 6050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 570CB618
P 1975 5850
AR Path="/570DBBD4/570CB618" Ref="C?"  Part="1" 
AR Path="/57385F9F/570CB618" Ref="C?"  Part="1" 
AR Path="/57386732/570CB618" Ref="C?"  Part="1" 
F 0 "C?" H 1985 5920 50  0000 L CNN
F 1 "C_Small" H 1985 5770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1975 5850 50  0001 C CNN
F 3 "" H 1975 5850 50  0000 C CNN
	1    1975 5850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 570CB61F
P 1025 4825
AR Path="/570DBBD4/570CB61F" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/570CB61F" Ref="#PWR?"  Part="1" 
AR Path="/57386732/570CB61F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1025 4575 50  0001 C CNN
F 1 "GND" H 1025 4675 50  0000 C CNN
F 2 "" H 1025 4825 50  0000 C CNN
F 3 "" H 1025 4825 50  0000 C CNN
	1    1025 4825
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 570CB625
P 5575 6625
AR Path="/570DBBD4/570CB625" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/570CB625" Ref="#PWR?"  Part="1" 
AR Path="/57386732/570CB625" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5575 6375 50  0001 C CNN
F 1 "GND" H 5575 6475 50  0000 C CNN
F 2 "" H 5575 6625 50  0000 C CNN
F 3 "" H 5575 6625 50  0000 C CNN
	1    5575 6625
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4925 3100 4925
Connection ~ 1650 4825
Wire Wire Line
	1650 4625 1650 5025
Wire Wire Line
	2625 4450 2625 4575
Connection ~ 2350 4450
Wire Wire Line
	2275 4450 2425 4450
Wire Wire Line
	2075 4450 2075 4575
Wire Wire Line
	1325 4825 1025 4825
Wire Wire Line
	5575 6400 5575 6625
Wire Wire Line
	3875 5725 3425 5725
Wire Wire Line
	4975 5875 5925 5875
Wire Wire Line
	5575 5875 5575 6200
Connection ~ 5575 5875
Wire Wire Line
	3875 5975 3775 5975
Wire Wire Line
	3775 6175 3875 6175
Wire Wire Line
	4975 5725 5250 5725
Wire Wire Line
	5350 4650 5350 4800
Wire Wire Line
	5350 5000 5350 5125
Wire Wire Line
	5350 5125 4975 5125
Wire Wire Line
	5725 5000 5725 5325
Wire Wire Line
	5725 5325 4975 5325
Wire Wire Line
	6100 5000 6100 5225
Wire Wire Line
	6100 5225 4975 5225
Wire Wire Line
	2675 5825 3875 5825
Wire Wire Line
	5350 4725 6100 4725
Wire Wire Line
	6100 4725 6100 4800
Connection ~ 5350 4725
Wire Wire Line
	5725 4800 5725 4725
Connection ~ 5725 4725
Wire Wire Line
	2775 5975 2775 5825
Connection ~ 2775 5825
Wire Wire Line
	2775 6175 2775 6575
Wire Wire Line
	2825 5425 3025 5425
Wire Wire Line
	3025 5425 3025 4925
Connection ~ 3025 4925
Wire Wire Line
	2625 5425 1975 5425
Wire Wire Line
	1975 5025 1975 5450
Wire Wire Line
	2150 5025 1975 5025
Connection ~ 1975 5425
Wire Wire Line
	1825 5450 1125 5450
Wire Wire Line
	1525 4825 2150 4825
Connection ~ 1825 4825
Wire Wire Line
	1825 4825 1825 5450
Wire Wire Line
	1975 5650 1975 5750
Wire Wire Line
	1975 5950 1975 6050
Wire Wire Line
	2350 4300 2350 4625
Wire Wire Line
	1650 4300 1650 4425
Connection ~ 2350 4300
$Comp
L C_Small C?
U 1 1 570CB671
P 3775 5025
AR Path="/570DBBD4/570CB671" Ref="C?"  Part="1" 
AR Path="/57385F9F/570CB671" Ref="C?"  Part="1" 
AR Path="/57386732/570CB671" Ref="C?"  Part="1" 
F 0 "C?" H 3785 5095 50  0000 L CNN
F 1 "100n" H 3785 4945 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3775 5025 60  0001 C CNN
F 3 "" H 3775 5025 60  0000 C CNN
	1    3775 5025
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 570CB679
P 3575 5075
AR Path="/570DBBD4/570CB679" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/570CB679" Ref="#PWR?"  Part="1" 
AR Path="/57386732/570CB679" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3575 4825 50  0001 C CNN
F 1 "GND" H 3575 4925 50  0000 C CNN
F 2 "" H 3575 5075 60  0000 C CNN
F 3 "" H 3575 5075 60  0000 C CNN
	1    3575 5075
	1    0    0    -1  
$EndComp
Text HLabel 9125 4600 2    60   Input ~ 0
RX1_out
$Comp
L GND #PWR?
U 1 1 570CD762
P 9125 3875
AR Path="/570DBBD4/570CD762" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/570CD762" Ref="#PWR?"  Part="1" 
AR Path="/57386732/570CD762" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9125 3625 50  0001 C CNN
F 1 "GND" H 9125 3725 50  0000 C CNN
F 2 "" H 9125 3875 50  0000 C CNN
F 3 "" H 9125 3875 50  0000 C CNN
	1    9125 3875
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 570CD7B6
P 9125 3700
AR Path="/570DBBD4/570CD7B6" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/570CD7B6" Ref="#PWR?"  Part="1" 
AR Path="/57386732/570CD7B6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9125 3550 50  0001 C CNN
F 1 "+3V3" H 9125 3840 50  0000 C CNN
F 2 "" H 9125 3700 50  0000 C CNN
F 3 "" H 9125 3700 50  0000 C CNN
	1    9125 3700
	1    0    0    -1  
$EndComp
Text HLabel 9175 3825 2    60   Input ~ 0
GND
Wire Wire Line
	9175 3825 9125 3825
Wire Wire Line
	9125 3825 9125 3875
Text HLabel 9175 3750 2    60   Input ~ 0
+3V3
Wire Wire Line
	9175 3750 9125 3750
Wire Wire Line
	9125 3750 9125 3700
Text HLabel 9125 4350 2    60   Input ~ 0
coupling
Wire Wire Line
	9125 4350 8900 4350
Text Label 8900 4350 2    60   ~ 0
coupling
Text Label 3775 1700 0    60   ~ 0
coupling
Wire Notes Line
	475  3075 11225 3075
Wire Notes Line
	6975 6525 6975 3075
Wire Wire Line
	9125 4475 8900 4475
Wire Wire Line
	9125 4600 8900 4600
Text Label 8900 4475 2    60   ~ 0
TX1_in
Text Label 8900 4600 2    60   ~ 0
RX1_out
Wire Wire Line
	2000 2175 2000 2200
Wire Wire Line
	2650 2325 2250 2325
Wire Wire Line
	2250 2325 2250 2400
$Comp
L GND #PWR?
U 1 1 5736EC61
P 2000 1975
AR Path="/570DBBD4/5736EC61" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/5736EC61" Ref="#PWR?"  Part="1" 
AR Path="/57386732/5736EC61" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 1725 50  0001 C CNN
F 1 "GND" H 2000 1825 50  0000 C CNN
F 2 "" H 2000 1975 50  0000 C CNN
F 3 "" H 2000 1975 50  0000 C CNN
	1    2000 1975
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1725 2650 1725
Wire Wire Line
	2350 1725 2000 1725
Wire Wire Line
	2000 1725 2000 1975
Connection ~ 2000 1975
$Comp
L R_Small R?
U 1 1 57370AA7
P 1525 1475
AR Path="/570DBBD4/57370AA7" Ref="R?"  Part="1" 
AR Path="/57385F9F/57370AA7" Ref="R?"  Part="1" 
AR Path="/57386732/57370AA7" Ref="R?"  Part="1" 
F 0 "R?" H 1575 1500 50  0000 L CNN
F 1 "100k" H 1575 1425 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1525 1475 50  0001 C CNN
F 3 "" H 1525 1475 50  0000 C CNN
	1    1525 1475
	1    0    0    -1  
$EndComp
Wire Wire Line
	2525 925  2525 1025
Wire Wire Line
	2650 1425 2650 1325
Wire Wire Line
	3875 5425 3875 5325
Connection ~ 3875 5425
Wire Wire Line
	1650 4300 2350 4300
Wire Wire Line
	3300 4925 3350 4925
Wire Wire Line
	3350 4925 3350 5425
Wire Wire Line
	3350 5425 3875 5425
Wire Wire Line
	3575 5075 3575 5025
Wire Wire Line
	3575 5025 3675 5025
$Comp
L +3V3 #PWR?
U 1 1 57377EDC
P 3875 4950
AR Path="/570DBBD4/57377EDC" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/57377EDC" Ref="#PWR?"  Part="1" 
AR Path="/57386732/57377EDC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3875 4800 50  0001 C CNN
F 1 "+3V3" H 3875 5090 50  0000 C CNN
F 2 "" H 3875 4950 50  0000 C CNN
F 3 "" H 3875 4950 50  0000 C CNN
	1    3875 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3875 4950 3875 5025
Connection ~ 3875 5025
$Comp
L GND #PWR?
U 1 1 573799D9
P 3225 5975
AR Path="/570DBBD4/573799D9" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/573799D9" Ref="#PWR?"  Part="1" 
AR Path="/57386732/573799D9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3225 5725 50  0001 C CNN
F 1 "GND" H 3225 5825 50  0000 C CNN
F 2 "" H 3225 5975 50  0000 C CNN
F 3 "" H 3225 5975 50  0000 C CNN
	1    3225 5975
	1    0    0    -1  
$EndComp
Wire Wire Line
	3225 5725 3225 5975
Wire Wire Line
	3225 5975 3575 5975
Connection ~ 3225 5975
$Comp
L GND #PWR?
U 1 1 57379BC4
P 3875 6325
AR Path="/570DBBD4/57379BC4" Ref="#PWR?"  Part="1" 
AR Path="/57385F9F/57379BC4" Ref="#PWR?"  Part="1" 
AR Path="/57386732/57379BC4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3875 6075 50  0001 C CNN
F 1 "GND" H 3875 6175 50  0000 C CNN
F 2 "" H 3875 6325 50  0000 C CNN
F 3 "" H 3875 6325 50  0000 C CNN
	1    3875 6325
	1    0    0    -1  
$EndComp
Wire Wire Line
	2775 6575 3175 6575
Wire Wire Line
	3575 6175 3325 6175
Wire Wire Line
	3325 6175 3325 6325
$Comp
L +3V3 #PWR?
U 1 1 573B0A22
P 1525 1275
AR Path="/57385F9F/573B0A22" Ref="#PWR?"  Part="1" 
AR Path="/570DBBD4/573B0A22" Ref="#PWR?"  Part="1" 
AR Path="/57386732/573B0A22" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1525 1125 50  0001 C CNN
F 1 "+3V3" H 1525 1415 50  0000 C CNN
F 2 "" H 1525 1275 50  0000 C CNN
F 3 "" H 1525 1275 50  0000 C CNN
	1    1525 1275
	1    0    0    -1  
$EndComp
Wire Wire Line
	1525 1275 1525 1375
$EndSCHEMATC
