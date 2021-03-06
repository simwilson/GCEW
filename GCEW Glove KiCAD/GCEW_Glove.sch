EESchema Schematic File Version 4
LIBS:GCEW_Glove-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
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
L GCEW_Glove-rescue:ATMEGA328PB-AU U3
U 1 1 5BAFAB2A
P 6730 3820
F 0 "U3" H 6330 5295 50  0000 R BNN
F 1 "ATMEGA328PB-AU" H 6330 5220 50  0000 R BNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 6680 2420 50  0001 L CIN
F 3 "" H 6430 3870 50  0001 C CNN
	1    6730 3820
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:1S_LiPo BT1
U 1 1 5BAFAC06
P 990 3460
F 0 "BT1" H 840 3700 60  0000 C CNN
F 1 "1S_LiPo" H 1210 3700 60  0000 C CNN
F 2 "myLib:1S_150mAH_LiPo" H 990 3460 60  0001 C CNN
F 3 "" H 990 3460 60  0001 C CNN
	1    990  3460
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:TLV809-DBV U1
U 1 1 5BAFAE1D
P 2100 3430
F 0 "U1" H 1950 3740 60  0000 C CNN
F 1 "TLV809-DBV" H 2420 3740 60  0000 C CNN
F 2 "myLib:SOT-23-3" H 2100 3430 60  0001 C CNN
F 3 "" H 2100 3430 60  0001 C CNN
	1    2100 3430
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:HC-05_BluetoothModule U4
U 1 1 5BAFB2E3
P 9150 2790
F 0 "U4" H 8930 3180 60  0000 C CNN
F 1 "HC-05_BluetoothModule" H 9720 3190 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 9150 2790 60  0001 C CNN
F 3 "" H 9150 2790 60  0001 C CNN
	1    9150 2790
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:L L1
U 1 1 5BAF9913
P 4140 3680
F 0 "L1" V 4090 3680 50  0000 C CNN
F 1 "2.2uH" V 4215 3680 50  0000 C CNN
F 2 "Inductors_SMD:L_Taiyo-Yuden_NR-40xx" H 4140 3680 50  0001 C CNN
F 3 "" H 4140 3680 50  0001 C CNN
	1    4140 3680
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:C C1
U 1 1 5BAF9F3F
P 1700 3440
F 0 "C1" H 1725 3540 50  0000 L CNN
F 1 "0.1uF 25V" V 1560 3230 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1738 3290 50  0001 C CNN
F 3 "" H 1700 3440 50  0001 C CNN
	1    1700 3440
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:VCC #PWR01
U 1 1 5BAFCB03
P 890 2580
F 0 "#PWR01" H 890 2430 50  0001 C CNN
F 1 "VCC" H 890 2730 50  0000 C CNN
F 2 "" H 890 2580 50  0001 C CNN
F 3 "" H 890 2580 50  0001 C CNN
	1    890  2580
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:VCC #PWR02
U 1 1 5BAFCE89
P 2100 2920
F 0 "#PWR02" H 2100 2770 50  0001 C CNN
F 1 "VCC" H 2100 3070 50  0000 C CNN
F 2 "" H 2100 2920 50  0001 C CNN
F 3 "" H 2100 2920 50  0001 C CNN
	1    2100 2920
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:GND #PWR03
U 1 1 5BAFD33D
P 2100 3950
F 0 "#PWR03" H 2100 3700 50  0001 C CNN
F 1 "GND" H 2100 3800 50  0000 C CNN
F 2 "" H 2100 3950 50  0001 C CNN
F 3 "" H 2100 3950 50  0001 C CNN
	1    2100 3950
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:GND #PWR04
U 1 1 5BAFFA8D
P 9150 3410
F 0 "#PWR04" H 9150 3160 50  0001 C CNN
F 1 "GND" H 9150 3260 50  0000 C CNN
F 2 "" H 9150 3410 50  0001 C CNN
F 3 "" H 9150 3410 50  0001 C CNN
	1    9150 3410
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:GND #PWR05
U 1 1 5BAFFC45
P 6590 5440
F 0 "#PWR05" H 6590 5190 50  0001 C CNN
F 1 "GND" H 6590 5290 50  0000 C CNN
F 2 "" H 6590 5440 50  0001 C CNN
F 3 "" H 6590 5440 50  0001 C CNN
	1    6590 5440
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:VCC #PWR06
U 1 1 5BB01298
P 3460 2730
F 0 "#PWR06" H 3460 2580 50  0001 C CNN
F 1 "VCC" H 3460 2880 50  0000 C CNN
F 2 "" H 3460 2730 50  0001 C CNN
F 3 "" H 3460 2730 50  0001 C CNN
	1    3460 2730
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:C C4
U 1 1 5BB01EB1
P 4390 3620
F 0 "C4" H 4290 3760 50  0000 L CNN
F 1 "22uF 25V" V 4520 3430 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4428 3470 50  0001 C CNN
F 3 "" H 4390 3620 50  0001 C CNN
	1    4390 3620
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:GND #PWR07
U 1 1 5BB0211E
P 4390 3950
F 0 "#PWR07" H 4390 3700 50  0001 C CNN
F 1 "GND" H 4390 3800 50  0000 C CNN
F 2 "" H 4390 3950 50  0001 C CNN
F 3 "" H 4390 3950 50  0001 C CNN
	1    4390 3950
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:+3.3V #PWR08
U 1 1 5BB02580
P 4390 3320
F 0 "#PWR08" H 4390 3170 50  0001 C CNN
F 1 "+3.3V" H 4390 3460 50  0000 C CNN
F 2 "" H 4390 3320 50  0001 C CNN
F 3 "" H 4390 3320 50  0001 C CNN
	1    4390 3320
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:+3.3V #PWR09
U 1 1 5BB02958
P 6430 2130
F 0 "#PWR09" H 6430 1980 50  0001 C CNN
F 1 "+3.3V" H 6430 2270 50  0000 C CNN
F 2 "" H 6430 2130 50  0001 C CNN
F 3 "" H 6430 2130 50  0001 C CNN
	1    6430 2130
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:+3.3V #PWR010
U 1 1 5BB02AB1
P 9150 2110
F 0 "#PWR010" H 9150 1960 50  0001 C CNN
F 1 "+3.3V" H 9150 2250 50  0000 C CNN
F 2 "" H 9150 2110 50  0001 C CNN
F 3 "" H 9150 2110 50  0001 C CNN
	1    9150 2110
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:GND #PWR011
U 1 1 5BB03314
P 3360 4300
F 0 "#PWR011" H 3360 4050 50  0001 C CNN
F 1 "GND" H 3360 4150 50  0000 C CNN
F 2 "" H 3360 4300 50  0001 C CNN
F 3 "" H 3360 4300 50  0001 C CNN
	1    3360 4300
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:GNDS #PWR012
U 1 1 5BB0346F
P 3610 4280
F 0 "#PWR012" H 3610 4030 50  0001 C CNN
F 1 "GNDS" H 3610 4130 50  0000 C CNN
F 2 "" H 3610 4280 50  0001 C CNN
F 3 "" H 3610 4280 50  0001 C CNN
	1    3610 4280
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:C C3
U 1 1 5BB06120
P 3970 2730
F 0 "C3" V 3930 2790 50  0000 L CNN
F 1 "10uF 35V" V 3820 2600 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4008 2580 50  0001 C CNN
F 3 "" H 3970 2730 50  0001 C CNN
	1    3970 2730
	0    1    1    0   
