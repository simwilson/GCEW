EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr USLegal 14000 8500
encoding utf-8
Sheet 1 1
Title "GCEW Motor Controller"
Date "2018-10-23"
Rev "2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:D_Schottky D1
U 1 1 5BBE3402
P 7450 4850
F 0 "D1" H 7450 4634 50  0000 C CNN
F 1 "570mV, 1A" H 7450 4725 50  0000 C CNN
F 2 "SOT1061:SOT1061" H 7450 4850 50  0001 C CNN
F 3 "~" H 7450 4850 50  0001 C CNN
	1    7450 4850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5BC834DF
P 1000 1450
F 0 "#PWR01" H 1000 1200 50  0001 C CNN
F 1 "GND" H 1005 1277 50  0000 C CNN
F 2 "" H 1000 1450 50  0001 C CNN
F 3 "" H 1000 1450 50  0001 C CNN
	1    1000 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5C0FF045
P 1250 1150
F 0 "C1" H 1365 1196 50  0000 L CNN
F 1 "2200uF" H 1365 1105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D18.0mm_P7.50mm" H 1288 1000 50  0001 C CNN
F 3 "~" H 1250 1150 50  0001 C CNN
	1    1250 1150
	1    0    0    -1  
$EndComp
$Comp
L myLib:LM26CIM5-VHA U1
U 1 1 5C0BA440
P 1500 5850
F 0 "U1" H 1250 6250 60  0000 C CNN
F 1 "LM26CIM5-VHA" H 1900 6250 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1500 5850 60  0001 C CNN
F 3 "" H 1500 5850 60  0001 C CNN
	1    1500 5850
	1    0    0    -1  
$EndComp
Text GLabel 2000 5900 2    50   Input ~ 0
Over_Temp
Text GLabel 1150 2050 2    50   Input ~ 0
INHA
Text GLabel 1150 2150 2    50   Input ~ 0
INHC
Text GLabel 1150 2250 2    50   Input ~ 0
INLC
Text GLabel 1150 2350 2    50   Input ~ 0
CAL
Text GLabel 1150 2650 2    50   Input ~ 0
SOA
Text GLabel 1150 2550 2    50   Input ~ 0
SOB
Text GLabel 1150 2450 2    50   Input ~ 0
SOC
$Comp
L power:GND #PWR06
U 1 1 5BD16A03
P 1500 6400
F 0 "#PWR06" H 1500 6150 50  0001 C CNN
F 1 "GND" H 1505 6227 50  0000 C CNN
F 2 "" H 1500 6400 50  0001 C CNN
F 3 "" H 1500 6400 50  0001 C CNN
	1    1500 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5BD17970
P 1000 5950
F 0 "#PWR02" H 1000 5700 50  0001 C CNN
F 1 "GND" V 1005 5822 50  0000 R CNN
F 2 "" H 1000 5950 50  0001 C CNN
F 3 "" H 1000 5950 50  0001 C CNN
	1    1000 5950
	1    0    0    -1  
$EndComp
NoConn ~ 2000 5800
$Comp
L Connector:Conn_01x09_Male J1
U 1 1 5BD7F9C4
P 950 2450
F 0 "J1" H 1056 3028 50  0000 C CNN
F 1 "Conn_01x09_Male" H 1056 2937 50  0000 C CNN
F 2 "" H 950 2450 50  0001 C CNN
F 3 "~" H 950 2450 50  0001 C CNN
	1    950  2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5BD87310
P 1150 2850
F 0 "#PWR04" H 1150 2600 50  0001 C CNN
F 1 "GND" V 1155 2722 50  0000 R CNN
F 2 "" H 1150 2850 50  0001 C CNN
F 3 "" H 1150 2850 50  0001 C CNN
	1    1150 2850
	0    -1   -1   0   
$EndComp
$Comp
L myLib:DRV8323RH U2
U 1 1 5BD9D291
P 5550 3300
F 0 "U2" H 5550 2720 60  0000 C CNN
F 1 "DRV8323RH" H 5550 2910 60  0000 C CNN
F 2 "myLib:TI-RGZ-QFN-48-1EP_7x7mm_Pitch0.5mm" H 4630 4670 60  0001 C CNN
F 3 "" H 5550 3300 60  0001 C CNN
	1    5550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 5950 1000 5850
Wire Wire Line
	1500 6400 1500 6350
