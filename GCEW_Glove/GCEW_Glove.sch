EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:myLib
LIBS:GCEW_Glove-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Gesture Controlled Wheelchair Wireless Glove"
Date "2018-09-28"
Rev "V1.0"
Comp "By: Simon Wilson"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA328PB-AU U3
U 1 1 5BAFAB2A
P 6480 3380
F 0 "U3" H 6080 4855 50  0000 R BNN
F 1 "ATMEGA328PB-AU" H 6080 4780 50  0000 R BNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 6430 1980 50  0001 L CIN
F 3 "" H 6180 3430 50  0001 C CNN
	1    6480 3380
	1    0    0    -1  
$EndComp
$Comp
L 1S_LiPo BT1
U 1 1 5BAFAC06
P 1220 2250
F 0 "BT1" H 1070 2490 60  0000 C CNN
F 1 "1S_LiPo" H 1440 2490 60  0000 C CNN
F 2 "" H 1220 2250 60  0001 C CNN
F 3 "" H 1220 2250 60  0001 C CNN
	1    1220 2250
	1    0    0    -1  
$EndComp
$Comp
L TLV809-DBV U1
U 1 1 5BAFAE1D
P 2440 2350
F 0 "U1" H 2290 2660 60  0000 C CNN
F 1 "TLV809-DBV" H 2760 2660 60  0000 C CNN
F 2 "" H 2440 2350 60  0001 C CNN
F 3 "" H 2440 2350 60  0001 C CNN
	1    2440 2350
	1    0    0    -1  
$EndComp
$Comp
L HC-05_BluetoothModule U4
U 1 1 5BAFB2E3
P 8900 2350
F 0 "U4" H 8680 2740 60  0000 C CNN
F 1 "HC-05_BluetoothModule" H 9470 2750 60  0000 C CNN
F 2 "" H 8900 2350 60  0001 C CNN
F 3 "" H 8900 2350 60  0001 C CNN
	1    8900 2350
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 5BAF9913
P 4480 2600
F 0 "L1" V 4430 2600 50  0000 C CNN
F 1 "2.2uH" V 4555 2600 50  0000 C CNN
F 2 "" H 4480 2600 50  0001 C CNN
F 3 "" H 4480 2600 50  0001 C CNN
	1    4480 2600
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5BAF9F3F
P 2040 2360
F 0 "C1" H 2065 2460 50  0000 L CNN
F 1 "0.1uF 25V" V 1900 2150 50  0000 L CNN
F 2 "" H 2078 2210 50  0001 C CNN
F 3 "" H 2040 2360 50  0001 C CNN
	1    2040 2360
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5BAFC1FD
P 780 3400
F 0 "#PWR01" H 780 3150 50  0001 C CNN
F 1 "GND" H 780 3250 50  0000 C CNN
F 2 "" H 780 3400 50  0001 C CNN
F 3 "" H 780 3400 50  0001 C CNN
	1    780  3400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 5BAFCB03
P 1220 1850
F 0 "#PWR02" H 1220 1700 50  0001 C CNN
F 1 "VCC" H 1220 2000 50  0000 C CNN
F 2 "" H 1220 1850 50  0001 C CNN
F 3 "" H 1220 1850 50  0001 C CNN
	1    1220 1850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 5BAFCE89
P 2440 1840
F 0 "#PWR03" H 2440 1690 50  0001 C CNN
F 1 "VCC" H 2440 1990 50  0000 C CNN
F 2 "" H 2440 1840 50  0001 C CNN
F 3 "" H 2440 1840 50  0001 C CNN
	1    2440 1840
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5BAFD33D
P 2440 2870
F 0 "#PWR04" H 2440 2620 50  0001 C CNN
F 1 "GND" H 2440 2720 50  0000 C CNN
F 2 "" H 2440 2870 50  0001 C CNN
F 3 "" H 2440 2870 50  0001 C CNN
	1    2440 2870
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5BAFFA8D
P 8900 2970
F 0 "#PWR05" H 8900 2720 50  0001 C CNN
F 1 "GND" H 8900 2820 50  0000 C CNN
F 2 "" H 8900 2970 50  0001 C CNN
F 3 "" H 8900 2970 50  0001 C CNN
	1    8900 2970
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5BAFFC45
P 6340 5000
F 0 "#PWR06" H 6340 4750 50  0001 C CNN
F 1 "GND" H 6340 4850 50  0000 C CNN
F 2 "" H 6340 5000 50  0001 C CNN
F 3 "" H 6340 5000 50  0001 C CNN
	1    6340 5000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 5BB01298