$EndComp
$Comp
L GCEW_Glove-rescue:GND #PWR013
U 1 1 5BB0639F
P 4230 2730
F 0 "#PWR013" H 4230 2480 50  0001 C CNN
F 1 "GND" H 4230 2580 50  0000 C CNN
F 2 "" H 4230 2730 50  0001 C CNN
F 3 "" H 4230 2730 50  0001 C CNN
	1    4230 2730
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:VCC #PWR014
U 1 1 5BB074E6
P 2810 3790
F 0 "#PWR014" H 2810 3640 50  0001 C CNN
F 1 "VCC" H 2810 3940 50  0000 C CNN
F 2 "" H 2810 3790 50  0001 C CNN
F 3 "" H 2810 3790 50  0001 C CNN
	1    2810 3790
	-1   0    0    1   
$EndComp
$Comp
L GCEW_Glove-rescue:GND #PWR015
U 1 1 5BB0753E
P 2660 3530
F 0 "#PWR015" H 2660 3280 50  0001 C CNN
F 1 "GND" H 2660 3380 50  0000 C CNN
F 2 "" H 2660 3530 50  0001 C CNN
F 3 "" H 2660 3530 50  0001 C CNN
	1    2660 3530
	1    0    0    -1  
$EndComp
NoConn ~ 9610 2690
Text GLabel 9610 2790 2    50   Output ~ 0
HC-05_TX
Text GLabel 8030 4320 2    50   Input ~ 0
HC-05_TX
Text GLabel 8030 4420 2    50   Input ~ 0
HC-05_RX
Text GLabel 8690 2790 0    50   Input ~ 0
HC-05_RX
NoConn ~ 8030 3220
NoConn ~ 8030 3320
NoConn ~ 5430 4720
NoConn ~ 8030 4020
$Comp
L GCEW_Glove-rescue:C C6
U 1 1 5BB4A4F4
P 6940 2180
F 0 "C6" V 6880 2250 50  0000 L CNN
F 1 "0.1uF 25V" V 6760 2030 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6978 2030 50  0001 C CNN
F 3 "" H 6940 2180 50  0001 C CNN
	1    6940 2180
	0    1    1    0   