Text GLabel 4350 3300 0    50   Input ~ 0
Over_Temp
Wire Wire Line
	4450 3300 4350 3300
$Comp
L Device:C C9
U 1 1 5BDA1890
P 7800 4700
F 0 "C9" H 7915 4746 50  0000 L CNN
F 1 "100nF" H 7915 4655 50  0000 L CNN
F 2 "" H 7838 4550 50  0001 C CNN
F 3 "~" H 7800 4700 50  0001 C CNN
	1    7800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4850 7800 4850
$Comp
L Device:C C7
U 1 1 5BDA1CF8
P 5300 1500
F 0 "C7" H 5550 1500 50  0000 R CNN
F 1 "1uF" H 5550 1600 50  0000 R CNN
F 2 "" H 5338 1350 50  0001 C CNN
F 3 "~" H 5300 1500 50  0001 C CNN
	1    5300 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 1700 5400 1250
Wire Wire Line
	5300 1350 5300 1250
Wire Wire Line
	5300 1250 5400 1250
Connection ~ 5400 1250
Wire Wire Line
	5400 1250 5500 1250
Wire Wire Line
	5500 1250 5500 1700
Wire Wire Line
	5300 1700 5300 1650
$Comp
L Device:C C6
U 1 1 5BDA28B1
P 4150 2050
F 0 "C6" H 3900 2100 50  0000 L CNN
F 1 "47nF" H 3900 1950 50  0000 L CNN
F 2 "" H 4188 1900 50  0001 C CNN
F 3 "~" H 4150 2050 50  0001 C CNN
	1    4150 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2200 4450 2200
Wire Wire Line
	4450 2200 4450 2100
Wire Wire Line
	4450 2000 4450 1900
Wire Wire Line
	4450 1900 4150 1900
$Comp
L power:GNDA #PWR011
U 1 1 5BDA2FAD
P 5500 5250
F 0 "#PWR011" H 5500 5000 50  0001 C CNN
F 1 "GNDA" H 5505 5077 50  0000 C CNN
F 2 "" H 5500 5250 50  0001 C CNN
F 3 "" H 5500 5250 50  0001 C CNN
	1    5500 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5250 5500 5050
$Comp
L power:GND #PWR012
U 1 1 5BDA32CC
P 5750 5250
F 0 "#PWR012" H 5750 5000 50  0001 C CNN
F 1 "GND" H 5755 5077 50  0000 C CNN
F 2 "" H 5750 5250 50  0001 C CNN
F 3 "" H 5750 5250 50  0001 C CNN
	1    5750 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5BDA3307
P 5200 5250
F 0 "#PWR010" H 5200 5000 50  0001 C CNN
F 1 "GND" H 5205 5077 50  0000 C CNN
F 2 "" H 5200 5250 50  0001 C CNN
F 3 "" H 5200 5250 50  0001 C CNN
	1    5200 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5250 5200 5050
Wire Wire Line
	5200 5050 5250 5050
Wire Wire Line
	5400 5050 5250 5050
Connection ~ 5250 5050
Wire Wire Line
	5600 5050 5700 5050
Wire Wire Line
	5750 5250 5750 5050
Wire Wire Line
	5750 5050 5700 5050
Connection ~ 5700 5050
Text GLabel 4450 3600 0    50   Input ~ 0
INHA
Text GLabel 4450 4000 0    50   Input ~ 0
INHC
Text GLabel 4450 4100 0    50   Input ~ 0
INLC
Text GLabel 4450 3400 0    50   Input ~ 0
CAL
Text GLabel 4450 2300 0    50   Input ~ 0
SOC
Text GLabel 4450 2400 0    50   Input ~ 0
SOB
Text GLabel 4450 2500 0    50   Input ~ 0
SOA
$Comp
L power:+5V #PWR05
U 1 1 5BDA560E
P 1500 5350
F 0 "#PWR05" H 1500 5200 50  0001 C CNN
F 1 "+5V" H 1515 5523 50  0000 C CNN
F 2 "" H 1500 5350 50  0001 C CNN
F 3 "" H 1500 5350 50  0001 C CNN
	1    1500 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 5BDA56B5