P 3800 1650
F 0 "#PWR07" H 3800 1500 50  0001 C CNN
F 1 "VCC" H 3800 1800 50  0000 C CNN
F 2 "" H 3800 1650 50  0001 C CNN
F 3 "" H 3800 1650 50  0001 C CNN
	1    3800 1650
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5BB01EB1
P 4730 2540
F 0 "C4" H 4630 2680 50  0000 L CNN
F 1 "22uF 25V" V 4860 2350 50  0000 L CNN
F 2 "" H 4768 2390 50  0001 C CNN
F 3 "" H 4730 2540 50  0001 C CNN
	1    4730 2540
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5BB0211E
P 4730 2870
F 0 "#PWR08" H 4730 2620 50  0001 C CNN
F 1 "GND" H 4730 2720 50  0000 C CNN
F 2 "" H 4730 2870 50  0001 C CNN
F 3 "" H 4730 2870 50  0001 C CNN
	1    4730 2870
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 5BB02580
P 4730 2240
F 0 "#PWR09" H 4730 2090 50  0001 C CNN
F 1 "+3.3V" H 4730 2380 50  0000 C CNN
F 2 "" H 4730 2240 50  0001 C CNN
F 3 "" H 4730 2240 50  0001 C CNN
	1    4730 2240
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR010
U 1 1 5BB02958
P 6180 1690
F 0 "#PWR010" H 6180 1540 50  0001 C CNN
F 1 "+3.3V" H 6180 1830 50  0000 C CNN
F 2 "" H 6180 1690 50  0001 C CNN
F 3 "" H 6180 1690 50  0001 C CNN
	1    6180 1690
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR011
U 1 1 5BB02AB1
P 8900 1670
F 0 "#PWR011" H 8900 1520 50  0001 C CNN
F 1 "+3.3V" H 8900 1810 50  0000 C CNN
F 2 "" H 8900 1670 50  0001 C CNN
F 3 "" H 8900 1670 50  0001 C CNN
	1    8900 1670
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5BB03314
P 3700 3220
F 0 "#PWR012" H 3700 2970 50  0001 C CNN
F 1 "GND" H 3700 3070 50  0000 C CNN
F 2 "" H 3700 3220 50  0001 C CNN
F 3 "" H 3700 3220 50  0001 C CNN
	1    3700 3220
	1    0    0    -1  
$EndComp
$Comp
L GNDS #PWR013
U 1 1 5BB0346F
P 3950 3200
F 0 "#PWR013" H 3950 2950 50  0001 C CNN
F 1 "GNDS" H 3950 3050 50  0000 C CNN
F 2 "" H 3950 3200 50  0001 C CNN
F 3 "" H 3950 3200 50  0001 C CNN
	1    3950 3200
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5BB06120
P 4310 1650
F 0 "C3" V 4270 1710 50  0000 L CNN
F 1 "10uF 35V" V 4160 1520 50  0000 L CNN
F 2 "" H 4348 1500 50  0001 C CNN
F 3 "" H 4310 1650 50  0001 C CNN
	1    4310 1650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR014
U 1 1 5BB0639F
P 4570 1650
F 0 "#PWR014" H 4570 1400 50  0001 C CNN
F 1 "GND" H 4570 1500 50  0000 C CNN
F 2 "" H 4570 1650 50  0001 C CNN
F 3 "" H 4570 1650 50  0001 C CNN
	1    4570 1650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR015