$EndComp
$Comp
L GCEW_Glove-rescue:GND #PWR016
U 1 1 5BB4A5B9
P 7210 2180
F 0 "#PWR016" H 7210 1930 50  0001 C CNN
F 1 "GND" H 7210 2030 50  0000 C CNN
F 2 "" H 7210 2180 50  0001 C CNN
F 3 "" H 7210 2180 50  0001 C CNN
	1    7210 2180
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:C C8
U 1 1 5BB4B308
P 9430 2120
F 0 "C8" V 9370 2190 50  0000 L CNN
F 1 "0.1uF 25V" V 9280 2190 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 9468 1970 50  0001 C CNN
F 3 "" H 9430 2120 50  0001 C CNN
	1    9430 2120
	0    1    1    0   
$EndComp
$Comp
L GCEW_Glove-rescue:GND #PWR017
U 1 1 5BB4B668
P 9660 2120
F 0 "#PWR017" H 9660 1870 50  0001 C CNN
F 1 "GND" H 9660 1970 50  0000 C CNN
F 2 "" H 9660 2120 50  0001 C CNN
F 3 "" H 9660 2120 50  0001 C CNN
	1    9660 2120
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:C C2
U 1 1 5BB4BF1E
P 3970 2400
F 0 "C2" V 3910 2450 50  0000 L CNN
F 1 "0.1uF 25V" V 3820 2260 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4008 2250 50  0001 C CNN
F 3 "" H 3970 2400 50  0001 C CNN
	1    3970 2400
	0    1    1    0   
$EndComp
Text GLabel 4790 850  2    50   Input ~ 0
VTG
Text GLabel 4790 1050 2    50   Input ~ 0
GND
Text GLabel 8030 4120 2    50   Input ~ 0
~RESET
Text GLabel 8030 3120 2    50   Input ~ 0
SCK
Text GLabel 8030 3020 2    50   Input ~ 0
MISO
Text GLabel 8030 2920 2    50   Input ~ 0
MOSI
$Comp
L GCEW_Glove-rescue:+3.3V #PWR018
U 1 1 5BB4EFC5
P 1800 930
F 0 "#PWR018" H 1800 780 50  0001 C CNN
F 1 "+3.3V" H 1800 1070 50  0000 C CNN
F 2 "" H 1800 930 50  0001 C CNN
F 3 "" H 1800 930 50  0001 C CNN
	1    1800 930 
	1    0    0    -1  
$EndComp
Text GLabel 1800 930  3    50   Input ~ 0
VTG
$Comp
L GCEW_Glove-rescue:GND #PWR019
U 1 1 5BB4F0EB
P 2340 1010
F 0 "#PWR019" H 2340 760 50  0001 C CNN
F 1 "GND" H 2340 860 50  0000 C CNN
F 2 "" H 2340 1010 50  0001 C CNN
F 3 "" H 2340 1010 50  0001 C CNN
	1    2340 1010
	1    0    0    -1  