P 8800 5200
F 0 "#PWR016" H 8800 5050 50  0001 C CNN
F 1 "+5V" H 8815 5373 50  0000 C CNN
F 2 "" H 8800 5200 50  0001 C CNN
F 3 "" H 8800 5200 50  0001 C CNN
	1    8800 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5BDA5775
P 7800 5400
F 0 "R5" H 7870 5446 50  0000 L CNN
F 1 "57.6K" H 7870 5355 50  0000 L CNN
F 2 "" V 7730 5400 50  0001 C CNN
F 3 "~" H 7800 5400 50  0001 C CNN
	1    7800 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5BDA57C9
P 7800 5800
F 0 "R6" H 7870 5846 50  0000 L CNN
F 1 "10.4K" H 7870 5755 50  0000 L CNN
F 2 "" V 7730 5800 50  0001 C CNN
F 3 "~" H 7800 5800 50  0001 C CNN
	1    7800 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4750 6650 4750
$Comp
L power:GND #PWR014
U 1 1 5BDA6FAD
P 7800 6050
F 0 "#PWR014" H 7800 5800 50  0001 C CNN
F 1 "GND" H 7805 5877 50  0000 C CNN
F 2 "" H 7800 6050 50  0001 C CNN
F 3 "" H 7800 6050 50  0001 C CNN
	1    7800 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5BDA7581
P 8350 5350
F 0 "C10" H 8465 5396 50  0000 L CNN
F 1 "15uF" H 8465 5305 50  0000 L CNN
F 2 "" H 8388 5200 50  0001 C CNN
F 3 "~" H 8350 5350 50  0001 C CNN
	1    8350 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5BDA9369
P 7800 5000
F 0 "L1" H 7853 5046 50  0000 L CNN
F 1 "L" H 7853 4955 50  0000 L CNN
F 2 "" H 7800 5000 50  0001 C CNN
F 3 "~" H 7800 5000 50  0001 C CNN
	1    7800 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5250 7800 5200
Wire Wire Line
	7800 6050 7800 5950
Wire Wire Line
	8350 5200 7800 5200
Connection ~ 7800 5200
Wire Wire Line
	7800 5200 7800 5150
Wire Wire Line
	8350 5500 8350 6050
Wire Wire Line
	8350 6050 7800 6050
Connection ~ 7800 6050
Wire Wire Line
	8800 5200 8350 5200
Connection ~ 8350 5200
$Comp
L myLib:BLDC_Motor M1
U 1 1 5BDACC4B
P 11250 3600
F 0 "M1" H 11450 4200 50  0000 L CNN
F 1 "BLDC_Motor" H 11550 4550 50  0000 L CNN
F 2 "" H 11250 3700 50  0001 C CNN
F 3 "" H 11250 3700 50  0001 C CNN
	1    11250 3600
	1    0    0    -1  
$EndComp
$Comp
L myLib:BLDC_Hall_Sensor U9
U 1 1 5BDACD4A
P 12300 3000
F 0 "U9" H 12200 3350 50  0000 C CNN
F 1 "BLDC_Hall_Sensor" H 12450 3550 50  0000 C CNN
F 2 "" H 12300 3000 50  0001 C CNN
F 3 "" H 12300 3000 50  0001 C CNN
	1    12300 3000
	1    0    0    -1  
$EndComp
Text GLabel 12550 2900 2    50   Input ~ 0
Hall_A
Text GLabel 12550 3000 2    50   Input ~ 0
Hall_B
Text GLabel 12550 3100 2    50   Input ~ 0
Hall_C
$Comp
L power:GND #PWR020
U 1 1 5BDAD196
P 12550 3200
F 0 "#PWR020" H 12550 2950 50  0001 C CNN
F 1 "GND" H 12555 3027 50  0000 C CNN
F 2 "" H 12550 3200 50  0001 C CNN
F 3 "" H 12550 3200 50  0001 C CNN
	1    12550 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 5BDAD1EB
P 12550 2800
F 0 "#PWR019" H 12550 2650 50  0001 C CNN
F 1 "+5V" H 12565 2973 50  0000 C CNN
F 2 "" H 12550 2800 50  0001 C CNN
F 3 "" H 12550 2800 50  0001 C CNN
	1    12550 2800
	1    0    0    -1  