U 1 1 5BB074E6
P 3150 2710
F 0 "#PWR015" H 3150 2560 50  0001 C CNN
F 1 "VCC" H 3150 2860 50  0000 C CNN
F 2 "" H 3150 2710 50  0001 C CNN
F 3 "" H 3150 2710 50  0001 C CNN
	1    3150 2710
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR016
U 1 1 5BB0753E
P 3000 2450
F 0 "#PWR016" H 3000 2200 50  0001 C CNN
F 1 "GND" H 3000 2300 50  0000 C CNN
F 2 "" H 3000 2450 50  0001 C CNN
F 3 "" H 3000 2450 50  0001 C CNN
	1    3000 2450
	1    0    0    -1  
$EndComp
NoConn ~ 9360 2250
Text GLabel 9360 2350 2    50   Output ~ 0
HC-05_TX
Text GLabel 7780 3880 2    50   Input ~ 0
HC-05_TX
Text GLabel 7780 3980 2    50   Input ~ 0
HC-05_RX
Text GLabel 8440 2350 0    50   Input ~ 0
HC-05_RX
NoConn ~ 7780 2180
NoConn ~ 7780 2280
NoConn ~ 7780 2380
NoConn ~ 7780 2780
NoConn ~ 7780 2880
NoConn ~ 5180 4280
NoConn ~ 7780 3580
NoConn ~ 7780 3180
$Comp
L C C6
U 1 1 5BB4A4F4
P 6690 1740
F 0 "C6" V 6630 1810 50  0000 L CNN
F 1 "0.1uF 25V" V 6510 1590 50  0000 L CNN
F 2 "" H 6728 1590 50  0001 C CNN
F 3 "" H 6690 1740 50  0001 C CNN
	1    6690 1740
	0    1    1    0   
$EndComp
$Comp
L GND #PWR017
U 1 1 5BB4A5B9
P 6960 1740
F 0 "#PWR017" H 6960 1490 50  0001 C CNN
F 1 "GND" H 6960 1590 50  0000 C CNN
F 2 "" H 6960 1740 50  0001 C CNN
F 3 "" H 6960 1740 50  0001 C CNN
	1    6960 1740
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5BB4B308
P 9180 1680
F 0 "C7" V 9120 1750 50  0000 L CNN
F 1 "0.1uF 25V" V 9030 1750 50  0000 L CNN
F 2 "" H 9218 1530 50  0001 C CNN
F 3 "" H 9180 1680 50  0001 C CNN
	1    9180 1680
	0    1    1    0   
$EndComp
$Comp
L GND #PWR018
U 1 1 5BB4B668
P 9410 1680
F 0 "#PWR018" H 9410 1430 50  0001 C CNN
F 1 "GND" H 9410 1530 50  0000 C CNN
F 2 "" H 9410 1680 50  0001 C CNN
F 3 "" H 9410 1680 50  0001 C CNN
	1    9410 1680
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5BB4BF1E
P 4310 1320
F 0 "C2" V 4250 1370 50  0000 L CNN
F 1 "0.1uF 25V" V 4160 1180 50  0000 L CNN
F 2 "" H 4348 1170 50  0001 C CNN
F 3 "" H 4310 1320 50  0001 C CNN
	1    4310 1320
	0    1    1    0   
$EndComp
$Comp
L Conn_01x06 J1
U 1 1 5BB4DAD3
P 10660 3490
F 0 "J1" H 10660 3790 50  0000 C CNN
F 1 "Programmer" H 10660 3090 50  0000 C CNN
F 2 "" H 10660 3490 50  0001 C CNN
F 3 "" H 10660 3490 50  0001 C CNN
	1    10660 3490
	1    0    0    -1  
