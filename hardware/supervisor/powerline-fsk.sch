EESchema Schematic File Version 2
LIBS:supervisor-rescue
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
Sheet 2 2
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
P 3225 1875
F 0 "U?" H 2925 2575 60  0000 C CNN
F 1 "CD74HC4046" H 3175 975 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 4025 875 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4046a.pdf" H 4075 975 60  0001 C CNN
	1    3225 1875
	1    0    0    -1  
$EndComp
NoConn ~ 2675 1625
NoConn ~ 3775 1725
NoConn ~ 3775 1425
NoConn ~ 3775 1525
NoConn ~ 3775 1625
$Comp
L C_Small C?
U 1 1 570CCCB3
P 3775 2525
F 0 "C?" H 3785 2595 50  0000 L CNN
F 1 "C_Small" H 3785 2445 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3775 2525 50  0001 C CNN
F 3 "" H 3775 2525 50  0000 C CNN
	1    3775 2525
	1    0    0    -1  
$EndComp
NoConn ~ 3775 2175
$Comp
L C_Small C?
U 1 1 570CCCBB
P 1550 2300
F 0 "C?" H 1560 2370 50  0000 L CNN
F 1 "C_Small" H 1560 2220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1550 2300 50  0001 C CNN
F 3 "" H 1550 2300 50  0000 C CNN
	1    1550 2300
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 570CCCC2
P 1350 2125
F 0 "R?" V 1425 2050 50  0000 L CNN
F 1 "R_Small" V 1275 2050 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1350 2125 50  0001 C CNN
F 3 "" H 1350 2125 50  0000 C CNN
	1    1350 2125
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 570CCCC9
P 2475 2275
F 0 "R?" V 2550 2200 50  0000 L CNN
F 1 "R_Small" V 2400 2200 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2475 2275 50  0001 C CNN
F 3 "" H 2475 2275 50  0000 C CNN
	1    2475 2275
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 570CCCD0
P 2475 2475
F 0 "R?" V 2550 2400 50  0000 L CNN
F 1 "R_Small" V 2400 2400 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2475 2475 50  0001 C CNN
F 3 "" H 2475 2475 50  0000 C CNN
	1    2475 2475
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 570CCCD7
P 2275 1625
F 0 "R?" H 2325 1575 50  0000 L CNN
F 1 "10k" H 2325 1650 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2275 1625 50  0001 C CNN
F 3 "" H 2275 1625 50  0000 C CNN
	1    2275 1625
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 570CCCDE
P 2275 1225
F 0 "#PWR?" H 2275 1075 50  0001 C CNN
F 1 "+3V3" H 2275 1365 50  0000 C CNN
F 2 "" H 2275 1225 50  0000 C CNN
F 3 "" H 2275 1225 50  0000 C CNN
	1    2275 1225
	1    0    0    -1  
$EndComp
Text Notes 4775 3000 0    60   ~ 0
Transmitter
Text Label 950  2125 0    60   ~ 0
TX1_in
$Comp
L POT RV?
U 1 1 570CCCE7
P 2025 2525
F 0 "RV?" H 2025 2425 50  0000 C CNN
F 1 "POT" H 2025 2525 50  0000 C CNN
F 2 "pro4:EVM-1USX30B14" H 2025 2525 50  0001 C CNN
F 3 "" H 2025 2525 50  0000 C CNN
	1    2025 2525
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 570CCCEE
P 1875 2650
F 0 "#PWR?" H 1875 2400 50  0001 C CNN
F 1 "GND" H 1875 2500 50  0000 C CNN
F 2 "" H 1875 2650 50  0000 C CNN
F 3 "" H 1875 2650 50  0000 C CNN
	1    1875 2650
	1    0    0    -1  
$EndComp
NoConn ~ 2025 2775
$Comp
L GND #PWR?
U 1 1 570CCCF5
P 1550 2400
F 0 "#PWR?" H 1550 2150 50  0001 C CNN
F 1 "GND" H 1550 2250 50  0000 C CNN
F 2 "" H 1550 2400 50  0000 C CNN
F 3 "" H 1550 2400 50  0000 C CNN
	1    1550 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 570CCCFB
P 2275 2700
F 0 "#PWR?" H 2275 2450 50  0001 C CNN
F 1 "GND" H 2275 2550 50  0000 C CNN
F 2 "" H 2275 2700 50  0000 C CNN
F 3 "" H 2275 2700 50  0000 C CNN
	1    2275 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 570CCD01
