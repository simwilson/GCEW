EESchema Schematic File Version 4
LIBS:GCEW-cache
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
P 7500 5000
F 0 "D1" V 7600 4800 50  0000 C CNN
F 1 "570mV, 1A" V 7700 4700 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123F" H 7500 5000 50  0001 C CNN
F 3 "~" H 7500 5000 50  0001 C CNN
	1    7500 5000
	0    1    1    0   
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
F 2 "Capacitors_THT:CP_Radial_D18.0mm_P7.50mm" H 1288 1000 50  0001 C CNN
F 3 "~" H 1250 1150 50  0001 C CNN
	1    1250 1150
	1    0    0    -1  
$EndComp
$Comp
L myLib:LM26CIM5-VHA U1
U 1 1 5C0BA440
P 1500 5850
F 0 "U1" H 1250 6250 60  0000 C CNN
F 1 "LM26CIM5-VHA" H 1000 6350 60  0000 C CNN
F 2 "myLib:SOT-23-5" H 1500 5850 60  0001 C CNN
F 3 "" H 1500 5850 60  0001 C CNN
	1    1500 5850
	1    0    0    -1  
$EndComp
Text GLabel 2400 6000 3    50   Input ~ 0
ENABLE
Text GLabel 1100 2400 2    50   Input ~ 0
INHA
Text GLabel 1100 2300 2    50   Input ~ 0
INHC
Text GLabel 1100 2200 2    50   Input ~ 0
INLC
Text GLabel 1100 2500 2    50   Input ~ 0
CAL
Text GLabel 1100 2700 2    50   Input ~ 0
SOA
Text GLabel 1100 2800 2    50   Input ~ 0
SOB
Text GLabel 1100 2900 2    50   Input ~ 0
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
L power:GND #PWR04
U 1 1 5BD87310
P 1100 3350
F 0 "#PWR04" H 1100 3100 50  0001 C CNN
F 1 "GND" V 1105 3222 50  0000 R CNN
F 2 "" H 1100 3350 50  0001 C CNN
F 3 "" H 1100 3350 50  0001 C CNN
	1    1100 3350
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
ENABLE
Wire Wire Line
	4450 3300 4350 3300
$Comp
L Device:C C14
U 1 1 5BDA1890
P 7800 4700
F 0 "C14" H 7915 4746 50  0000 L CNN
F 1 "0.1uF 25V" H 7915 4655 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 7838 4550 50  0001 C CNN
F 3 "~" H 7800 4700 50  0001 C CNN
	1    7800 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5BDA1CF8
P 5300 1500
F 0 "C11" H 5550 1500 50  0000 R CNN
F 1 "1uF 50V" H 5700 1600 50  0000 R CNN
F 2 "Capacitors_SMD:C_1206" H 5338 1350 50  0001 C CNN
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
	5300 1700 5300 1650
$Comp
L Device:C C8
U 1 1 5BDA28B1
P 4150 2050
F 0 "C8" H 3900 2100 50  0000 L CNN
F 1 "47nF 250V" H 3700 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4188 1900 50  0001 C CNN
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
L power:GNDA #PWR022
U 1 1 5BDA2FAD
P 5500 5250
F 0 "#PWR022" H 5500 5000 50  0001 C CNN
F 1 "GNDA" H 5505 5077 50  0000 C CNN
F 2 "" H 5500 5250 50  0001 C CNN
F 3 "" H 5500 5250 50  0001 C CNN
	1    5500 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5250 5500 5050
$Comp
L power:GND #PWR023
U 1 1 5BDA32CC
P 5750 5250
F 0 "#PWR023" H 5750 5000 50  0001 C CNN
F 1 "GND" H 5755 5077 50  0000 C CNN
F 2 "" H 5750 5250 50  0001 C CNN
F 3 "" H 5750 5250 50  0001 C CNN
	1    5750 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5BDA3307
P 5200 5250
F 0 "#PWR021" H 5200 5000 50  0001 C CNN
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
L power:+5V #PWR030
U 1 1 5BDA56B5
P 8800 5200
F 0 "#PWR030" H 8800 5050 50  0001 C CNN
F 1 "+5V" H 8815 5373 50  0000 C CNN
F 2 "" H 8800 5200 50  0001 C CNN
F 3 "" H 8800 5200 50  0001 C CNN
	1    8800 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5BDA5775