$EndComp
Text GLabel 10460 3290 0    50   Input ~ 0
VTG
Text GLabel 10460 3790 0    50   Input ~ 0
GND
Text GLabel 7780 3680 2    50   Input ~ 0
~RESET
Text GLabel 7780 2680 2    50   Input ~ 0
SCK
Text GLabel 7780 2580 2    50   Input ~ 0
MISO
Text GLabel 7780 2480 2    50   Input ~ 0
MOSI
$Comp
L +3.3V #PWR019
U 1 1 5BB4EFC5
P 10340 880
F 0 "#PWR019" H 10340 730 50  0001 C CNN
F 1 "+3.3V" H 10340 1020 50  0000 C CNN
F 2 "" H 10340 880 50  0001 C CNN
F 3 "" H 10340 880 50  0001 C CNN
	1    10340 880 
	1    0    0    -1  
$EndComp
Text GLabel 10340 880  3    50   Input ~ 0
VTG
$Comp
L GND #PWR020
U 1 1 5BB4F0EB
P 10580 910
F 0 "#PWR020" H 10580 660 50  0001 C CNN
F 1 "GND" H 10580 760 50  0000 C CNN
F 2 "" H 10580 910 50  0001 C CNN
F 3 "" H 10580 910 50  0001 C CNN
	1    10580 910 
	1    0    0    -1  
$EndComp
Text GLabel 10580 910  1    50   Input ~ 0
GND
Text GLabel 10460 3390 0    50   Input ~ 0
MOSI
Text GLabel 10460 3490 0    50   Input ~ 0
MISO
Text GLabel 10460 3590 0    50   Input ~ 0
SCK
Text GLabel 10460 3690 0    50   Input ~ 0
~RESET
$Comp
L R R7
U 1 1 5BB50B87
P 9820 4640
F 0 "R7" V 9740 4640 50  0000 C CNN
F 1 "R" V 9820 4640 50  0000 C CNN
F 2 "" V 9750 4640 50  0001 C CNN
F 3 "" H 9820 4640 50  0001 C CNN
	1    9820 4640
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5BB50CD0
P 9830 4840
F 0 "R8" V 9750 4830 50  0000 C CNN
F 1 "R" V 9830 4840 50  0000 C CNN
F 2 "" V 9760 4840 50  0001 C CNN
F 3 "" H 9830 4840 50  0001 C CNN
	1    9830 4840
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 5BB51087
P 9840 5040
F 0 "R9" V 9760 5030 50  0000 C CNN
F 1 "R" V 9840 5040 50  0000 C CNN
F 2 "" V 9770 5040 50  0001 C CNN
F 3 "" H 9840 5040 50  0001 C CNN
	1    9840 5040
	0    1    1    0   
$EndComp
$Comp
L Conn_01x06 J2
U 1 1 5BB51497
P 10660 4740
F 0 "J2" H 10660 5040 50  0000 C CNN
F 1 "Flex_Sensor_Inputs" H 10390 4340 50  0000 C CNN
F 2 "" H 10660 4740 50  0001 C CNN
F 3 "" H 10660 4740 50  0001 C CNN
	1    10660 4740
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 5BB522FB
P 9600 5180
F 0 "#PWR021" H 9600 4930 50  0001 C CNN
F 1 "GND" H 9600 5030 50  0000 C CNN
F 2 "" H 9600 5180 50  0001 C CNN
F 3 "" H 9600 5180 50  0001 C CNN
	1    9600 5180
	1    0    0    -1  
$EndComp
Text GLabel 10460 4740 0    50   Input ~ 0
+3.3V
Text GLabel 10170 880  3    50   Input ~ 0
+3.3V
Text GLabel 10460 4940 0    50   Input ~ 0
+3.3V
Text GLabel 10460 4540 0    50   Input ~ 0
+3.3V
Text GLabel 7780 3280 2    50   Input ~ 0
Flex_1
Text GLabel 7780 3380 2    50   Input ~ 0
Flex_2
Text GLabel 7780 3480 2    50   Input ~ 0
Flex_3
Text GLabel 9960 4130 0    50   Input ~ 0
Flex_1
Text GLabel 9960 4250 0    50   Input ~ 0
Flex_2
Text GLabel 9960 4370 0    50   Input ~ 0
Flex_3
$Comp
L GND #PWR022
U 1 1 5BB5867F
P 5180 2850
F 0 "#PWR022" H 5180 2600 50  0001 C CNN
F 1 "GND" H 5180 2700 50  0000 C CNN
F 2 "" H 5180 2850 50  0001 C CNN
F 3 "" H 5180 2850 50  0001 C CNN
	1    5180 2850
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5BB586F2
P 5180 2660
F 0 "C5" H 5205 2760 50  0000 L CNN
F 1 "0.1uF 25V" V 5060 2440 50  0000 L CNN
F 2 "" H 5218 2510 50  0001 C CNN
F 3 "" H 5180 2660 50  0001 C CNN
	1    5180 2660
	1    0    0    -1  