P 2675 1725
F 0 "#PWR?" H 2675 1475 50  0001 C CNN
F 1 "GND" H 2675 1575 50  0000 C CNN
F 2 "" H 2675 1725 50  0000 C CNN
F 3 "" H 2675 1725 50  0000 C CNN
	1    2675 1725
	1    0    0    -1  
$EndComp
Connection ~ 2275 2625
Wire Wire Line
	1875 2525 1875 2650
Wire Wire Line
	2275 2475 2275 2700
Wire Wire Line
	3775 2025 4175 2025
Wire Wire Line
	1450 2125 2675 2125
Wire Wire Line
	2025 2275 2375 2275
Wire Wire Line
	2375 2475 2275 2475
Wire Wire Line
	2275 2625 2675 2625
Wire Wire Line
	1550 2200 1550 2125
Connection ~ 1550 2125
Wire Wire Line
	900  2125 1250 2125
Wire Wire Line
	2675 2275 2575 2275
Wire Wire Line
	2575 2475 2675 2475
Wire Wire Line
	2275 2025 2275 1725
Wire Wire Line
	2275 1225 2275 1525
Connection ~ 2275 1325
Wire Wire Line
	2675 2025 2275 2025
Wire Wire Line
	2275 1325 2675 1325
$Comp
L C_Small C?
U 1 1 570CCD1D
P 2550 1425
F 0 "C?" H 2560 1495 50  0000 L CNN
F 1 "100n" H 2560 1345 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2550 1425 60  0001 C CNN
F 3 "" H 2550 1425 60  0000 C CNN
	1    2550 1425
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1525 2550 1725
Wire Wire Line
	2550 1725 2675 1725
Connection ~ 2550 1325
Connection ~ 2675 1725
Text HLabel 8225 4400 2    60   Input ~ 0
TX1_in
$Comp
L CD74HC4046 U?
U 1 1 570CB558
P 4100 4750
F 0 "U?" H 3800 5450 60  0000 C CNN
F 1 "CD74HC4046" H 4050 3850 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 4900 3750 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4046a.pdf" H 4950 3850 60  0001 C CNN
	1    4100 4750
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 570CB55F
P 5250 5475
F 0 "R?" H 5280 5495 50  0000 L CNN
F 1 "50k" H 5280 5435 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 5250 5475 50  0001 C CNN
F 3 "" H 5250 5475 50  0000 C CNN
	1    5250 5475
	-1   0    0    1   
$EndComp
$Comp
L R_Small JP3.?
U 1 1 570CB566
P 5025 4075
F 0 "JP3.?" H 4775 4125 50  0000 L CNN
F 1 "R_Small" H 4675 4050 50  0001 L CNN
F 2 "Resistors_SMD:R_0603" H 5025 4075 50  0001 C CNN
F 3 "" H 5025 4075 50  0000 C CNN
	1    5025 4075
	-1   0    0    1   
$EndComp
$Comp
L R_Small R?
U 1 1 570CB56D
P 3100 4800
F 0 "R?" H 3130 4820 50  0000 L CNN
F 1 "10k" H 3130 4760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 3100 4800 50  0001 C CNN
F 3 "" H 3100 4800 50  0000 C CNN
	1    3100 4800
	-1   0    0    1   
$EndComp
$Comp
L R_Small R?
U 1 1 570CB574
P 3350 5150
F 0 "R?" V 3425 5075 50  0000 L CNN
F 1 "R_Small" V 3275 5075 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 3350 5150 50  0001 C CNN
F 3 "" H 3350 5150 50  0000 C CNN
	1    3350 5150
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 570CB57B
P 3350 5350
F 0 "R?" V 3425 5275 50  0000 L CNN
F 1 "R_Small" V 3275 5275 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 3350 5350 50  0001 C CNN
F 3 "" H 3350 5350 50  0000 C CNN
	1    3350 5350
	0    1    1    0   
$EndComp
$Comp
L C_Small C?
U 1 1 570CB582
P 4650 5400
F 0 "C?" H 4675 5325 50  0000 L CNN
F 1 "C_Small" H 4675 5475 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4650 5400 50  0001 C CNN
F 3 "" H 4650 5400 50  0000 C CNN
	1    4650 5400
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 570CB589
P 2250 5000
F 0 "R?" V 2175 4850 50  0000 L CNN
F 1 "R_Small" V 2325 4775 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2250 5000 50  0001 C CNN
F 3 "" H 2250 5000 50  0000 C CNN
	1    2250 5000
	0    -1   -1   0   