$EndComp
$Comp
L myLib:IPB029N06N U3
U 1 1 5BDAE8D4
P 7950 2350
F 0 "U3" H 8130 2396 50  0000 L CNN
F 1 "IPB029N06N" H 8050 2550 50  0000 L CNN
F 2 "" H 7950 2350 50  0001 C CNN
F 3 "" H 7950 2350 50  0001 C CNN
	1    7950 2350
	1    0    0    -1  
$EndComp
$Comp
L myLib:IPB029N06N U5
U 1 1 5BDAE9A9
P 9050 2350
F 0 "U5" H 9230 2396 50  0000 L CNN
F 1 "IPB029N06N" H 9150 2550 50  0000 L CNN
F 2 "" H 9050 2350 50  0001 C CNN
F 3 "" H 9050 2350 50  0001 C CNN
	1    9050 2350
	1    0    0    -1  
$EndComp
$Comp
L myLib:IPB029N06N U7
U 1 1 5BDAEA32
P 10150 2350
F 0 "U7" H 10330 2396 50  0000 L CNN
F 1 "IPB029N06N" H 10250 2550 50  0000 L CNN
F 2 "" H 10150 2350 50  0001 C CNN
F 3 "" H 10150 2350 50  0001 C CNN
	1    10150 2350
	1    0    0    -1  
$EndComp
$Comp
L myLib:IPB029N06N U4
U 1 1 5BDAFEBD
P 7950 3500
F 0 "U4" H 8130 3546 50  0000 L CNN
F 1 "IPB029N06N" H 8050 3700 50  0000 L CNN
F 2 "" H 7950 3500 50  0001 C CNN
F 3 "" H 7950 3500 50  0001 C CNN
	1    7950 3500
	1    0    0    -1  
$EndComp
$Comp
L myLib:IPB029N06N U6
U 1 1 5BDAFEC4
P 9050 3500
F 0 "U6" H 9230 3546 50  0000 L CNN
F 1 "IPB029N06N" H 9150 3700 50  0000 L CNN
F 2 "" H 9050 3500 50  0001 C CNN
F 3 "" H 9050 3500 50  0001 C CNN
	1    9050 3500
	1    0    0    -1  
$EndComp
$Comp
L myLib:IPB029N06N U8
U 1 1 5BDAFECB
P 10150 3500
F 0 "U8" H 10330 3546 50  0000 L CNN
F 1 "IPB029N06N" H 10250 3700 50  0000 L CNN
F 2 "" H 10150 3500 50  0001 C CNN
F 3 "" H 10150 3500 50  0001 C CNN
	1    10150 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2100 9050 2100
Wire Wire Line
	10150 2100 9050 2100
Connection ~ 9050 2100
Wire Wire Line
	9050 1850 9050 2100
Text GLabel 7550 2350 0    50   Input ~ 0
GHA
Text GLabel 7550 3500 0    50   Input ~ 0
GLA
Text GLabel 8650 2350 0    50   Input ~ 0
GHB
Text GLabel 9750 2350 0    50   Input ~ 0
GHC
Text GLabel 9750 3500 0    50   Input ~ 0
GLC
Text GLabel 8650 3500 0    50   Input ~ 0
GLB
Wire Wire Line
	7950 3250 7950 2650
Wire Wire Line
	9050 3250 9050 3000
Wire Wire Line
	10150 3250 10150 3200
Wire Wire Line
	11500 2650 7950 2650
Connection ~ 7950 2650
Wire Wire Line
	7950 2650 7950 2600
Wire Wire Line
	11150 3000 9050 3000
Connection ~ 9050 3000
Wire Wire Line
	9050 3000 9050 2600
Wire Wire Line
	11500 3350 11100 3350
Wire Wire Line
	11100 3350 11100 3200
Wire Wire Line
	11100 3200 10150 3200
Connection ~ 10150 3200
Wire Wire Line
	10150 3200 10150 2600
Text GLabel 6650 2400 2    50   Input ~ 0
GHA
Text GLabel 6650 2600 2    50   Input ~ 0
GLA
Text GLabel 6650 2700 2    50   Input ~ 0
GHB
Text GLabel 6650 2900 2    50   Input ~ 0
GLB
Text GLabel 6650 3000 2    50   Input ~ 0
GHC
Text GLabel 6650 3200 2    50   Input ~ 0
GLC
Wire Wire Line
	6650 2500 7350 2500
Wire Wire Line
	7350 2500 7350 2650
Wire Wire Line
	7350 2650 7950 2650