$EndComp
Text GLabel 2340 1010 1    50   Input ~ 0
GND
Text GLabel 4790 950  2    50   Input ~ 0
MOSI
Text GLabel 4160 850  0    50   Input ~ 0
MISO
Text GLabel 4160 950  0    50   Input ~ 0
SCK
Text GLabel 4160 1050 0    50   Input ~ 0
~RESET
$Comp
L GCEW_Glove-rescue:R R10
U 1 1 5BB50B87
P 4520 6070
F 0 "R10" V 4440 6070 50  0000 C CNN
F 1 "47K" V 4520 6070 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4450 6070 50  0001 C CNN
F 3 "" H 4520 6070 50  0001 C CNN
	1    4520 6070
	0    1    1    0   
$EndComp
$Comp
L GCEW_Glove-rescue:R R11
U 1 1 5BB50CD0
P 4520 6550
F 0 "R11" V 4440 6540 50  0000 C CNN
F 1 "47K" V 4520 6550 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4450 6550 50  0001 C CNN
F 3 "" H 4520 6550 50  0001 C CNN
	1    4520 6550
	0    1    1    0   
$EndComp
$Comp
L GCEW_Glove-rescue:R R12
U 1 1 5BB51087
P 4520 7030
F 0 "R12" V 4440 7020 50  0000 C CNN
F 1 "47K" V 4520 7030 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4450 7030 50  0001 C CNN
F 3 "" H 4520 7030 50  0001 C CNN
	1    4520 7030
	0    1    1    0   
$EndComp
$Comp
L GCEW_Glove-rescue:Conn_01x06 J2
U 1 1 5BB51497
P 5530 6450
F 0 "J2" H 5530 6750 50  0000 C CNN
F 1 "Flex_Sensor_Inputs" H 5410 6030 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 5530 6450 50  0001 C CNN
F 3 "" H 5530 6450 50  0001 C CNN
	1    5530 6450
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:GND #PWR020
U 1 1 5BB522FB
P 4370 7390
F 0 "#PWR020" H 4370 7140 50  0001 C CNN
F 1 "GND" H 4370 7240 50  0000 C CNN
F 2 "" H 4370 7390 50  0001 C CNN
F 3 "" H 4370 7390 50  0001 C CNN
	1    4370 7390
	1    0    0    -1  
$EndComp
Text GLabel 5330 6450 0    50   Input ~ 0
+3.3V
Text GLabel 1630 930  3    50   Input ~ 0
+3.3V
Text GLabel 5330 6650 0    50   Input ~ 0
+3.3V
Text GLabel 5330 6250 0    50   Input ~ 0
+3.3V
Text GLabel 8030 3720 2    50   Input ~ 0
Flex_1
Text GLabel 8030 3820 2    50   Input ~ 0
Flex_2
Text GLabel 8030 3920 2    50   Input ~ 0
Flex_3
Text GLabel 4662 5640 0    50   Input ~ 0
Flex_1
Text GLabel 4662 5750 0    50   Input ~ 0
Flex_2
Text GLabel 4662 5860 0    50   Input ~ 0
Flex_3
$Comp
L GCEW_Glove-rescue:GND #PWR021
U 1 1 5BB5867F
P 5430 3290
F 0 "#PWR021" H 5430 3040 50  0001 C CNN
F 1 "GND" H 5430 3140 50  0000 C CNN
F 2 "" H 5430 3290 50  0001 C CNN
F 3 "" H 5430 3290 50  0001 C CNN
	1    5430 3290
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:C C5
U 1 1 5BB586F2
P 5430 3100
F 0 "C5" H 5455 3200 50  0000 L CNN
F 1 "0.1uF 25V" V 5310 2880 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5468 2950 50  0001 C CNN
F 3 "" H 5430 3100 50  0001 C CNN
	1    5430 3100
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:SW_SPDT SW1
U 1 1 5BB5E8F8
P 890 2820
F 0 "SW1" H 890 2990 50  0000 C CNN
F 1 "SW_SPDT" H 890 2620 50  0000 C CNN
F 2 "myLib:SPDT_TH_4.2x11.8mm" H 890 2820 50  0001 C CNN
F 3 "" H 890 2820 50  0001 C CNN
	1    890  2820
	0    1    1    0   