P 7800 5400
F 0 "R15" H 7870 5446 50  0000 L CNN
F 1 "57.6K" H 7870 5355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 7730 5400 50  0001 C CNN
F 3 "~" H 7800 5400 50  0001 C CNN
	1    7800 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5BDA57C9
P 7800 5800
F 0 "R16" H 7870 5846 50  0000 L CNN
F 1 "10.4K" H 7870 5755 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 7730 5800 50  0001 C CNN
F 3 "~" H 7800 5800 50  0001 C CNN
	1    7800 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4750 6650 4750
$Comp
L power:GND #PWR028
U 1 1 5BDA6FAD
P 7800 6050
F 0 "#PWR028" H 7800 5800 50  0001 C CNN
F 1 "GND" H 7805 5877 50  0000 C CNN
F 2 "" H 7800 6050 50  0001 C CNN
F 3 "" H 7800 6050 50  0001 C CNN
	1    7800 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5BDA7581
P 8350 5350
F 0 "C15" H 8465 5396 50  0000 L CNN
F 1 "15uF 25V" H 8465 5305 50  0000 L CNN
F 2 "myLib:CP_Tantalum_Case-3528" H 8388 5200 50  0001 C CNN
F 3 "~" H 8350 5350 50  0001 C CNN
	1    8350 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5BDA9369
P 7800 5000
F 0 "L1" H 7853 5046 50  0000 L CNN
F 1 "220uH" H 7853 4955 50  0000 L CNN
F 2 "myLib:CLF10060NIT-221M-D" H 7800 5000 50  0001 C CNN
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
F 2 "myLib:PhoenixContact_1991309_3-Pin-Connector_32A_P5mm" H 11250 3700 50  0001 C CNN
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
F 2 "myLib:PhoenixContact_1984992_5-Pin-Connector_8A_P3.5mm" H 12300 3000 50  0001 C CNN
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
L power:GND #PWR034
U 1 1 5BDAD196
P 12550 3200
F 0 "#PWR034" H 12550 2950 50  0001 C CNN
F 1 "GND" H 12555 3027 50  0000 C CNN
F 2 "" H 12550 3200 50  0001 C CNN
F 3 "" H 12550 3200 50  0001 C CNN
	1    12550 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR033
U 1 1 5BDAD1EB
P 12550 2800
F 0 "#PWR033" H 12550 2650 50  0001 C CNN
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
F 2 "myLib:TO-263-2" H 7950 2350 50  0001 C CNN
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
F 2 "myLib:TO-263-2" H 9050 2350 50  0001 C CNN
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
F 2 "myLib:TO-263-2" H 10150 2350 50  0001 C CNN
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
F 2 "myLib:TO-263-2" H 7950 3500 50  0001 C CNN
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
F 2 "myLib:TO-263-2" H 9050 3500 50  0001 C CNN
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
F 2 "myLib:TO-263-2" H 10150 3500 50  0001 C CNN
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
$Comp
L Device:R R17
U 1 1 5BDC0FC0
P 7950 3900
F 0 "R17" H 8020 3946 50  0000 L CNN
F 1 "2milli" H 8020 3855 50  0000 L CNN
F 2 "Resistors_SMD:R_2512" V 7880 3900 50  0001 C CNN
F 3 "~" H 7950 3900 50  0001 C CNN
	1    7950 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5BDC102D
P 7950 4050
F 0 "#PWR029" H 7950 3800 50  0001 C CNN
F 1 "GND" H 7955 3877 50  0000 C CNN
F 2 "" H 7950 4050 50  0001 C CNN
F 3 "" H 7950 4050 50  0001 C CNN
	1    7950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4050 7750 4050
Connection ~ 7950 4050
$Comp
L Device:R R18
U 1 1 5BDC2200
P 9050 3900
F 0 "R18" H 9120 3946 50  0000 L CNN
F 1 "2milli" H 9120 3855 50  0000 L CNN
F 2 "Resistors_SMD:R_2512" V 8980 3900 50  0001 C CNN
F 3 "~" H 9050 3900 50  0001 C CNN
	1    9050 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 5BDC226A