Wire Wire Line
	6650 2800 7350 2800
Wire Wire Line
	7350 2800 7350 3000
Wire Wire Line
	7350 3000 9050 3000
Wire Wire Line
	10150 3200 7350 3200
Wire Wire Line
	7350 3200 7350 3100
Wire Wire Line
	7350 3100 6650 3100
Text GLabel 6650 3400 2    50   Input ~ 0
SPC
Text GLabel 6650 3600 2    50   Input ~ 0
SPB
Text GLabel 6650 3800 2    50   Input ~ 0
SPA
Wire Wire Line
	7750 3750 7950 3750
Wire Wire Line
	9050 3750 8850 3750
Wire Wire Line
	10150 3750 9950 3750
Text GLabel 9950 3750 0    50   Input ~ 0
SPC
Text GLabel 8850 3750 0    50   Input ~ 0
SPB
Text GLabel 7750 3750 0    50   Input ~ 0
SPA
Text GLabel 6650 3500 2    50   Input ~ 0
SNC
Text GLabel 6650 3700 2    50   Input ~ 0
SNB
Text GLabel 6650 3900 2    50   Input ~ 0
SNA
$Comp
L Device:R R7
U 1 1 5BDC0FC0
P 7950 3900
F 0 "R7" H 8020 3946 50  0000 L CNN
F 1 "2milli" H 8020 3855 50  0000 L CNN
F 2 "" V 7880 3900 50  0001 C CNN
F 3 "~" H 7950 3900 50  0001 C CNN
	1    7950 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5BDC102D
P 7950 4050
F 0 "#PWR015" H 7950 3800 50  0001 C CNN
F 1 "GND" H 7955 3877 50  0000 C CNN
F 2 "" H 7950 4050 50  0001 C CNN
F 3 "" H 7950 4050 50  0001 C CNN
	1    7950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4050 7750 4050
Connection ~ 7950 4050
Text GLabel 7750 4050 0    50   Input ~ 0
SNA
$Comp
L Device:R R8
U 1 1 5BDC2200
P 9050 3900
F 0 "R8" H 9120 3946 50  0000 L CNN
F 1 "2milli" H 9120 3855 50  0000 L CNN
F 2 "" V 8980 3900 50  0001 C CNN
F 3 "~" H 9050 3900 50  0001 C CNN
	1    9050 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5BDC226A
P 10150 3900
F 0 "R9" H 10220 3946 50  0000 L CNN
F 1 "2milli" H 10220 3855 50  0000 L CNN
F 2 "" V 10080 3900 50  0001 C CNN
F 3 "~" H 10150 3900 50  0001 C CNN
	1    10150 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5BDC23F0
P 9050 4050
F 0 "#PWR017" H 9050 3800 50  0001 C CNN
F 1 "GND" H 9055 3877 50  0000 C CNN
F 2 "" H 9050 4050 50  0001 C CNN
F 3 "" H 9050 4050 50  0001 C CNN
	1    9050 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5BDC242B
P 10150 4050
F 0 "#PWR018" H 10150 3800 50  0001 C CNN
F 1 "GND" H 10155 3877 50  0000 C CNN
F 2 "" H 10150 4050 50  0001 C CNN
F 3 "" H 10150 4050 50  0001 C CNN
	1    10150 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 4050 8850 4050
Connection ~ 9050 4050
Wire Wire Line
	10150 4050 9950 4050
Connection ~ 10150 4050
Text GLabel 8850 4050 0    50   Input ~ 0
SNB
Text GLabel 9950 4050 0    50   Input ~ 0
SNC
Wire Wire Line
	7800 5550 7800 5600
Connection ~ 7800 4850
Wire Wire Line
	6650 4650 7150 4650
Wire Wire Line
	7150 4650 7150 4850
Wire Wire Line
	7150 4850 7300 4850
Wire Wire Line
	6650 4550 7800 4550
Wire Wire Line
	7800 5600 6900 5600
Wire Wire Line
	6900 4750 6900 5600
Connection ~ 7800 5600
Wire Wire Line
	7800 5600 7800 5650
$Comp
L myLib:Battery BT1
U 1 1 5BDD4A34
P 1000 1200
F 0 "BT1" H 600 1250 50  0000 L CNN
F 1 "Battery" H 600 1150 50  0000 L CNN
F 2 "" V 1000 1260 50  0001 C CNN
F 3 "~" V 1000 1260 50  0001 C CNN
	1    1000 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1000 1000 900 