$EndComp
$Comp
L GCEW_Glove-rescue:LM3668 U2
U 1 1 5BAFAEC6
P 3410 3530
F 0 "U2" H 3060 4000 60  0000 C CNN
F 1 "LM3668" H 3690 4000 60  0000 C CNN
F 2 "myLib:WSON-12-1EP_3x3mm_Pitch0.4mm" H 3410 3530 60  0001 C CNN
F 3 "" H 3410 3530 60  0001 C CNN
	1    3410 3530
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:GND #PWR022
U 1 1 5BB63D40
P 990 3870
F 0 "#PWR022" H 990 3620 50  0001 C CNN
F 1 "GND" H 990 3720 50  0000 C CNN
F 2 "" H 990 3870 50  0001 C CNN
F 3 "" H 990 3870 50  0001 C CNN
	1    990  3870
	1    0    0    -1  
$EndComp
NoConn ~ 790  3020
$Comp
L GCEW_Glove-rescue:PWR_FLAG #FLG023
U 1 1 5BB64A45
P 1080 950
F 0 "#FLG023" H 1080 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 1080 1100 50  0000 C CNN
F 2 "" H 1080 950 50  0001 C CNN
F 3 "" H 1080 950 50  0001 C CNN
	1    1080 950 
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:SW_Push SW2
U 1 1 5BB65AF1
P 8950 4270
F 0 "SW2" H 8760 4370 50  0000 L CNN
F 1 "SW_Push" H 8950 4210 50  0000 C CNN
F 2 "myLib:MOM_PushButton_2Pins_3.5x6mm" H 8950 4470 50  0001 C CNN
F 3 "" H 8950 4470 50  0001 C CNN
	1    8950 4270
	-1   0    0    1   
$EndComp
$Comp
L GCEW_Glove-rescue:GND #PWR024
U 1 1 5BB6615B
P 9240 4270
F 0 "#PWR024" H 9240 4020 50  0001 C CNN
F 1 "GND" H 9240 4120 50  0000 C CNN
F 2 "" H 9240 4270 50  0001 C CNN
F 3 "" H 9240 4270 50  0001 C CNN
	1    9240 4270
	0    -1   -1   0   
$EndComp
$Comp
L GCEW_Glove-rescue:LED_ARGB D1
U 1 1 5BB4F51C
P 8290 1690
F 0 "D1" H 8290 2060 50  0000 C CNN
F 1 "LED_ARGB" H 8290 1340 50  0000 C CNN
F 2 "myLib:SML-LX0404SIUPGUSB_RGB_LED" H 8290 1640 50  0001 C CNN
F 3 "" H 8290 1640 50  0001 C CNN
	1    8290 1690
	0    1    -1   0   
$EndComp
$Comp
L GCEW_Glove-rescue:R R1
U 1 1 5BB4FBBA
P 8090 2190
F 0 "R1" V 8170 2190 50  0000 C CNN
F 1 "178" V 8090 2190 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8020 2190 50  0001 C CNN
F 3 "" H 8090 2190 50  0001 C CNN
	1    8090 2190
	1    0    0    1   
$EndComp
$Comp
L GCEW_Glove-rescue:R R3
U 1 1 5BB4FC6B
P 8290 2190
F 0 "R3" V 8370 2190 50  0000 C CNN
F 1 "178" V 8290 2190 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8220 2190 50  0001 C CNN
F 3 "" H 8290 2190 50  0001 C CNN
	1    8290 2190
	1    0    0    1   
$EndComp
$Comp
L GCEW_Glove-rescue:R R4
U 1 1 5BB4FCC8
P 8490 2080
F 0 "R4" V 8570 2080 50  0000 C CNN
F 1 "178" V 8490 2080 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8420 2080 50  0001 C CNN
F 3 "" H 8490 2080 50  0001 C CNN
	1    8490 2080
	1    0    0    1   
$EndComp
$Comp
L GCEW_Glove-rescue:+3.3V #PWR025
U 1 1 5BB509CE
P 8290 1380
F 0 "#PWR025" H 8290 1230 50  0001 C CNN
F 1 "+3.3V" H 8290 1520 50  0000 C CNN
F 2 "" H 8290 1380 50  0001 C CNN
F 3 "" H 8290 1380 50  0001 C CNN
	1    8290 1380
	0    -1   1    0   