$EndComp
$Comp
L SW_SPDT SW1
U 1 1 5BB5E8F8
P 1320 2860
F 0 "SW1" H 1320 3030 50  0000 C CNN
F 1 "SW_SPDT" H 1320 2660 50  0000 C CNN
F 2 "" H 1320 2860 50  0001 C CNN
F 3 "" H 1320 2860 50  0001 C CNN
	1    1320 2860
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2040 2210 2040 1900
Wire Wire Line
	2040 1900 2440 1900
Wire Wire Line
	2040 2510 2040 2800
Wire Wire Line
	2440 1900 2440 1840
Wire Wire Line
	8900 2900 8900 2970
Wire Wire Line
	4350 2450 4480 2450
Wire Wire Line
	4350 2550 4350 2750
Wire Wire Line
	4350 2750 4480 2750
Wire Wire Line
	6380 5000 6380 4880
Wire Wire Line
	6280 5000 6380 5000
Wire Wire Line
	6280 5000 6280 4880
Connection ~ 6340 5000
Wire Wire Line
	4350 2350 4730 2350
Wire Wire Line
	4730 2240 4730 2390
Wire Wire Line
	4730 2870 4730 2690
Connection ~ 4730 2350
Wire Wire Line
	4350 2200 4350 2350
Wire Wire Line
	6180 1880 6180 1690
Wire Wire Line
	8900 1670 8900 1800
Wire Wire Line
	2980 2350 3150 2350
Wire Wire Line
	3700 3150 4050 3150
Wire Wire Line
	4050 3150 4050 3050
Connection ~ 3700 3150
Wire Wire Line
	4570 1650 4460 1650
Wire Wire Line
	3150 2550 3150 2710
Wire Wire Line
	3150 2450 3000 2450
Wire Wire Line
	6380 1880 6180 1880
Wire Wire Line
	6380 1880 6380 1740
Wire Wire Line
	6380 1740 6540 1740
Wire Wire Line
	9030 1680 8900 1680
Connection ~ 8900 1680
Wire Wire Line
	4570 1650 4570 1320
Wire Wire Line
	4570 1320 4460 1320
Wire Wire Line
	3700 1650 4160 1650
Wire Wire Line
	3800 1650 3800 1850
Wire Wire Line
	3700 1850 3700 1650
Connection ~ 3800 1650
Wire Wire Line
	4160 1650 4160 1320
Wire Wire Line
	9970 4640 10460 4640
Wire Wire Line
	9670 4640 9600 4640
Wire Wire Line
	9600 4640 9600 5180
Wire Wire Line
	9980 4840 10460 4840
Wire Wire Line
	9680 4840 9600 4840
Connection ~ 9600 4840
Wire Wire Line
	9990 5040 10460 5040
Wire Wire Line
	9690 5040 9600 5040
Connection ~ 9600 5040
Wire Wire Line
	10340 880  10170 880 
Wire Wire Line
	10010 5040 10010 4370
Wire Wire Line
	10010 4370 9960 4370
Connection ~ 10010 5040
Wire Wire Line
	10070 4840 10070 4250
Wire Wire Line
	10070 4250 9960 4250
Connection ~ 10070 4840
Wire Wire Line
	10130 4640 10130 4130
Wire Wire Line
	10130 4130 9960 4130