P 10150 3900
F 0 "R19" H 10220 3946 50  0000 L CNN
F 1 "2milli" H 10220 3855 50  0000 L CNN
F 2 "Resistors_SMD:R_2512" V 10080 3900 50  0001 C CNN
F 3 "~" H 10150 3900 50  0001 C CNN
	1    10150 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5BDC23F0
P 9050 4050
F 0 "#PWR031" H 9050 3800 50  0001 C CNN
F 1 "GND" H 9055 3877 50  0000 C CNN
F 2 "" H 9050 4050 50  0001 C CNN
F 3 "" H 9050 4050 50  0001 C CNN
	1    9050 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5BDC242B
P 10150 4050
F 0 "#PWR032" H 10150 3800 50  0001 C CNN
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
F 2 "myLib:PhoenixContact_1935776_2-Pin-Connector_32A_P5mm" V 1000 1260 50  0001 C CNN
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
P 1100 3250
F 0 "#PWR03" H 1100 3100 50  0001 C CNN
F 1 "+5V" V 1115 3378 50  0000 L CNN
F 2 "" H 1100 3250 50  0001 C CNN
F 3 "" H 1100 3250 50  0001 C CNN
	1    1100 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5BDE06ED
P 3750 3500
F 0 "R12" H 3820 3546 50  0000 L CNN
F 1 "10K" H 3820 3455 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" V 3680 3500 50  0001 C CNN
F 3 "~" H 3750 3500 50  0001 C CNN
	1    3750 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5BDE0756
P 3750 4150
F 0 "C7" H 3865 4196 50  0000 L CNN
F 1 "10nF" H 3900 4050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3788 4000 50  0001 C CNN
F 3 "~" H 3750 4150 50  0001 C CNN
	1    3750 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5BDE0F5F
P 3400 3500
F 0 "R8" H 3470 3546 50  0000 L CNN
F 1 "10K" H 3470 3455 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" V 3330 3500 50  0001 C CNN
F 3 "~" H 3400 3500 50  0001 C CNN
	1    3400 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BDE0FAB
P 3050 3500
F 0 "R2" H 3120 3546 50  0000 L CNN
F 1 "10K" H 3120 3455 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" V 2980 3500 50  0001 C CNN
F 3 "~" H 3050 3500 50  0001 C CNN
	1    3050 3500
	1    0    0    -1  
$EndComp
Text GLabel 2300 3300 1    50   Input ~ 0
DVDD
$Comp
L Device:C C6
U 1 1 5BDE5862
P 3400 4150
F 0 "C6" H 3515 4196 50  0000 L CNN
F 1 "10nF" H 3500 4050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3438 4000 50  0001 C CNN
F 3 "~" H 3400 4150 50  0001 C CNN
	1    3400 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5BDEB703
P 3050 4150
F 0 "C5" H 3165 4196 50  0000 L CNN
F 1 "10nF" H 3150 4050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3088 4000 50  0001 C CNN
F 3 "~" H 3050 4150 50  0001 C CNN
	1    3050 4150
	1    0    0    -1  
$EndComp
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
L power:GND #PWR018
U 1 1 5BE040E2
P 3400 4450
F 0 "#PWR018" H 3400 4200 50  0001 C CNN
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
L Device:C C4
U 1 1 5BE0AA59
P 2300 3800
F 0 "C4" H 2050 3800 50  0000 L CNN
F 1 "0.1uF 25V" H 2050 3900 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 2338 3650 50  0001 C CNN
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
L power:+5V #PWR08
U 1 1 5BE18946
P 2400 800
F 0 "#PWR08" H 2400 650 50  0001 C CNN
F 1 "+5V" H 2450 1000 50  0000 C CNN
F 2 "" H 2400 800 50  0001 C CNN
F 3 "" H 2400 800 50  0001 C CNN
	1    2400 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 800  2200 800 
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
$Comp
L Device:C C12
U 1 1 5BD0BC2B
P 6100 1400
F 0 "C12" H 6215 1446 50  0000 L CNN
F 1 "4.7uF 80V" H 6215 1355 50  0000 L CNN
F 2 "myLib:CP_Elec_6.6x6.6mm" H 6138 1250 50  0001 C CNN
F 3 "~" H 6100 1400 50  0001 C CNN
	1    6100 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5BD121CF