$EndComp
NoConn ~ 8030 4620
$Comp
L GCEW_Glove-rescue:LED_ARGB D2
U 1 1 5BB530DA
P 9010 5020
F 0 "D2" H 9010 5390 50  0000 C CNN
F 1 "LED_ARGB" H 9010 4670 50  0000 C CNN
F 2 "myLib:SML-LX0404SIUPGUSB_RGB_LED" H 9010 4970 50  0001 C CNN
F 3 "" H 9010 4970 50  0001 C CNN
	1    9010 5020
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:R R6
U 1 1 5BB533D6
P 8610 4820
F 0 "R6" V 8690 4820 50  0000 C CNN
F 1 "178" V 8610 4820 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8540 4820 50  0001 C CNN
F 3 "" H 8610 4820 50  0001 C CNN
	1    8610 4820
	0    1    1    0   
$EndComp
$Comp
L GCEW_Glove-rescue:R R7
U 1 1 5BB534D5
P 8610 5020
F 0 "R7" V 8690 5020 50  0000 C CNN
F 1 "178" V 8610 5020 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8540 5020 50  0001 C CNN
F 3 "" H 8610 5020 50  0001 C CNN
	1    8610 5020
	0    1    1    0   
$EndComp
$Comp
L GCEW_Glove-rescue:R R8
U 1 1 5BB5357F
P 8610 5220
F 0 "R8" V 8690 5220 50  0000 C CNN
F 1 "178" V 8610 5220 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8540 5220 50  0001 C CNN
F 3 "" H 8610 5220 50  0001 C CNN
	1    8610 5220
	0    1    1    0   
$EndComp
$Comp
L GCEW_Glove-rescue:+3.3V #PWR026
U 1 1 5BB53D15
P 9310 5020
F 0 "#PWR026" H 9310 4870 50  0001 C CNN
F 1 "+3.3V" H 9310 5160 50  0000 C CNN
F 2 "" H 9310 5020 50  0001 C CNN
F 3 "" H 9310 5020 50  0001 C CNN
	1    9310 5020
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:C C7
U 1 1 5BC6676C
P 8950 4020
F 0 "C7" V 8890 4100 50  0000 L CNN
F 1 "0.1uF 25V" V 8810 4020 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 8988 3870 50  0001 C CNN
F 3 "" H 8950 4020 50  0001 C CNN
	1    8950 4020
	0    1    1    0   
$EndComp
$Comp
L GCEW_Glove-rescue:R R9
U 1 1 5BC6766F
P 8750 3810
F 0 "R9" V 8830 3810 50  0000 C CNN
F 1 "10K" V 8750 3810 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8680 3810 50  0001 C CNN
F 3 "" H 8750 3810 50  0001 C CNN
	1    8750 3810
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:+3.3V #PWR027
U 1 1 5BC67ABA
P 8750 3620
F 0 "#PWR027" H 8750 3470 50  0001 C CNN
F 1 "+3.3V" H 8750 3760 50  0000 C CNN
F 2 "" H 8750 3620 50  0001 C CNN
F 3 "" H 8750 3620 50  0001 C CNN
	1    8750 3620
	1    0    0    -1  
$EndComp
$Comp
L GCEW_Glove-rescue:Conn_02x03_Odd_Even J1
U 1 1 5BC69040
P 4410 950
F 0 "J1" H 4460 1150 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 4460 750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 4410 950 50  0001 C CNN
F 3 "" H 4410 950 50  0001 C CNN
	1    4410 950 
	1    0    0    -1  
$EndComp
NoConn ~ 8030 4720
NoConn ~ 5430 4620
NoConn ~ 5430 4520
NoConn ~ 5430 4420
NoConn ~ 8030 3520
$Comp
L GCEW_Glove-rescue:C C9
U 1 1 5BC72B09
P 4520 6220
F 0 "C9" V 4480 6270 50  0000 L CNN
F 1 "0.1uF 25V" V 4640 6090 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4558 6070 50  0001 C CNN
F 3 "" H 4520 6220 50  0001 C CNN
	1    4520 6220
	0    1    1    0   
$EndComp
$Comp
L GCEW_Glove-rescue:C C11
U 1 1 5BC72C69
P 4520 7200
F 0 "C11" V 4460 7250 50  0000 L CNN
F 1 "0.1uF 25V" V 4640 7070 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4558 7050 50  0001 C CNN
F 3 "" H 4520 7200 50  0001 C CNN
	1    4520 7200
	0    1    1    0   