$EndComp
Text Label 2150 5000 2    60   ~ 0
VCOin
Text Label 5025 3825 2    60   ~ 0
VCOin
Text Label 4925 4900 2    60   ~ 0
JP2
Text Label 3550 4500 2    60   ~ 0
JP2
$Comp
L R_Small JP3.?
U 1 1 570CB594
P 5400 4075
F 0 "JP3.?" H 5450 4025 50  0000 L CNN
F 1 "R_Small" H 5450 4100 50  0001 L CNN
F 2 "Resistors_SMD:R_0603" H 5400 4075 50  0001 C CNN
F 3 "" H 5400 4075 50  0000 C CNN
	1    5400 4075
	1    0    0    -1  
$EndComp
$Comp
L R_Small JP3.?
U 1 1 570CB59B
P 5775 4075
F 0 "JP3.?" H 5825 4025 50  0000 L CNN
F 1 "R_Small" H 5825 4100 50  0001 L CNN
F 2 "Resistors_SMD:R_0603" H 5775 4075 50  0001 C CNN
F 3 "" H 5775 4075 50  0000 C CNN
	1    5775 4075
	1    0    0    -1  
$EndComp
NoConn ~ 4650 4600
$Comp
L C_Small C?
U 1 1 570CB5A3
P 2450 5250
F 0 "C?" H 2475 5175 50  0000 L CNN
F 1 "C_Small" H 2475 5325 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2450 5250 50  0001 C CNN
F 3 "" H 2450 5250 50  0000 C CNN
	1    2450 5250
	1    0    0    -1  
$EndComp
Text Notes 6200 6250 0    60   ~ 0
Reciever
Text Label 800  4625 0    60   ~ 0
coupling
$Comp
L POT RV?
U 1 1 570CB5AC
P 2950 5400
F 0 "RV?" H 2950 5300 50  0000 C CNN
F 1 "POT" H 2950 5400 50  0000 C CNN
F 2 "pro4:EVM-1USX30B14" H 2950 5400 50  0001 C CNN
F 3 "" H 2950 5400 50  0000 C CNN
	1    2950 5400
	0    -1   -1   0   
$EndComp
NoConn ~ 2950 5650
Text Label 5100 5050 0    60   ~ 0
RX1_out
$Comp
L OPA376AIDCK U?
U 1 1 570CB5B5
P 2125 4100
F 0 "U?" H 2125 4300 50  0000 C CNN
F 1 "OPA376AIDCK" H 2325 3900 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SC-70-6" H 2075 3800 50  0000 L CNN
F 3 "" H 2175 4300 50  0000 C CNN
	1    2125 4100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 570CB5BC
P 1850 3625
F 0 "C?" V 1975 3600 50  0000 L CNN
F 1 "0.1u" V 1750 3525 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1850 3625 50  0001 C CNN
F 3 "" H 1850 3625 50  0000 C CNN
	1    1850 3625
	0    1    1    0   
$EndComp
$Comp
L C_Small C?
U 1 1 570CB5C3
P 2200 3625
F 0 "C?" V 2325 3600 50  0000 L CNN
F 1 "1u" V 2100 3575 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2200 3625 50  0001 C CNN
F 3 "" H 2200 3625 50  0000 C CNN
	1    2200 3625
	0    1    1    0   
$EndComp
$Comp
L C_Small C?
U 1 1 570CB5CA
P 1100 4000
F 0 "C?" V 1050 4025 50  0000 L CNN
F 1 "C_Small" V 1150 3675 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1100 4000 50  0001 C CNN
F 3 "" H 1100 4000 50  0000 C CNN
	1    1100 4000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 570CB5D1
P 1750 3750
F 0 "#PWR?" H 1750 3500 50  0001 C CNN
F 1 "GND" H 1750 3600 50  0000 C CNN
F 2 "" H 1750 3750 50  0000 C CNN
F 3 "" H 1750 3750 50  0000 C CNN
	1    1750 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 570CB5D7
P 2300 3750
F 0 "#PWR?" H 2300 3500 50  0001 C CNN
F 1 "GND" H 2300 3600 50  0000 C CNN
F 2 "" H 2300 3750 50  0000 C CNN
F 3 "" H 2300 3750 50  0000 C CNN
	1    2300 3750
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 570CB5DD
P 1325 3700
F 0 "R?" H 1200 3725 50  0000 L CNN
F 1 "100k" H 1100 3650 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1325 3700 50  0001 C CNN
F 3 "" H 1325 3700 50  0000 C CNN
	1    1325 3700
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 570CB5E4
P 1325 4300
F 0 "R?" H 1200 4325 50  0000 L CNN
F 1 "100k" H 1100 4250 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1325 4300 50  0001 C CNN
F 3 "" H 1325 4300 50  0000 C CNN
	1    1325 4300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 570CB5EB