P 6100 1550
F 0 "#PWR024" H 6100 1300 50  0001 C CNN
F 1 "GND" H 6105 1377 50  0000 C CNN
F 2 "" H 6100 1550 50  0001 C CNN
F 3 "" H 6100 1550 50  0001 C CNN
	1    6100 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5BD1581A
P 4250 4550
F 0 "R14" V 4043 4550 50  0000 C CNN
F 1 "100K" V 4134 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4180 4550 50  0001 C CNN
F 3 "~" H 4250 4550 50  0001 C CNN
	1    4250 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 4550 4450 4550
Text GLabel 4100 4550 0    50   Input ~ 0
VIN
Text GLabel 6100 1200 1    50   Input ~ 0
VIN
$Comp
L Device:R R11
U 1 1 5BD14F24
P 3750 2600
F 0 "R11" V 3957 2600 50  0000 C CNN
F 1 "10K" V 3866 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3680 2600 50  0001 C CNN
F 3 "~" H 3750 2600 50  0001 C CNN
	1    3750 2600
	0    -1   -1   0   
$EndComp
Text GLabel 3600 2600 0    50   Input ~ 0
DVDD
Wire Wire Line
	3900 2600 4450 2600
$Comp
L Device:R R13
U 1 1 5BD238D4
P 4200 2800
F 0 "R13" V 4100 2650 50  0000 C CNN
F 1 "1M" V 4100 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4130 2800 50  0001 C CNN
F 3 "~" H 4200 2800 50  0001 C CNN
	1    4200 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 2800 4450 2800
$Comp
L power:GNDA #PWR019
U 1 1 5BD271E0
P 4000 2800
F 0 "#PWR019" H 4000 2550 50  0001 C CNN
F 1 "GNDA" V 4005 2673 50  0000 R CNN
F 2 "" H 4000 2800 50  0001 C CNN
F 3 "" H 4000 2800 50  0001 C CNN
	1    4000 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 2800 4050 2800
Wire Wire Line
	2300 3350 2300 3300
Connection ~ 2300 3350
Text GLabel 4450 2900 0    50   Input ~ 0
IDRIVE
Text GLabel 4450 3000 0    50   Input ~ 0
VDS
Text GLabel 4450 3100 0    50   Input ~ 0
GAIN
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J5
U 1 1 5BD30266
P 3900 6900
F 0 "J5" H 3850 7150 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 4200 7050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x02_Pitch2.54mm" H 3900 6900 50  0001 C CNN
F 3 "~" H 3900 6900 50  0001 C CNN
	1    3900 6900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J4
U 1 1 5BD30B0A
P 3900 6300
F 0 "J4" H 3850 6650 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 4200 6550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 3900 6300 50  0001 C CNN
F 3 "~" H 3900 6300 50  0001 C CNN
	1    3900 6300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 5BD31223
P 3900 5500
F 0 "J3" H 3850 5850 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 4200 5750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 3900 5500 50  0001 C CNN
F 3 "~" H 3900 5500 50  0001 C CNN
	1    3900 5500
	1    0    0    -1  
$EndComp
Text GLabel 4250 6900 2    50   Input ~ 0
GAIN
Text GLabel 4250 5500 2    50   Input ~ 0
IDRIVE
Text GLabel 4250 6300 2    50   Input ~ 0
VDS
$Comp
L Device:R R3
U 1 1 5BD34352
P 3350 5300
F 0 "R3" V 3250 5250 50  0000 C CNN
F 1 "18K" V 3250 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3280 5300 50  0001 C CNN
F 3 "~" H 3350 5300 50  0001 C CNN
	1    3350 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5BD34608
P 3350 5500
F 0 "R4" V 3250 5450 50  0000 C CNN
F 1 "75K" V 3250 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3280 5500 50  0001 C CNN
F 3 "~" H 3350 5500 50  0001 C CNN
	1    3350 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5BD349D9