$EndComp
$Comp
L GCEW_Glove-rescue:C C10
U 1 1 5BC72CFA
P 4520 6690
F 0 "C10" V 4480 6740 50  0000 L CNN
F 1 "0.1uF 25V" V 4640 6560 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4558 6540 50  0001 C CNN
F 3 "" H 4520 6690 50  0001 C CNN
	1    4520 6690
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 3290 1700 2980
Wire Wire Line
	1700 2980 2100 2980
Wire Wire Line
	1700 3590 1700 3880
Wire Wire Line
	2100 2980 2100 2920
Wire Wire Line
	9150 3340 9150 3410
Wire Wire Line
	4010 3530 4140 3530
Wire Wire Line
	4010 3630 4010 3830
Wire Wire Line
	4010 3830 4140 3830
Wire Wire Line
	6630 5440 6630 5320
Wire Wire Line
	6530 5440 6590 5440
Wire Wire Line
	6530 5440 6530 5320
Connection ~ 6590 5440
Wire Wire Line
	4010 3430 4390 3430
Wire Wire Line
	4390 3320 4390 3430
Wire Wire Line
	4390 3950 4390 3770
Connection ~ 4390 3430
Wire Wire Line
	4010 3280 4010 3430
Wire Wire Line
	6430 2320 6430 2130
Wire Wire Line
	9150 2110 9150 2120
Wire Wire Line
	2640 3430 2810 3430
Wire Wire Line
	3360 4230 3460 4230
Wire Wire Line
	3710 4230 3710 4130
Connection ~ 3360 4230
Wire Wire Line
	4230 2730 4120 2730
Wire Wire Line
	2810 3630 2810 3790
Wire Wire Line
	2810 3530 2660 3530
Wire Wire Line
	6630 2320 6430 2320
Wire Wire Line
	6630 2320 6630 2180
Wire Wire Line
	6630 2180 6790 2180
Wire Wire Line
	9280 2120 9150 2120
Connection ~ 9150 2120
Wire Wire Line
	4230 2730 4230 2400
Wire Wire Line
	4230 2400 4120 2400
Wire Wire Line
	3360 2730 3460 2730
Wire Wire Line
	3460 2730 3460 2930
Wire Wire Line
	3360 2930 3360 2730
Connection ~ 3460 2730
Wire Wire Line
	3820 2730 3820 2400
Wire Wire Line
	1800 930  1630 930 
Wire Wire Line
	5430 2950 5430 2920
Wire Wire Line
	5430 3290 5430 3250
Wire Wire Line
	7210 2180 7090 2180
Wire Wire Line
	3460 4130 3460 4230
Connection ~ 3460 4230
Wire Wire Line
	3360 4130 3360 4230
Wire Wire Line
	9660 2120 9580 2120
Wire Wire Line
	3610 4130 3610 4230
Connection ~ 3610 4230
Wire Wire Line
	2100 3880 2100 3950
Wire Wire Line
	1700 3880 2100 3880
Connection ~ 2100 3880
Wire Wire Line
	8290 1490 8290 1380
Wire Wire Line
	9310 5020 9210 5020
Wire Wire Line
	9240 4270 9150 4270
Wire Wire Line
	8750 4520 8030 4520
Wire Wire Line
	8750 3960 8750 4020
Wire Wire Line
	8800 4020 8750 4020
Connection ~ 8750 4270
Wire Wire Line
	9100 4020 9150 4020
Wire Wire Line
	9150 4020 9150 4270
Connection ~ 9150 4270
Connection ~ 8750 4020
Wire Wire Line
	8750 3660 8750 3620
Wire Wire Line
	8480 2890 8690 2890
Wire Wire Line
	4160 1050 4210 1050
Wire Wire Line
	4160 950  4210 950 
Wire Wire Line
	4160 850  4210 850 
Wire Wire Line
	4710 850  4790 850 
Wire Wire Line
	4710 950  4790 950 
Wire Wire Line
	4790 1050 4710 1050
Wire Wire Line
	8030 5220 8030 5020
Wire Wire Line
	8030 3620 8480 3620
Wire Wire Line
	8480 3620 8480 2890
Wire Wire Line
	8030 2720 8130 2720
Wire Wire Line
	8130 2720 8130 2340
Wire Wire Line
	8130 2340 8290 2340
Wire Wire Line
	4370 6070 4370 6220
Wire Wire Line
	4670 7200 4670 7030
Wire Wire Line
	4670 6220 4670 6070
Wire Wire Line
	4670 6690 4670 6550