Connection ~ 10130 4640
Wire Wire Line
	5180 2510 5180 2480
Wire Wire Line
	1220 1900 1220 1850
Wire Wire Line
	5180 2850 5180 2810
Wire Wire Line
	6960 1740 6840 1740
Wire Wire Line
	3800 3050 3800 3150
Connection ~ 3800 3150
$Comp
L LM3668 U2
U 1 1 5BAFAEC6
P 3750 2450
F 0 "U2" H 3400 2920 60  0000 C CNN
F 1 "LM3668" H 4030 2920 60  0000 C CNN
F 2 "" H 3750 2450 60  0001 C CNN
F 3 "" H 3750 2450 60  0001 C CNN
	1    3750 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3050 3700 3220
Wire Wire Line
	9410 1680 9330 1680
Wire Wire Line
	3950 3050 3950 3200
Connection ~ 3950 3150
Wire Wire Line
	2440 2800 2440 2870
Wire Wire Line
	2040 2800 2440 2800
Connection ~ 2440 2800
$Comp
L GND #PWR023
U 1 1 5BB63D40
P 1320 3120
F 0 "#PWR023" H 1320 2870 50  0001 C CNN
F 1 "GND" H 1320 2970 50  0000 C CNN
F 2 "" H 1320 3120 50  0001 C CNN
F 3 "" H 1320 3120 50  0001 C CNN
	1    1320 3120
	1    0    0    -1  
$EndComp
Wire Wire Line
	1320 3060 1320 3120
Wire Wire Line
	1220 2660 1220 2600
NoConn ~ 1420 2660
$Comp
L PWR_FLAG #FLG024
U 1 1 5BB64A45
P 780 3320
F 0 "#FLG024" H 780 3395 50  0001 C CNN
F 1 "PWR_FLAG" H 780 3470 50  0000 C CNN
F 2 "" H 780 3320 50  0001 C CNN
F 3 "" H 780 3320 50  0001 C CNN
	1    780  3320
	1    0    0    -1  
$EndComp
Wire Wire Line
	780  3320 780  3400
$Comp
L SW_Push SW2
U 1 1 5BB65AF1
P 7780 4920
F 0 "SW2" H 7830 5020 50  0000 L CNN
F 1 "SW_Push" H 7780 4860 50  0000 C CNN
F 2 "" H 7780 5120 50  0001 C CNN
F 3 "" H 7780 5120 50  0001 C CNN
	1    7780 4920
	0    1    1    0   
$EndComp
$Comp
L GND #PWR025
U 1 1 5BB6615B
P 7780 5180
F 0 "#PWR025" H 7780 4930 50  0001 C CNN
F 1 "GND" H 7780 5030 50  0000 C CNN
F 2 "" H 7780 5180 50  0001 C CNN
F 3 "" H 7780 5180 50  0001 C CNN
	1    7780 5180
	1    0    0    -1  
$EndComp
Wire Wire Line
	7780 5120 7780 5180
$Comp
L LED_ARGB D1
U 1 1 5BB4F51C
P 4380 4180
F 0 "D1" H 4380 4550 50  0000 C CNN
F 1 "LED_ARGB" H 4380 3830 50  0000 C CNN
F 2 "" H 4380 4130 50  0001 C CNN
F 3 "" H 4380 4130 50  0001 C CNN
	1    4380 4180
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 5BB4FBBA
P 4790 3980
F 0 "R1" V 4870 3980 50  0000 C CNN
F 1 "R" V 4790 3980 50  0000 C CNN
F 2 "" V 4720 3980 50  0001 C CNN
F 3 "" H 4790 3980 50  0001 C CNN
	1    4790 3980
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5BB4FC6B
P 4790 4180
F 0 "R2" V 4870 4180 50  0000 C CNN
F 1 "R" V 4790 4180 50  0000 C CNN
F 2 "" V 4720 4180 50  0001 C CNN
F 3 "" H 4790 4180 50  0001 C CNN
	1    4790 4180
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5BB4FCC8
P 4790 4380
F 0 "R3" V 4870 4380 50  0000 C CNN
F 1 "R" V 4790 4380 50  0000 C CNN
F 2 "" V 4720 4380 50  0001 C CNN
F 3 "" H 4790 4380 50  0001 C CNN
	1    4790 4380
	0    1    1    0   