P 3350 6100
F 0 "R6" V 3250 6050 50  0000 C CNN
F 1 "75K" V 3250 6250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3280 6100 50  0001 C CNN
F 3 "~" H 3350 6100 50  0001 C CNN
	1    3350 6100
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5BD34A55
P 3350 6300
F 0 "R7" V 3250 6250 50  0000 C CNN
F 1 "18K" V 3250 6450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3280 6300 50  0001 C CNN
F 3 "~" H 3350 6300 50  0001 C CNN
	1    3350 6300
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5BD34ABB
P 3350 5700
F 0 "R5" V 3250 5650 50  0000 C CNN
F 1 "1M" V 3250 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3280 5700 50  0001 C CNN
F 3 "~" H 3350 5700 50  0001 C CNN
	1    3350 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 5500 3700 5500
Wire Wire Line
	3700 5400 3700 5300
Wire Wire Line
	3700 5300 3500 5300
Wire Wire Line
	3700 6500 3700 6400
Wire Wire Line
	3500 6300 3700 6300
Wire Wire Line
	3700 6200 3700 6100
Wire Wire Line
	3700 6100 3500 6100
$Comp
L Device:R R9
U 1 1 5BD57B46
P 3400 6850
F 0 "R9" V 3300 6800 50  0000 C CNN
F 1 "1M" V 3300 7000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3330 6850 50  0001 C CNN
F 3 "~" H 3400 6850 50  0001 C CNN
	1    3400 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5BD57BC8
P 3400 7050
F 0 "R10" V 3300 7000 50  0000 C CNN
F 1 "47K" V 3300 7200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3330 7050 50  0001 C CNN
F 3 "~" H 3400 7050 50  0001 C CNN
	1    3400 7050
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 6850 3700 6850
Wire Wire Line
	3700 6850 3700 6900
Wire Wire Line
	3550 7050 3700 7050
Wire Wire Line
	3700 7050 3700 7000
$Comp
L power:GNDA #PWR017
U 1 1 5BD62495
P 3250 7050
F 0 "#PWR017" H 3250 6800 50  0001 C CNN
F 1 "GNDA" V 3255 6923 50  0000 R CNN
F 2 "" H 3250 7050 50  0001 C CNN
F 3 "" H 3250 7050 50  0001 C CNN
	1    3250 7050
	0    1    1    0   
$EndComp
$Comp
L power:GNDA #PWR016
U 1 1 5BD62647
P 3250 6850
F 0 "#PWR016" H 3250 6600 50  0001 C CNN
F 1 "GNDA" V 3255 6723 50  0000 R CNN
F 2 "" H 3250 6850 50  0001 C CNN
F 3 "" H 3250 6850 50  0001 C CNN
	1    3250 6850
	0    1    1    0   
$EndComp
Text GLabel 3200 5300 0    50   Input ~ 0
DVDD
Text GLabel 3200 5500 0    50   Input ~ 0
DVDD
$Comp
L power:GNDA #PWR012
U 1 1 5BD6A69F
P 3200 5700
F 0 "#PWR012" H 3200 5450 50  0001 C CNN
F 1 "GNDA" V 3205 5573 50  0000 R CNN
F 2 "" H 3200 5700 50  0001 C CNN
F 3 "" H 3200 5700 50  0001 C CNN
	1    3200 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 5700 3700 5700
Wire Wire Line
	3700 5700 3700 5600
$Comp
L power:GNDA #PWR015
U 1 1 5BD6EFD8
P 3200 6500
F 0 "#PWR015" H 3200 6250 50  0001 C CNN
F 1 "GNDA" V 3205 6373 50  0000 R CNN
F 2 "" H 3200 6500 50  0001 C CNN
F 3 "" H 3200 6500 50  0001 C CNN
	1    3200 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 6500 3700 6500
$Comp
L power:GNDA #PWR014
U 1 1 5BD73A82
P 3200 6300
F 0 "#PWR014" H 3200 6050 50  0001 C CNN
F 1 "GNDA" V 3205 6173 50  0000 R CNN
F 2 "" H 3200 6300 50  0001 C CNN
F 3 "" H 3200 6300 50  0001 C CNN
	1    3200 6300
	0    1    1    0   
