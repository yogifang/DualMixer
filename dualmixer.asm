//Deviec:FT61F14X
//-----------------------Variable---------------------------------
		_receivedata		EQU		A0H
		_rxCounter		EQU		61H
		_rxIndexIp		EQU		60H
		_rxIndexOp		EQU		5FH
		_toSend		EQU		120H
		_txCounter		EQU		5EH
		_txIndexIp		EQU		5DH
		_txIndexOp		EQU		5CH
		_W_TMP		EQU		70H
		_BSR_TMP		EQU		71H
		___rffc_dummy_porta		EQU		5BH
		___rffc_dummy_portb		EQU		5AH
		___rffc_dummy_trisa		EQU		59H
		___rffc_dummy_trisb		EQU		58H
//		main@readback		EQU		56H
//		main@i		EQU		55H
//		SendStringToUART@str		EQU		73H
//		SendByteToUART@data		EQU		72H
//		SendByteToUART@data		EQU		72H
//		SendByteToUART@data		EQU		72H
//		RFFC2071A_ReadReg@addr		EQU		77H
//		RFFC2071A_ReadReg@rx_data		EQU		79H
//		RFFC2071A_ReadReg@i		EQU		7BH
//		RFFC2071A_ReadReg@tx_byte		EQU		78H
//		RFFC2071A_ReadReg@addr		EQU		77H
//		RFFC2071A_ReadReg@addr		EQU		77H
//		RFFC2071A_SetDualFrequency@freq1_mhz		EQU		4DH
//		RFFC2071A_SetDualFrequency@freq2_mhz		EQU		51H
//		RFFC2071A_CalcFrequency@n_frac		EQU		48H
//		RFFC2071A_CalcFrequency@n_lo		EQU		44H
//		RFFC2071A_CalcFrequency@vco_freq		EQU		3FH
//		RFFC2071A_CalcFrequency@remainder		EQU		31H
//		RFFC2071A_CalcFrequency@freq1		EQU		3DH
//		RFFC2071A_CalcFrequency@freq3		EQU		3BH
//		RFFC2071A_CalcFrequency@freq2		EQU		37H
//		RFFC2071A_CalcFrequency@n_int		EQU		35H
//		RFFC2071A_CalcFrequency@reg_base		EQU		4CH
//		RFFC2071A_CalcFrequency@n_div		EQU		43H
//		RFFC2071A_CalcFrequency@freq_mhz		EQU		26H
//		RFFC2071A_CalcFrequency@path		EQU		2AH
//		___lmul@product		EQU		7AH
//		___lmul@multiplier		EQU		72H
//		___lmul@multiplicand		EQU		76H
//		___llmod@counter		EQU		7AH
//		___llmod@divisor		EQU		72H
//		___llmod@dividend		EQU		76H
//		___lldiv@quotient		EQU		20H
//		___lldiv@counter		EQU		24H
//		___lldiv@divisor		EQU		72H
//		___lldiv@dividend		EQU		76H
//		RFFC2071A_WriteReg@addr		EQU		20H
//		RFFC2071A_WriteReg@tx_data		EQU		21H
//		RFFC2071A_WriteReg@i		EQU		25H
//		RFFC2071A_WriteReg@addr		EQU		20H
//		RFFC2071A_WriteReg@data		EQU		74H
//		RFFC2071A_WriteReg@addr		EQU		20H
//		delay_us@us		EQU		72H
//		LoNibbleToHex@val		EQU		72H
//		LoNibbleToHex@val		EQU		72H
//		LoNibbleToHex@val		EQU		72H
//		HiNibbleToHex@val		EQU		72H
//		HiNibbleToHex@val		EQU		72H
//		HiNibbleToHex@val		EQU		72H
//		DelayMs@Time		EQU		74H
//		DelayMs@b		EQU		76H
//		DelayMs@a		EQU		75H
//		DelayMs@Time		EQU		74H
//		DelayMs@Time		EQU		74H
//		DelayUs@Time		EQU		72H
//		DelayUs@a		EQU		73H
//		DelayUs@Time		EQU		72H
//		DelayUs@Time		EQU		72H
//-----------------------Variable END---------------------------------

		MOVLP 	0H 			//0000 	0180
		LJUMP 	56H 			//0001 	3856
		ORG		0004H
		STR 	70H 			//0004 	10F0
		SWAPR 	8H, 0H 		//0005 	1E08
		STR 	71H 			//0006 	10F1
		MOVLB 	1FH 			//0007 	103F
		SWAPR 	71H, 0H 		//0008 	1E71
		STR 	66H 			//0009 	10E6
		SWAPR 	3H, 0H 		//000A 	1E03
		SWAPR 	9H, 0H 		//000B 	1E09
		STR 	64H 			//000C 	10E4
		LDR 	AH, 0H 			//000D 	180A
		STR 	67H 			//000E 	10E7
		LDR 	4H, 0H 			//000F 	1804
		STR 	68H 			//0010 	10E8
		LDR 	5H, 0H 			//0011 	1805
		STR 	69H 			//0012 	10E9
		LDR 	6H, 0H 			//0013 	1806
		STR 	6AH 			//0014 	10EA
		LDR 	7H, 0H 			//0015 	1807
		STR 	6BH 			//0016 	10EB
		LDR 	70H, 0H 			//0017 	1870
		STR 	65H 			//0018 	10E5
		BSR 	7EH, 0H 			//0019 	247E
		MOVLP 	0H 			//001A 	0180

		//;DualMixer.C: 75: if (URRXNE && RXNEF)
		MOVLB 	9H 			//001B 	1029
		BTSS 	EH, 0H 			//001C 	2C0E
		LJUMP 	1FH 			//001D 	381F
		LJUMP 	20H 			//001E 	3820
		LJUMP 	33H 			//001F 	3833
		BTSS 	12H, 0H 		//0020 	2C12
		LJUMP 	23H 			//0021 	3823
		LJUMP 	24H 			//0022 	3824
		LJUMP 	33H 			//0023 	3833

		//;DualMixer.C: 76: {
		//;DualMixer.C: 77: RXNEF = 1;
		BSR 	12H, 0H 			//0024 	2412

		//;DualMixer.C: 78: {
		//;DualMixer.C: 79: receivedata[rxIndexIp] = URDATAL;
		MOVLB 	0H 			//0025 	1020
		LDR 	60H, 0H 			//0026 	1860
		ADDWI 	A0H 			//0027 	0EA0
		STR 	6H 			//0028 	1086
		CLRF 	7H 			//0029 	1187
		MOVLB 	9H 			//002A 	1029
		LDR 	CH, 0H 			//002B 	180C
		STR 	1H 			//002C 	1081

		//;DualMixer.C: 80: rxIndexIp = (rxIndexIp + 1) & (32 - 1);
		MOVLB 	0H 			//002D 	1020
		INCR 	60H, 1H 		//002E 	1AE0
		LDWI 	1FH 			//002F 	001F

		//;RFFC2071A.c: 298: freq1 = ((n_div & 0x07) << 13) | ((n_int & 0x0FFF) << 1) | ((n_frac >
		ANDWR 	60H, 1H 		//0030 	15E0

		//;DualMixer.C: 81: rxCounter++;
		INCR 	61H, 1H 		//0031 	1AE1

		//;DualMixer.C: 82: __nop();
		NOP 					//0032 	1000

		//;DualMixer.C: 83: }
		//;DualMixer.C: 84: }
		//;DualMixer.C: 86: if (TCEN && TCF)
		MOVLB 	9H 			//0033 	1029
		BTSS 	EH, 5H 			//0034 	2E8E
		LJUMP 	37H 			//0035 	3837
		LJUMP 	38H 			//0036 	3838
		LJUMP 	51H 			//0037 	3851
		BTSS 	1CH, 0H 		//0038 	2C1C
		LJUMP 	3BH 			//0039 	383B
		LJUMP 	3CH 			//003A 	383C
		LJUMP 	51H 			//003B 	3851

		//;DualMixer.C: 87: {
		//;DualMixer.C: 88: TCF = 1;
		BSR 	1CH, 0H 			//003C 	241C

		//;DualMixer.C: 90: if (txCounter > 0)
		MOVLB 	0H 			//003D 	1020
		LDR 	5EH, 0H 			//003E 	185E
		BTSC 	3H, 2H 			//003F 	2903
		LJUMP 	42H 			//0040 	3842
		LJUMP 	43H 			//0041 	3843
		LJUMP 	50H 			//0042 	3850

		//;DualMixer.C: 91: {
		//;DualMixer.C: 92: URDATAL = toSend[txIndexOp];
		LDR 	5CH, 0H 			//0043 	185C
		ADDWI 	20H 			//0044 	0E20
		STR 	6H 			//0045 	1086
		LDWI 	1H 			//0046 	0001
		STR 	7H 			//0047 	1087
		LDR 	1H, 0H 			//0048 	1801
		MOVLB 	9H 			//0049 	1029
		STR 	CH 			//004A 	108C

		//;DualMixer.C: 93: txIndexOp = (txIndexOp + 1) & (64 - 1);
		MOVLB 	0H 			//004B 	1020
		INCR 	5CH, 1H 		//004C 	1ADC
		LDWI 	3FH 			//004D 	003F
		ANDWR 	5CH, 1H 		//004E 	15DC

		//;DualMixer.C: 94: txCounter--;
		DECR 	5EH, 1H 		//004F 	13DE

		//;DualMixer.C: 95: }
		//;DualMixer.C: 96: __nop();
		NOP 					//0050 	1000

		//;DualMixer.C: 97: }
		//;DualMixer.C: 99: user_isr();
		MOVLP 	5H 			//0051 	0185
		LCALL 	59AH 			//0052 	359A
		MOVLP 	0H 			//0053 	0180
		BCR 	7EH, 0H 			//0054 	207E
		RETI 					//0055 	1009
		MOVLP 	0H 			//0056 	0180
		LJUMP 	58H 			//0057 	3858
		LDWI 	58H 			//0058 	0058
		STR 	4H 			//0059 	1084
		LDWI 	0H 			//005A 	0000
		STR 	5H 			//005B 	1085
		LDWI 	AH 			//005C 	000A
		MOVLP 	5H 			//005D 	0185
		LCALL 	591H 			//005E 	3591
		MOVLP 	0H 			//005F 	0180
		LDWI 	A0H 			//0060 	00A0
		STR 	4H 			//0061 	1084
		LDWI 	0H 			//0062 	0000
		STR 	5H 			//0063 	1085
		LDWI 	20H 			//0064 	0020
		MOVLP 	5H 			//0065 	0185
		LCALL 	591H 			//0066 	3591
		MOVLP 	0H 			//0067 	0180
		LDWI 	20H 			//0068 	0020
		STR 	4H 			//0069 	1084
		LDWI 	1H 			//006A 	0001
		STR 	5H 			//006B 	1085
		LDWI 	40H 			//006C 	0040
		MOVLP 	5H 			//006D 	0185
		LCALL 	591H 			//006E 	3591
		MOVLP 	0H 			//006F 	0180
		BCR 	7EH, 0H 			//0070 	207E
		MOVLB 	0H 			//0071 	1020
		MOVLP 	2H 			//0072 	0182
		LJUMP 	2EAH 			//0073 	3AEA

		//;RFFC2071A.c: 251: uint8_t n_div;
		//;RFFC2071A.c: 252: uint32_t n_lo;
		//;RFFC2071A.c: 253: uint16_t n_int;
		//;RFFC2071A.c: 254: uint32_t n_frac;
		//;RFFC2071A.c: 255: uint16_t freq1, freq2, freq3;
		//;RFFC2071A.c: 256: uint8_t reg_base;
		//;RFFC2071A.c: 259: reg_base = (path == 1) ? 0x0C : 0x0F;
		DECR 	2AH, 0H 		//0074 	132A
		BTSC 	3H, 2H 			//0075 	2903
		LJUMP 	78H 			//0076 	3878
		LJUMP 	79H 			//0077 	3879
		LJUMP 	7DH 			//0078 	387D
		LDWI 	FH 			//0079 	000F
		STR 	39H 			//007A 	10B9
		CLRF 	3AH 			//007B 	11BA
		LJUMP 	80H 			//007C 	3880
		LDWI 	CH 			//007D 	000C
		STR 	39H 			//007E 	10B9
		CLRF 	3AH 			//007F 	11BA
		LDR 	39H, 0H 			//0080 	1839
		STR 	4CH 			//0081 	10CC

		//;RFFC2071A.c: 262: if (freq_mhz >= 1500) {
		LDR 	29H, 0H 			//0082 	1829
		BTSS 	3H, 2H 			//0083 	2D03
		LJUMP 	90H 			//0084 	3890
		LDR 	28H, 0H 			//0085 	1828
		BTSS 	3H, 2H 			//0086 	2D03
		LJUMP 	90H 			//0087 	3890
		LDWI 	DCH 			//0088 	00DC
		SUBWR 	26H, 0H 		//0089 	1226
		LDWI 	5H 			//008A 	0005
		SUBWFB 	27H, 0H 		//008B 	0B27
		BTSS 	3H, 0H 			//008C 	2C03
		LJUMP 	8FH 			//008D 	388F
		LJUMP 	90H 			//008E 	3890
		LJUMP 	96H 			//008F 	3896

		//;RFFC2071A.c: 263: n_lo = 1;
		CLRF 	44H 			//0090 	11C4
		INCR 	44H, 1H 		//0091 	1AC4
		CLRF 	45H 			//0092 	11C5
		CLRF 	46H 			//0093 	11C6
		CLRF 	47H 			//0094 	11C7

		//;RFFC2071A.c: 264: } else if (freq_mhz >= 750) {
		LJUMP 	D8H 			//0095 	38D8
		LDR 	29H, 0H 			//0096 	1829
		BTSS 	3H, 2H 			//0097 	2D03
		LJUMP 	A4H 			//0098 	38A4
		LDR 	28H, 0H 			//0099 	1828
		BTSS 	3H, 2H 			//009A 	2D03
		LJUMP 	A4H 			//009B 	38A4
		LDWI 	EEH 			//009C 	00EE
		SUBWR 	26H, 0H 		//009D 	1226
		LDWI 	2H 			//009E 	0002
		SUBWFB 	27H, 0H 		//009F 	0B27
		BTSS 	3H, 0H 			//00A0 	2C03
		LJUMP 	A3H 			//00A1 	38A3
		LJUMP 	A4H 			//00A2 	38A4
		LJUMP 	AAH 			//00A3 	38AA

		//;RFFC2071A.c: 265: n_lo = 2;
		LDWI 	2H 			//00A4 	0002
		STR 	44H 			//00A5 	10C4
		CLRF 	45H 			//00A6 	11C5
		CLRF 	46H 			//00A7 	11C6
		CLRF 	47H 			//00A8 	11C7

		//;RFFC2071A.c: 266: } else if (freq_mhz >= 375) {
		LJUMP 	D8H 			//00A9 	38D8
		LDR 	29H, 0H 			//00AA 	1829
		BTSS 	3H, 2H 			//00AB 	2D03
		LJUMP 	B8H 			//00AC 	38B8
		LDR 	28H, 0H 			//00AD 	1828
		BTSS 	3H, 2H 			//00AE 	2D03
		LJUMP 	B8H 			//00AF 	38B8
		LDWI 	77H 			//00B0 	0077
		SUBWR 	26H, 0H 		//00B1 	1226
		LDWI 	1H 			//00B2 	0001
		SUBWFB 	27H, 0H 		//00B3 	0B27
		BTSS 	3H, 0H 			//00B4 	2C03
		LJUMP 	B7H 			//00B5 	38B7
		LJUMP 	B8H 			//00B6 	38B8
		LJUMP 	BEH 			//00B7 	38BE

		//;RFFC2071A.c: 267: n_lo = 4;
		LDWI 	4H 			//00B8 	0004
		STR 	44H 			//00B9 	10C4
		CLRF 	45H 			//00BA 	11C5
		CLRF 	46H 			//00BB 	11C6
		CLRF 	47H 			//00BC 	11C7

		//;RFFC2071A.c: 268: } else if (freq_mhz >= 188) {
		LJUMP 	D8H 			//00BD 	38D8
		LDR 	29H, 0H 			//00BE 	1829
		BTSS 	3H, 2H 			//00BF 	2D03
		LJUMP 	CDH 			//00C0 	38CD
		LDR 	28H, 0H 			//00C1 	1828
		BTSS 	3H, 2H 			//00C2 	2D03
		LJUMP 	CDH 			//00C3 	38CD
		LDR 	27H, 0H 			//00C4 	1827
		BTSS 	3H, 2H 			//00C5 	2D03
		LJUMP 	CDH 			//00C6 	38CD
		LDWI 	BCH 			//00C7 	00BC
		SUBWR 	26H, 0H 		//00C8 	1226
		BTSS 	3H, 0H 			//00C9 	2C03
		LJUMP 	CCH 			//00CA 	38CC
		LJUMP 	CDH 			//00CB 	38CD
		LJUMP 	D3H 			//00CC 	38D3

		//;RFFC2071A.c: 269: n_lo = 8;
		LDWI 	8H 			//00CD 	0008
		STR 	44H 			//00CE 	10C4
		CLRF 	45H 			//00CF 	11C5
		CLRF 	46H 			//00D0 	11C6
		CLRF 	47H 			//00D1 	11C7

		//;RFFC2071A.c: 270: } else {
		LJUMP 	D8H 			//00D2 	38D8

		//;RFFC2071A.c: 271: n_lo = 16;
		LDWI 	10H 			//00D3 	0010
		STR 	44H 			//00D4 	10C4
		CLRF 	45H 			//00D5 	11C5
		CLRF 	46H 			//00D6 	11C6
		CLRF 	47H 			//00D7 	11C7

		//;RFFC2071A.c: 272: }
		//;RFFC2071A.c: 275: uint32_t vco_freq = freq_mhz * n_lo * 2;
		LDR 	29H, 0H 			//00D8 	1829
		STR 	75H 			//00D9 	10F5
		LDR 	28H, 0H 			//00DA 	1828
		STR 	74H 			//00DB 	10F4
		LDR 	27H, 0H 			//00DC 	1827
		STR 	73H 			//00DD 	10F3
		LDR 	26H, 0H 			//00DE 	1826
		STR 	72H 			//00DF 	10F2
		LDR 	47H, 0H 			//00E0 	1847
		STR 	79H 			//00E1 	10F9
		LDR 	46H, 0H 			//00E2 	1846
		STR 	78H 			//00E3 	10F8
		LDR 	45H, 0H 			//00E4 	1845
		STR 	77H 			//00E5 	10F7
		LDR 	44H, 0H 			//00E6 	1844
		STR 	76H 			//00E7 	10F6
		MOVLP 	4H 			//00E8 	0184
		LCALL 	454H 			//00E9 	3454
		MOVLP 	0H 			//00EA 	0180
		LDR 	75H, 0H 			//00EB 	1875
		STR 	42H 			//00EC 	10C2
		LDR 	74H, 0H 			//00ED 	1874
		STR 	41H 			//00EE 	10C1
		LDR 	73H, 0H 			//00EF 	1873
		STR 	40H 			//00F0 	10C0
		LDR 	72H, 0H 			//00F1 	1872
		STR 	3FH 			//00F2 	10BF
		LSLF 	3FH, 1H 		//00F3 	05BF
		RLR 	40H, 1H 			//00F4 	1DC0
		RLR 	41H, 1H 			//00F5 	1DC1
		RLR 	42H, 1H 			//00F6 	1DC2

		//;RFFC2071A.c: 279: n_int = vco_freq / 26;
		LDWI 	1AH 			//00F7 	001A
		STR 	72H 			//00F8 	10F2
		CLRF 	73H 			//00F9 	11F3
		CLRF 	74H 			//00FA 	11F4
		CLRF 	75H 			//00FB 	11F5
		LDR 	42H, 0H 			//00FC 	1842
		STR 	79H 			//00FD 	10F9
		LDR 	41H, 0H 			//00FE 	1841
		STR 	78H 			//00FF 	10F8
		LDR 	40H, 0H 			//0100 	1840
		STR 	77H 			//0101 	10F7
		LDR 	3FH, 0H 			//0102 	183F
		STR 	76H 			//0103 	10F6
		MOVLP 	3H 			//0104 	0183
		LCALL 	3A0H 			//0105 	33A0
		MOVLP 	0H 			//0106 	0180
		LDR 	73H, 0H 			//0107 	1873
		STR 	36H 			//0108 	10B6
		LDR 	72H, 0H 			//0109 	1872
		STR 	35H 			//010A 	10B5

		//;RFFC2071A.c: 282: uint32_t remainder = vco_freq % 26;
		LDWI 	1AH 			//010B 	001A
		STR 	72H 			//010C 	10F2
		CLRF 	73H 			//010D 	11F3
		CLRF 	74H 			//010E 	11F4
		CLRF 	75H 			//010F 	11F5
		LDR 	42H, 0H 			//0110 	1842
		STR 	79H 			//0111 	10F9
		LDR 	41H, 0H 			//0112 	1841
		STR 	78H 			//0113 	10F8
		LDR 	40H, 0H 			//0114 	1840
		STR 	77H 			//0115 	10F7
		LDR 	3FH, 0H 			//0116 	183F
		STR 	76H 			//0117 	10F6
		MOVLP 	3H 			//0118 	0183
		LCALL 	3E8H 			//0119 	33E8
		MOVLP 	0H 			//011A 	0180
		LDR 	75H, 0H 			//011B 	1875
		STR 	34H 			//011C 	10B4
		LDR 	74H, 0H 			//011D 	1874
		STR 	33H 			//011E 	10B3
		LDR 	73H, 0H 			//011F 	1873
		STR 	32H 			//0120 	10B2
		LDR 	72H, 0H 			//0121 	1872
		STR 	31H 			//0122 	10B1

		//;RFFC2071A.c: 283: n_frac = (remainder << 24) / 26;
		LDWI 	1AH 			//0123 	001A
		STR 	72H 			//0124 	10F2
		CLRF 	73H 			//0125 	11F3
		CLRF 	74H 			//0126 	11F4
		CLRF 	75H 			//0127 	11F5
		LDR 	31H, 0H 			//0128 	1831
		STR 	79H 			//0129 	10F9
		CLRF 	76H 			//012A 	11F6
		CLRF 	77H 			//012B 	11F7
		CLRF 	78H 			//012C 	11F8
		MOVLP 	3H 			//012D 	0183
		LCALL 	3A0H 			//012E 	33A0
		MOVLP 	0H 			//012F 	0180
		LDR 	75H, 0H 			//0130 	1875
		STR 	4BH 			//0131 	10CB
		LDR 	74H, 0H 			//0132 	1874
		STR 	4AH 			//0133 	10CA
		LDR 	73H, 0H 			//0134 	1873
		STR 	49H 			//0135 	10C9
		LDR 	72H, 0H 			//0136 	1872
		STR 	48H 			//0137 	10C8

		//;RFFC2071A.c: 286: switch (n_lo) {
		LJUMP 	14AH 			//0138 	394A
		CLRF 	43H 			//0139 	11C3
		LJUMP 	16DH 			//013A 	396D

		//;RFFC2071A.c: 288: case 2: n_div = 1; break;
		CLRF 	43H 			//013B 	11C3
		INCR 	43H, 1H 		//013C 	1AC3
		LJUMP 	16DH 			//013D 	396D
		LDWI 	2H 			//013E 	0002
		STR 	43H 			//013F 	10C3
		LJUMP 	16DH 			//0140 	396D
		LDWI 	3H 			//0141 	0003
		STR 	43H 			//0142 	10C3
		LJUMP 	16DH 			//0143 	396D
		LDWI 	4H 			//0144 	0004
		STR 	43H 			//0145 	10C3
		LJUMP 	16DH 			//0146 	396D
		LDWI 	5H 			//0147 	0005
		STR 	43H 			//0148 	10C3
		LJUMP 	16DH 			//0149 	396D
		LDR 	47H, 0H 			//014A 	1847
		XORWI 	0H 			//014B 	0A00
		BTSC 	3H, 2H 			//014C 	2903
		LJUMP 	168H 			//014D 	3968
		LJUMP 	13EH 			//014E 	393E
		LDR 	45H, 0H 			//014F 	1845
		XORWI 	0H 			//0150 	0A00
		BTSC 	3H, 2H 			//0151 	2903
		LJUMP 	154H 			//0152 	3954
		LJUMP 	13EH 			//0153 	393E
		LDR 	44H, 0H 			//0154 	1844
		XORWI 	1H 			//0155 	0A01
		BTSC 	3H, 2H 			//0156 	2903
		LJUMP 	139H 			//0157 	3939
		XORWI 	3H 			//0158 	0A03
		BTSC 	3H, 2H 			//0159 	2903
		LJUMP 	13BH 			//015A 	393B
		XORWI 	6H 			//015B 	0A06
		BTSC 	3H, 2H 			//015C 	2903
		LJUMP 	13EH 			//015D 	393E
		XORWI 	CH 			//015E 	0A0C
		BTSC 	3H, 2H 			//015F 	2903
		LJUMP 	141H 			//0160 	3941
		XORWI 	18H 			//0161 	0A18
		BTSC 	3H, 2H 			//0162 	2903
		LJUMP 	144H 			//0163 	3944
		XORWI 	30H 			//0164 	0A30
		BTSC 	3H, 2H 			//0165 	2903
		LJUMP 	147H 			//0166 	3947
		LJUMP 	13EH 			//0167 	393E
		LDR 	46H, 0H 			//0168 	1846
		XORWI 	0H 			//0169 	0A00
		BTSC 	3H, 2H 			//016A 	2903
		LJUMP 	14FH 			//016B 	394F
		LJUMP 	13EH 			//016C 	393E
		LDR 	43H, 0H 			//016D 	1843
		ANDWI 	7H 			//016E 	0907
		STR 	3DH 			//016F 	10BD
		CLRF 	3EH 			//0170 	11BE
		LDWI 	DH 			//0171 	000D
		LSLF 	3DH, 1H 		//0172 	05BD
		RLR 	3EH, 1H 			//0173 	1DBE
		DECRSZ 	9H, 1H 		//0174 	1B89
		LJUMP 	172H 			//0175 	3972
		LDWI 	FFH 			//0176 	00FF
		ANDWR 	35H, 0H 		//0177 	1535
		STR 	2BH 			//0178 	10AB
		LDWI 	FH 			//0179 	000F
		ANDWR 	36H, 0H 		//017A 	1536
		STR 	2CH 			//017B 	10AC
		LSLF 	2BH, 1H 		//017C 	05AB
		RLR 	2CH, 1H 			//017D 	1DAC
		LDR 	2BH, 0H 			//017E 	182B
		IORWR 	3DH, 1H 		//017F 	14BD
		LDR 	2CH, 0H 			//0180 	182C
		IORWR 	3EH, 1H 		//0181 	14BE
		LDR 	48H, 0H 			//0182 	1848
		STR 	2BH 			//0183 	10AB
		LDR 	49H, 0H 			//0184 	1849
		STR 	2CH 			//0185 	10AC
		LDR 	4AH, 0H 			//0186 	184A
		STR 	2DH 			//0187 	10AD
		LDR 	4BH, 0H 			//0188 	184B
		STR 	2EH 			//0189 	10AE
		RLR 	2DH, 0H 			//018A 	1D2D
		RLR 	2EH, 0H 			//018B 	1D2E
		STR 	2BH 			//018C 	10AB
		CLRF 	2CH 			//018D 	11AC
		CLRF 	2DH 			//018E 	11AD
		CLRF 	2EH 			//018F 	11AE
		RLR 	2CH, 1H 			//0190 	1DAC
		LDWI 	1H 			//0191 	0001
		ANDWR 	2BH, 0H 		//0192 	152B
		STR 	2FH 			//0193 	10AF
		LDWI 	0H 			//0194 	0000
		ANDWR 	2CH, 0H 		//0195 	152C
		STR 	30H 			//0196 	10B0
		LDR 	2FH, 0H 			//0197 	182F
		IORWR 	3DH, 1H 		//0198 	14BD
		LDR 	30H, 0H 			//0199 	1830
		IORWR 	3EH, 1H 		//019A 	14BE

		//;RFFC2071A.c: 301: freq2 = (n_frac >> 7) & 0xFFFF;
		LDR 	48H, 0H 			//019B 	1848
		STR 	2BH 			//019C 	10AB
		LDR 	49H, 0H 			//019D 	1849
		STR 	2CH 			//019E 	10AC
		LDR 	4AH, 0H 			//019F 	184A
		STR 	2DH 			//01A0 	10AD
		LDR 	4BH, 0H 			//01A1 	184B
		STR 	2EH 			//01A2 	10AE
		LDWI 	7H 			//01A3 	0007
		LSRF 	2EH, 1H 		//01A4 	06AE
		RRR 	2DH, 1H 			//01A5 	1CAD
		RRR 	2CH, 1H 			//01A6 	1CAC
		RRR 	2BH, 1H 			//01A7 	1CAB
		DECRSZ 	9H, 1H 		//01A8 	1B89
		LJUMP 	1A4H 			//01A9 	39A4
		LDR 	2CH, 0H 			//01AA 	182C
		STR 	38H 			//01AB 	10B8
		LDR 	2BH, 0H 			//01AC 	182B
		STR 	37H 			//01AD 	10B7

		//;RFFC2071A.c: 304: freq3 = ((n_frac & 0x7F) << 9) | (0x02 << 7);
		LDWI 	7FH 			//01AE 	007F
		ANDWR 	48H, 0H 		//01AF 	1548
		STR 	3BH 			//01B0 	10BB
		LDWI 	0H 			//01B1 	0000
		ANDWR 	49H, 0H 		//01B2 	1549
		STR 	3CH 			//01B3 	10BC
		LDWI 	9H 			//01B4 	0009
		LSLF 	3BH, 1H 		//01B5 	05BB
		RLR 	3CH, 1H 			//01B6 	1DBC
		DECRSZ 	9H, 1H 		//01B7 	1B89
		LJUMP 	1B5H 			//01B8 	39B5
		BSR 	3CH, 0H 			//01B9 	243C

		//;RFFC2071A.c: 307: RFFC2071A_WriteReg(reg_base + 0, freq1);
		LDR 	3EH, 0H 			//01BA 	183E
		STR 	75H 			//01BB 	10F5
		LDR 	3DH, 0H 			//01BC 	183D
		STR 	74H 			//01BD 	10F4
		LDR 	4CH, 0H 			//01BE 	184C
		MOVLP 	3H 			//01BF 	0183
		LCALL 	34FH 			//01C0 	334F
		MOVLP 	0H 			//01C1 	0180

		//;RFFC2071A.c: 308: RFFC2071A_WriteReg(reg_base + 1, freq2);
		MOVLB 	0H 			//01C2 	1020
		LDR 	38H, 0H 			//01C3 	1838
		STR 	75H 			//01C4 	10F5
		LDR 	37H, 0H 			//01C5 	1837
		STR 	74H 			//01C6 	10F4
		LDR 	4CH, 0H 			//01C7 	184C
		ADDWI 	1H 			//01C8 	0E01
		MOVLP 	3H 			//01C9 	0183
		LCALL 	34FH 			//01CA 	334F
		MOVLP 	0H 			//01CB 	0180

		//;RFFC2071A.c: 309: RFFC2071A_WriteReg(reg_base + 2, freq3);
		MOVLB 	0H 			//01CC 	1020
		LDR 	3CH, 0H 			//01CD 	183C
		STR 	75H 			//01CE 	10F5
		LDR 	3BH, 0H 			//01CF 	183B
		STR 	74H 			//01D0 	10F4
		LDR 	4CH, 0H 			//01D1 	184C
		ADDWI 	2H 			//01D2 	0E02
		MOVLP 	3H 			//01D3 	0183
		LCALL 	34FH 			//01D4 	334F
		MOVLP 	0H 			//01D5 	0180
		RET 					//01D6 	1008

		//;RFFC2071A.c: 189: RFFC2071A_WriteReg(0x00, 0xBEFA);
		LDWI 	FAH 			//01D7 	00FA
		STR 	74H 			//01D8 	10F4
		LDWI 	BEH 			//01D9 	00BE
		STR 	75H 			//01DA 	10F5
		LDWI 	0H 			//01DB 	0000
		MOVLP 	3H 			//01DC 	0183
		LCALL 	34FH 			//01DD 	334F
		MOVLP 	1H 			//01DE 	0181

		//;RFFC2071A.c: 194: RFFC2071A_WriteReg(0x01, 0x4064);
		LDWI 	64H 			//01DF 	0064
		STR 	74H 			//01E0 	10F4
		LDWI 	40H 			//01E1 	0040
		STR 	75H 			//01E2 	10F5
		LDWI 	1H 			//01E3 	0001
		MOVLP 	3H 			//01E4 	0183
		LCALL 	34FH 			//01E5 	334F
		MOVLP 	1H 			//01E6 	0181

		//;RFFC2071A.c: 200: RFFC2071A_WriteReg(0x02, 0x1E21);
		LDWI 	21H 			//01E7 	0021
		STR 	74H 			//01E8 	10F4
		LDWI 	1EH 			//01E9 	001E
		STR 	75H 			//01EA 	10F5
		LDWI 	2H 			//01EB 	0002
		MOVLP 	3H 			//01EC 	0183
		LCALL 	34FH 			//01ED 	334F
		MOVLP 	1H 			//01EE 	0181

		//;RFFC2071A.c: 203: RFFC2071A_WriteReg(0x03, 0x2808);
		LDWI 	8H 			//01EF 	0008
		STR 	74H 			//01F0 	10F4
		LDWI 	28H 			//01F1 	0028
		STR 	75H 			//01F2 	10F5
		LDWI 	3H 			//01F3 	0003
		MOVLP 	3H 			//01F4 	0183
		LCALL 	34FH 			//01F5 	334F
		MOVLP 	1H 			//01F6 	0181

		//;RFFC2071A.c: 206: RFFC2071A_WriteReg(0x04, 0x0690);
		LDWI 	90H 			//01F7 	0090
		STR 	74H 			//01F8 	10F4
		LDWI 	6H 			//01F9 	0006
		STR 	75H 			//01FA 	10F5
		LDWI 	4H 			//01FB 	0004
		MOVLP 	3H 			//01FC 	0183
		LCALL 	34FH 			//01FD 	334F
		MOVLP 	1H 			//01FE 	0181

		//;RFFC2071A.c: 207: RFFC2071A_WriteReg(0x05, 0x0690);
		LDWI 	90H 			//01FF 	0090
		STR 	74H 			//0200 	10F4
		LDWI 	6H 			//0201 	0006
		STR 	75H 			//0202 	10F5
		LDWI 	5H 			//0203 	0005
		MOVLP 	3H 			//0204 	0183
		LCALL 	34FH 			//0205 	334F
		MOVLP 	1H 			//0206 	0181

		//;RFFC2071A.c: 210: RFFC2071A_WriteReg(0x06, 0x0A52);
		LDWI 	52H 			//0207 	0052
		STR 	74H 			//0208 	10F4
		LDWI 	AH 			//0209 	000A
		STR 	75H 			//020A 	10F5
		LDWI 	6H 			//020B 	0006
		MOVLP 	3H 			//020C 	0183
		LCALL 	34FH 			//020D 	334F
		MOVLP 	1H 			//020E 	0181

		//;RFFC2071A.c: 211: RFFC2071A_WriteReg(0x07, 0x0A52);
		LDWI 	52H 			//020F 	0052
		STR 	74H 			//0210 	10F4
		LDWI 	AH 			//0211 	000A
		STR 	75H 			//0212 	10F5
		LDWI 	7H 			//0213 	0007
		MOVLP 	3H 			//0214 	0183
		LCALL 	34FH 			//0215 	334F
		MOVLP 	1H 			//0216 	0181

		//;RFFC2071A.c: 214: RFFC2071A_WriteReg(0x08, 0x1C22);
		LDWI 	22H 			//0217 	0022
		STR 	74H 			//0218 	10F4
		LDWI 	1CH 			//0219 	001C
		STR 	75H 			//021A 	10F5
		LDWI 	8H 			//021B 	0008
		MOVLP 	3H 			//021C 	0183
		LCALL 	34FH 			//021D 	334F
		MOVLP 	1H 			//021E 	0181

		//;RFFC2071A.c: 217: RFFC2071A_WriteReg(0x09, 0x408C);
		LDWI 	8CH 			//021F 	008C
		STR 	74H 			//0220 	10F4
		LDWI 	40H 			//0221 	0040
		STR 	75H 			//0222 	10F5
		LDWI 	9H 			//0223 	0009
		MOVLP 	3H 			//0224 	0183
		LCALL 	34FH 			//0225 	334F
		MOVLP 	1H 			//0226 	0181

		//;RFFC2071A.c: 220: RFFC2071A_WriteReg(0x0A, 0x0021);
		LDWI 	21H 			//0227 	0021
		STR 	74H 			//0228 	10F4
		CLRF 	75H 			//0229 	11F5
		LDWI 	AH 			//022A 	000A
		MOVLP 	3H 			//022B 	0183
		LCALL 	34FH 			//022C 	334F
		MOVLP 	1H 			//022D 	0181

		//;RFFC2071A.c: 223: RFFC2071A_WriteReg(0x0B, 0x4F00);
		LDWI 	0H 			//022E 	0000
		STR 	74H 			//022F 	10F4
		LDWI 	4FH 			//0230 	004F
		STR 	75H 			//0231 	10F5
		LDWI 	BH 			//0232 	000B
		MOVLP 	3H 			//0233 	0183
		LCALL 	34FH 			//0234 	334F
		MOVLP 	1H 			//0235 	0181

		//;RFFC2071A.c: 226: RFFC2071A_SetDualFrequency(500, 450);
		LDWI 	0H 			//0236 	0000
		MOVLB 	0H 			//0237 	1020
		STR 	50H 			//0238 	10D0
		LDWI 	0H 			//0239 	0000
		STR 	4FH 			//023A 	10CF
		LDWI 	1H 			//023B 	0001
		STR 	4EH 			//023C 	10CE
		LDWI 	F4H 			//023D 	00F4
		STR 	4DH 			//023E 	10CD
		LDWI 	0H 			//023F 	0000
		STR 	54H 			//0240 	10D4
		LDWI 	0H 			//0241 	0000
		STR 	53H 			//0242 	10D3
		LDWI 	1H 			//0243 	0001
		STR 	52H 			//0244 	10D2
		LDWI 	C2H 			//0245 	00C2
		STR 	51H 			//0246 	10D1
		MOVLP 	4H 			//0247 	0184
		LCALL 	4A1H 			//0248 	34A1
		MOVLP 	1H 			//0249 	0181

		//;RFFC2071A.c: 229: RFFC2071A_WriteReg(0x12, 0x0000);
		CLRF 	74H 			//024A 	11F4
		CLRF 	75H 			//024B 	11F5
		LDWI 	12H 			//024C 	0012
		MOVLP 	3H 			//024D 	0183
		LCALL 	34FH 			//024E 	334F
		MOVLP 	1H 			//024F 	0181

		//;RFFC2071A.c: 232: RFFC2071A_WriteReg(0x15, 0x0000);
		CLRF 	74H 			//0250 	11F4
		CLRF 	75H 			//0251 	11F5
		LDWI 	15H 			//0252 	0015
		MOVLP 	3H 			//0253 	0183
		LCALL 	34FH 			//0254 	334F
		MOVLP 	1H 			//0255 	0181

		//;RFFC2071A.c: 235: RFFC2071A_WriteReg(0x16, 0x0001);
		CLRF 	74H 			//0256 	11F4
		INCR 	74H, 1H 		//0257 	1AF4
		CLRF 	75H 			//0258 	11F5
		LDWI 	16H 			//0259 	0016
		MOVLP 	3H 			//025A 	0183
		LCALL 	34FH 			//025B 	334F
		MOVLP 	1H 			//025C 	0181

		//;RFFC2071A.c: 238: RFFC2071A_WriteReg(0x17, 0x0048);
		LDWI 	48H 			//025D 	0048
		STR 	74H 			//025E 	10F4
		CLRF 	75H 			//025F 	11F5
		LDWI 	17H 			//0260 	0017
		MOVLP 	3H 			//0261 	0183
		LCALL 	34FH 			//0262 	334F
		MOVLP 	1H 			//0263 	0181

		//;RFFC2071A.c: 239: RFFC2071A_WriteReg(0x1C, 0x0020);
		LDWI 	20H 			//0264 	0020
		STR 	74H 			//0265 	10F4
		CLRF 	75H 			//0266 	11F5
		LDWI 	1CH 			//0267 	001C
		MOVLP 	3H 			//0268 	0183
		LCALL 	34FH 			//0269 	334F
		MOVLP 	1H 			//026A 	0181

		//;RFFC2071A.c: 242: RFFC2071A_WriteReg(0x1D, 0x0001);
		CLRF 	74H 			//026B 	11F4
		INCR 	74H, 1H 		//026C 	1AF4
		CLRF 	75H 			//026D 	11F5
		LDWI 	1DH 			//026E 	001D
		MOVLP 	3H 			//026F 	0183
		LCALL 	34FH 			//0270 	334F
		MOVLP 	1H 			//0271 	0181
		RET 					//0272 	1008
		STR 	77H 			//0273 	10F7

		//;RFFC2071A.c: 127: uint8_t i;
		//;RFFC2071A.c: 128: uint8_t tx_byte;
		//;RFFC2071A.c: 129: uint16_t rx_data = 0;
		CLRF 	79H 			//0274 	11F9
		CLRF 	7AH 			//0275 	11FA

		//;RFFC2071A.c: 132: tx_byte = 0x80 | (addr & 0x7F);
		LDR 	77H, 0H 			//0276 	1877
		ANDWI 	7FH 			//0277 	097F
		IORWI 	80H 			//0278 	0880
		STR 	78H 			//0279 	10F8

		//;RFFC2071A.c: 134: (__rffc_dummy_trisb &= (uint8_t)~0x02);
		MOVLB 	0H 			//027A 	1020
		BCR 	58H, 1H 			//027B 	20D8

		//;RFFC2071A.c: 135: (PA0 = 0);
		BCR 	CH, 0H 			//027C 	200C

		//;RFFC2071A.c: 136: delay_us(1);
		CLRF 	72H 			//027D 	11F2
		INCR 	72H, 1H 		//027E 	1AF2
		CLRF 	73H 			//027F 	11F3
		MOVLP 	5H 			//0280 	0185
		LCALL 	524H 			//0281 	3524
		MOVLP 	2H 			//0282 	0182

		//;RFFC2071A.c: 139: for (i = 0; i < 8; i++) {
		CLRF 	7BH 			//0283 	11FB

		//;RFFC2071A.c: 140: if (tx_byte & 0x80) {
		BTSS 	78H, 7H 		//0284 	2FF8
		LJUMP 	287H 			//0285 	3A87
		LJUMP 	288H 			//0286 	3A88
		LJUMP 	28BH 			//0287 	3A8B

		//;RFFC2071A.c: 141: (PB1 = 1);
		MOVLB 	0H 			//0288 	1020
		BSR 	DH, 1H 			//0289 	248D

		//;RFFC2071A.c: 142: } else {
		LJUMP 	28DH 			//028A 	3A8D

		//;RFFC2071A.c: 143: (PB1 = 0);
		MOVLB 	0H 			//028B 	1020
		BCR 	DH, 1H 			//028C 	208D

		//;RFFC2071A.c: 144: }
		//;RFFC2071A.c: 145: tx_byte <<= 1;
		LSLF 	78H, 1H 		//028D 	05F8

		//;RFFC2071A.c: 147: delay_us(1);
		CLRF 	72H 			//028E 	11F2
		INCR 	72H, 1H 		//028F 	1AF2
		CLRF 	73H 			//0290 	11F3
		MOVLP 	5H 			//0291 	0185
		LCALL 	524H 			//0292 	3524
		MOVLP 	2H 			//0293 	0182

		//;RFFC2071A.c: 148: (PB0 = 1);
		MOVLB 	0H 			//0294 	1020
		BSR 	DH, 0H 			//0295 	240D

		//;RFFC2071A.c: 149: delay_us(1);
		CLRF 	72H 			//0296 	11F2
		INCR 	72H, 1H 		//0297 	1AF2
		CLRF 	73H 			//0298 	11F3
		MOVLP 	5H 			//0299 	0185
		LCALL 	524H 			//029A 	3524
		MOVLP 	2H 			//029B 	0182

		//;RFFC2071A.c: 150: (PB0 = 0);
		MOVLB 	0H 			//029C 	1020
		BCR 	DH, 0H 			//029D 	200D

		//;RFFC2071A.c: 151: delay_us(1);
		CLRF 	72H 			//029E 	11F2
		INCR 	72H, 1H 		//029F 	1AF2
		CLRF 	73H 			//02A0 	11F3
		MOVLP 	5H 			//02A1 	0185
		LCALL 	524H 			//02A2 	3524
		MOVLP 	2H 			//02A3 	0182
		INCR 	7BH, 1H 		//02A4 	1AFB
		LDWI 	8H 			//02A5 	0008
		SUBWR 	7BH, 0H 		//02A6 	127B
		BTSS 	3H, 0H 			//02A7 	2C03
		LJUMP 	2AAH 			//02A8 	3AAA
		LJUMP 	2ABH 			//02A9 	3AAB
		LJUMP 	284H 			//02AA 	3A84

		//;RFFC2071A.c: 152: }
		//;RFFC2071A.c: 155: (PB1 = 0);
		MOVLB 	0H 			//02AB 	1020
		BCR 	DH, 1H 			//02AC 	208D

		//;RFFC2071A.c: 156: delay_us(2);
		LDWI 	2H 			//02AD 	0002
		STR 	72H 			//02AE 	10F2
		CLRF 	73H 			//02AF 	11F3
		MOVLP 	5H 			//02B0 	0185
		LCALL 	524H 			//02B1 	3524
		MOVLP 	2H 			//02B2 	0182

		//;RFFC2071A.c: 157: (PB1 = 1);
		MOVLB 	0H 			//02B3 	1020
		BSR 	DH, 1H 			//02B4 	248D

		//;RFFC2071A.c: 158: (__rffc_dummy_trisb |= 0x02);
		BSR 	58H, 1H 			//02B5 	24D8

		//;RFFC2071A.c: 159: delay_us(2);
		LDWI 	2H 			//02B6 	0002
		STR 	72H 			//02B7 	10F2
		CLRF 	73H 			//02B8 	11F3
		MOVLP 	5H 			//02B9 	0185
		LCALL 	524H 			//02BA 	3524
		MOVLP 	2H 			//02BB 	0182

		//;RFFC2071A.c: 162: for (i = 0; i < 16; i++) {
		CLRF 	7BH 			//02BC 	11FB

		//;RFFC2071A.c: 163: (PB0 = 1);
		MOVLB 	0H 			//02BD 	1020
		BSR 	DH, 0H 			//02BE 	240D

		//;RFFC2071A.c: 164: delay_us(1);
		CLRF 	72H 			//02BF 	11F2
		INCR 	72H, 1H 		//02C0 	1AF2
		CLRF 	73H 			//02C1 	11F3
		MOVLP 	5H 			//02C2 	0185
		LCALL 	524H 			//02C3 	3524
		MOVLP 	2H 			//02C4 	0182

		//;RFFC2071A.c: 166: rx_data <<= 1;
		LSLF 	79H, 1H 		//02C5 	05F9
		RLR 	7AH, 1H 			//02C6 	1DFA

		//;RFFC2071A.c: 167: rx_data = (rx_data & 0xFFFE) ;
		BCR 	79H, 0H 			//02C7 	2079

		//;RFFC2071A.c: 168: if ((PB1)) {
		MOVLB 	0H 			//02C8 	1020
		BTSS 	DH, 1H 			//02C9 	2C8D
		LJUMP 	2CCH 			//02CA 	3ACC
		LJUMP 	2CDH 			//02CB 	3ACD
		LJUMP 	2CEH 			//02CC 	3ACE

		//;RFFC2071A.c: 169: rx_data |= 1;
		BSR 	79H, 0H 			//02CD 	2479

		//;RFFC2071A.c: 170: }
		//;RFFC2071A.c: 172: (PB0 = 0);
		BCR 	DH, 0H 			//02CE 	200D

		//;RFFC2071A.c: 173: delay_us(1);
		CLRF 	72H 			//02CF 	11F2
		INCR 	72H, 1H 		//02D0 	1AF2
		CLRF 	73H 			//02D1 	11F3
		MOVLP 	5H 			//02D2 	0185
		LCALL 	524H 			//02D3 	3524
		MOVLP 	2H 			//02D4 	0182
		INCR 	7BH, 1H 		//02D5 	1AFB
		LDWI 	10H 			//02D6 	0010
		SUBWR 	7BH, 0H 		//02D7 	127B
		BTSS 	3H, 0H 			//02D8 	2C03
		LJUMP 	2DBH 			//02D9 	3ADB
		LJUMP 	2DCH 			//02DA 	3ADC
		LJUMP 	2BDH 			//02DB 	3ABD

		//;RFFC2071A.c: 174: }
		//;RFFC2071A.c: 176: (PA0 = 1);
		MOVLB 	0H 			//02DC 	1020
		BSR 	CH, 0H 			//02DD 	240C

		//;RFFC2071A.c: 177: (__rffc_dummy_trisb &= (uint8_t)~0x02);
		BCR 	58H, 1H 			//02DE 	20D8

		//;RFFC2071A.c: 178: delay_us(1);
		CLRF 	72H 			//02DF 	11F2
		INCR 	72H, 1H 		//02E0 	1AF2
		CLRF 	73H 			//02E1 	11F3
		MOVLP 	5H 			//02E2 	0185
		LCALL 	524H 			//02E3 	3524
		MOVLP 	2H 			//02E4 	0182

		//;RFFC2071A.c: 180: return rx_data;
		LDR 	7AH, 0H 			//02E5 	187A
		STR 	75H 			//02E6 	10F5
		LDR 	79H, 0H 			//02E7 	1879
		STR 	74H 			//02E8 	10F4
		RET 					//02E9 	1008

		//;DualMixer.C: 284: uint16_t readback;
		//;DualMixer.C: 285: unsigned char i;
		//;DualMixer.C: 287: POWER_INITIAL();
		MOVLP 	4H 			//02EA 	0184
		LCALL 	427H 			//02EB 	3427
		MOVLP 	2H 			//02EC 	0182

		//;DualMixer.C: 288: UART_INITIAL();
		MOVLP 	5H 			//02ED 	0185
		LCALL 	54EH 			//02EE 	354E
		MOVLP 	2H 			//02EF 	0182

		//;DualMixer.C: 289: RFFC2071A_Init();
		MOVLP 	5H 			//02F0 	0185
		LCALL 	53AH 			//02F1 	353A
		MOVLP 	2H 			//02F2 	0182

		//;DualMixer.C: 290: RFFC2071A_Enable();
		MOVLP 	5H 			//02F3 	0185
		LCALL 	581H 			//02F4 	3581
		MOVLP 	2H 			//02F5 	0182

		//;DualMixer.C: 291: RFFC2071A_DefaultConfig();
		MOVLP 	1H 			//02F6 	0181
		LCALL 	1D7H 			//02F7 	31D7
		MOVLP 	2H 			//02F8 	0182

		//;DualMixer.C: 294: {
		//;DualMixer.C: 295: readback = RFFC2071A_ReadReg(0x1F);
		LDWI 	1FH 			//02F9 	001F
		MOVLP 	2H 			//02FA 	0182
		LCALL 	273H 			//02FB 	3273
		MOVLP 	2H 			//02FC 	0182
		LDR 	75H, 0H 			//02FD 	1875
		MOVLB 	0H 			//02FE 	1020
		STR 	57H 			//02FF 	10D7
		LDR 	74H, 0H 			//0300 	1874
		STR 	56H 			//0301 	10D6

		//;DualMixer.C: 298: SendStringToUART("RB:0x");
		LDWI 	8BH 			//0302 	008B
		STR 	73H 			//0303 	10F3
		LDWI 	85H 			//0304 	0085
		STR 	74H 			//0305 	10F4
		MOVLP 	5H 			//0306 	0185
		LCALL 	50EH 			//0307 	350E
		MOVLP 	2H 			//0308 	0182

		//;DualMixer.C: 299: SendByteToUART(HiNibbleToHex((unsigned char)(readback >> 8)));
		MOVLB 	0H 			//0309 	1020
		LDR 	57H, 0H 			//030A 	1857
		MOVLP 	5H 			//030B 	0185
		LCALL 	55EH 			//030C 	355E
		MOVLP 	2H 			//030D 	0182
		MOVLP 	4H 			//030E 	0184
		LCALL 	47DH 			//030F 	347D
		MOVLP 	2H 			//0310 	0182

		//;DualMixer.C: 300: SendByteToUART(LoNibbleToHex((unsigned char)(readback >> 8)));
		MOVLB 	0H 			//0311 	1020
		LDR 	57H, 0H 			//0312 	1857
		MOVLP 	5H 			//0313 	0185
		LCALL 	576H 			//0314 	3576
		MOVLP 	2H 			//0315 	0182
		MOVLP 	4H 			//0316 	0184
		LCALL 	47DH 			//0317 	347D
		MOVLP 	2H 			//0318 	0182

		//;DualMixer.C: 301: SendByteToUART(HiNibbleToHex((unsigned char)(readback & 0xFF)));
		MOVLB 	0H 			//0319 	1020
		LDR 	56H, 0H 			//031A 	1856
		MOVLP 	5H 			//031B 	0185
		LCALL 	55EH 			//031C 	355E
		MOVLP 	2H 			//031D 	0182
		MOVLP 	4H 			//031E 	0184
		LCALL 	47DH 			//031F 	347D
		MOVLP 	2H 			//0320 	0182

		//;DualMixer.C: 302: SendByteToUART(LoNibbleToHex((unsigned char)(readback & 0xFF)));
		MOVLB 	0H 			//0321 	1020
		LDR 	56H, 0H 			//0322 	1856
		MOVLP 	5H 			//0323 	0185
		LCALL 	576H 			//0324 	3576
		MOVLP 	2H 			//0325 	0182
		MOVLP 	4H 			//0326 	0184
		LCALL 	47DH 			//0327 	347D
		MOVLP 	2H 			//0328 	0182

		//;DualMixer.C: 303: SendStringToUART(" LOCK:");
		LDWI 	F0H 			//0329 	00F0
		STR 	73H 			//032A 	10F3
		LDWI 	84H 			//032B 	0084
		STR 	74H 			//032C 	10F4
		MOVLP 	5H 			//032D 	0185
		LCALL 	50EH 			//032E 	350E
		MOVLP 	2H 			//032F 	0182

		//;DualMixer.C: 304: SendByteToUART('0' + (readback & 0x0001));
		MOVLB 	0H 			//0330 	1020
		LDR 	56H, 0H 			//0331 	1856
		ANDWI 	1H 			//0332 	0901
		ADDWI 	30H 			//0333 	0E30
		MOVLP 	4H 			//0334 	0184
		LCALL 	47DH 			//0335 	347D
		MOVLP 	2H 			//0336 	0182

		//;DualMixer.C: 305: SendStringToUART("\r\n");
		LDWI 	97H 			//0337 	0097
		STR 	73H 			//0338 	10F3
		LDWI 	85H 			//0339 	0085
		STR 	74H 			//033A 	10F4
		MOVLP 	5H 			//033B 	0185
		LCALL 	50EH 			//033C 	350E
		MOVLP 	2H 			//033D 	0182

		//;DualMixer.C: 308: for (i = 0; i < 2; i++)
		MOVLB 	0H 			//033E 	1020
		CLRF 	55H 			//033F 	11D5

		//;DualMixer.C: 309: {
		//;DualMixer.C: 310: DelayMs(250);
		LDWI 	FAH 			//0340 	00FA
		MOVLP 	4H 			//0341 	0184
		LCALL 	4F7H 			//0342 	34F7
		MOVLP 	2H 			//0343 	0182
		MOVLB 	0H 			//0344 	1020
		INCR 	55H, 1H 		//0345 	1AD5
		LDWI 	2H 			//0346 	0002
		SUBWR 	55H, 0H 		//0347 	1255
		BTSS 	3H, 0H 			//0348 	2C03
		LJUMP 	34BH 			//0349 	3B4B
		LJUMP 	34CH 			//034A 	3B4C
		LJUMP 	340H 			//034B 	3B40
		LJUMP 	2F9H 			//034C 	3AF9
		MOVLP 	0H 			//034D 	0180
		LJUMP 	56H 			//034E 	3856
		MOVLB 	0H 			//034F 	1020
		STR 	20H 			//0350 	10A0

		//;RFFC2071A.c: 91: uint8_t i;
		//;RFFC2071A.c: 92: uint32_t tx_data;
		//;RFFC2071A.c: 95: tx_data = ((uint32_t)(addr & 0x7F) << 16) | data;
		LDR 	20H, 0H 			//0351 	1820
		ANDWI 	7FH 			//0352 	097F
		CLRF 	21H 			//0353 	11A1
		CLRF 	22H 			//0354 	11A2
		STR 	23H 			//0355 	10A3
		CLRF 	24H 			//0356 	11A4
		LDR 	74H, 0H 			//0357 	1874
		STR 	76H 			//0358 	10F6
		LDR 	75H, 0H 			//0359 	1875
		STR 	77H 			//035A 	10F7
		CLRF 	78H 			//035B 	11F8
		CLRF 	79H 			//035C 	11F9
		LDR 	76H, 0H 			//035D 	1876
		IORWR 	21H, 1H 		//035E 	14A1
		LDR 	77H, 0H 			//035F 	1877
		IORWR 	22H, 1H 		//0360 	14A2
		LDR 	78H, 0H 			//0361 	1878
		IORWR 	23H, 1H 		//0362 	14A3
		LDR 	79H, 0H 			//0363 	1879
		IORWR 	24H, 1H 		//0364 	14A4

		//;RFFC2071A.c: 97: (__rffc_dummy_trisb &= (uint8_t)~0x02);
		BCR 	58H, 1H 			//0365 	20D8

		//;RFFC2071A.c: 98: (PA0 = 0);
		BCR 	CH, 0H 			//0366 	200C

		//;RFFC2071A.c: 99: delay_us(1);
		CLRF 	72H 			//0367 	11F2
		INCR 	72H, 1H 		//0368 	1AF2
		CLRF 	73H 			//0369 	11F3
		MOVLP 	5H 			//036A 	0185
		LCALL 	524H 			//036B 	3524
		MOVLP 	3H 			//036C 	0183

		//;RFFC2071A.c: 102: for (i = 0; i < 24; i++) {
		MOVLB 	0H 			//036D 	1020
		CLRF 	25H 			//036E 	11A5

		//;RFFC2071A.c: 104: if (tx_data & 0x800000) {
		BTSS 	23H, 7H 		//036F 	2FA3
		LJUMP 	372H 			//0370 	3B72
		LJUMP 	373H 			//0371 	3B73
		LJUMP 	375H 			//0372 	3B75

		//;RFFC2071A.c: 105: (PB1 = 1);
		BSR 	DH, 1H 			//0373 	248D

		//;RFFC2071A.c: 106: } else {
		LJUMP 	376H 			//0374 	3B76

		//;RFFC2071A.c: 107: (PB1 = 0);
		BCR 	DH, 1H 			//0375 	208D

		//;RFFC2071A.c: 108: }
		//;RFFC2071A.c: 109: tx_data <<= 1;
		LSLF 	21H, 1H 		//0376 	05A1
		RLR 	22H, 1H 			//0377 	1DA2
		RLR 	23H, 1H 			//0378 	1DA3
		RLR 	24H, 1H 			//0379 	1DA4

		//;RFFC2071A.c: 111: delay_us(1);
		CLRF 	72H 			//037A 	11F2
		INCR 	72H, 1H 		//037B 	1AF2
		CLRF 	73H 			//037C 	11F3
		MOVLP 	5H 			//037D 	0185
		LCALL 	524H 			//037E 	3524
		MOVLP 	3H 			//037F 	0183

		//;RFFC2071A.c: 112: (PB0 = 1);
		MOVLB 	0H 			//0380 	1020
		BSR 	DH, 0H 			//0381 	240D

		//;RFFC2071A.c: 113: delay_us(1);
		CLRF 	72H 			//0382 	11F2
		INCR 	72H, 1H 		//0383 	1AF2
		CLRF 	73H 			//0384 	11F3
		MOVLP 	5H 			//0385 	0185
		LCALL 	524H 			//0386 	3524
		MOVLP 	3H 			//0387 	0183

		//;RFFC2071A.c: 114: (PB0 = 0);
		MOVLB 	0H 			//0388 	1020
		BCR 	DH, 0H 			//0389 	200D

		//;RFFC2071A.c: 115: delay_us(1);
		CLRF 	72H 			//038A 	11F2
		INCR 	72H, 1H 		//038B 	1AF2
		CLRF 	73H 			//038C 	11F3
		MOVLP 	5H 			//038D 	0185
		LCALL 	524H 			//038E 	3524
		MOVLP 	3H 			//038F 	0183
		MOVLB 	0H 			//0390 	1020
		INCR 	25H, 1H 		//0391 	1AA5
		LDWI 	18H 			//0392 	0018
		SUBWR 	25H, 0H 		//0393 	1225
		BTSS 	3H, 0H 			//0394 	2C03
		LJUMP 	397H 			//0395 	3B97
		LJUMP 	398H 			//0396 	3B98
		LJUMP 	36FH 			//0397 	3B6F

		//;RFFC2071A.c: 116: }
		//;RFFC2071A.c: 118: (PA0 = 1);
		BSR 	CH, 0H 			//0398 	240C

		//;RFFC2071A.c: 119: delay_us(1);
		CLRF 	72H 			//0399 	11F2
		INCR 	72H, 1H 		//039A 	1AF2
		CLRF 	73H 			//039B 	11F3
		MOVLP 	5H 			//039C 	0185
		LCALL 	524H 			//039D 	3524
		MOVLP 	3H 			//039E 	0183
		RET 					//039F 	1008
		CLRF 	20H 			//03A0 	11A0
		CLRF 	21H 			//03A1 	11A1
		CLRF 	22H 			//03A2 	11A2
		CLRF 	23H 			//03A3 	11A3
		LDR 	75H, 0H 			//03A4 	1875
		IORWR 	74H, 0H 		//03A5 	1474
		IORWR 	73H, 0H 		//03A6 	1473
		IORWR 	72H, 0H 		//03A7 	1472
		BTSC 	3H, 2H 			//03A8 	2903
		LJUMP 	3ABH 			//03A9 	3BAB
		LJUMP 	3ACH 			//03AA 	3BAC
		LJUMP 	3DFH 			//03AB 	3BDF
		CLRF 	24H 			//03AC 	11A4
		INCR 	24H, 1H 		//03AD 	1AA4
		LJUMP 	3B4H 			//03AE 	3BB4
		LSLF 	72H, 1H 		//03AF 	05F2
		RLR 	73H, 1H 			//03B0 	1DF3
		RLR 	74H, 1H 			//03B1 	1DF4
		RLR 	75H, 1H 			//03B2 	1DF5
		INCR 	24H, 1H 		//03B3 	1AA4
		BTSS 	75H, 7H 		//03B4 	2FF5
		LJUMP 	3B7H 			//03B5 	3BB7
		LJUMP 	3B8H 			//03B6 	3BB8
		LJUMP 	3AFH 			//03B7 	3BAF
		LSLF 	20H, 1H 		//03B8 	05A0
		RLR 	21H, 1H 			//03B9 	1DA1
		RLR 	22H, 1H 			//03BA 	1DA2
		RLR 	23H, 1H 			//03BB 	1DA3
		LDR 	75H, 0H 			//03BC 	1875
		SUBWR 	79H, 0H 		//03BD 	1279
		BTSS 	3H, 2H 			//03BE 	2D03
		LJUMP 	3CAH 			//03BF 	3BCA
		LDR 	74H, 0H 			//03C0 	1874
		SUBWR 	78H, 0H 		//03C1 	1278
		BTSS 	3H, 2H 			//03C2 	2D03
		LJUMP 	3CAH 			//03C3 	3BCA
		LDR 	73H, 0H 			//03C4 	1873
		SUBWR 	77H, 0H 		//03C5 	1277
		BTSS 	3H, 2H 			//03C6 	2D03
		LJUMP 	3CAH 			//03C7 	3BCA
		LDR 	72H, 0H 			//03C8 	1872
		SUBWR 	76H, 0H 		//03C9 	1276
		BTSS 	3H, 0H 			//03CA 	2C03
		LJUMP 	3CDH 			//03CB 	3BCD
		LJUMP 	3CEH 			//03CC 	3BCE
		LJUMP 	3D7H 			//03CD 	3BD7
		LDR 	72H, 0H 			//03CE 	1872
		SUBWR 	76H, 1H 		//03CF 	12F6
		LDR 	73H, 0H 			//03D0 	1873
		SUBWFB 	77H, 1H 		//03D1 	0BF7
		LDR 	74H, 0H 			//03D2 	1874
		SUBWFB 	78H, 1H 		//03D3 	0BF8
		LDR 	75H, 0H 			//03D4 	1875
		SUBWFB 	79H, 1H 		//03D5 	0BF9
		BSR 	20H, 0H 			//03D6 	2420
		LSRF 	75H, 1H 		//03D7 	06F5
		RRR 	74H, 1H 			//03D8 	1CF4
		RRR 	73H, 1H 			//03D9 	1CF3
		RRR 	72H, 1H 			//03DA 	1CF2
		DECRSZ 	24H, 1H 		//03DB 	1BA4
		LJUMP 	3DEH 			//03DC 	3BDE
		LJUMP 	3DFH 			//03DD 	3BDF
		LJUMP 	3B8H 			//03DE 	3BB8
		LDR 	23H, 0H 			//03DF 	1823
		STR 	75H 			//03E0 	10F5
		LDR 	22H, 0H 			//03E1 	1822
		STR 	74H 			//03E2 	10F4
		LDR 	21H, 0H 			//03E3 	1821
		STR 	73H 			//03E4 	10F3
		LDR 	20H, 0H 			//03E5 	1820
		STR 	72H 			//03E6 	10F2
		RET 					//03E7 	1008
		LDR 	75H, 0H 			//03E8 	1875
		IORWR 	74H, 0H 		//03E9 	1474
		IORWR 	73H, 0H 		//03EA 	1473
		IORWR 	72H, 0H 		//03EB 	1472
		BTSC 	3H, 2H 			//03EC 	2903
		LJUMP 	3EFH 			//03ED 	3BEF
		LJUMP 	3F0H 			//03EE 	3BF0
		LJUMP 	41EH 			//03EF 	3C1E
		CLRF 	7AH 			//03F0 	11FA
		INCR 	7AH, 1H 		//03F1 	1AFA
		LJUMP 	3F8H 			//03F2 	3BF8
		LSLF 	72H, 1H 		//03F3 	05F2
		RLR 	73H, 1H 			//03F4 	1DF3
		RLR 	74H, 1H 			//03F5 	1DF4
		RLR 	75H, 1H 			//03F6 	1DF5
		INCR 	7AH, 1H 		//03F7 	1AFA
		BTSS 	75H, 7H 		//03F8 	2FF5
		LJUMP 	3FBH 			//03F9 	3BFB
		LJUMP 	3FCH 			//03FA 	3BFC
		LJUMP 	3F3H 			//03FB 	3BF3
		LDR 	75H, 0H 			//03FC 	1875
		SUBWR 	79H, 0H 		//03FD 	1279
		BTSS 	3H, 2H 			//03FE 	2D03
		LJUMP 	40AH 			//03FF 	3C0A
		LDR 	74H, 0H 			//0400 	1874
		SUBWR 	78H, 0H 		//0401 	1278
		BTSS 	3H, 2H 			//0402 	2D03
		LJUMP 	40AH 			//0403 	3C0A
		LDR 	73H, 0H 			//0404 	1873
		SUBWR 	77H, 0H 		//0405 	1277
		BTSS 	3H, 2H 			//0406 	2D03
		LJUMP 	40AH 			//0407 	3C0A
		LDR 	72H, 0H 			//0408 	1872
		SUBWR 	76H, 0H 		//0409 	1276
		BTSS 	3H, 0H 			//040A 	2C03
		LJUMP 	40DH 			//040B 	3C0D
		LJUMP 	40EH 			//040C 	3C0E
		LJUMP 	416H 			//040D 	3C16
		LDR 	72H, 0H 			//040E 	1872
		SUBWR 	76H, 1H 		//040F 	12F6
		LDR 	73H, 0H 			//0410 	1873
		SUBWFB 	77H, 1H 		//0411 	0BF7
		LDR 	74H, 0H 			//0412 	1874
		SUBWFB 	78H, 1H 		//0413 	0BF8
		LDR 	75H, 0H 			//0414 	1875
		SUBWFB 	79H, 1H 		//0415 	0BF9
		LSRF 	75H, 1H 		//0416 	06F5
		RRR 	74H, 1H 			//0417 	1CF4
		RRR 	73H, 1H 			//0418 	1CF3
		RRR 	72H, 1H 			//0419 	1CF2
		DECRSZ 	7AH, 1H 		//041A 	1BFA
		LJUMP 	41DH 			//041B 	3C1D
		LJUMP 	41EH 			//041C 	3C1E
		LJUMP 	3FCH 			//041D 	3BFC
		LDR 	79H, 0H 			//041E 	1879
		STR 	75H 			//041F 	10F5
		LDR 	78H, 0H 			//0420 	1878
		STR 	74H 			//0421 	10F4
		LDR 	77H, 0H 			//0422 	1877
		STR 	73H 			//0423 	10F3
		LDR 	76H, 0H 			//0424 	1876
		STR 	72H 			//0425 	10F2
		RET 					//0426 	1008

		//;DualMixer.C: 114: OSCCON = 0B01110001;
		LDWI 	71H 			//0427 	0071
		MOVLB 	1H 			//0428 	1021
		STR 	19H 			//0429 	1099

		//;DualMixer.C: 115: INTCON = 0;
		CLRF 	BH 			//042A 	118B

		//;DualMixer.C: 117: PORTA = 0B00000000;
		MOVLB 	0H 			//042B 	1020
		CLRF 	CH 			//042C 	118C

		//;DualMixer.C: 118: TRISA = 0B10101100;
		LDWI 	ACH 			//042D 	00AC
		MOVLB 	1H 			//042E 	1021
		STR 	CH 			//042F 	108C

		//;DualMixer.C: 119: PORTB = 0B00000000;
		MOVLB 	0H 			//0430 	1020
		CLRF 	DH 			//0431 	118D

		//;DualMixer.C: 120: TRISB = 0B11000000;
		LDWI 	C0H 			//0432 	00C0
		MOVLB 	1H 			//0433 	1021
		STR 	DH 			//0434 	108D

		//;DualMixer.C: 121: PORTC = 0B00000000;
		MOVLB 	0H 			//0435 	1020
		CLRF 	EH 			//0436 	118E

		//;DualMixer.C: 122: TRISC = 0B00000000;
		MOVLB 	1H 			//0437 	1021
		CLRF 	EH 			//0438 	118E

		//;DualMixer.C: 124: WPUA = 0B00010011;
		LDWI 	13H 			//0439 	0013
		MOVLB 	3H 			//043A 	1023
		STR 	CH 			//043B 	108C

		//;DualMixer.C: 125: WPUB = 0B00000010;
		LDWI 	2H 			//043C 	0002
		STR 	DH 			//043D 	108D

		//;DualMixer.C: 126: WPUC = 0B00000000;
		CLRF 	EH 			//043E 	118E

		//;DualMixer.C: 128: WPDA = 0B10000000;
		LDWI 	80H 			//043F 	0080
		MOVLB 	4H 			//0440 	1024
		STR 	CH 			//0441 	108C

		//;DualMixer.C: 129: WPDB = 0B00000000;
		CLRF 	DH 			//0442 	118D

		//;DualMixer.C: 130: WPDC = 0B00000000;
		CLRF 	EH 			//0443 	118E

		//;DualMixer.C: 132: PSRC0 = 0B11111111;
		LDWI 	FFH 			//0444 	00FF
		MOVLB 	2H 			//0445 	1022
		STR 	1AH 			//0446 	109A

		//;DualMixer.C: 133: PSRC1 = 0B11111111;
		LDWI 	FFH 			//0447 	00FF
		STR 	1BH 			//0448 	109B

		//;DualMixer.C: 134: PSRC2 = 0B11111111;
		LDWI 	FFH 			//0449 	00FF
		STR 	1CH 			//044A 	109C

		//;DualMixer.C: 136: PSINK0 = 0B11111111;
		LDWI 	FFH 			//044B 	00FF
		MOVLB 	3H 			//044C 	1023
		STR 	1AH 			//044D 	109A

		//;DualMixer.C: 137: PSINK1 = 0B11111111;
		LDWI 	FFH 			//044E 	00FF
		STR 	1BH 			//044F 	109B

		//;DualMixer.C: 138: PSINK2 = 0B11111111;
		LDWI 	FFH 			//0450 	00FF
		STR 	1CH 			//0451 	109C

		//;DualMixer.C: 140: ANSELA = 0B00000000;
		CLRF 	17H 			//0452 	1197
		RET 					//0453 	1008
		CLRF 	7AH 			//0454 	11FA
		CLRF 	7BH 			//0455 	11FB
		CLRF 	7CH 			//0456 	11FC
		CLRF 	7DH 			//0457 	11FD
		BTSS 	72H, 0H 		//0458 	2C72
		LJUMP 	45BH 			//0459 	3C5B
		LJUMP 	45CH 			//045A 	3C5C
		LJUMP 	464H 			//045B 	3C64
		LDR 	76H, 0H 			//045C 	1876
		ADDWR 	7AH, 1H 		//045D 	17FA
		LDR 	77H, 0H 			//045E 	1877
		ADDWFC 	7BH, 1H 		//045F 	0DFB
		LDR 	78H, 0H 			//0460 	1878
		ADDWFC 	7CH, 1H 		//0461 	0DFC
		LDR 	79H, 0H 			//0462 	1879
		ADDWFC 	7DH, 1H 		//0463 	0DFD
		LSLF 	76H, 1H 		//0464 	05F6
		RLR 	77H, 1H 			//0465 	1DF7
		RLR 	78H, 1H 			//0466 	1DF8
		RLR 	79H, 1H 			//0467 	1DF9
		LSRF 	75H, 1H 		//0468 	06F5
		RRR 	74H, 1H 			//0469 	1CF4
		RRR 	73H, 1H 			//046A 	1CF3
		RRR 	72H, 1H 			//046B 	1CF2
		LDR 	75H, 0H 			//046C 	1875
		IORWR 	74H, 0H 		//046D 	1474
		IORWR 	73H, 0H 		//046E 	1473
		IORWR 	72H, 0H 		//046F 	1472
		BTSS 	3H, 2H 			//0470 	2D03
		LJUMP 	473H 			//0471 	3C73
		LJUMP 	474H 			//0472 	3C74
		LJUMP 	458H 			//0473 	3C58
		LDR 	7DH, 0H 			//0474 	187D
		STR 	75H 			//0475 	10F5
		LDR 	7CH, 0H 			//0476 	187C
		STR 	74H 			//0477 	10F4
		LDR 	7BH, 0H 			//0478 	187B
		STR 	73H 			//0479 	10F3
		LDR 	7AH, 0H 			//047A 	187A
		STR 	72H 			//047B 	10F2
		RET 					//047C 	1008
		STR 	72H 			//047D 	10F2

		//;DualMixer.C: 207: if (txCounter == 0 && TXEF)
		MOVLB 	0H 			//047E 	1020
		LDR 	5EH, 0H 			//047F 	185E
		BTSS 	3H, 2H 			//0480 	2D03
		LJUMP 	483H 			//0481 	3C83
		LJUMP 	484H 			//0482 	3C84
		LJUMP 	48DH 			//0483 	3C8D
		MOVLB 	9H 			//0484 	1029
		BTSS 	12H, 5H 		//0485 	2E92
		LJUMP 	488H 			//0486 	3C88
		LJUMP 	489H 			//0487 	3C89
		LJUMP 	48DH 			//0488 	3C8D

		//;DualMixer.C: 208: {
		//;DualMixer.C: 209: TCF = 1;
		BSR 	1CH, 0H 			//0489 	241C

		//;DualMixer.C: 210: URDATAL = data;
		LDR 	72H, 0H 			//048A 	1872
		STR 	CH 			//048B 	108C
		LJUMP 	4A0H 			//048C 	3CA0

		//;DualMixer.C: 212: }
		//;DualMixer.C: 213: if (txCounter >= 64)
		LDWI 	40H 			//048D 	0040
		MOVLB 	0H 			//048E 	1020
		SUBWR 	5EH, 0H 		//048F 	125E
		BTSS 	3H, 0H 			//0490 	2C03
		LJUMP 	493H 			//0491 	3C93
		LJUMP 	494H 			//0492 	3C94
		LJUMP 	495H 			//0493 	3C95
		LJUMP 	4A0H 			//0494 	3CA0

		//;DualMixer.C: 216: }
		//;DualMixer.C: 217: toSend[txIndexIp] = data;
		LDR 	5DH, 0H 			//0495 	185D
		ADDWI 	20H 			//0496 	0E20
		STR 	6H 			//0497 	1086
		LDWI 	1H 			//0498 	0001
		STR 	7H 			//0499 	1087
		LDR 	72H, 0H 			//049A 	1872
		STR 	1H 			//049B 	1081

		//;DualMixer.C: 218: txIndexIp = (txIndexIp + 1) & (64 - 1);
		INCR 	5DH, 1H 		//049C 	1ADD
		LDWI 	3FH 			//049D 	003F
		ANDWR 	5DH, 1H 		//049E 	15DD

		//;DualMixer.C: 219: txCounter++;
		INCR 	5EH, 1H 		//049F 	1ADE
		RET 					//04A0 	1008

		//;RFFC2071A.c: 341: RFFC2071A_CalcFrequency(freq1_mhz, 1);
		LDR 	50H, 0H 			//04A1 	1850
		STR 	29H 			//04A2 	10A9
		LDR 	4FH, 0H 			//04A3 	184F
		STR 	28H 			//04A4 	10A8
		LDR 	4EH, 0H 			//04A5 	184E
		STR 	27H 			//04A6 	10A7
		LDR 	4DH, 0H 			//04A7 	184D
		STR 	26H 			//04A8 	10A6
		CLRF 	2AH 			//04A9 	11AA
		INCR 	2AH, 1H 		//04AA 	1AAA
		MOVLP 	0H 			//04AB 	0180
		LCALL 	74H 			//04AC 	3074
		MOVLP 	4H 			//04AD 	0184

		//;RFFC2071A.c: 342: RFFC2071A_CalcFrequency(freq2_mhz, 2);
		MOVLB 	0H 			//04AE 	1020
		LDR 	54H, 0H 			//04AF 	1854
		STR 	29H 			//04B0 	10A9
		LDR 	53H, 0H 			//04B1 	1853
		STR 	28H 			//04B2 	10A8
		LDR 	52H, 0H 			//04B3 	1852
		STR 	27H 			//04B4 	10A7
		LDR 	51H, 0H 			//04B5 	1851
		STR 	26H 			//04B6 	10A6
		LDWI 	2H 			//04B7 	0002
		STR 	2AH 			//04B8 	10AA
		MOVLP 	0H 			//04B9 	0180
		LCALL 	74H 			//04BA 	3074
		MOVLP 	4H 			//04BB 	0184

		//;RFFC2071A.c: 345: RFFC2071A_WriteReg(0x1D, 0x0001);
		CLRF 	74H 			//04BC 	11F4
		INCR 	74H, 1H 		//04BD 	1AF4
		CLRF 	75H 			//04BE 	11F5
		LDWI 	1DH 			//04BF 	001D
		MOVLP 	3H 			//04C0 	0183
		LCALL 	34FH 			//04C1 	334F
		MOVLP 	4H 			//04C2 	0184
		RET 					//04C3 	1008

		//;RFFC2071A.c: 77: (PB2 = 0);
		MOVLB 	0H 			//04C4 	1020
		BCR 	DH, 2H 			//04C5 	210D

		//;RFFC2071A.c: 78: (PA1 = 0);
		BCR 	CH, 1H 			//04C6 	208C

		//;RFFC2071A.c: 79: delay_us(100);
		LDWI 	64H 			//04C7 	0064
		STR 	72H 			//04C8 	10F2
		CLRF 	73H 			//04C9 	11F3
		MOVLP 	5H 			//04CA 	0185
		LCALL 	524H 			//04CB 	3524
		MOVLP 	4H 			//04CC 	0184

		//;RFFC2071A.c: 80: (PA1 = 1);
		MOVLB 	0H 			//04CD 	1020
		BSR 	CH, 1H 			//04CE 	248C

		//;RFFC2071A.c: 81: delay_us(100);
		LDWI 	64H 			//04CF 	0064
		STR 	72H 			//04D0 	10F2
		CLRF 	73H 			//04D1 	11F3
		MOVLP 	5H 			//04D2 	0185
		LCALL 	524H 			//04D3 	3524
		MOVLP 	4H 			//04D4 	0184

		//;RFFC2071A.c: 82: (PB2 = 1);
		MOVLB 	0H 			//04D5 	1020
		BSR 	DH, 2H 			//04D6 	250D

		//;RFFC2071A.c: 83: delay_us(1000);
		LDWI 	E8H 			//04D7 	00E8
		STR 	72H 			//04D8 	10F2
		LDWI 	3H 			//04D9 	0003
		STR 	73H 			//04DA 	10F3
		MOVLP 	5H 			//04DB 	0185
		LCALL 	524H 			//04DC 	3524
		MOVLP 	4H 			//04DD 	0184
		RET 					//04DE 	1008
		RETW 	30H 			//04DF 	0430
		RETW 	31H 			//04E0 	0431
		RETW 	32H 			//04E1 	0432
		RETW 	33H 			//04E2 	0433
		RETW 	34H 			//04E3 	0434
		RETW 	35H 			//04E4 	0435
		RETW 	36H 			//04E5 	0436
		RETW 	37H 			//04E6 	0437
		RETW 	38H 			//04E7 	0438
		RETW 	39H 			//04E8 	0439
		RETW 	41H 			//04E9 	0441
		RETW 	42H 			//04EA 	0442
		RETW 	43H 			//04EB 	0443
		RETW 	44H 			//04EC 	0444
		RETW 	45H 			//04ED 	0445
		RETW 	46H 			//04EE 	0446
		RETW 	0H 			//04EF 	0400
		RETW 	20H 			//04F0 	0420
		RETW 	4CH 			//04F1 	044C
		RETW 	4FH 			//04F2 	044F
		RETW 	43H 			//04F3 	0443
		RETW 	4BH 			//04F4 	044B
		RETW 	3AH 			//04F5 	043A
		RETW 	0H 			//04F6 	0400
		STR 	74H 			//04F7 	10F4

		//;DualMixer.C: 164: unsigned char a, b;
		//;DualMixer.C: 165: for (a = 0; a < Time; a++)
		CLRF 	75H 			//04F8 	11F5
		LJUMP 	507H 			//04F9 	3D07

		//;DualMixer.C: 166: {
		//;DualMixer.C: 167: for (b = 0; b < 5; b++)
		CLRF 	76H 			//04FA 	11F6

		//;DualMixer.C: 168: {
		//;DualMixer.C: 169: DelayUs(197);
		LDWI 	C5H 			//04FB 	00C5
		MOVLP 	5H 			//04FC 	0185
		LCALL 	56AH 			//04FD 	356A
		MOVLP 	4H 			//04FE 	0184
		INCR 	76H, 1H 		//04FF 	1AF6
		LDWI 	5H 			//0500 	0005
		SUBWR 	76H, 0H 		//0501 	1276
		BTSS 	3H, 0H 			//0502 	2C03
		LJUMP 	505H 			//0503 	3D05
		LJUMP 	506H 			//0504 	3D06
		LJUMP 	4FBH 			//0505 	3CFB
		INCR 	75H, 1H 		//0506 	1AF5
		LDR 	74H, 0H 			//0507 	1874
		SUBWR 	75H, 0H 		//0508 	1275
		BTSS 	3H, 0H 			//0509 	2C03
		LJUMP 	50CH 			//050A 	3D0C
		LJUMP 	50DH 			//050B 	3D0D
		LJUMP 	4FAH 			//050C 	3CFA
		RET 					//050D 	1008

		//;DualMixer.C: 230: while (*str)
		LJUMP 	51AH 			//050E 	3D1A

		//;DualMixer.C: 231: {
		//;DualMixer.C: 232: SendByteToUART(*str);
		LDR 	73H, 0H 			//050F 	1873
		STR 	4H 			//0510 	1084
		LDR 	74H, 0H 			//0511 	1874
		STR 	5H 			//0512 	1085
		LDR 	0H, 0H 			//0513 	1800
		MOVLP 	4H 			//0514 	0184
		LCALL 	47DH 			//0515 	347D
		MOVLP 	5H 			//0516 	0185

		//;DualMixer.C: 233: str++;
		INCR 	73H, 1H 		//0517 	1AF3
		BTSC 	3H, 2H 			//0518 	2903
		INCR 	74H, 1H 		//0519 	1AF4
		LDR 	73H, 0H 			//051A 	1873
		STR 	4H 			//051B 	1084
		LDR 	74H, 0H 			//051C 	1874
		STR 	5H 			//051D 	1085
		MOVIW 	FSR0++ 		//051E 	1012
		BTSS 	3H, 2H 			//051F 	2D03
		LJUMP 	522H 			//0520 	3D22
		LJUMP 	523H 			//0521 	3D23
		LJUMP 	50FH 			//0522 	3D0F
		RET 					//0523 	1008

		//;RFFC2071A.c: 44: while (us--) {
		LJUMP 	52DH 			//0524 	3D2D

		//;RFFC2071A.c: 45: __nop(); __nop(); __nop(); __nop();
		NOP 					//0525 	1000
		NOP 					//0526 	1000
		NOP 					//0527 	1000
		NOP 					//0528 	1000

		//;RFFC2071A.c: 46: __nop(); __nop(); __nop(); __nop();
		NOP 					//0529 	1000
		NOP 					//052A 	1000
		NOP 					//052B 	1000
		NOP 					//052C 	1000
		LDWI 	1H 			//052D 	0001
		SUBWR 	72H, 1H 		//052E 	12F2
		LDWI 	0H 			//052F 	0000
		SUBWFB 	73H, 1H 		//0530 	0BF3
		INCR 	72H, 0H 		//0531 	1A72
		BTSS 	3H, 2H 			//0532 	2D03
		LJUMP 	538H 			//0533 	3D38
		INCR 	73H, 0H 		//0534 	1A73
		BTSS 	3H, 2H 			//0535 	2D03
		LJUMP 	538H 			//0536 	3D38
		LJUMP 	539H 			//0537 	3D39
		LJUMP 	525H 			//0538 	3D25
		RET 					//0539 	1008

		//;RFFC2071A.c: 56: (PA0 = 1);
		MOVLB 	0H 			//053A 	1020
		BSR 	CH, 0H 			//053B 	240C

		//;RFFC2071A.c: 57: (PB0 = 0);
		BCR 	DH, 0H 			//053C 	200D

		//;RFFC2071A.c: 58: (PB1 = 0);
		BCR 	DH, 1H 			//053D 	208D

		//;RFFC2071A.c: 59: (PB2 = 0);
		BCR 	DH, 2H 			//053E 	210D

		//;RFFC2071A.c: 60: (PA1 = 1);
		BSR 	CH, 1H 			//053F 	248C

		//;RFFC2071A.c: 61: (PA4 = 0);
		BCR 	CH, 4H 			//0540 	220C

		//;RFFC2071A.c: 63: delay_us(100);
		LDWI 	64H 			//0541 	0064
		STR 	72H 			//0542 	10F2
		CLRF 	73H 			//0543 	11F3
		MOVLP 	5H 			//0544 	0185
		LCALL 	524H 			//0545 	3524
		MOVLP 	5H 			//0546 	0185

		//;RFFC2071A.c: 66: RFFC2071A_Reset();
		MOVLP 	4H 			//0547 	0184
		LCALL 	4C4H 			//0548 	34C4
		MOVLP 	5H 			//0549 	0185

		//;RFFC2071A.c: 69: RFFC2071A_DefaultConfig();
		MOVLP 	1H 			//054A 	0181
		LCALL 	1D7H 			//054B 	31D7
		MOVLP 	5H 			//054C 	0185
		RET 					//054D 	1008

		//;DualMixer.C: 183: PCKEN |= 0B00100000;
		MOVLB 	1H 			//054E 	1021
		BSR 	1AH, 5H 			//054F 	269A

		//;DualMixer.C: 185: URIER = 0B00100001;
		LDWI 	21H 			//0550 	0021
		MOVLB 	9H 			//0551 	1029
		STR 	EH 			//0552 	108E

		//;DualMixer.C: 186: URLCR = 0B00000001;
		LDWI 	1H 			//0553 	0001
		STR 	FH 			//0554 	108F

		//;DualMixer.C: 187: URMCR = 0B00011000;
		LDWI 	18H 			//0555 	0018
		STR 	11H 			//0556 	1091

		//;DualMixer.C: 189: URDLL = 104;
		LDWI 	68H 			//0557 	0068
		STR 	14H 			//0558 	1094

		//;DualMixer.C: 190: URDLH = 0;
		CLRF 	15H 			//0559 	1195

		//;DualMixer.C: 191: TCF = 1;
		BSR 	1CH, 0H 			//055A 	241C

		//;DualMixer.C: 192: INTCON = 0B11000000;
		LDWI 	C0H 			//055B 	00C0
		STR 	BH 			//055C 	108B
		RET 					//055D 	1008
		STR 	72H 			//055E 	10F2

		//;DualMixer.C: 264: return hex_chars[(val >> 4) & 0x0F];
		SWAPR 	72H, 0H 		//055F 	1E72
		ANDWI 	FH 			//0560 	090F
		ANDWI 	FH 			//0561 	090F
		ADDWI 	DFH 			//0562 	0EDF
		STR 	4H 			//0563 	1084
		LDWI 	84H 			//0564 	0084
		BTSC 	3H, 0H 			//0565 	2803
		ADDWI 	1H 			//0566 	0E01
		STR 	5H 			//0567 	1085
		LDR 	0H, 0H 			//0568 	1800
		RET 					//0569 	1008
		STR 	72H 			//056A 	10F2

		//;DualMixer.C: 150: unsigned char a;
		//;DualMixer.C: 151: for (a = 0; a < Time; a++)
		CLRF 	73H 			//056B 	11F3
		LJUMP 	56FH 			//056C 	3D6F

		//;DualMixer.C: 152: {
		//;DualMixer.C: 153: __nop();
		NOP 					//056D 	1000
		INCR 	73H, 1H 		//056E 	1AF3
		LDR 	72H, 0H 			//056F 	1872
		SUBWR 	73H, 0H 		//0570 	1273
		BTSS 	3H, 0H 			//0571 	2C03
		LJUMP 	574H 			//0572 	3D74
		LJUMP 	575H 			//0573 	3D75
		LJUMP 	56DH 			//0574 	3D6D
		RET 					//0575 	1008
		STR 	72H 			//0576 	10F2

		//;DualMixer.C: 274: return hex_chars[val & 0x0F];
		LDR 	72H, 0H 			//0577 	1872
		ANDWI 	FH 			//0578 	090F
		ADDWI 	DFH 			//0579 	0EDF
		STR 	4H 			//057A 	1084
		LDWI 	84H 			//057B 	0084
		BTSC 	3H, 0H 			//057C 	2803
		ADDWI 	1H 			//057D 	0E01
		STR 	5H 			//057E 	1085
		LDR 	0H, 0H 			//057F 	1800
		RET 					//0580 	1008

		//;RFFC2071A.c: 392: (PB2 = 1);
		MOVLB 	0H 			//0581 	1020
		BSR 	DH, 2H 			//0582 	250D

		//;RFFC2071A.c: 393: delay_us(1000);
		LDWI 	E8H 			//0583 	00E8
		STR 	72H 			//0584 	10F2
		LDWI 	3H 			//0585 	0003
		STR 	73H 			//0586 	10F3
		MOVLP 	5H 			//0587 	0185
		LCALL 	524H 			//0588 	3524
		MOVLP 	5H 			//0589 	0185
		RET 					//058A 	1008
		RETW 	52H 			//058B 	0452
		RETW 	42H 			//058C 	0442
		RETW 	3AH 			//058D 	043A
		RETW 	30H 			//058E 	0430
		RETW 	78H 			//058F 	0478
		RETW 	0H 			//0590 	0400
		CLRWDT 			//0591 	1064
		CLRF 	0H 			//0592 	1180
		ADDFSR 	0H, 1H 		//0593 	0101
		DECRSZ 	9H, 1H 		//0594 	1B89
		LJUMP 	592H 			//0595 	3D92
		RETW 	0H 			//0596 	0400
		RETW 	DH 			//0597 	040D
		RETW 	AH 			//0598 	040A
		RETW 	0H 			//0599 	0400
		RET 					//059A 	1008
			END