P 2875 4100
F 0 "C?" V 2825 4150 50  0000 L CNN
F 1 "C_Small" V 2825 3775 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2875 4100 50  0001 C CNN
F 3 "" H 2875 4100 50  0000 C CNN
	1    2875 4100
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 570CB5F2
P 2400 4600
F 0 "R?" V 2475 4525 50  0000 L CNN
F 1 "R_Small" V 2325 4525 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2400 4600 50  0001 C CNN
F 3 "" H 2400 4600 50  0000 C CNN
	1    2400 4600
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 570CB5F9
P 1650 4725
F 0 "R?" H 1680 4745 50  0000 L CNN
F 1 "R_Small" H 1680 4685 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1650 4725 50  0001 C CNN
F 3 "" H 1650 4725 50  0000 C CNN
	1    1650 4725
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 570CB600
P 1325 4400
F 0 "#PWR?" H 1325 4150 50  0001 C CNN
F 1 "GND" H 1325 4250 50  0000 C CNN
F 2 "" H 1325 4400 50  0000 C CNN
F 3 "" H 1325 4400 50  0000 C CNN
	1    1325 4400
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 570CB606
P 2025 3475
F 0 "#PWR?" H 2025 3325 50  0001 C CNN
F 1 "+3V3" H 2025 3615 50  0000 C CNN
F 2 "" H 2025 3475 50  0000 C CNN
F 3 "" H 2025 3475 50  0000 C CNN
	1    2025 3475
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 570CB60C
P 2025 4400
F 0 "#PWR?" H 2025 4150 50  0001 C CNN
F 1 "GND" H 2025 4250 50  0000 C CNN
F 2 "" H 2025 4400 50  0000 C CNN
F 3 "" H 2025 4400 50  0000 C CNN
	1    2025 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 570CB612
P 1650 5225
F 0 "#PWR?" H 1650 4975 50  0001 C CNN
F 1 "GND" H 1650 5075 50  0000 C CNN
F 2 "" H 1650 5225 50  0000 C CNN
F 3 "" H 1650 5225 50  0000 C CNN
	1    1650 5225
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 570CB618
P 1650 5025
F 0 "C?" H 1660 5095 50  0000 L CNN
F 1 "C_Small" H 1660 4945 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1650 5025 50  0001 C CNN
F 3 "" H 1650 5025 50  0000 C CNN
	1    1650 5025
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 570CB61F
P 700 4000
F 0 "#PWR?" H 700 3750 50  0001 C CNN
F 1 "GND" H 700 3850 50  0000 C CNN
F 2 "" H 700 4000 50  0000 C CNN
F 3 "" H 700 4000 50  0000 C CNN
	1    700  4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 570CB625
P 5250 5800
F 0 "#PWR?" H 5250 5550 50  0001 C CNN
F 1 "GND" H 5250 5650 50  0000 C CNN
F 2 "" H 5250 5800 50  0000 C CNN
F 3 "" H 5250 5800 50  0000 C CNN
	1    5250 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 570CB62B
P 3100 5800
F 0 "#PWR?" H 3100 5550 50  0001 C CNN
F 1 "GND" H 3100 5650 50  0000 C CNN
F 2 "" H 3100 5800 50  0000 C CNN
F 3 "" H 3100 5800 50  0000 C CNN
	1    3100 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2425 4100 2775 4100
Connection ~ 1325 4000
Wire Wire Line
	1325 3800 1325 4200
Wire Wire Line
	2300 3625 2300 3750
Connection ~ 2025 3625
Wire Wire Line
	1950 3625 2100 3625
Wire Wire Line
	1750 3625 1750 3750
Wire Wire Line
	1000 4000 700  4000
Wire Wire Line
	3250 4100 3250 4600
Wire Wire Line
	3250 4600 3550 4600
Connection ~ 2800 5725
Connection ~ 3100 5725
Wire Wire Line
	3100 5725 2450 5725
Wire Wire Line
	2800 5400 2800 5725
Connection ~ 3100 5500
Wire Wire Line
	3550 5500 3100 5500
Wire Wire Line
	3100 5350 3100 5800
Wire Wire Line
	3100 4200 3550 4200
Wire Wire Line
	3100 3475 3100 4700
Wire Wire Line
	5250 5575 5250 5800
Wire Wire Line
	3550 4900 3100 4900
Connection ~ 3100 4200
Wire Wire Line
	4650 5050 5400 5050
Wire Wire Line
	5250 5050 5250 5375
Connection ~ 5250 5050
Wire Wire Line
	3550 5150 3450 5150
Wire Wire Line
	3450 5350 3550 5350