$EndComp
$Comp
L power:GNDA #PWR013
U 1 1 5BD73AE7
P 3200 6100
F 0 "#PWR013" H 3200 5850 50  0001 C CNN
F 1 "GNDA" V 3205 5973 50  0000 R CNN
F 2 "" H 3200 6100 50  0001 C CNN
F 3 "" H 3200 6100 50  0001 C CNN
	1    3200 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 5500 4250 5500
Wire Wire Line
	4200 5400 4200 5500
Connection ~ 4200 5500
Wire Wire Line
	4200 5600 4200 5500
Wire Wire Line
	4200 6300 4200 6200
Wire Wire Line
	4200 6300 4250 6300
Connection ~ 4200 6300
Wire Wire Line
	4200 6300 4200 6400
Wire Wire Line
	4200 6900 4200 7000
Wire Wire Line
	4200 6900 4250 6900
Connection ~ 4200 6900
Text GLabel 1100 2600 2    50   Input ~ 0
ENABLE
Wire Wire Line
	5500 1700 5400 1700
Connection ~ 5400 1700
Wire Wire Line
	5400 1250 5800 1250
Wire Wire Line
	5800 1700 5800 1250
Connection ~ 5800 1250
Wire Wire Line
	5800 1250 6100 1250
Wire Wire Line
	6100 1200 6100 1250
Connection ~ 6100 1250
Text GLabel 5600 1700 1    50   Input ~ 0
VREF
$Comp
L Device:C C13
U 1 1 5BDD3837
P 6850 1400
F 0 "C13" H 6965 1446 50  0000 L CNN
F 1 "0.1uF 25V" H 6965 1355 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6888 1250 50  0001 C CNN
F 3 "~" H 6850 1400 50  0001 C CNN
	1    6850 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR026
U 1 1 5BDD38EC
P 6850 1550
F 0 "#PWR026" H 6850 1300 50  0001 C CNN
F 1 "GNDA" H 6855 1377 50  0000 C CNN
F 2 "" H 6850 1550 50  0001 C CNN
F 3 "" H 6850 1550 50  0001 C CNN
	1    6850 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 5BDD44D6
P 6850 1250
F 0 "#PWR025" H 6850 1100 50  0001 C CNN
F 1 "+5V" H 6865 1423 50  0000 C CNN
F 2 "" H 6850 1250 50  0001 C CNN
F 3 "" H 6850 1250 50  0001 C CNN
	1    6850 1250
	1    0    0    -1  
$EndComp
Text GLabel 6700 1250 0    50   Input ~ 0
VREF
Wire Wire Line
	6700 1250 6850 1250
Connection ~ 6850 1250
$Comp
L power:+5V #PWR09
U 1 1 5BDE3094
P 2400 5600
F 0 "#PWR09" H 2400 5450 50  0001 C CNN
F 1 "+5V" H 2415 5773 50  0000 C CNN
F 2 "" H 2400 5600 50  0001 C CNN
F 3 "" H 2400 5600 50  0001 C CNN
	1    2400 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5BDE336A
P 2400 5750
F 0 "R1" H 2470 5796 50  0000 L CNN
F 1 "10K" H 2470 5705 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" V 2330 5750 50  0001 C CNN
F 3 "~" H 2400 5750 50  0001 C CNN
	1    2400 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4850 7500 4850
Wire Wire Line
	7500 4850 7800 4850
Connection ~ 7500 4850
$Comp
L power:GND #PWR027
U 1 1 5BE016E5
P 7500 5150
F 0 "#PWR027" H 7500 4900 50  0001 C CNN
F 1 "GND" H 7505 4977 50  0000 C CNN
F 2 "" H 7500 5150 50  0001 C CNN
F 3 "" H 7500 5150 50  0001 C CNN
	1    7500 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5BE0ADDC
P 1850 3800
F 0 "C2" H 1600 3800 50  0000 L CNN
F 1 "1uF 50V" H 1450 3700 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1888 3650 50  0001 C CNN
F 3 "~" H 1850 3800 50  0001 C CNN
	1    1850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3650 1850 3350
Wire Wire Line
	1850 3350 2300 3350
Wire Wire Line
	1850 3950 1850 4400
Wire Wire Line
	1850 4400 2300 4400
