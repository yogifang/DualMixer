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
//		RFFC2071A_ReadReg@rx_data		EQU		78H
//		RFFC2071A_ReadReg@i		EQU		7BH
//		RFFC2071A_ReadReg@tx_byte		EQU		7AH
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

		//;RFFC2071A.c: 294: freq1 = ((n_div & 0x07) << 13) | ((n_int & 0x0FFF) << 1) | ((n_frac >
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
		LCALL 	57AH 			//0052 	357A
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
		LCALL 	571H 			//005E 	3571
		MOVLP 	0H 			//005F 	0180
		LDWI 	A0H 			//0060 	00A0
		STR 	4H 			//0061 	1084
		LDWI 	0H 			//0062 	0000
		STR 	5H 			//0063 	1085
		LDWI 	20H 			//0064 	0020
		MOVLP 	5H 			//0065 	0185
		LCALL 	571H 			//0066 	3571
		MOVLP 	0H 			//0067 	0180
		LDWI 	20H 			//0068 	0020
		STR 	4H 			//0069 	1084
		LDWI 	1H 			//006A 	0001
		STR 	5H 			//006B 	1085
		LDWI 	40H 			//006C 	0040
		MOVLP 	5H 			//006D 	0185
		LCALL 	571H 			//006E 	3571
		MOVLP 	0H 			//006F 	0180
		BCR 	7EH, 0H 			//0070 	207E
		MOVLB 	0H 			//0071 	1020
		MOVLP 	2H 			//0072 	0182
		LJUMP 	2DCH 			//0073 	3ADC

		//;RFFC2071A.c: 247: uint8_t n_div;
		//;RFFC2071A.c: 248: uint32_t n_lo;
		//;RFFC2071A.c: 249: uint16_t n_int;
		//;RFFC2071A.c: 250: uint32_t n_frac;
		//;RFFC2071A.c: 251: uint16_t freq1, freq2, freq3;
		//;RFFC2071A.c: 252: uint8_t reg_base;
		//;RFFC2071A.c: 255: reg_base = (path == 1) ? 0x0C : 0x0F;
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

		//;RFFC2071A.c: 258: if (freq_mhz >= 1500) {
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

		//;RFFC2071A.c: 259: n_lo = 1;
		CLRF 	44H 			//0090 	11C4
		INCR 	44H, 1H 		//0091 	1AC4
		CLRF 	45H 			//0092 	11C5
		CLRF 	46H 			//0093 	11C6
		CLRF 	47H 			//0094 	11C7

		//;RFFC2071A.c: 260: } else if (freq_mhz >= 750) {
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

		//;RFFC2071A.c: 261: n_lo = 2;
		LDWI 	2H 			//00A4 	0002
		STR 	44H 			//00A5 	10C4
		CLRF 	45H 			//00A6 	11C5
		CLRF 	46H 			//00A7 	11C6
		CLRF 	47H 			//00A8 	11C7

		//;RFFC2071A.c: 262: } else if (freq_mhz >= 375) {
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

		//;RFFC2071A.c: 263: n_lo = 4;
		LDWI 	4H 			//00B8 	0004
		STR 	44H 			//00B9 	10C4
		CLRF 	45H 			//00BA 	11C5
		CLRF 	46H 			//00BB 	11C6
		CLRF 	47H 			//00BC 	11C7

		//;RFFC2071A.c: 264: } else if (freq_mhz >= 188) {
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

		//;RFFC2071A.c: 265: n_lo = 8;
		LDWI 	8H 			//00CD 	0008
		STR 	44H 			//00CE 	10C4
		CLRF 	45H 			//00CF 	11C5
		CLRF 	46H 			//00D0 	11C6
		CLRF 	47H 			//00D1 	11C7

		//;RFFC2071A.c: 266: } else {
		LJUMP 	D8H 			//00D2 	38D8

		//;RFFC2071A.c: 267: n_lo = 16;
		LDWI 	10H 			//00D3 	0010
		STR 	44H 			//00D4 	10C4
		CLRF 	45H 			//00D5 	11C5
		CLRF 	46H 			//00D6 	11C6
		CLRF 	47H 			//00D7 	11C7

		//;RFFC2071A.c: 268: }
		//;RFFC2071A.c: 271: uint32_t vco_freq = freq_mhz * n_lo * 2;
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
		LCALL 	43EH 			//00E9 	343E
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

		//;RFFC2071A.c: 275: n_int = vco_freq / 26;
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
		LCALL 	38BH 			//0105 	338B
		MOVLP 	0H 			//0106 	0180
		LDR 	73H, 0H 			//0107 	1873
		STR 	36H 			//0108 	10B6
		LDR 	72H, 0H 			//0109 	1872
		STR 	35H 			//010A 	10B5

		//;RFFC2071A.c: 278: uint32_t remainder = vco_freq % 26;
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
		LCALL 	3D3H 			//0119 	33D3
		MOVLP 	0H 			//011A 	0180
		LDR 	75H, 0H 			//011B 	1875
		STR 	34H 			//011C 	10B4
		LDR 	74H, 0H 			//011D 	1874
		STR 	33H 			//011E 	10B3
		LDR 	73H, 0H 			//011F 	1873
		STR 	32H 			//0120 	10B2
		LDR 	72H, 0H 			//0121 	1872
		STR 	31H 			//0122 	10B1

		//;RFFC2071A.c: 279: n_frac = (remainder << 24) / 26;
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
		LCALL 	38BH 			//012E 	338B
		MOVLP 	0H 			//012F 	0180
		LDR 	75H, 0H 			//0130 	1875
		STR 	4BH 			//0131 	10CB
		LDR 	74H, 0H 			//0132 	1874
		STR 	4AH 			//0133 	10CA
		LDR 	73H, 0H 			//0134 	1873
		STR 	49H 			//0135 	10C9
		LDR 	72H, 0H 			//0136 	1872
		STR 	48H 			//0137 	10C8

		//;RFFC2071A.c: 282: switch (n_lo) {
		LJUMP 	14AH 			//0138 	394A
		CLRF 	43H 			//0139 	11C3
		LJUMP 	16DH 			//013A 	396D

		//;RFFC2071A.c: 284: case 2: n_div = 1; break;
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

		//;RFFC2071A.c: 297: freq2 = (n_frac >> 7) & 0xFFFF;
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

		//;RFFC2071A.c: 300: freq3 = ((n_frac & 0x7F) << 9) | (0x02 << 7);
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

		//;RFFC2071A.c: 303: RFFC2071A_WriteReg(reg_base + 0, freq1);
		LDR 	3EH, 0H 			//01BA 	183E
		STR 	75H 			//01BB 	10F5
		LDR 	3DH, 0H 			//01BC 	183D
		STR 	74H 			//01BD 	10F4
		LDR 	4CH, 0H 			//01BE 	184C
		MOVLP 	3H 			//01BF 	0183
		LCALL 	33BH 			//01C0 	333B
		MOVLP 	0H 			//01C1 	0180

		//;RFFC2071A.c: 304: RFFC2071A_WriteReg(reg_base + 1, freq2);
		MOVLB 	0H 			//01C2 	1020
		LDR 	38H, 0H 			//01C3 	1838
		STR 	75H 			//01C4 	10F5
		LDR 	37H, 0H 			//01C5 	1837
		STR 	74H 			//01C6 	10F4
		LDR 	4CH, 0H 			//01C7 	184C
		ADDWI 	1H 			//01C8 	0E01
		MOVLP 	3H 			//01C9 	0183
		LCALL 	33BH 			//01CA 	333B
		MOVLP 	0H 			//01CB 	0180

		//;RFFC2071A.c: 305: RFFC2071A_WriteReg(reg_base + 2, freq3);
		MOVLB 	0H 			//01CC 	1020
		LDR 	3CH, 0H 			//01CD 	183C
		STR 	75H 			//01CE 	10F5
		LDR 	3BH, 0H 			//01CF 	183B
		STR 	74H 			//01D0 	10F4
		LDR 	4CH, 0H 			//01D1 	184C
		ADDWI 	2H 			//01D2 	0E02
		MOVLP 	3H 			//01D3 	0183
		LCALL 	33BH 			//01D4 	333B
		MOVLP 	0H 			//01D5 	0180
		RET 					//01D6 	1008

		//;RFFC2071A.c: 185: RFFC2071A_WriteReg(0x00, 0xBEFA);
		LDWI 	FAH 			//01D7 	00FA
		STR 	74H 			//01D8 	10F4
		LDWI 	BEH 			//01D9 	00BE
		STR 	75H 			//01DA 	10F5
		LDWI 	0H 			//01DB 	0000
		MOVLP 	3H 			//01DC 	0183
		LCALL 	33BH 			//01DD 	333B
		MOVLP 	1H 			//01DE 	0181

		//;RFFC2071A.c: 190: RFFC2071A_WriteReg(0x01, 0x4064);
		LDWI 	64H 			//01DF 	0064
		STR 	74H 			//01E0 	10F4
		LDWI 	40H 			//01E1 	0040
		STR 	75H 			//01E2 	10F5
		LDWI 	1H 			//01E3 	0001
		MOVLP 	3H 			//01E4 	0183
		LCALL 	33BH 			//01E5 	333B
		MOVLP 	1H 			//01E6 	0181

		//;RFFC2071A.c: 196: RFFC2071A_WriteReg(0x02, 0x1E21);
		LDWI 	21H 			//01E7 	0021
		STR 	74H 			//01E8 	10F4
		LDWI 	1EH 			//01E9 	001E
		STR 	75H 			//01EA 	10F5
		LDWI 	2H 			//01EB 	0002
		MOVLP 	3H 			//01EC 	0183
		LCALL 	33BH 			//01ED 	333B
		MOVLP 	1H 			//01EE 	0181

		//;RFFC2071A.c: 199: RFFC2071A_WriteReg(0x03, 0x2808);
		LDWI 	8H 			//01EF 	0008
		STR 	74H 			//01F0 	10F4
		LDWI 	28H 			//01F1 	0028
		STR 	75H 			//01F2 	10F5
		LDWI 	3H 			//01F3 	0003
		MOVLP 	3H 			//01F4 	0183
		LCALL 	33BH 			//01F5 	333B
		MOVLP 	1H 			//01F6 	0181

		//;RFFC2071A.c: 202: RFFC2071A_WriteReg(0x04, 0x0690);
		LDWI 	90H 			//01F7 	0090
		STR 	74H 			//01F8 	10F4
		LDWI 	6H 			//01F9 	0006
		STR 	75H 			//01FA 	10F5
		LDWI 	4H 			//01FB 	0004
		MOVLP 	3H 			//01FC 	0183
		LCALL 	33BH 			//01FD 	333B
		MOVLP 	1H 			//01FE 	0181

		//;RFFC2071A.c: 203: RFFC2071A_WriteReg(0x05, 0x0690);
		LDWI 	90H 			//01FF 	0090
		STR 	74H 			//0200 	10F4
		LDWI 	6H 			//0201 	0006
		STR 	75H 			//0202 	10F5
		LDWI 	5H 			//0203 	0005
		MOVLP 	3H 			//0204 	0183
		LCALL 	33BH 			//0205 	333B
		MOVLP 	1H 			//0206 	0181

		//;RFFC2071A.c: 206: RFFC2071A_WriteReg(0x06, 0x0A52);
		LDWI 	52H 			//0207 	0052
		STR 	74H 			//0208 	10F4
		LDWI 	AH 			//0209 	000A
		STR 	75H 			//020A 	10F5
		LDWI 	6H 			//020B 	0006
		MOVLP 	3H 			//020C 	0183
		LCALL 	33BH 			//020D 	333B
		MOVLP 	1H 			//020E 	0181

		//;RFFC2071A.c: 207: RFFC2071A_WriteReg(0x07, 0x0A52);
		LDWI 	52H 			//020F 	0052
		STR 	74H 			//0210 	10F4
		LDWI 	AH 			//0211 	000A
		STR 	75H 			//0212 	10F5
		LDWI 	7H 			//0213 	0007
		MOVLP 	3H 			//0214 	0183
		LCALL 	33BH 			//0215 	333B
		MOVLP 	1H 			//0216 	0181

		//;RFFC2071A.c: 210: RFFC2071A_WriteReg(0x08, 0x1C22);
		LDWI 	22H 			//0217 	0022
		STR 	74H 			//0218 	10F4
		LDWI 	1CH 			//0219 	001C
		STR 	75H 			//021A 	10F5
		LDWI 	8H 			//021B 	0008
		MOVLP 	3H 			//021C 	0183
		LCALL 	33BH 			//021D 	333B
		MOVLP 	1H 			//021E 	0181

		//;RFFC2071A.c: 213: RFFC2071A_WriteReg(0x09, 0x408C);
		LDWI 	8CH 			//021F 	008C
		STR 	74H 			//0220 	10F4
		LDWI 	40H 			//0221 	0040
		STR 	75H 			//0222 	10F5
		LDWI 	9H 			//0223 	0009
		MOVLP 	3H 			//0224 	0183
		LCALL 	33BH 			//0225 	333B
		MOVLP 	1H 			//0226 	0181

		//;RFFC2071A.c: 216: RFFC2071A_WriteReg(0x0A, 0x0021);
		LDWI 	21H 			//0227 	0021
		STR 	74H 			//0228 	10F4
		CLRF 	75H 			//0229 	11F5
		LDWI 	AH 			//022A 	000A
		MOVLP 	3H 			//022B 	0183
		LCALL 	33BH 			//022C 	333B
		MOVLP 	1H 			//022D 	0181

		//;RFFC2071A.c: 219: RFFC2071A_WriteReg(0x0B, 0x4F00);
		LDWI 	0H 			//022E 	0000
		STR 	74H 			//022F 	10F4
		LDWI 	4FH 			//0230 	004F
		STR 	75H 			//0231 	10F5
		LDWI 	BH 			//0232 	000B
		MOVLP 	3H 			//0233 	0183
		LCALL 	33BH 			//0234 	333B
		MOVLP 	1H 			//0235 	0181

		//;RFFC2071A.c: 222: RFFC2071A_SetDualFrequency(500, 450);
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
		LCALL 	48BH 			//0248 	348B
		MOVLP 	1H 			//0249 	0181

		//;RFFC2071A.c: 225: RFFC2071A_WriteReg(0x12, 0x0000);
		CLRF 	74H 			//024A 	11F4
		CLRF 	75H 			//024B 	11F5
		LDWI 	12H 			//024C 	0012
		MOVLP 	3H 			//024D 	0183
		LCALL 	33BH 			//024E 	333B
		MOVLP 	1H 			//024F 	0181

		//;RFFC2071A.c: 228: RFFC2071A_WriteReg(0x15, 0x0000);
		CLRF 	74H 			//0250 	11F4
		CLRF 	75H 			//0251 	11F5
		LDWI 	15H 			//0252 	0015
		MOVLP 	3H 			//0253 	0183
		LCALL 	33BH 			//0254 	333B
		MOVLP 	1H 			//0255 	0181

		//;RFFC2071A.c: 231: RFFC2071A_WriteReg(0x16, 0x0001);
		CLRF 	74H 			//0256 	11F4
		INCR 	74H, 1H 		//0257 	1AF4
		CLRF 	75H 			//0258 	11F5
		LDWI 	16H 			//0259 	0016
		MOVLP 	3H 			//025A 	0183
		LCALL 	33BH 			//025B 	333B
		MOVLP 	1H 			//025C 	0181

		//;RFFC2071A.c: 234: RFFC2071A_WriteReg(0x17, 0x0048);
		LDWI 	48H 			//025D 	0048
		STR 	74H 			//025E 	10F4
		CLRF 	75H 			//025F 	11F5
		LDWI 	17H 			//0260 	0017
		MOVLP 	3H 			//0261 	0183
		LCALL 	33BH 			//0262 	333B
		MOVLP 	1H 			//0263 	0181

		//;RFFC2071A.c: 235: RFFC2071A_WriteReg(0x1C, 0x0020);
		LDWI 	20H 			//0264 	0020
		STR 	74H 			//0265 	10F4
		CLRF 	75H 			//0266 	11F5
		LDWI 	1CH 			//0267 	001C
		MOVLP 	3H 			//0268 	0183
		LCALL 	33BH 			//0269 	333B
		MOVLP 	1H 			//026A 	0181

		//;RFFC2071A.c: 238: RFFC2071A_WriteReg(0x1D, 0x0001);
		CLRF 	74H 			//026B 	11F4
		INCR 	74H, 1H 		//026C 	1AF4
		CLRF 	75H 			//026D 	11F5
		LDWI 	1DH 			//026E 	001D
		MOVLP 	3H 			//026F 	0183
		LCALL 	33BH 			//0270 	333B
		MOVLP 	1H 			//0271 	0181
		RET 					//0272 	1008
		STR 	77H 			//0273 	10F7

		//;RFFC2071A.c: 127: uint8_t i;
		//;RFFC2071A.c: 128: uint8_t tx_byte;
		//;RFFC2071A.c: 129: uint16_t rx_data = 0;
		CLRF 	78H 			//0274 	11F8
		CLRF 	79H 			//0275 	11F9

		//;RFFC2071A.c: 132: tx_byte = 0x80 | (addr & 0x7F);
		LDR 	77H, 0H 			//0276 	1877
		ANDWI 	7FH 			//0277 	097F
		IORWI 	80H 			//0278 	0880
		STR 	7AH 			//0279 	10FA

		//;RFFC2071A.c: 135: (PA0 = 0);
		MOVLB 	0H 			//027A 	1020
		BCR 	CH, 0H 			//027B 	200C

		//;RFFC2071A.c: 136: delay_us(1);
		CLRF 	72H 			//027C 	11F2
		INCR 	72H, 1H 		//027D 	1AF2
		CLRF 	73H 			//027E 	11F3
		MOVLP 	5H 			//027F 	0185
		LCALL 	50EH 			//0280 	350E
		MOVLP 	2H 			//0281 	0182

		//;RFFC2071A.c: 139: for (i = 0; i < 8; i++) {
		CLRF 	7BH 			//0282 	11FB

		//;RFFC2071A.c: 140: if (tx_byte & 0x80) {
		BTSS 	7AH, 7H 		//0283 	2FFA
		LJUMP 	286H 			//0284 	3A86
		LJUMP 	287H 			//0285 	3A87
		LJUMP 	28AH 			//0286 	3A8A

		//;RFFC2071A.c: 141: (PB1 = 1);
		MOVLB 	0H 			//0287 	1020
		BSR 	DH, 1H 			//0288 	248D

		//;RFFC2071A.c: 142: } else {
		LJUMP 	28CH 			//0289 	3A8C

		//;RFFC2071A.c: 143: (PB1 = 0);
		MOVLB 	0H 			//028A 	1020
		BCR 	DH, 1H 			//028B 	208D

		//;RFFC2071A.c: 144: }
		//;RFFC2071A.c: 145: tx_byte <<= 1;
		LSLF 	7AH, 1H 		//028C 	05FA

		//;RFFC2071A.c: 147: delay_us(1);
		CLRF 	72H 			//028D 	11F2
		INCR 	72H, 1H 		//028E 	1AF2
		CLRF 	73H 			//028F 	11F3
		MOVLP 	5H 			//0290 	0185
		LCALL 	50EH 			//0291 	350E
		MOVLP 	2H 			//0292 	0182

		//;RFFC2071A.c: 148: (PB0 = 1);
		MOVLB 	0H 			//0293 	1020
		BSR 	DH, 0H 			//0294 	240D

		//;RFFC2071A.c: 149: delay_us(1);
		CLRF 	72H 			//0295 	11F2
		INCR 	72H, 1H 		//0296 	1AF2
		CLRF 	73H 			//0297 	11F3
		MOVLP 	5H 			//0298 	0185
		LCALL 	50EH 			//0299 	350E
		MOVLP 	2H 			//029A 	0182

		//;RFFC2071A.c: 150: (PB0 = 0);
		MOVLB 	0H 			//029B 	1020
		BCR 	DH, 0H 			//029C 	200D

		//;RFFC2071A.c: 151: delay_us(1);
		CLRF 	72H 			//029D 	11F2
		INCR 	72H, 1H 		//029E 	1AF2
		CLRF 	73H 			//029F 	11F3
		MOVLP 	5H 			//02A0 	0185
		LCALL 	50EH 			//02A1 	350E
		MOVLP 	2H 			//02A2 	0182
		INCR 	7BH, 1H 		//02A3 	1AFB
		LDWI 	8H 			//02A4 	0008
		SUBWR 	7BH, 0H 		//02A5 	127B
		BTSS 	3H, 0H 			//02A6 	2C03
		LJUMP 	2A9H 			//02A7 	3AA9
		LJUMP 	2AAH 			//02A8 	3AAA
		LJUMP 	283H 			//02A9 	3A83

		//;RFFC2071A.c: 156: delay_us(2);
		LDWI 	2H 			//02AA 	0002
		STR 	72H 			//02AB 	10F2
		CLRF 	73H 			//02AC 	11F3
		MOVLP 	5H 			//02AD 	0185
		LCALL 	50EH 			//02AE 	350E
		MOVLP 	2H 			//02AF 	0182

		//;RFFC2071A.c: 159: for (i = 0; i < 16; i++) {
		CLRF 	7BH 			//02B0 	11FB

		//;RFFC2071A.c: 160: (PB0 = 1);
		MOVLB 	0H 			//02B1 	1020
		BSR 	DH, 0H 			//02B2 	240D

		//;RFFC2071A.c: 161: delay_us(1);
		CLRF 	72H 			//02B3 	11F2
		INCR 	72H, 1H 		//02B4 	1AF2
		CLRF 	73H 			//02B5 	11F3
		MOVLP 	5H 			//02B6 	0185
		LCALL 	50EH 			//02B7 	350E
		MOVLP 	2H 			//02B8 	0182

		//;RFFC2071A.c: 163: rx_data <<= 1;
		LSLF 	78H, 1H 		//02B9 	05F8
		RLR 	79H, 1H 			//02BA 	1DF9

		//;RFFC2071A.c: 164: if ((PB1)) {
		MOVLB 	0H 			//02BB 	1020
		BTSS 	DH, 1H 			//02BC 	2C8D
		LJUMP 	2BFH 			//02BD 	3ABF
		LJUMP 	2C0H 			//02BE 	3AC0
		LJUMP 	2C1H 			//02BF 	3AC1

		//;RFFC2071A.c: 165: rx_data |= 1;
		BSR 	78H, 0H 			//02C0 	2478

		//;RFFC2071A.c: 166: }
		//;RFFC2071A.c: 168: (PB0 = 0);
		BCR 	DH, 0H 			//02C1 	200D

		//;RFFC2071A.c: 169: delay_us(1);
		CLRF 	72H 			//02C2 	11F2
		INCR 	72H, 1H 		//02C3 	1AF2
		CLRF 	73H 			//02C4 	11F3
		MOVLP 	5H 			//02C5 	0185
		LCALL 	50EH 			//02C6 	350E
		MOVLP 	2H 			//02C7 	0182
		INCR 	7BH, 1H 		//02C8 	1AFB
		LDWI 	10H 			//02C9 	0010
		SUBWR 	7BH, 0H 		//02CA 	127B
		BTSS 	3H, 0H 			//02CB 	2C03
		LJUMP 	2CEH 			//02CC 	3ACE
		LJUMP 	2CFH 			//02CD 	3ACF
		LJUMP 	2B1H 			//02CE 	3AB1

		//;RFFC2071A.c: 170: }
		//;RFFC2071A.c: 172: (PA0 = 1);
		MOVLB 	0H 			//02CF 	1020
		BSR 	CH, 0H 			//02D0 	240C

		//;RFFC2071A.c: 174: delay_us(1);
		CLRF 	72H 			//02D1 	11F2
		INCR 	72H, 1H 		//02D2 	1AF2
		CLRF 	73H 			//02D3 	11F3
		MOVLP 	5H 			//02D4 	0185
		LCALL 	50EH 			//02D5 	350E
		MOVLP 	2H 			//02D6 	0182

		//;RFFC2071A.c: 176: return rx_data;
		LDR 	79H, 0H 			//02D7 	1879
		STR 	75H 			//02D8 	10F5
		LDR 	78H, 0H 			//02D9 	1878
		STR 	74H 			//02DA 	10F4
		RET 					//02DB 	1008

		//;DualMixer.C: 284: uint16_t readback;
		//;DualMixer.C: 285: unsigned char i;
		//;DualMixer.C: 287: POWER_INITIAL();
		MOVLP 	4H 			//02DC 	0184
		LCALL 	412H 			//02DD 	3412
		MOVLP 	2H 			//02DE 	0182

		//;DualMixer.C: 288: UART_INITIAL();
		MOVLP 	5H 			//02DF 	0185
		LCALL 	538H 			//02E0 	3538
		MOVLP 	2H 			//02E1 	0182

		//;DualMixer.C: 289: RFFC2071A_Init();
		MOVLP 	5H 			//02E2 	0185
		LCALL 	524H 			//02E3 	3524
		MOVLP 	2H 			//02E4 	0182

		//;DualMixer.C: 292: {
		//;DualMixer.C: 293: readback = RFFC2071A_ReadReg(0x1F);
		LDWI 	1FH 			//02E5 	001F
		MOVLP 	2H 			//02E6 	0182
		LCALL 	273H 			//02E7 	3273
		MOVLP 	2H 			//02E8 	0182
		LDR 	75H, 0H 			//02E9 	1875
		MOVLB 	0H 			//02EA 	1020
		STR 	57H 			//02EB 	10D7
		LDR 	74H, 0H 			//02EC 	1874
		STR 	56H 			//02ED 	10D6

		//;DualMixer.C: 296: SendStringToUART("RB:0x");
		LDWI 	6BH 			//02EE 	006B
		STR 	73H 			//02EF 	10F3
		LDWI 	85H 			//02F0 	0085
		STR 	74H 			//02F1 	10F4
		MOVLP 	4H 			//02F2 	0184
		LCALL 	4F8H 			//02F3 	34F8
		MOVLP 	2H 			//02F4 	0182

		//;DualMixer.C: 297: SendByteToUART(HiNibbleToHex((unsigned char)(readback >> 8)));
		MOVLB 	0H 			//02F5 	1020
		LDR 	57H, 0H 			//02F6 	1857
		MOVLP 	5H 			//02F7 	0185
		LCALL 	548H 			//02F8 	3548
		MOVLP 	2H 			//02F9 	0182
		MOVLP 	4H 			//02FA 	0184
		LCALL 	467H 			//02FB 	3467
		MOVLP 	2H 			//02FC 	0182

		//;DualMixer.C: 298: SendByteToUART(LoNibbleToHex((unsigned char)(readback >> 8)));
		MOVLB 	0H 			//02FD 	1020
		LDR 	57H, 0H 			//02FE 	1857
		MOVLP 	5H 			//02FF 	0185
		LCALL 	560H 			//0300 	3560
		MOVLP 	2H 			//0301 	0182
		MOVLP 	4H 			//0302 	0184
		LCALL 	467H 			//0303 	3467
		MOVLP 	2H 			//0304 	0182

		//;DualMixer.C: 299: SendByteToUART(HiNibbleToHex((unsigned char)(readback & 0xFF)));
		MOVLB 	0H 			//0305 	1020
		LDR 	56H, 0H 			//0306 	1856
		MOVLP 	5H 			//0307 	0185
		LCALL 	548H 			//0308 	3548
		MOVLP 	2H 			//0309 	0182
		MOVLP 	4H 			//030A 	0184
		LCALL 	467H 			//030B 	3467
		MOVLP 	2H 			//030C 	0182

		//;DualMixer.C: 300: SendByteToUART(LoNibbleToHex((unsigned char)(readback & 0xFF)));
		MOVLB 	0H 			//030D 	1020
		LDR 	56H, 0H 			//030E 	1856
		MOVLP 	5H 			//030F 	0185
		LCALL 	560H 			//0310 	3560
		MOVLP 	2H 			//0311 	0182
		MOVLP 	4H 			//0312 	0184
		LCALL 	467H 			//0313 	3467
		MOVLP 	2H 			//0314 	0182

		//;DualMixer.C: 301: SendStringToUART(" LOCK:");
		LDWI 	DAH 			//0315 	00DA
		STR 	73H 			//0316 	10F3
		LDWI 	84H 			//0317 	0084
		STR 	74H 			//0318 	10F4
		MOVLP 	4H 			//0319 	0184
		LCALL 	4F8H 			//031A 	34F8
		MOVLP 	2H 			//031B 	0182

		//;DualMixer.C: 302: SendByteToUART('0' + (readback & 0x0001));
		MOVLB 	0H 			//031C 	1020
		LDR 	56H, 0H 			//031D 	1856
		ANDWI 	1H 			//031E 	0901
		ADDWI 	30H 			//031F 	0E30
		MOVLP 	4H 			//0320 	0184
		LCALL 	467H 			//0321 	3467
		MOVLP 	2H 			//0322 	0182

		//;DualMixer.C: 303: SendStringToUART("\r\n");
		LDWI 	77H 			//0323 	0077
		STR 	73H 			//0324 	10F3
		LDWI 	85H 			//0325 	0085
		STR 	74H 			//0326 	10F4
		MOVLP 	4H 			//0327 	0184
		LCALL 	4F8H 			//0328 	34F8
		MOVLP 	2H 			//0329 	0182

		//;DualMixer.C: 306: for (i = 0; i < 8; i++)
		MOVLB 	0H 			//032A 	1020
		CLRF 	55H 			//032B 	11D5

		//;DualMixer.C: 307: {
		//;DualMixer.C: 308: DelayMs(250);
		LDWI 	FAH 			//032C 	00FA
		MOVLP 	4H 			//032D 	0184
		LCALL 	4E1H 			//032E 	34E1
		MOVLP 	2H 			//032F 	0182
		MOVLB 	0H 			//0330 	1020
		INCR 	55H, 1H 		//0331 	1AD5
		LDWI 	8H 			//0332 	0008
		SUBWR 	55H, 0H 		//0333 	1255
		BTSS 	3H, 0H 			//0334 	2C03
		LJUMP 	337H 			//0335 	3B37
		LJUMP 	338H 			//0336 	3B38
		LJUMP 	32CH 			//0337 	3B2C
		LJUMP 	2E5H 			//0338 	3AE5
		MOVLP 	0H 			//0339 	0180
		LJUMP 	56H 			//033A 	3856
		MOVLB 	0H 			//033B 	1020
		STR 	20H 			//033C 	10A0

		//;RFFC2071A.c: 91: uint8_t i;
		//;RFFC2071A.c: 92: uint32_t tx_data;
		//;RFFC2071A.c: 95: tx_data = ((uint32_t)(addr & 0x7F) << 16) | data;
		LDR 	20H, 0H 			//033D 	1820
		ANDWI 	7FH 			//033E 	097F
		CLRF 	21H 			//033F 	11A1
		CLRF 	22H 			//0340 	11A2
		STR 	23H 			//0341 	10A3
		CLRF 	24H 			//0342 	11A4
		LDR 	74H, 0H 			//0343 	1874
		STR 	76H 			//0344 	10F6
		LDR 	75H, 0H 			//0345 	1875
		STR 	77H 			//0346 	10F7
		CLRF 	78H 			//0347 	11F8
		CLRF 	79H 			//0348 	11F9
		LDR 	76H, 0H 			//0349 	1876
		IORWR 	21H, 1H 		//034A 	14A1
		LDR 	77H, 0H 			//034B 	1877
		IORWR 	22H, 1H 		//034C 	14A2
		LDR 	78H, 0H 			//034D 	1878
		IORWR 	23H, 1H 		//034E 	14A3
		LDR 	79H, 0H 			//034F 	1879
		IORWR 	24H, 1H 		//0350 	14A4

		//;RFFC2071A.c: 98: (PA0 = 0);
		BCR 	CH, 0H 			//0351 	200C

		//;RFFC2071A.c: 99: delay_us(1);
		CLRF 	72H 			//0352 	11F2
		INCR 	72H, 1H 		//0353 	1AF2
		CLRF 	73H 			//0354 	11F3
		MOVLP 	5H 			//0355 	0185
		LCALL 	50EH 			//0356 	350E
		MOVLP 	3H 			//0357 	0183

		//;RFFC2071A.c: 102: for (i = 0; i < 24; i++) {
		MOVLB 	0H 			//0358 	1020
		CLRF 	25H 			//0359 	11A5

		//;RFFC2071A.c: 104: if (tx_data & 0x800000) {
		BTSS 	23H, 7H 		//035A 	2FA3
		LJUMP 	35DH 			//035B 	3B5D
		LJUMP 	35EH 			//035C 	3B5E
		LJUMP 	360H 			//035D 	3B60

		//;RFFC2071A.c: 105: (PB1 = 1);
		BSR 	DH, 1H 			//035E 	248D

		//;RFFC2071A.c: 106: } else {
		LJUMP 	361H 			//035F 	3B61

		//;RFFC2071A.c: 107: (PB1 = 0);
		BCR 	DH, 1H 			//0360 	208D

		//;RFFC2071A.c: 108: }
		//;RFFC2071A.c: 109: tx_data <<= 1;
		LSLF 	21H, 1H 		//0361 	05A1
		RLR 	22H, 1H 			//0362 	1DA2
		RLR 	23H, 1H 			//0363 	1DA3
		RLR 	24H, 1H 			//0364 	1DA4

		//;RFFC2071A.c: 111: delay_us(1);
		CLRF 	72H 			//0365 	11F2
		INCR 	72H, 1H 		//0366 	1AF2
		CLRF 	73H 			//0367 	11F3
		MOVLP 	5H 			//0368 	0185
		LCALL 	50EH 			//0369 	350E
		MOVLP 	3H 			//036A 	0183

		//;RFFC2071A.c: 112: (PB0 = 1);
		MOVLB 	0H 			//036B 	1020
		BSR 	DH, 0H 			//036C 	240D

		//;RFFC2071A.c: 113: delay_us(1);
		CLRF 	72H 			//036D 	11F2
		INCR 	72H, 1H 		//036E 	1AF2
		CLRF 	73H 			//036F 	11F3
		MOVLP 	5H 			//0370 	0185
		LCALL 	50EH 			//0371 	350E
		MOVLP 	3H 			//0372 	0183

		//;RFFC2071A.c: 114: (PB0 = 0);
		MOVLB 	0H 			//0373 	1020
		BCR 	DH, 0H 			//0374 	200D

		//;RFFC2071A.c: 115: delay_us(1);
		CLRF 	72H 			//0375 	11F2
		INCR 	72H, 1H 		//0376 	1AF2
		CLRF 	73H 			//0377 	11F3
		MOVLP 	5H 			//0378 	0185
		LCALL 	50EH 			//0379 	350E
		MOVLP 	3H 			//037A 	0183
		MOVLB 	0H 			//037B 	1020
		INCR 	25H, 1H 		//037C 	1AA5
		LDWI 	18H 			//037D 	0018
		SUBWR 	25H, 0H 		//037E 	1225
		BTSS 	3H, 0H 			//037F 	2C03
		LJUMP 	382H 			//0380 	3B82
		LJUMP 	383H 			//0381 	3B83
		LJUMP 	35AH 			//0382 	3B5A

		//;RFFC2071A.c: 116: }
		//;RFFC2071A.c: 118: (PA0 = 1);
		BSR 	CH, 0H 			//0383 	240C

		//;RFFC2071A.c: 119: delay_us(1);
		CLRF 	72H 			//0384 	11F2
		INCR 	72H, 1H 		//0385 	1AF2
		CLRF 	73H 			//0386 	11F3
		MOVLP 	5H 			//0387 	0185
		LCALL 	50EH 			//0388 	350E
		MOVLP 	3H 			//0389 	0183
		RET 					//038A 	1008
		CLRF 	20H 			//038B 	11A0
		CLRF 	21H 			//038C 	11A1
		CLRF 	22H 			//038D 	11A2
		CLRF 	23H 			//038E 	11A3
		LDR 	75H, 0H 			//038F 	1875
		IORWR 	74H, 0H 		//0390 	1474
		IORWR 	73H, 0H 		//0391 	1473
		IORWR 	72H, 0H 		//0392 	1472
		BTSC 	3H, 2H 			//0393 	2903
		LJUMP 	396H 			//0394 	3B96
		LJUMP 	397H 			//0395 	3B97
		LJUMP 	3CAH 			//0396 	3BCA
		CLRF 	24H 			//0397 	11A4
		INCR 	24H, 1H 		//0398 	1AA4
		LJUMP 	39FH 			//0399 	3B9F
		LSLF 	72H, 1H 		//039A 	05F2
		RLR 	73H, 1H 			//039B 	1DF3
		RLR 	74H, 1H 			//039C 	1DF4
		RLR 	75H, 1H 			//039D 	1DF5
		INCR 	24H, 1H 		//039E 	1AA4
		BTSS 	75H, 7H 		//039F 	2FF5
		LJUMP 	3A2H 			//03A0 	3BA2
		LJUMP 	3A3H 			//03A1 	3BA3
		LJUMP 	39AH 			//03A2 	3B9A
		LSLF 	20H, 1H 		//03A3 	05A0
		RLR 	21H, 1H 			//03A4 	1DA1
		RLR 	22H, 1H 			//03A5 	1DA2
		RLR 	23H, 1H 			//03A6 	1DA3
		LDR 	75H, 0H 			//03A7 	1875
		SUBWR 	79H, 0H 		//03A8 	1279
		BTSS 	3H, 2H 			//03A9 	2D03
		LJUMP 	3B5H 			//03AA 	3BB5
		LDR 	74H, 0H 			//03AB 	1874
		SUBWR 	78H, 0H 		//03AC 	1278
		BTSS 	3H, 2H 			//03AD 	2D03
		LJUMP 	3B5H 			//03AE 	3BB5
		LDR 	73H, 0H 			//03AF 	1873
		SUBWR 	77H, 0H 		//03B0 	1277
		BTSS 	3H, 2H 			//03B1 	2D03
		LJUMP 	3B5H 			//03B2 	3BB5
		LDR 	72H, 0H 			//03B3 	1872
		SUBWR 	76H, 0H 		//03B4 	1276
		BTSS 	3H, 0H 			//03B5 	2C03
		LJUMP 	3B8H 			//03B6 	3BB8
		LJUMP 	3B9H 			//03B7 	3BB9
		LJUMP 	3C2H 			//03B8 	3BC2
		LDR 	72H, 0H 			//03B9 	1872
		SUBWR 	76H, 1H 		//03BA 	12F6
		LDR 	73H, 0H 			//03BB 	1873
		SUBWFB 	77H, 1H 		//03BC 	0BF7
		LDR 	74H, 0H 			//03BD 	1874
		SUBWFB 	78H, 1H 		//03BE 	0BF8
		LDR 	75H, 0H 			//03BF 	1875
		SUBWFB 	79H, 1H 		//03C0 	0BF9
		BSR 	20H, 0H 			//03C1 	2420
		LSRF 	75H, 1H 		//03C2 	06F5
		RRR 	74H, 1H 			//03C3 	1CF4
		RRR 	73H, 1H 			//03C4 	1CF3
		RRR 	72H, 1H 			//03C5 	1CF2
		DECRSZ 	24H, 1H 		//03C6 	1BA4
		LJUMP 	3C9H 			//03C7 	3BC9
		LJUMP 	3CAH 			//03C8 	3BCA
		LJUMP 	3A3H 			//03C9 	3BA3
		LDR 	23H, 0H 			//03CA 	1823
		STR 	75H 			//03CB 	10F5
		LDR 	22H, 0H 			//03CC 	1822
		STR 	74H 			//03CD 	10F4
		LDR 	21H, 0H 			//03CE 	1821
		STR 	73H 			//03CF 	10F3
		LDR 	20H, 0H 			//03D0 	1820
		STR 	72H 			//03D1 	10F2
		RET 					//03D2 	1008
		LDR 	75H, 0H 			//03D3 	1875
		IORWR 	74H, 0H 		//03D4 	1474
		IORWR 	73H, 0H 		//03D5 	1473
		IORWR 	72H, 0H 		//03D6 	1472
		BTSC 	3H, 2H 			//03D7 	2903
		LJUMP 	3DAH 			//03D8 	3BDA
		LJUMP 	3DBH 			//03D9 	3BDB
		LJUMP 	409H 			//03DA 	3C09
		CLRF 	7AH 			//03DB 	11FA
		INCR 	7AH, 1H 		//03DC 	1AFA
		LJUMP 	3E3H 			//03DD 	3BE3
		LSLF 	72H, 1H 		//03DE 	05F2
		RLR 	73H, 1H 			//03DF 	1DF3
		RLR 	74H, 1H 			//03E0 	1DF4
		RLR 	75H, 1H 			//03E1 	1DF5
		INCR 	7AH, 1H 		//03E2 	1AFA
		BTSS 	75H, 7H 		//03E3 	2FF5
		LJUMP 	3E6H 			//03E4 	3BE6
		LJUMP 	3E7H 			//03E5 	3BE7
		LJUMP 	3DEH 			//03E6 	3BDE
		LDR 	75H, 0H 			//03E7 	1875
		SUBWR 	79H, 0H 		//03E8 	1279
		BTSS 	3H, 2H 			//03E9 	2D03
		LJUMP 	3F5H 			//03EA 	3BF5
		LDR 	74H, 0H 			//03EB 	1874
		SUBWR 	78H, 0H 		//03EC 	1278
		BTSS 	3H, 2H 			//03ED 	2D03
		LJUMP 	3F5H 			//03EE 	3BF5
		LDR 	73H, 0H 			//03EF 	1873
		SUBWR 	77H, 0H 		//03F0 	1277
		BTSS 	3H, 2H 			//03F1 	2D03
		LJUMP 	3F5H 			//03F2 	3BF5
		LDR 	72H, 0H 			//03F3 	1872
		SUBWR 	76H, 0H 		//03F4 	1276
		BTSS 	3H, 0H 			//03F5 	2C03
		LJUMP 	3F8H 			//03F6 	3BF8
		LJUMP 	3F9H 			//03F7 	3BF9
		LJUMP 	401H 			//03F8 	3C01
		LDR 	72H, 0H 			//03F9 	1872
		SUBWR 	76H, 1H 		//03FA 	12F6
		LDR 	73H, 0H 			//03FB 	1873
		SUBWFB 	77H, 1H 		//03FC 	0BF7
		LDR 	74H, 0H 			//03FD 	1874
		SUBWFB 	78H, 1H 		//03FE 	0BF8
		LDR 	75H, 0H 			//03FF 	1875
		SUBWFB 	79H, 1H 		//0400 	0BF9
		LSRF 	75H, 1H 		//0401 	06F5
		RRR 	74H, 1H 			//0402 	1CF4
		RRR 	73H, 1H 			//0403 	1CF3
		RRR 	72H, 1H 			//0404 	1CF2
		DECRSZ 	7AH, 1H 		//0405 	1BFA
		LJUMP 	408H 			//0406 	3C08
		LJUMP 	409H 			//0407 	3C09
		LJUMP 	3E7H 			//0408 	3BE7
		LDR 	79H, 0H 			//0409 	1879
		STR 	75H 			//040A 	10F5
		LDR 	78H, 0H 			//040B 	1878
		STR 	74H 			//040C 	10F4
		LDR 	77H, 0H 			//040D 	1877
		STR 	73H 			//040E 	10F3
		LDR 	76H, 0H 			//040F 	1876
		STR 	72H 			//0410 	10F2
		RET 					//0411 	1008

		//;DualMixer.C: 114: OSCCON = 0B01110001;
		LDWI 	71H 			//0412 	0071
		MOVLB 	1H 			//0413 	1021
		STR 	19H 			//0414 	1099

		//;DualMixer.C: 115: INTCON = 0;
		CLRF 	BH 			//0415 	118B

		//;DualMixer.C: 117: PORTA = 0B00000000;
		MOVLB 	0H 			//0416 	1020
		CLRF 	CH 			//0417 	118C

		//;DualMixer.C: 118: TRISA = 0B10101100;
		LDWI 	ACH 			//0418 	00AC
		MOVLB 	1H 			//0419 	1021
		STR 	CH 			//041A 	108C

		//;DualMixer.C: 119: PORTB = 0B00000000;
		MOVLB 	0H 			//041B 	1020
		CLRF 	DH 			//041C 	118D

		//;DualMixer.C: 120: TRISB = 0B11000000;
		LDWI 	C0H 			//041D 	00C0
		MOVLB 	1H 			//041E 	1021
		STR 	DH 			//041F 	108D

		//;DualMixer.C: 121: PORTC = 0B00000000;
		MOVLB 	0H 			//0420 	1020
		CLRF 	EH 			//0421 	118E

		//;DualMixer.C: 122: TRISC = 0B00000000;
		MOVLB 	1H 			//0422 	1021
		CLRF 	EH 			//0423 	118E

		//;DualMixer.C: 124: WPUA = 0B00010011;
		LDWI 	13H 			//0424 	0013
		MOVLB 	3H 			//0425 	1023
		STR 	CH 			//0426 	108C

		//;DualMixer.C: 125: WPUB = 0B00000000;
		CLRF 	DH 			//0427 	118D

		//;DualMixer.C: 126: WPUC = 0B00000000;
		CLRF 	EH 			//0428 	118E

		//;DualMixer.C: 128: WPDA = 0B10000000;
		LDWI 	80H 			//0429 	0080
		MOVLB 	4H 			//042A 	1024
		STR 	CH 			//042B 	108C

		//;DualMixer.C: 129: WPDB = 0B00000000;
		CLRF 	DH 			//042C 	118D

		//;DualMixer.C: 130: WPDC = 0B00000000;
		CLRF 	EH 			//042D 	118E

		//;DualMixer.C: 132: PSRC0 = 0B11111111;
		LDWI 	FFH 			//042E 	00FF
		MOVLB 	2H 			//042F 	1022
		STR 	1AH 			//0430 	109A

		//;DualMixer.C: 133: PSRC1 = 0B11111111;
		LDWI 	FFH 			//0431 	00FF
		STR 	1BH 			//0432 	109B

		//;DualMixer.C: 134: PSRC2 = 0B11111111;
		LDWI 	FFH 			//0433 	00FF
		STR 	1CH 			//0434 	109C

		//;DualMixer.C: 136: PSINK0 = 0B11111111;
		LDWI 	FFH 			//0435 	00FF
		MOVLB 	3H 			//0436 	1023
		STR 	1AH 			//0437 	109A

		//;DualMixer.C: 137: PSINK1 = 0B11111111;
		LDWI 	FFH 			//0438 	00FF
		STR 	1BH 			//0439 	109B

		//;DualMixer.C: 138: PSINK2 = 0B11111111;
		LDWI 	FFH 			//043A 	00FF
		STR 	1CH 			//043B 	109C

		//;DualMixer.C: 140: ANSELA = 0B00000000;
		CLRF 	17H 			//043C 	1197
		RET 					//043D 	1008
		CLRF 	7AH 			//043E 	11FA
		CLRF 	7BH 			//043F 	11FB
		CLRF 	7CH 			//0440 	11FC
		CLRF 	7DH 			//0441 	11FD
		BTSS 	72H, 0H 		//0442 	2C72
		LJUMP 	445H 			//0443 	3C45
		LJUMP 	446H 			//0444 	3C46
		LJUMP 	44EH 			//0445 	3C4E
		LDR 	76H, 0H 			//0446 	1876
		ADDWR 	7AH, 1H 		//0447 	17FA
		LDR 	77H, 0H 			//0448 	1877
		ADDWFC 	7BH, 1H 		//0449 	0DFB
		LDR 	78H, 0H 			//044A 	1878
		ADDWFC 	7CH, 1H 		//044B 	0DFC
		LDR 	79H, 0H 			//044C 	1879
		ADDWFC 	7DH, 1H 		//044D 	0DFD
		LSLF 	76H, 1H 		//044E 	05F6
		RLR 	77H, 1H 			//044F 	1DF7
		RLR 	78H, 1H 			//0450 	1DF8
		RLR 	79H, 1H 			//0451 	1DF9
		LSRF 	75H, 1H 		//0452 	06F5
		RRR 	74H, 1H 			//0453 	1CF4
		RRR 	73H, 1H 			//0454 	1CF3
		RRR 	72H, 1H 			//0455 	1CF2
		LDR 	75H, 0H 			//0456 	1875
		IORWR 	74H, 0H 		//0457 	1474
		IORWR 	73H, 0H 		//0458 	1473
		IORWR 	72H, 0H 		//0459 	1472
		BTSS 	3H, 2H 			//045A 	2D03
		LJUMP 	45DH 			//045B 	3C5D
		LJUMP 	45EH 			//045C 	3C5E
		LJUMP 	442H 			//045D 	3C42
		LDR 	7DH, 0H 			//045E 	187D
		STR 	75H 			//045F 	10F5
		LDR 	7CH, 0H 			//0460 	187C
		STR 	74H 			//0461 	10F4
		LDR 	7BH, 0H 			//0462 	187B
		STR 	73H 			//0463 	10F3
		LDR 	7AH, 0H 			//0464 	187A
		STR 	72H 			//0465 	10F2
		RET 					//0466 	1008
		STR 	72H 			//0467 	10F2

		//;DualMixer.C: 207: if (txCounter == 0 && TXEF)
		MOVLB 	0H 			//0468 	1020
		LDR 	5EH, 0H 			//0469 	185E
		BTSS 	3H, 2H 			//046A 	2D03
		LJUMP 	46DH 			//046B 	3C6D
		LJUMP 	46EH 			//046C 	3C6E
		LJUMP 	477H 			//046D 	3C77
		MOVLB 	9H 			//046E 	1029
		BTSS 	12H, 5H 		//046F 	2E92
		LJUMP 	472H 			//0470 	3C72
		LJUMP 	473H 			//0471 	3C73
		LJUMP 	477H 			//0472 	3C77

		//;DualMixer.C: 208: {
		//;DualMixer.C: 209: TCF = 1;
		BSR 	1CH, 0H 			//0473 	241C

		//;DualMixer.C: 210: URDATAL = data;
		LDR 	72H, 0H 			//0474 	1872
		STR 	CH 			//0475 	108C
		LJUMP 	48AH 			//0476 	3C8A

		//;DualMixer.C: 212: }
		//;DualMixer.C: 213: if (txCounter >= 64)
		LDWI 	40H 			//0477 	0040
		MOVLB 	0H 			//0478 	1020
		SUBWR 	5EH, 0H 		//0479 	125E
		BTSS 	3H, 0H 			//047A 	2C03
		LJUMP 	47DH 			//047B 	3C7D
		LJUMP 	47EH 			//047C 	3C7E
		LJUMP 	47FH 			//047D 	3C7F
		LJUMP 	48AH 			//047E 	3C8A

		//;DualMixer.C: 216: }
		//;DualMixer.C: 217: toSend[txIndexIp] = data;
		LDR 	5DH, 0H 			//047F 	185D
		ADDWI 	20H 			//0480 	0E20
		STR 	6H 			//0481 	1086
		LDWI 	1H 			//0482 	0001
		STR 	7H 			//0483 	1087
		LDR 	72H, 0H 			//0484 	1872
		STR 	1H 			//0485 	1081

		//;DualMixer.C: 218: txIndexIp = (txIndexIp + 1) & (64 - 1);
		INCR 	5DH, 1H 		//0486 	1ADD
		LDWI 	3FH 			//0487 	003F
		ANDWR 	5DH, 1H 		//0488 	15DD

		//;DualMixer.C: 219: txCounter++;
		INCR 	5EH, 1H 		//0489 	1ADE
		RET 					//048A 	1008

		//;RFFC2071A.c: 337: RFFC2071A_CalcFrequency(freq1_mhz, 1);
		LDR 	50H, 0H 			//048B 	1850
		STR 	29H 			//048C 	10A9
		LDR 	4FH, 0H 			//048D 	184F
		STR 	28H 			//048E 	10A8
		LDR 	4EH, 0H 			//048F 	184E
		STR 	27H 			//0490 	10A7
		LDR 	4DH, 0H 			//0491 	184D
		STR 	26H 			//0492 	10A6
		CLRF 	2AH 			//0493 	11AA
		INCR 	2AH, 1H 		//0494 	1AAA
		MOVLP 	0H 			//0495 	0180
		LCALL 	74H 			//0496 	3074
		MOVLP 	4H 			//0497 	0184

		//;RFFC2071A.c: 338: RFFC2071A_CalcFrequency(freq2_mhz, 2);
		MOVLB 	0H 			//0498 	1020
		LDR 	54H, 0H 			//0499 	1854
		STR 	29H 			//049A 	10A9
		LDR 	53H, 0H 			//049B 	1853
		STR 	28H 			//049C 	10A8
		LDR 	52H, 0H 			//049D 	1852
		STR 	27H 			//049E 	10A7
		LDR 	51H, 0H 			//049F 	1851
		STR 	26H 			//04A0 	10A6
		LDWI 	2H 			//04A1 	0002
		STR 	2AH 			//04A2 	10AA
		MOVLP 	0H 			//04A3 	0180
		LCALL 	74H 			//04A4 	3074
		MOVLP 	4H 			//04A5 	0184

		//;RFFC2071A.c: 341: RFFC2071A_WriteReg(0x1D, 0x0001);
		CLRF 	74H 			//04A6 	11F4
		INCR 	74H, 1H 		//04A7 	1AF4
		CLRF 	75H 			//04A8 	11F5
		LDWI 	1DH 			//04A9 	001D
		MOVLP 	3H 			//04AA 	0183
		LCALL 	33BH 			//04AB 	333B
		MOVLP 	4H 			//04AC 	0184
		RET 					//04AD 	1008

		//;RFFC2071A.c: 77: (PB2 = 0);
		MOVLB 	0H 			//04AE 	1020
		BCR 	DH, 2H 			//04AF 	210D

		//;RFFC2071A.c: 78: (PA1 = 0);
		BCR 	CH, 1H 			//04B0 	208C

		//;RFFC2071A.c: 79: delay_us(100);
		LDWI 	64H 			//04B1 	0064
		STR 	72H 			//04B2 	10F2
		CLRF 	73H 			//04B3 	11F3
		MOVLP 	5H 			//04B4 	0185
		LCALL 	50EH 			//04B5 	350E
		MOVLP 	4H 			//04B6 	0184

		//;RFFC2071A.c: 80: (PA1 = 1);
		MOVLB 	0H 			//04B7 	1020
		BSR 	CH, 1H 			//04B8 	248C

		//;RFFC2071A.c: 81: delay_us(100);
		LDWI 	64H 			//04B9 	0064
		STR 	72H 			//04BA 	10F2
		CLRF 	73H 			//04BB 	11F3
		MOVLP 	5H 			//04BC 	0185
		LCALL 	50EH 			//04BD 	350E
		MOVLP 	4H 			//04BE 	0184

		//;RFFC2071A.c: 82: (PB2 = 1);
		MOVLB 	0H 			//04BF 	1020
		BSR 	DH, 2H 			//04C0 	250D

		//;RFFC2071A.c: 83: delay_us(1000);
		LDWI 	E8H 			//04C1 	00E8
		STR 	72H 			//04C2 	10F2
		LDWI 	3H 			//04C3 	0003
		STR 	73H 			//04C4 	10F3
		MOVLP 	5H 			//04C5 	0185
		LCALL 	50EH 			//04C6 	350E
		MOVLP 	4H 			//04C7 	0184
		RET 					//04C8 	1008
		RETW 	30H 			//04C9 	0430
		RETW 	31H 			//04CA 	0431
		RETW 	32H 			//04CB 	0432
		RETW 	33H 			//04CC 	0433
		RETW 	34H 			//04CD 	0434
		RETW 	35H 			//04CE 	0435
		RETW 	36H 			//04CF 	0436
		RETW 	37H 			//04D0 	0437
		RETW 	38H 			//04D1 	0438
		RETW 	39H 			//04D2 	0439
		RETW 	41H 			//04D3 	0441
		RETW 	42H 			//04D4 	0442
		RETW 	43H 			//04D5 	0443
		RETW 	44H 			//04D6 	0444
		RETW 	45H 			//04D7 	0445
		RETW 	46H 			//04D8 	0446
		RETW 	0H 			//04D9 	0400
		RETW 	20H 			//04DA 	0420
		RETW 	4CH 			//04DB 	044C
		RETW 	4FH 			//04DC 	044F
		RETW 	43H 			//04DD 	0443
		RETW 	4BH 			//04DE 	044B
		RETW 	3AH 			//04DF 	043A
		RETW 	0H 			//04E0 	0400
		STR 	74H 			//04E1 	10F4

		//;DualMixer.C: 164: unsigned char a, b;
		//;DualMixer.C: 165: for (a = 0; a < Time; a++)
		CLRF 	75H 			//04E2 	11F5
		LJUMP 	4F1H 			//04E3 	3CF1

		//;DualMixer.C: 166: {
		//;DualMixer.C: 167: for (b = 0; b < 5; b++)
		CLRF 	76H 			//04E4 	11F6

		//;DualMixer.C: 168: {
		//;DualMixer.C: 169: DelayUs(197);
		LDWI 	C5H 			//04E5 	00C5
		MOVLP 	5H 			//04E6 	0185
		LCALL 	554H 			//04E7 	3554
		MOVLP 	4H 			//04E8 	0184
		INCR 	76H, 1H 		//04E9 	1AF6
		LDWI 	5H 			//04EA 	0005
		SUBWR 	76H, 0H 		//04EB 	1276
		BTSS 	3H, 0H 			//04EC 	2C03
		LJUMP 	4EFH 			//04ED 	3CEF
		LJUMP 	4F0H 			//04EE 	3CF0
		LJUMP 	4E5H 			//04EF 	3CE5
		INCR 	75H, 1H 		//04F0 	1AF5
		LDR 	74H, 0H 			//04F1 	1874
		SUBWR 	75H, 0H 		//04F2 	1275
		BTSS 	3H, 0H 			//04F3 	2C03
		LJUMP 	4F6H 			//04F4 	3CF6
		LJUMP 	4F7H 			//04F5 	3CF7
		LJUMP 	4E4H 			//04F6 	3CE4
		RET 					//04F7 	1008

		//;DualMixer.C: 230: while (*str)
		LJUMP 	504H 			//04F8 	3D04

		//;DualMixer.C: 231: {
		//;DualMixer.C: 232: SendByteToUART(*str);
		LDR 	73H, 0H 			//04F9 	1873
		STR 	4H 			//04FA 	1084
		LDR 	74H, 0H 			//04FB 	1874
		STR 	5H 			//04FC 	1085
		LDR 	0H, 0H 			//04FD 	1800
		MOVLP 	4H 			//04FE 	0184
		LCALL 	467H 			//04FF 	3467
		MOVLP 	4H 			//0500 	0184

		//;DualMixer.C: 233: str++;
		INCR 	73H, 1H 		//0501 	1AF3
		BTSC 	3H, 2H 			//0502 	2903
		INCR 	74H, 1H 		//0503 	1AF4
		LDR 	73H, 0H 			//0504 	1873
		STR 	4H 			//0505 	1084
		LDR 	74H, 0H 			//0506 	1874
		STR 	5H 			//0507 	1085
		MOVIW 	FSR0++ 		//0508 	1012
		BTSS 	3H, 2H 			//0509 	2D03
		LJUMP 	50CH 			//050A 	3D0C
		LJUMP 	50DH 			//050B 	3D0D
		LJUMP 	4F9H 			//050C 	3CF9
		RET 					//050D 	1008

		//;RFFC2071A.c: 44: while (us--) {
		LJUMP 	517H 			//050E 	3D17

		//;RFFC2071A.c: 45: __nop(); __nop(); __nop(); __nop();
		NOP 					//050F 	1000
		NOP 					//0510 	1000
		NOP 					//0511 	1000
		NOP 					//0512 	1000

		//;RFFC2071A.c: 46: __nop(); __nop(); __nop(); __nop();
		NOP 					//0513 	1000
		NOP 					//0514 	1000
		NOP 					//0515 	1000
		NOP 					//0516 	1000
		LDWI 	1H 			//0517 	0001
		SUBWR 	72H, 1H 		//0518 	12F2
		LDWI 	0H 			//0519 	0000
		SUBWFB 	73H, 1H 		//051A 	0BF3
		INCR 	72H, 0H 		//051B 	1A72
		BTSS 	3H, 2H 			//051C 	2D03
		LJUMP 	522H 			//051D 	3D22
		INCR 	73H, 0H 		//051E 	1A73
		BTSS 	3H, 2H 			//051F 	2D03
		LJUMP 	522H 			//0520 	3D22
		LJUMP 	523H 			//0521 	3D23
		LJUMP 	50FH 			//0522 	3D0F
		RET 					//0523 	1008

		//;RFFC2071A.c: 56: (PA0 = 1);
		MOVLB 	0H 			//0524 	1020
		BSR 	CH, 0H 			//0525 	240C

		//;RFFC2071A.c: 57: (PB0 = 0);
		BCR 	DH, 0H 			//0526 	200D

		//;RFFC2071A.c: 58: (PB1 = 0);
		BCR 	DH, 1H 			//0527 	208D

		//;RFFC2071A.c: 59: (PB2 = 0);
		BCR 	DH, 2H 			//0528 	210D

		//;RFFC2071A.c: 60: (PA1 = 1);
		BSR 	CH, 1H 			//0529 	248C

		//;RFFC2071A.c: 61: (PA4 = 0);
		BCR 	CH, 4H 			//052A 	220C

		//;RFFC2071A.c: 63: delay_us(100);
		LDWI 	64H 			//052B 	0064
		STR 	72H 			//052C 	10F2
		CLRF 	73H 			//052D 	11F3
		MOVLP 	5H 			//052E 	0185
		LCALL 	50EH 			//052F 	350E
		MOVLP 	5H 			//0530 	0185

		//;RFFC2071A.c: 66: RFFC2071A_Reset();
		MOVLP 	4H 			//0531 	0184
		LCALL 	4AEH 			//0532 	34AE
		MOVLP 	5H 			//0533 	0185

		//;RFFC2071A.c: 69: RFFC2071A_DefaultConfig();
		MOVLP 	1H 			//0534 	0181
		LCALL 	1D7H 			//0535 	31D7
		MOVLP 	5H 			//0536 	0185
		RET 					//0537 	1008

		//;DualMixer.C: 183: PCKEN |= 0B00100000;
		MOVLB 	1H 			//0538 	1021
		BSR 	1AH, 5H 			//0539 	269A

		//;DualMixer.C: 185: URIER = 0B00100001;
		LDWI 	21H 			//053A 	0021
		MOVLB 	9H 			//053B 	1029
		STR 	EH 			//053C 	108E

		//;DualMixer.C: 186: URLCR = 0B00000001;
		LDWI 	1H 			//053D 	0001
		STR 	FH 			//053E 	108F

		//;DualMixer.C: 187: URMCR = 0B00011000;
		LDWI 	18H 			//053F 	0018
		STR 	11H 			//0540 	1091

		//;DualMixer.C: 189: URDLL = 104;
		LDWI 	68H 			//0541 	0068
		STR 	14H 			//0542 	1094

		//;DualMixer.C: 190: URDLH = 0;
		CLRF 	15H 			//0543 	1195

		//;DualMixer.C: 191: TCF = 1;
		BSR 	1CH, 0H 			//0544 	241C

		//;DualMixer.C: 192: INTCON = 0B11000000;
		LDWI 	C0H 			//0545 	00C0
		STR 	BH 			//0546 	108B
		RET 					//0547 	1008
		STR 	72H 			//0548 	10F2

		//;DualMixer.C: 264: return hex_chars[(val >> 4) & 0x0F];
		SWAPR 	72H, 0H 		//0549 	1E72
		ANDWI 	FH 			//054A 	090F
		ANDWI 	FH 			//054B 	090F
		ADDWI 	C9H 			//054C 	0EC9
		STR 	4H 			//054D 	1084
		LDWI 	84H 			//054E 	0084
		BTSC 	3H, 0H 			//054F 	2803
		ADDWI 	1H 			//0550 	0E01
		STR 	5H 			//0551 	1085
		LDR 	0H, 0H 			//0552 	1800
		RET 					//0553 	1008
		STR 	72H 			//0554 	10F2

		//;DualMixer.C: 150: unsigned char a;
		//;DualMixer.C: 151: for (a = 0; a < Time; a++)
		CLRF 	73H 			//0555 	11F3
		LJUMP 	559H 			//0556 	3D59

		//;DualMixer.C: 152: {
		//;DualMixer.C: 153: __nop();
		NOP 					//0557 	1000
		INCR 	73H, 1H 		//0558 	1AF3
		LDR 	72H, 0H 			//0559 	1872
		SUBWR 	73H, 0H 		//055A 	1273
		BTSS 	3H, 0H 			//055B 	2C03
		LJUMP 	55EH 			//055C 	3D5E
		LJUMP 	55FH 			//055D 	3D5F
		LJUMP 	557H 			//055E 	3D57
		RET 					//055F 	1008
		STR 	72H 			//0560 	10F2

		//;DualMixer.C: 274: return hex_chars[val & 0x0F];
		LDR 	72H, 0H 			//0561 	1872
		ANDWI 	FH 			//0562 	090F
		ADDWI 	C9H 			//0563 	0EC9
		STR 	4H 			//0564 	1084
		LDWI 	84H 			//0565 	0084
		BTSC 	3H, 0H 			//0566 	2803
		ADDWI 	1H 			//0567 	0E01
		STR 	5H 			//0568 	1085
		LDR 	0H, 0H 			//0569 	1800
		RET 					//056A 	1008
		RETW 	52H 			//056B 	0452
		RETW 	42H 			//056C 	0442
		RETW 	3AH 			//056D 	043A
		RETW 	30H 			//056E 	0430
		RETW 	78H 			//056F 	0478
		RETW 	0H 			//0570 	0400
		CLRWDT 			//0571 	1064
		CLRF 	0H 			//0572 	1180
		ADDFSR 	0H, 1H 		//0573 	0101
		DECRSZ 	9H, 1H 		//0574 	1B89
		LJUMP 	572H 			//0575 	3D72
		RETW 	0H 			//0576 	0400
		RETW 	DH 			//0577 	040D
		RETW 	AH 			//0578 	040A
		RETW 	0H 			//0579 	0400
		RET 					//057A 	1008
			END