$EndComp
Wire Wire Line
	4640 3980 4580 3980
Wire Wire Line
	4940 3980 5180 3980
Wire Wire Line
	4640 4180 4580 4180
Wire Wire Line
	4580 4380 4640 4380
Wire Wire Line
	4940 4380 5090 4380
Wire Wire Line
	5090 4380 5090 4180
Wire Wire Line
	5090 4180 5180 4180
Wire Wire Line
	4940 4180 5020 4180
Wire Wire Line
	5020 4180 5020 4080
Wire Wire Line
	5020 4080 5180 4080
$Comp
L +3.3V #PWR026
U 1 1 5BB509CE
P 4070 4180
F 0 "#PWR026" H 4070 4030 50  0001 C CNN
F 1 "+3.3V" H 4070 4320 50  0000 C CNN
F 2 "" H 4070 4180 50  0001 C CNN
F 3 "" H 4070 4180 50  0001 C CNN
	1    4070 4180
	1    0    0    -1  
$EndComp
Wire Wire Line
	4180 4180 4070 4180
Wire Wire Line
	7780 4720 7780 4580
Wire Wire Line
	7780 3080 8440 3080
Wire Wire Line
	8440 3080 8440 2450
NoConn ~ 7780 4180
NoConn ~ 7780 4080
$Comp
L LED_ARGB D2
U 1 1 5BB530DA
P 8640 4480
F 0 "D2" H 8640 4850 50  0000 C CNN
F 1 "LED_ARGB" H 8640 4130 50  0000 C CNN
F 2 "" H 8640 4430 50  0001 C CNN
F 3 "" H 8640 4430 50  0001 C CNN
	1    8640 4480
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5BB533D6
P 8210 4280
F 0 "R4" V 8290 4280 50  0000 C CNN
F 1 "R" V 8210 4280 50  0000 C CNN
F 2 "" V 8140 4280 50  0001 C CNN
F 3 "" H 8210 4280 50  0001 C CNN
	1    8210 4280
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5BB534D5
P 8210 4480
F 0 "R5" V 8290 4480 50  0000 C CNN
F 1 "R" V 8210 4480 50  0000 C CNN
F 2 "" V 8140 4480 50  0001 C CNN
F 3 "" H 8210 4480 50  0001 C CNN
	1    8210 4480
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5BB5357F
P 8210 4680
F 0 "R6" V 8290 4680 50  0000 C CNN
F 1 "R" V 8210 4680 50  0000 C CNN
F 2 "" V 8140 4680 50  0001 C CNN
F 3 "" H 8210 4680 50  0001 C CNN
	1    8210 4680
	0    1    1    0   
$EndComp
Wire Wire Line
	8360 4480 8440 4480
Wire Wire Line
	8440 4680 8360 4680
Wire Wire Line
	8360 4280 8440 4280
Wire Wire Line
	8060 4680 7880 4680
Wire Wire Line
	7880 4680 7880 4480
Wire Wire Line
	7880 4480 7780 4480
Wire Wire Line
	8060 4480 7970 4480
Wire Wire Line
	7970 4480 7970 4380
Wire Wire Line
	7970 4380 7780 4380
Wire Wire Line
	8060 4280 7780 4280
$Comp
L +3.3V #PWR027
U 1 1 5BB53D15
P 8940 4480
F 0 "#PWR027" H 8940 4330 50  0001 C CNN
F 1 "+3.3V" H 8940 4620 50  0000 C CNN
F 2 "" H 8940 4480 50  0001 C CNN
F 3 "" H 8940 4480 50  0001 C CNN
	1    8940 4480
	1    0    0    -1  
$EndComp
Wire Wire Line
	8940 4480 8840 4480
$EndSCHEMATC