Wire Wire Line
	1000 1450 1000 1400
Wire Wire Line
	1000 1400 1250 1400
Wire Wire Line
	1250 1400 1250 1300
Connection ~ 1000 1400
Wire Wire Line
	1250 1000 1000 1000
Connection ~ 1000 1000
$Comp
L power:+5V #PWR03
U 1 1 5BDDFF12
P 1150 2750
F 0 "#PWR03" H 1150 2600 50  0001 C CNN
F 1 "+5V" V 1165 2878 50  0000 L CNN
F 2 "" H 1150 2750 50  0001 C CNN
F 3 "" H 1150 2750 50  0001 C CNN
	1    1150 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5BDE06ED
P 3750 3500
F 0 "R3" H 3820 3546 50  0000 L CNN
F 1 "R" H 3820 3455 50  0000 L CNN
F 2 "" V 3680 3500 50  0001 C CNN
F 3 "~" H 3750 3500 50  0001 C CNN
	1    3750 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5BDE0756
P 3750 4150
F 0 "C5" H 3865 4196 50  0000 L CNN
F 1 "10nF" H 3900 4050 50  0000 L CNN
F 2 "" H 3788 4000 50  0001 C CNN
F 3 "~" H 3750 4150 50  0001 C CNN
	1    3750 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BDE0F5F
P 3400 3500
F 0 "R2" H 3470 3546 50  0000 L CNN
F 1 "R" H 3470 3455 50  0000 L CNN
F 2 "" V 3330 3500 50  0001 C CNN
F 3 "~" H 3400 3500 50  0001 C CNN
	1    3400 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5BDE0FAB
P 3050 3500
F 0 "R1" H 3120 3546 50  0000 L CNN
F 1 "R" H 3120 3455 50  0000 L CNN
F 2 "" V 2980 3500 50  0001 C CNN
F 3 "~" H 3050 3500 50  0001 C CNN
	1    3050 3500
	1    0    0    -1  
$EndComp
Text GLabel 3400 3200 1    50   Input ~ 0
DVDD
$Comp
L Device:C C4
U 1 1 5BDE5862
P 3400 4150
F 0 "C4" H 3515 4196 50  0000 L CNN
F 1 "10nF" H 3500 4050 50  0000 L CNN
F 2 "" H 3438 4000 50  0001 C CNN
F 3 "~" H 3400 4150 50  0001 C CNN
	1    3400 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5BDEB703
P 3050 4150
F 0 "C3" H 3165 4196 50  0000 L CNN
F 1 "10nF" H 3150 4050 50  0000 L CNN
F 2 "" H 3088 4000 50  0001 C CNN
F 3 "~" H 3050 4150 50  0001 C CNN
	1    3050 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3350 3400 3200
Wire Wire Line
	3400 3350 3750 3350
Connection ~ 3400 3350
Wire Wire Line
	3400 3350 3050 3350
Wire Wire Line
	3750 4000 3750 3900
Wire Wire Line
	4450 3700 3050 3700
Wire Wire Line
	3050 3700 3050 3650
Wire Wire Line
	3050 4000 3050 3700
Connection ~ 3050 3700
Wire Wire Line
	3400 3650 3400 3800
Wire Wire Line
	4450 3800 3400 3800
Connection ~ 3400 3800
Wire Wire Line
	3400 3800 3400 4000
Wire Wire Line
	4450 3900 3750 3900
Connection ~ 3750 3900
Wire Wire Line
	3750 3900 3750 3650
$Comp
L power:GND #PWR09
U 1 1 5BE040E2
P 3400 4450
F 0 "#PWR09" H 3400 4200 50  0001 C CNN
F 1 "GND" H 3405 4277 50  0000 C CNN
F 2 "" H 3400 4450 50  0001 C CNN
F 3 "" H 3400 4450 50  0001 C CNN
	1    3400 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4450 3400 4400
Wire Wire Line
	3050 4300 3050 4400
Wire Wire Line
	3050 4400 3400 4400
Connection ~ 3400 4400
Wire Wire Line
	3400 4400 3400 4300
Wire Wire Line
	3400 4400 3750 4400
Wire Wire Line
	3750 4400 3750 4300