Wire Wire Line
	4670 6550 4870 6550
Wire Wire Line
	4950 6350 5330 6350
Wire Wire Line
	4950 5640 4950 6220
Wire Wire Line
	4950 6220 4670 6220
Wire Wire Line
	5330 6750 4950 6750
Wire Wire Line
	4950 6750 4950 7030
Wire Wire Line
	4950 7030 4790 7030
Connection ~ 4370 7200
Connection ~ 4370 6690
Connection ~ 4370 7030
Connection ~ 4370 6220
Connection ~ 4370 6550
Wire Wire Line
	4660 5860 4790 5860
Wire Wire Line
	4790 5860 4790 7030
Connection ~ 4790 7030
Wire Wire Line
	4660 5750 4870 5750
Wire Wire Line
	4870 5750 4870 6550
Connection ~ 4870 6550
Wire Wire Line
	4660 5640 4950 5640
Connection ~ 4950 6220
$Comp
L GCEW_Glove-rescue:R R5
U 1 1 5BC7CAC2
P 8490 2420
F 0 "R5" V 8570 2420 50  0000 C CNN
F 1 "178" V 8490 2420 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8420 2420 50  0001 C CNN
F 3 "" H 8490 2420 50  0001 C CNN
	1    8490 2420
	1    0    0    -1  
$EndComp
Wire Wire Line
	8490 2270 8490 2230
Wire Wire Line
	8490 1930 8490 1890
Wire Wire Line
	8290 2040 8290 1890
Wire Wire Line
	8090 1890 8090 2040
$Comp
L GCEW_Glove-rescue:R R2
U 1 1 5BC7DBA3
P 8270 4820
F 0 "R2" V 8350 4820 50  0000 C CNN
F 1 "178" V 8270 4820 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8200 4820 50  0001 C CNN
F 3 "" H 8270 4820 50  0001 C CNN
	1    8270 4820
	0    1    1    0   
$EndComp
Wire Wire Line
	8760 5020 8810 5020
Wire Wire Line
	8810 5220 8760 5220
Wire Wire Line
	8760 4820 8810 4820
Wire Wire Line
	8420 4820 8460 4820
Wire Wire Line
	8120 4820 8030 4820
Wire Wire Line
	8030 4920 8170 4920
Wire Wire Line
	8170 4920 8170 5020
Wire Wire Line
	8170 5020 8460 5020
Wire Wire Line
	8460 5220 8030 5220
Wire Wire Line
	990  3810 990  3870
$Comp
L GCEW_Glove-rescue:VCC #PWR028
U 1 1 5BC7B338
P 1080 1030
F 0 "#PWR028" H 1080 880 50  0001 C CNN
F 1 "VCC" H 1080 1180 50  0000 C CNN
F 2 "" H 1080 1030 50  0001 C CNN
F 3 "" H 1080 1030 50  0001 C CNN
	1    1080 1030
	-1   0    0    1   
$EndComp
Wire Wire Line
	990  3110 990  3020
Wire Wire Line
	890  2620 890  2580
Wire Wire Line
	1080 1030 1080 950 
Wire Wire Line
	8030 2620 8490 2620
Wire Wire Line
	8490 2620 8490 2570
Wire Wire Line
	8090 2340 8090 2820
Wire Wire Line
	8090 2820 8030 2820
Wire Wire Line
	6590 5440 6630 5440
Wire Wire Line
	4390 3430 4390 3470
Wire Wire Line
	3360 4230 3360 4300
Wire Wire Line
	9150 2120 9150 2240
Wire Wire Line
	3460 2730 3820 2730
Wire Wire Line
	3460 4230 3610 4230
Wire Wire Line
	3610 4230 3610 4280
Wire Wire Line
	3610 4230 3710 4230
Wire Wire Line
	8750 4270 8750 4520
Wire Wire Line
	8750 4020 8750 4270
Wire Wire Line
	4370 7200 4370 7390
Wire Wire Line
	4370 6690 4370 7030
Wire Wire Line
	4370 7030 4370 7200
Wire Wire Line
	4370 6220 4370 6550
Wire Wire Line
	4370 6550 4370 6690
Wire Wire Line
	4790 7030 4670 7030
Wire Wire Line
	4870 6550 5330 6550
Wire Wire Line
	4950 6220 4950 6350
$EndSCHEMATC