Connection ~ 2300 4400
$Comp
L Device:C C10
U 1 1 5BE18DCF
P 4700 1400
F 0 "C10" V 4650 1150 50  0000 C CNN
F 1 "0.1uF 100V" V 4550 1500 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 4738 1250 50  0001 C CNN
F 3 "~" H 4700 1400 50  0001 C CNN
	1    4700 1400
	0    1    1    0   
$EndComp
$Comp
L Device:C C9
U 1 1 5BE192DA
P 4700 1100
F 0 "C9" V 4650 850 50  0000 C CNN
F 1 "33uF 100V" V 4550 1200 50  0000 C CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P5.00mm" H 4738 950 50  0001 C CNN
F 3 "~" H 4700 1100 50  0001 C CNN
	1    4700 1100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5BE19469
P 4250 1400
F 0 "#PWR020" H 4250 1150 50  0001 C CNN
F 1 "GND" H 4255 1227 50  0000 C CNN
F 2 "" H 4250 1400 50  0001 C CNN
F 3 "" H 4250 1400 50  0001 C CNN
	1    4250 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1400 4250 1400
Wire Wire Line
	4550 1100 4250 1100
Wire Wire Line
	4250 1100 4250 1400
Connection ~ 4250 1400
Wire Wire Line
	4850 1400 5100 1400
Wire Wire Line
	5100 1400 5100 1250
Wire Wire Line
	5100 1250 5300 1250
Connection ~ 5300 1250
Wire Wire Line
	4850 1100 5100 1100
Wire Wire Line
	5100 1100 5100 1250
Connection ~ 5100 1250
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5BD169D7
P 900 3350
F 0 "J2" H 1050 3300 50  0000 C CNN
F 1 "Conn_01x02" H 820 3116 50  0000 C CNN
F 2 "myLib:PhoenixContact_1984963_2-Pin-Connector_8A_P3.5mm" H 900 3350 50  0001 C CNN
F 3 "~" H 900 3350 50  0001 C CNN
	1    900  3350
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 5BD1734A
P 900 2600
F 0 "J1" H 1050 2550 50  0000 C CNN
F 1 "Conn_01x08" H 820 2066 50  0000 C CNN
F 2 "myLib:PhoenixContact_1985027_8-Pin-Connector_8A_P3.5mm" H 900 2600 50  0001 C CNN
F 3 "~" H 900 2600 50  0001 C CNN
	1    900  2600
	-1   0    0    1   
$EndComp
$Comp
L Device:C C3
U 1 1 5BD24F1C
P 1850 5350
F 0 "C3" V 1598 5350 50  0000 C CNN
F 1 "0.1uF 25V" V 1700 5500 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206" H 1888 5200 50  0001 C CNN
F 3 "~" H 1850 5350 50  0001 C CNN
	1    1850 5350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5BD25008
P 2000 5350
F 0 "#PWR07" H 2000 5100 50  0001 C CNN
F 1 "GND" H 2005 5177 50  0000 C CNN
F 2 "" H 2000 5350 50  0001 C CNN
F 3 "" H 2000 5350 50  0001 C CNN
	1    2000 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5350 1700 5350
Connection ~ 1500 5350
Wire Wire Line
	2000 5900 2400 5900
Wire Wire Line
	2400 6000 2400 5900
Connection ~ 2400 5900
$Comp
L power:GND #PWR010
U 1 1 5BD446A0
P 2750 650
F 0 "#PWR010" H 2750 400 50  0001 C CNN
F 1 "GND" H 2755 477 50  0000 C CNN
F 2 "" H 2750 650 50  0001 C CNN
F 3 "" H 2750 650 50  0001 C CNN
	1    2750 650 
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR011
U 1 1 5BD44746
P 2950 650
F 0 "#PWR011" H 2950 400 50  0001 C CNN
F 1 "GNDA" H 2955 477 50  0000 C CNN
F 2 "" H 2950 650 50  0001 C CNN
F 3 "" H 2950 650 50  0001 C CNN
	1    2950 650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 650  2950 650 
Text GLabel 7750 4050 0    50   Input ~ 0
SNA
Text GLabel 6650 3900 2    50   Input ~ 0
SNA
$EndSCHEMATC