$Comp
L Device:C C2
U 1 1 5BE0AA59
P 2300 3800
F 0 "C2" H 2050 3800 50  0000 L CNN
F 1 "100nF" H 2000 3700 50  0000 L CNN
F 2 "" H 2338 3650 50  0001 C CNN
F 3 "~" H 2300 3800 50  0001 C CNN
	1    2300 3800
	1    0    0    -1  
$EndComp
Text GLabel 5700 1700 1    50   Input ~ 0
DVDD
Text GLabel 1000 900  1    50   Input ~ 0
36V
Text GLabel 5400 1200 1    50   Input ~ 0
36V
Wire Wire Line
	5400 1200 5400 1250
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5BE18940
P 2200 800
F 0 "#FLG01" H 2200 875 50  0001 C CNN
F 1 "PWR_FLAG" H 2100 1000 50  0000 C CNN
F 2 "" H 2200 800 50  0001 C CNN
F 3 "~" H 2200 800 50  0001 C CNN
	1    2200 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 5BE18946
P 2400 800
F 0 "#PWR07" H 2400 650 50  0001 C CNN
F 1 "+5V" H 2450 1000 50  0000 C CNN
F 2 "" H 2400 800 50  0001 C CNN
F 3 "" H 2400 800 50  0001 C CNN
	1    2400 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 800  2200 800 
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5BE266D4
P 2950 800
F 0 "#FLG02" H 2950 875 50  0001 C CNN
F 1 "PWR_FLAG" H 2950 974 50  0000 C CNN
F 2 "" H 2950 800 50  0001 C CNN
F 3 "~" H 2950 800 50  0001 C CNN
	1    2950 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR08
U 1 1 5BE2678E
P 2950 850
F 0 "#PWR08" H 2950 600 50  0001 C CNN
F 1 "GNDA" H 2955 677 50  0000 C CNN
F 2 "" H 2950 850 50  0001 C CNN
F 3 "" H 2950 850 50  0001 C CNN
	1    2950 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 850  2950 800 
Text GLabel 2800 3700 0    50   Input ~ 0
Hall_A
Text GLabel 2800 3800 0    50   Input ~ 0
Hall_B
Text GLabel 2800 3900 0    50   Input ~ 0
Hall_C
Wire Wire Line
	3050 3700 2800 3700
Wire Wire Line
	2800 3800 3400 3800
Wire Wire Line
	3750 3900 2800 3900
Wire Wire Line
	2300 3650 2300 3350
Wire Wire Line
	2300 3350 3050 3350
Connection ~ 3050 3350
Wire Wire Line
	2300 3950 2300 4400
Wire Wire Line
	2300 4400 3050 4400
Connection ~ 3050 4400
Text GLabel 9050 1850 1    50   Input ~ 0
36V
Wire Wire Line
	5800 1700 5800 1250
Wire Wire Line
	5800 1250 5500 1250
Connection ~ 5500 1250
$Comp
L Device:C C8
U 1 1 5BD0BC2B
P 6000 1450
F 0 "C8" H 6115 1496 50  0000 L CNN
F 1 "4.7uF 80V" H 6115 1405 50  0000 L CNN
F 2 "" H 6038 1300 50  0001 C CNN
F 3 "~" H 6000 1450 50  0001 C CNN
	1    6000 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1300 6000 1250
Wire Wire Line
	6000 1250 5800 1250
Connection ~ 5800 1250
$Comp
L power:GND #PWR013
U 1 1 5BD121CF
P 6000 1650
F 0 "#PWR013" H 6000 1400 50  0001 C CNN
F 1 "GND" H 6005 1477 50  0000 C CNN
F 2 "" H 6000 1650 50  0001 C CNN
F 3 "" H 6000 1650 50  0001 C CNN
	1    6000 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1650 6000 1600
$Comp
L Device:R R4
U 1 1 5BD1581A
P 4250 4550
F 0 "R4" V 4043 4550 50  0000 C CNN
F 1 "100K" V 4134 4550 50  0000 C CNN
F 2 "" V 4180 4550 50  0001 C CNN
F 3 "~" H 4250 4550 50  0001 C CNN
	1    4250 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 4550 4450 4550
Text GLabel 4100 4550 0    50   Input ~ 0
VIN
Text GLabel 5800 1250 1    50   Input ~ 0
VIN
$EndSCHEMATC