Wire Wire Line
	2950 5150 3250 5150
Wire Wire Line
	3250 5350 3100 5350
Wire Wire Line
	4650 4900 4925 4900
Wire Wire Line
	5025 3825 5025 3975
Wire Wire Line
	5025 4175 5025 4300
Wire Wire Line
	5025 4300 4650 4300
Wire Wire Line
	5400 4175 5400 4500
Wire Wire Line
	5400 4500 4650 4500
Wire Wire Line
	5775 4175 5775 4400
Wire Wire Line
	5775 4400 4650 4400
Wire Wire Line
	2350 5000 3550 5000
Wire Wire Line
	5025 3900 5775 3900
Wire Wire Line
	5775 3900 5775 3975
Connection ~ 5025 3900
Wire Wire Line
	5400 3975 5400 3900
Connection ~ 5400 3900
Wire Wire Line
	2450 5150 2450 5000
Connection ~ 2450 5000
Wire Wire Line
	2450 5725 2450 5350
Wire Wire Line
	3250 4100 2975 4100
Wire Wire Line
	2500 4600 2700 4600
Wire Wire Line
	2700 4600 2700 4100
Connection ~ 2700 4100
Wire Wire Line
	2300 4600 1650 4600
Wire Wire Line
	1650 4200 1650 4625
Wire Wire Line
	1825 4200 1650 4200
Connection ~ 1650 4600
Wire Wire Line
	1500 4625 800  4625
Wire Wire Line
	1200 4000 1825 4000
Connection ~ 1500 4000
Wire Wire Line
	1500 4000 1500 4625
Wire Wire Line
	1650 4825 1650 4925
Wire Wire Line
	1650 5125 1650 5225
Wire Wire Line
	2025 3475 2025 3800
Wire Wire Line
	1325 3475 3100 3475
Wire Wire Line
	1325 3475 1325 3600
Connection ~ 2025 3475
$Comp
L C_Small C?
U 1 1 570CB671
P 3450 4100
F 0 "C?" H 3460 4170 50  0000 L CNN
F 1 "100n" H 3460 4020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3450 4100 60  0001 C CNN
F 3 "" H 3450 4100 60  0000 C CNN
	1    3450 4100
	-1   0    0    1   
$EndComp
Connection ~ 3450 4200
$Comp
L GND #PWR?
U 1 1 570CB679
P 3600 4000
F 0 "#PWR?" H 3600 3750 50  0001 C CNN
F 1 "GND" H 3600 3850 50  0000 C CNN
F 2 "" H 3600 4000 60  0000 C CNN
F 3 "" H 3600 4000 60  0000 C CNN
	1    3600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4000 3450 4000
Wire Wire Line
	2950 5250 2950 5150
Wire Wire Line
	2025 2375 2025 2275
Text HLabel 8225 4525 2    60   Input ~ 0
RX1_out
$Comp
L GND #PWR?
U 1 1 570CD762
P 8225 3800
F 0 "#PWR?" H 8225 3550 50  0001 C CNN
F 1 "GND" H 8225 3650 50  0000 C CNN
F 2 "" H 8225 3800 50  0000 C CNN
F 3 "" H 8225 3800 50  0000 C CNN
	1    8225 3800
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 570CD7B6
P 8225 3625
F 0 "#PWR?" H 8225 3475 50  0001 C CNN
F 1 "+3V3" H 8225 3765 50  0000 C CNN
F 2 "" H 8225 3625 50  0000 C CNN
F 3 "" H 8225 3625 50  0000 C CNN
	1    8225 3625
	1    0    0    -1  
$EndComp
Text HLabel 8275 3750 2    60   Input ~ 0
GND
Wire Wire Line
	8275 3750 8225 3750
Wire Wire Line
	8225 3750 8225 3800
Text HLabel 8275 3675 2    60   Input ~ 0
+3V3
Wire Wire Line
	8275 3675 8225 3675
Wire Wire Line
	8225 3675 8225 3625
Text HLabel 8225 4275 2    60   Input ~ 0
coupling
Wire Wire Line
	8225 4275 8000 4275
Text Label 8000 4275 2    60   ~ 0
coupling
Text Label 4175 2025 0    60   ~ 0
coupling
Wire Notes Line
	475  3075 11225 3075
Wire Notes Line
	6975 6525 6975 3075
Wire Wire Line
	8225 4400 8000 4400
Wire Wire Line
	8225 4525 8000 4525
Text Label 8000 4400 2    60   ~ 0
TX1_in
Text Label 8000 4525 2    60   ~ 0
RX1_out
$EndSCHEMATC
