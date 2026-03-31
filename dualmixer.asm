//Deviec:FT61F14X
//-----------------------Variable---------------------------------
		_receivedata		EQU		A0H
		_rxCounter		EQU		5EH
		_rxIndexIp		EQU		5DH
		_rxIndexOp		EQU		5CH
		_toSend		EQU		120H
		_txCounter		EQU		5BH
		_txIndexIp		EQU		5AH
		_txIndexOp		EQU		59H
		_W_TMP		EQU		70H
		_BSR_TMP		EQU		71H
//		main@readback		EQU		56H
//		main@addr		EQU		58H
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
		LDR 	5DH, 0H 			//0026 	185D
		ADDWI 	A0H 			//0027 	0EA0
		STR 	6H 			//0028 	1086
		CLRF 	7H 			//0029 	1187
		MOVLB 	9H 			//002A 	1029
		LDR 	CH, 0H 			//002B 	180C
		STR 	1H 			//002C 	1081

		//;DualMixer.C: 80: rxIndexIp = (rxIndexIp + 1) & (32 - 1);
		MOVLB 	0H 			//002D 	1020
		INCR 	5DH, 1H 		//002E 	1ADD
		LDWI 	1FH 			//002F 	001F

		//;RFFC2071A.c: 294: freq1 = ((n_div & 0x07) << 13) | ((n_int & 0x0FFF) << 1) | ((n_frac >
		ANDWR 	5DH, 1H 		//0030 	15DD

		//;DualMixer.C: 81: rxCounter++;
		INCR 	5EH, 1H 		//0031 	1ADE

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
		LDR 	5BH, 0H 			//003E 	185B
		BTSC 	3H, 2H 			//003F 	2903
		LJUMP 	42H 			//0040 	3842
		LJUMP 	43H 			//0041 	3843
		LJUMP 	50H 			//0042 	3850

		//;DualMixer.C: 91: {
		//;DualMixer.C: 92: URDATAL = toSend[txIndexOp];
		LDR 	59H, 0H 			//0043 	1859
		ADDWI 	20H 			//0044 	0E20
		STR 	6H 			//0045 	1086
		LDWI 	1H 			//0046 	0001
		STR 	7H 			//0047 	1087
		LDR 	1H, 0H 			//0048 	1801
		MOVLB 	9H 			//0049 	1029
		STR 	CH 			//004A 	108C

		//;DualMixer.C: 93: txIndexOp = (txIndexOp + 1) & (64 - 1);
		MOVLB 	0H 			//004B 	1020
		INCR 	59H, 1H 		//004C 	1AD9
		LDWI 	3FH 			//004D 	003F
		ANDWR 	59H, 1H 		//004E 	15D9

		//;DualMixer.C: 94: txCounter--;
		DECR 	5BH, 1H 		//004F 	13DB

		//;DualMixer.C: 95: }
		//;DualMixer.C: 96: __nop();
		NOP 					//0050 	1000

		//;DualMixer.C: 97: }
		//;DualMixer.C: 99: user_isr();
		MOVLP 	5H 			//0051 	0185
		LCALL 	5B8H 			//0052 	35B8
		MOVLP 	0H 			//0053 	0180
		BCR 	7EH, 0H 			//0054 	207E
		RETI 					//0055 	1009
		MOVLP 	0H 			//0056 	0180
		LJUMP 	58H 			//0057 	3858
		MOVLB 	0H 			//0058 	1020
		CLRF 	59H 			//0059 	11D9
		CLRF 	5AH 			//005A 	11DA
		CLRF 	5BH 			//005B 	11DB
		CLRF 	5CH 			//005C 	11DC
		CLRF 	5DH 			//005D 	11DD
		CLRF 	5EH 			//005E 	11DE
		LDWI 	A0H 			//005F 	00A0
		STR 	4H 			//0060 	1084
		LDWI 	0H 			//0061 	0000
		STR 	5H 			//0062 	1085
		LDWI 	20H 			//0063 	0020
		MOVLP 	5H 			//0064 	0185
		LCALL 	5ACH 			//0065 	35AC
		MOVLP 	0H 			//0066 	0180
		LDWI 	20H 			//0067 	0020
		STR 	4H 			//0068 	1084
		LDWI 	1H 			//0069 	0001
		STR 	5H 			//006A 	1085
		LDWI 	40H 			//006B 	0040
		MOVLP 	5H 			//006C 	0185
		LCALL 	5ACH 			//006D 	35AC
		MOVLP 	0H 			//006E 	0180
		BCR 	7EH, 0H 			//006F 	207E
		MOVLB 	0H 			//0070 	1020
		MOVLP 	2H 			//0071 	0182
		LJUMP 	272H 			//0072 	3A72

		//;RFFC2071A.c: 247: uint8_t n_div;
		//;RFFC2071A.c: 248: uint32_t n_lo;
		//;RFFC2071A.c: 249: uint16_t n_int;
		//;RFFC2071A.c: 250: uint32_t n_frac;
		//;RFFC2071A.c: 251: uint16_t freq1, freq2, freq3;
		//;RFFC2071A.c: 252: uint8_t reg_base;
		//;RFFC2071A.c: 255: reg_base = (path == 1) ? 0x0C : 0x0F;
		DECR 	2AH, 0H 		//0073 	132A
		BTSC 	3H, 2H 			//0074 	2903
		LJUMP 	77H 			//0075 	3877
		LJUMP 	78H 			//0076 	3878
		LJUMP 	7CH 			//0077 	387C
		LDWI 	FH 			//0078 	000F
		STR 	39H 			//0079 	10B9
		CLRF 	3AH 			//007A 	11BA
		LJUMP 	7FH 			//007B 	387F
		LDWI 	CH 			//007C 	000C
		STR 	39H 			//007D 	10B9
		CLRF 	3AH 			//007E 	11BA
		LDR 	39H, 0H 			//007F 	1839
		STR 	4CH 			//0080 	10CC

		//;RFFC2071A.c: 258: if (freq_mhz >= 1500) {
		LDR 	29H, 0H 			//0081 	1829
		BTSS 	3H, 2H 			//0082 	2D03
		LJUMP 	8FH 			//0083 	388F
		LDR 	28H, 0H 			//0084 	1828
		BTSS 	3H, 2H 			//0085 	2D03
		LJUMP 	8FH 			//0086 	388F
		LDWI 	DCH 			//0087 	00DC
		SUBWR 	26H, 0H 		//0088 	1226
		LDWI 	5H 			//0089 	0005
		SUBWFB 	27H, 0H 		//008A 	0B27
		BTSS 	3H, 0H 			//008B 	2C03
		LJUMP 	8EH 			//008C 	388E
		LJUMP 	8FH 			//008D 	388F
		LJUMP 	95H 			//008E 	3895

		//;RFFC2071A.c: 259: n_lo = 1;
		CLRF 	44H 			//008F 	11C4
		INCR 	44H, 1H 		//0090 	1AC4
		CLRF 	45H 			//0091 	11C5
		CLRF 	46H 			//0092 	11C6
		CLRF 	47H 			//0093 	11C7

		//;RFFC2071A.c: 260: } else if (freq_mhz >= 750) {
		LJUMP 	D7H 			//0094 	38D7
		LDR 	29H, 0H 			//0095 	1829
		BTSS 	3H, 2H 			//0096 	2D03
		LJUMP 	A3H 			//0097 	38A3
		LDR 	28H, 0H 			//0098 	1828
		BTSS 	3H, 2H 			//0099 	2D03
		LJUMP 	A3H 			//009A 	38A3
		LDWI 	EEH 			//009B 	00EE
		SUBWR 	26H, 0H 		//009C 	1226
		LDWI 	2H 			//009D 	0002
		SUBWFB 	27H, 0H 		//009E 	0B27
		BTSS 	3H, 0H 			//009F 	2C03
		LJUMP 	A2H 			//00A0 	38A2
		LJUMP 	A3H 			//00A1 	38A3
		LJUMP 	A9H 			//00A2 	38A9

		//;RFFC2071A.c: 261: n_lo = 2;
		LDWI 	2H 			//00A3 	0002
		STR 	44H 			//00A4 	10C4
		CLRF 	45H 			//00A5 	11C5
		CLRF 	46H 			//00A6 	11C6
		CLRF 	47H 			//00A7 	11C7

		//;RFFC2071A.c: 262: } else if (freq_mhz >= 375) {
		LJUMP 	D7H 			//00A8 	38D7
		LDR 	29H, 0H 			//00A9 	1829
		BTSS 	3H, 2H 			//00AA 	2D03
		LJUMP 	B7H 			//00AB 	38B7
		LDR 	28H, 0H 			//00AC 	1828
		BTSS 	3H, 2H 			//00AD 	2D03
		LJUMP 	B7H 			//00AE 	38B7
		LDWI 	77H 			//00AF 	0077
		SUBWR 	26H, 0H 		//00B0 	1226
		LDWI 	1H 			//00B1 	0001
		SUBWFB 	27H, 0H 		//00B2 	0B27
		BTSS 	3H, 0H 			//00B3 	2C03
		LJUMP 	B6H 			//00B4 	38B6
		LJUMP 	B7H 			//00B5 	38B7
		LJUMP 	BDH 			//00B6 	38BD

		//;RFFC2071A.c: 263: n_lo = 4;
		LDWI 	4H 			//00B7 	0004
		STR 	44H 			//00B8 	10C4
		CLRF 	45H 			//00B9 	11C5
		CLRF 	46H 			//00BA 	11C6
		CLRF 	47H 			//00BB 	11C7

		//;RFFC2071A.c: 264: } else if (freq_mhz >= 188) {
		LJUMP 	D7H 			//00BC 	38D7
		LDR 	29H, 0H 			//00BD 	1829
		BTSS 	3H, 2H 			//00BE 	2D03
		LJUMP 	CCH 			//00BF 	38CC
		LDR 	28H, 0H 			//00C0 	1828
		BTSS 	3H, 2H 			//00C1 	2D03
		LJUMP 	CCH 			//00C2 	38CC
		LDR 	27H, 0H 			//00C3 	1827
		BTSS 	3H, 2H 			//00C4 	2D03
		LJUMP 	CCH 			//00C5 	38CC
		LDWI 	BCH 			//00C6 	00BC
		SUBWR 	26H, 0H 		//00C7 	1226
		BTSS 	3H, 0H 			//00C8 	2C03
		LJUMP 	CBH 			//00C9 	38CB
		LJUMP 	CCH 			//00CA 	38CC
		LJUMP 	D2H 			//00CB 	38D2

		//;RFFC2071A.c: 265: n_lo = 8;
		LDWI 	8H 			//00CC 	0008
		STR 	44H 			//00CD 	10C4
		CLRF 	45H 			//00CE 	11C5
		CLRF 	46H 			//00CF 	11C6
		CLRF 	47H 			//00D0 	11C7

		//;RFFC2071A.c: 266: } else {
		LJUMP 	D7H 			//00D1 	38D7

		//;RFFC2071A.c: 267: n_lo = 16;
		LDWI 	10H 			//00D2 	0010
		STR 	44H 			//00D3 	10C4
		CLRF 	45H 			//00D4 	11C5
		CLRF 	46H 			//00D5 	11C6
		CLRF 	47H 			//00D6 	11C7

		//;RFFC2071A.c: 268: }
		//;RFFC2071A.c: 271: uint32_t vco_freq = freq_mhz * n_lo * 2;
		LDR 	29H, 0H 			//00D7 	1829
		STR 	75H 			//00D8 	10F5
		LDR 	28H, 0H 			//00D9 	1828
		STR 	74H 			//00DA 	10F4
		LDR 	27H, 0H 			//00DB 	1827
		STR 	73H 			//00DC 	10F3
		LDR 	26H, 0H 			//00DD 	1826
		STR 	72H 			//00DE 	10F2
		LDR 	47H, 0H 			//00DF 	1847
		STR 	79H 			//00E0 	10F9
		LDR 	46H, 0H 			//00E1 	1846
		STR 	78H 			//00E2 	10F8
		LDR 	45H, 0H 			//00E3 	1845
		STR 	77H 			//00E4 	10F7
		LDR 	44H, 0H 			//00E5 	1844
		STR 	76H 			//00E6 	10F6
		MOVLP 	4H 			//00E7 	0184
		LCALL 	466H 			//00E8 	3466
		MOVLP 	0H 			//00E9 	0180
		LDR 	75H, 0H 			//00EA 	1875
		STR 	42H 			//00EB 	10C2
		LDR 	74H, 0H 			//00EC 	1874
		STR 	41H 			//00ED 	10C1
		LDR 	73H, 0H 			//00EE 	1873
		STR 	40H 			//00EF 	10C0
		LDR 	72H, 0H 			//00F0 	1872
		STR 	3FH 			//00F1 	10BF
		LSLF 	3FH, 1H 		//00F2 	05BF
		RLR 	40H, 1H 			//00F3 	1DC0
		RLR 	41H, 1H 			//00F4 	1DC1
		RLR 	42H, 1H 			//00F5 	1DC2

		//;RFFC2071A.c: 275: n_int = vco_freq / 26;
		LDWI 	1AH 			//00F6 	001A
		STR 	72H 			//00F7 	10F2
		CLRF 	73H 			//00F8 	11F3
		CLRF 	74H 			//00F9 	11F4
		CLRF 	75H 			//00FA 	11F5
		LDR 	42H, 0H 			//00FB 	1842
		STR 	79H 			//00FC 	10F9
		LDR 	41H, 0H 			//00FD 	1841
		STR 	78H 			//00FE 	10F8
		LDR 	40H, 0H 			//00FF 	1840
		STR 	77H 			//0100 	10F7
		LDR 	3FH, 0H 			//0101 	183F
		STR 	76H 			//0102 	10F6
		MOVLP 	3H 			//0103 	0183
		LCALL 	3B3H 			//0104 	33B3
		MOVLP 	0H 			//0105 	0180
		LDR 	73H, 0H 			//0106 	1873
		STR 	36H 			//0107 	10B6
		LDR 	72H, 0H 			//0108 	1872
		STR 	35H 			//0109 	10B5

		//;RFFC2071A.c: 278: uint32_t remainder = vco_freq % 26;
		LDWI 	1AH 			//010A 	001A
		STR 	72H 			//010B 	10F2
		CLRF 	73H 			//010C 	11F3
		CLRF 	74H 			//010D 	11F4
		CLRF 	75H 			//010E 	11F5
		LDR 	42H, 0H 			//010F 	1842
		STR 	79H 			//0110 	10F9
		LDR 	41H, 0H 			//0111 	1841
		STR 	78H 			//0112 	10F8
		LDR 	40H, 0H 			//0113 	1840
		STR 	77H 			//0114 	10F7
		LDR 	3FH, 0H 			//0115 	183F
		STR 	76H 			//0116 	10F6
		MOVLP 	3H 			//0117 	0183
		LCALL 	3FBH 			//0118 	33FB
		MOVLP 	0H 			//0119 	0180
		LDR 	75H, 0H 			//011A 	1875
		STR 	34H 			//011B 	10B4
		LDR 	74H, 0H 			//011C 	1874
		STR 	33H 			//011D 	10B3
		LDR 	73H, 0H 			//011E 	1873
		STR 	32H 			//011F 	10B2
		LDR 	72H, 0H 			//0120 	1872
		STR 	31H 			//0121 	10B1

		//;RFFC2071A.c: 279: n_frac = (remainder << 24) / 26;
		LDWI 	1AH 			//0122 	001A
		STR 	72H 			//0123 	10F2
		CLRF 	73H 			//0124 	11F3
		CLRF 	74H 			//0125 	11F4
		CLRF 	75H 			//0126 	11F5
		LDR 	31H, 0H 			//0127 	1831
		STR 	79H 			//0128 	10F9
		CLRF 	76H 			//0129 	11F6
		CLRF 	77H 			//012A 	11F7
		CLRF 	78H 			//012B 	11F8
		MOVLP 	3H 			//012C 	0183
		LCALL 	3B3H 			//012D 	33B3
		MOVLP 	0H 			//012E 	0180
		LDR 	75H, 0H 			//012F 	1875
		STR 	4BH 			//0130 	10CB
		LDR 	74H, 0H 			//0131 	1874
		STR 	4AH 			//0132 	10CA
		LDR 	73H, 0H 			//0133 	1873
		STR 	49H 			//0134 	10C9
		LDR 	72H, 0H 			//0135 	1872
		STR 	48H 			//0136 	10C8

		//;RFFC2071A.c: 282: switch (n_lo) {
		LJUMP 	149H 			//0137 	3949
		CLRF 	43H 			//0138 	11C3
		LJUMP 	16CH 			//0139 	396C

		//;RFFC2071A.c: 284: case 2: n_div = 1; break;
		CLRF 	43H 			//013A 	11C3
		INCR 	43H, 1H 		//013B 	1AC3
		LJUMP 	16CH 			//013C 	396C
		LDWI 	2H 			//013D 	0002
		STR 	43H 			//013E 	10C3
		LJUMP 	16CH 			//013F 	396C
		LDWI 	3H 			//0140 	0003
		STR 	43H 			//0141 	10C3
		LJUMP 	16CH 			//0142 	396C
		LDWI 	4H 			//0143 	0004
		STR 	43H 			//0144 	10C3
		LJUMP 	16CH 			//0145 	396C
		LDWI 	5H 			//0146 	0005
		STR 	43H 			//0147 	10C3
		LJUMP 	16CH 			//0148 	396C
		LDR 	47H, 0H 			//0149 	1847
		XORWI 	0H 			//014A 	0A00
		BTSC 	3H, 2H 			//014B 	2903
		LJUMP 	167H 			//014C 	3967
		LJUMP 	13DH 			//014D 	393D
		LDR 	45H, 0H 			//014E 	1845
		XORWI 	0H 			//014F 	0A00
		BTSC 	3H, 2H 			//0150 	2903
		LJUMP 	153H 			//0151 	3953
		LJUMP 	13DH 			//0152 	393D
		LDR 	44H, 0H 			//0153 	1844
		XORWI 	1H 			//0154 	0A01
		BTSC 	3H, 2H 			//0155 	2903
		LJUMP 	138H 			//0156 	3938
		XORWI 	3H 			//0157 	0A03
		BTSC 	3H, 2H 			//0158 	2903
		LJUMP 	13AH 			//0159 	393A
		XORWI 	6H 			//015A 	0A06
		BTSC 	3H, 2H 			//015B 	2903
		LJUMP 	13DH 			//015C 	393D
		XORWI 	CH 			//015D 	0A0C
		BTSC 	3H, 2H 			//015E 	2903
		LJUMP 	140H 			//015F 	3940
		XORWI 	18H 			//0160 	0A18
		BTSC 	3H, 2H 			//0161 	2903
		LJUMP 	143H 			//0162 	3943
		XORWI 	30H 			//0163 	0A30
		BTSC 	3H, 2H 			//0164 	2903
		LJUMP 	146H 			//0165 	3946
		LJUMP 	13DH 			//0166 	393D
		LDR 	46H, 0H 			//0167 	1846
		XORWI 	0H 			//0168 	0A00
		BTSC 	3H, 2H 			//0169 	2903
		LJUMP 	14EH 			//016A 	394E
		LJUMP 	13DH 			//016B 	393D
		LDR 	43H, 0H 			//016C 	1843
		ANDWI 	7H 			//016D 	0907
		STR 	3DH 			//016E 	10BD
		CLRF 	3EH 			//016F 	11BE
		LDWI 	DH 			//0170 	000D
		LSLF 	3DH, 1H 		//0171 	05BD
		RLR 	3EH, 1H 			//0172 	1DBE
		DECRSZ 	9H, 1H 		//0173 	1B89
		LJUMP 	171H 			//0174 	3971
		LDWI 	FFH 			//0175 	00FF
		ANDWR 	35H, 0H 		//0176 	1535
		STR 	2BH 			//0177 	10AB
		LDWI 	FH 			//0178 	000F
		ANDWR 	36H, 0H 		//0179 	1536
		STR 	2CH 			//017A 	10AC
		LSLF 	2BH, 1H 		//017B 	05AB
		RLR 	2CH, 1H 			//017C 	1DAC
		LDR 	2BH, 0H 			//017D 	182B
		IORWR 	3DH, 1H 		//017E 	14BD
		LDR 	2CH, 0H 			//017F 	182C
		IORWR 	3EH, 1H 		//0180 	14BE
		LDR 	48H, 0H 			//0181 	1848
		STR 	2BH 			//0182 	10AB
		LDR 	49H, 0H 			//0183 	1849
		STR 	2CH 			//0184 	10AC
		LDR 	4AH, 0H 			//0185 	184A
		STR 	2DH 			//0186 	10AD
		LDR 	4BH, 0H 			//0187 	184B
		STR 	2EH 			//0188 	10AE
		RLR 	2DH, 0H 			//0189 	1D2D
		RLR 	2EH, 0H 			//018A 	1D2E
		STR 	2BH 			//018B 	10AB
		CLRF 	2CH 			//018C 	11AC
		CLRF 	2DH 			//018D 	11AD
		CLRF 	2EH 			//018E 	11AE
		RLR 	2CH, 1H 			//018F 	1DAC
		LDWI 	1H 			//0190 	0001
		ANDWR 	2BH, 0H 		//0191 	152B
		STR 	2FH 			//0192 	10AF
		LDWI 	0H 			//0193 	0000
		ANDWR 	2CH, 0H 		//0194 	152C
		STR 	30H 			//0195 	10B0
		LDR 	2FH, 0H 			//0196 	182F
		IORWR 	3DH, 1H 		//0197 	14BD
		LDR 	30H, 0H 			//0198 	1830
		IORWR 	3EH, 1H 		//0199 	14BE

		//;RFFC2071A.c: 297: freq2 = (n_frac >> 7) & 0xFFFF;
		LDR 	48H, 0H 			//019A 	1848
		STR 	2BH 			//019B 	10AB
		LDR 	49H, 0H 			//019C 	1849
		STR 	2CH 			//019D 	10AC
		LDR 	4AH, 0H 			//019E 	184A
		STR 	2DH 			//019F 	10AD
		LDR 	4BH, 0H 			//01A0 	184B
		STR 	2EH 			//01A1 	10AE
		LDWI 	7H 			//01A2 	0007
		LSRF 	2EH, 1H 		//01A3 	06AE
		RRR 	2DH, 1H 			//01A4 	1CAD
		RRR 	2CH, 1H 			//01A5 	1CAC
		RRR 	2BH, 1H 			//01A6 	1CAB
		DECRSZ 	9H, 1H 		//01A7 	1B89
		LJUMP 	1A3H 			//01A8 	39A3
		LDR 	2CH, 0H 			//01A9 	182C
		STR 	38H 			//01AA 	10B8
		LDR 	2BH, 0H 			//01AB 	182B
		STR 	37H 			//01AC 	10B7

		//;RFFC2071A.c: 300: freq3 = ((n_frac & 0x7F) << 9) | (0x02 << 7);
		LDWI 	7FH 			//01AD 	007F
		ANDWR 	48H, 0H 		//01AE 	1548
		STR 	3BH 			//01AF 	10BB
		LDWI 	0H 			//01B0 	0000
		ANDWR 	49H, 0H 		//01B1 	1549
		STR 	3CH 			//01B2 	10BC
		LDWI 	9H 			//01B3 	0009
		LSLF 	3BH, 1H 		//01B4 	05BB
		RLR 	3CH, 1H 			//01B5 	1DBC
		DECRSZ 	9H, 1H 		//01B6 	1B89
		LJUMP 	1B4H 			//01B7 	39B4
		BSR 	3CH, 0H 			//01B8 	243C

		//;RFFC2071A.c: 303: RFFC2071A_WriteReg(reg_base + 0, freq1);
		LDR 	3EH, 0H 			//01B9 	183E
		STR 	75H 			//01BA 	10F5
		LDR 	3DH, 0H 			//01BB 	183D
		STR 	74H 			//01BC 	10F4
		LDR 	4CH, 0H 			//01BD 	184C
		MOVLP 	3H 			//01BE 	0183
		LCALL 	364H 			//01BF 	3364
		MOVLP 	0H 			//01C0 	0180

		//;RFFC2071A.c: 304: RFFC2071A_WriteReg(reg_base + 1, freq2);
		MOVLB 	0H 			//01C1 	1020
		LDR 	38H, 0H 			//01C2 	1838
		STR 	75H 			//01C3 	10F5
		LDR 	37H, 0H 			//01C4 	1837
		STR 	74H 			//01C5 	10F4
		LDR 	4CH, 0H 			//01C6 	184C
		ADDWI 	1H 			//01C7 	0E01
		MOVLP 	3H 			//01C8 	0183
		LCALL 	364H 			//01C9 	3364
		MOVLP 	0H 			//01CA 	0180

		//;RFFC2071A.c: 305: RFFC2071A_WriteReg(reg_base + 2, freq3);
		MOVLB 	0H 			//01CB 	1020
		LDR 	3CH, 0H 			//01CC 	183C
		STR 	75H 			//01CD 	10F5
		LDR 	3BH, 0H 			//01CE 	183B
		STR 	74H 			//01CF 	10F4
		LDR 	4CH, 0H 			//01D0 	184C
		ADDWI 	2H 			//01D1 	0E02
		MOVLP 	3H 			//01D2 	0183
		LCALL 	364H 			//01D3 	3364
		MOVLP 	0H 			//01D4 	0180
		RET 					//01D5 	1008

		//;RFFC2071A.c: 185: RFFC2071A_WriteReg(0x00, 0xBEFA);
		LDWI 	FAH 			//01D6 	00FA
		STR 	74H 			//01D7 	10F4
		LDWI 	BEH 			//01D8 	00BE
		STR 	75H 			//01D9 	10F5
		LDWI 	0H 			//01DA 	0000
		MOVLP 	3H 			//01DB 	0183
		LCALL 	364H 			//01DC 	3364
		MOVLP 	1H 			//01DD 	0181

		//;RFFC2071A.c: 190: RFFC2071A_WriteReg(0x01, 0x4064);
		LDWI 	64H 			//01DE 	0064
		STR 	74H 			//01DF 	10F4
		LDWI 	40H 			//01E0 	0040
		STR 	75H 			//01E1 	10F5
		LDWI 	1H 			//01E2 	0001
		MOVLP 	3H 			//01E3 	0183
		LCALL 	364H 			//01E4 	3364
		MOVLP 	1H 			//01E5 	0181

		//;RFFC2071A.c: 196: RFFC2071A_WriteReg(0x02, 0x1E21);
		LDWI 	21H 			//01E6 	0021
		STR 	74H 			//01E7 	10F4
		LDWI 	1EH 			//01E8 	001E
		STR 	75H 			//01E9 	10F5
		LDWI 	2H 			//01EA 	0002
		MOVLP 	3H 			//01EB 	0183
		LCALL 	364H 			//01EC 	3364
		MOVLP 	1H 			//01ED 	0181

		//;RFFC2071A.c: 199: RFFC2071A_WriteReg(0x03, 0x2808);
		LDWI 	8H 			//01EE 	0008
		STR 	74H 			//01EF 	10F4
		LDWI 	28H 			//01F0 	0028
		STR 	75H 			//01F1 	10F5
		LDWI 	3H 			//01F2 	0003
		MOVLP 	3H 			//01F3 	0183
		LCALL 	364H 			//01F4 	3364
		MOVLP 	1H 			//01F5 	0181

		//;RFFC2071A.c: 202: RFFC2071A_WriteReg(0x04, 0x0690);
		LDWI 	90H 			//01F6 	0090
		STR 	74H 			//01F7 	10F4
		LDWI 	6H 			//01F8 	0006
		STR 	75H 			//01F9 	10F5
		LDWI 	4H 			//01FA 	0004
		MOVLP 	3H 			//01FB 	0183
		LCALL 	364H 			//01FC 	3364
		MOVLP 	1H 			//01FD 	0181

		//;RFFC2071A.c: 203: RFFC2071A_WriteReg(0x05, 0x0690);
		LDWI 	90H 			//01FE 	0090
		STR 	74H 			//01FF 	10F4
		LDWI 	6H 			//0200 	0006
		STR 	75H 			//0201 	10F5
		LDWI 	5H 			//0202 	0005
		MOVLP 	3H 			//0203 	0183
		LCALL 	364H 			//0204 	3364
		MOVLP 	1H 			//0205 	0181

		//;RFFC2071A.c: 206: RFFC2071A_WriteReg(0x06, 0x0A52);
		LDWI 	52H 			//0206 	0052
		STR 	74H 			//0207 	10F4
		LDWI 	AH 			//0208 	000A
		STR 	75H 			//0209 	10F5
		LDWI 	6H 			//020A 	0006
		MOVLP 	3H 			//020B 	0183
		LCALL 	364H 			//020C 	3364
		MOVLP 	1H 			//020D 	0181

		//;RFFC2071A.c: 207: RFFC2071A_WriteReg(0x07, 0x0A52);
		LDWI 	52H 			//020E 	0052
		STR 	74H 			//020F 	10F4
		LDWI 	AH 			//0210 	000A
		STR 	75H 			//0211 	10F5
		LDWI 	7H 			//0212 	0007
		MOVLP 	3H 			//0213 	0183
		LCALL 	364H 			//0214 	3364
		MOVLP 	1H 			//0215 	0181

		//;RFFC2071A.c: 210: RFFC2071A_WriteReg(0x08, 0x1C22);
		LDWI 	22H 			//0216 	0022
		STR 	74H 			//0217 	10F4
		LDWI 	1CH 			//0218 	001C
		STR 	75H 			//0219 	10F5
		LDWI 	8H 			//021A 	0008
		MOVLP 	3H 			//021B 	0183
		LCALL 	364H 			//021C 	3364
		MOVLP 	1H 			//021D 	0181

		//;RFFC2071A.c: 213: RFFC2071A_WriteReg(0x09, 0x408C);
		LDWI 	8CH 			//021E 	008C
		STR 	74H 			//021F 	10F4
		LDWI 	40H 			//0220 	0040
		STR 	75H 			//0221 	10F5
		LDWI 	9H 			//0222 	0009
		MOVLP 	3H 			//0223 	0183
		LCALL 	364H 			//0224 	3364
		MOVLP 	1H 			//0225 	0181

		//;RFFC2071A.c: 216: RFFC2071A_WriteReg(0x0A, 0x0021);
		LDWI 	21H 			//0226 	0021
		STR 	74H 			//0227 	10F4
		CLRF 	75H 			//0228 	11F5
		LDWI 	AH 			//0229 	000A
		MOVLP 	3H 			//022A 	0183
		LCALL 	364H 			//022B 	3364
		MOVLP 	1H 			//022C 	0181

		//;RFFC2071A.c: 219: RFFC2071A_WriteReg(0x0B, 0x4F00);
		LDWI 	0H 			//022D 	0000
		STR 	74H 			//022E 	10F4
		LDWI 	4FH 			//022F 	004F
		STR 	75H 			//0230 	10F5
		LDWI 	BH 			//0231 	000B
		MOVLP 	3H 			//0232 	0183
		LCALL 	364H 			//0233 	3364
		MOVLP 	1H 			//0234 	0181

		//;RFFC2071A.c: 222: RFFC2071A_SetDualFrequency(500, 450);
		LDWI 	0H 			//0235 	0000
		MOVLB 	0H 			//0236 	1020
		STR 	50H 			//0237 	10D0
		LDWI 	0H 			//0238 	0000
		STR 	4FH 			//0239 	10CF
		LDWI 	1H 			//023A 	0001
		STR 	4EH 			//023B 	10CE
		LDWI 	F4H 			//023C 	00F4
		STR 	4DH 			//023D 	10CD
		LDWI 	0H 			//023E 	0000
		STR 	54H 			//023F 	10D4
		LDWI 	0H 			//0240 	0000
		STR 	53H 			//0241 	10D3
		LDWI 	1H 			//0242 	0001
		STR 	52H 			//0243 	10D2
		LDWI 	C2H 			//0244 	00C2
		STR 	51H 			//0245 	10D1
		MOVLP 	4H 			//0246 	0184
		LCALL 	4B3H 			//0247 	34B3
		MOVLP 	1H 			//0248 	0181

		//;RFFC2071A.c: 225: RFFC2071A_WriteReg(0x12, 0x0000);
		CLRF 	74H 			//0249 	11F4
		CLRF 	75H 			//024A 	11F5
		LDWI 	12H 			//024B 	0012
		MOVLP 	3H 			//024C 	0183
		LCALL 	364H 			//024D 	3364
		MOVLP 	1H 			//024E 	0181

		//;RFFC2071A.c: 228: RFFC2071A_WriteReg(0x15, 0x0000);
		CLRF 	74H 			//024F 	11F4
		CLRF 	75H 			//0250 	11F5
		LDWI 	15H 			//0251 	0015
		MOVLP 	3H 			//0252 	0183
		LCALL 	364H 			//0253 	3364
		MOVLP 	1H 			//0254 	0181

		//;RFFC2071A.c: 231: RFFC2071A_WriteReg(0x16, 0x0001);
		CLRF 	74H 			//0255 	11F4
		INCR 	74H, 1H 		//0256 	1AF4
		CLRF 	75H 			//0257 	11F5
		LDWI 	16H 			//0258 	0016
		MOVLP 	3H 			//0259 	0183
		LCALL 	364H 			//025A 	3364
		MOVLP 	1H 			//025B 	0181

		//;RFFC2071A.c: 234: RFFC2071A_WriteReg(0x17, 0x0048);
		LDWI 	48H 			//025C 	0048
		STR 	74H 			//025D 	10F4
		CLRF 	75H 			//025E 	11F5
		LDWI 	17H 			//025F 	0017
		MOVLP 	3H 			//0260 	0183
		LCALL 	364H 			//0261 	3364
		MOVLP 	1H 			//0262 	0181

		//;RFFC2071A.c: 235: RFFC2071A_WriteReg(0x1C, 0x0020);
		LDWI 	20H 			//0263 	0020
		STR 	74H 			//0264 	10F4
		CLRF 	75H 			//0265 	11F5
		LDWI 	1CH 			//0266 	001C
		MOVLP 	3H 			//0267 	0183
		LCALL 	364H 			//0268 	3364
		MOVLP 	1H 			//0269 	0181

		//;RFFC2071A.c: 238: RFFC2071A_WriteReg(0x1D, 0x0001);
		CLRF 	74H 			//026A 	11F4
		INCR 	74H, 1H 		//026B 	1AF4
		CLRF 	75H 			//026C 	11F5
		LDWI 	1DH 			//026D 	001D
		MOVLP 	3H 			//026E 	0183
		LCALL 	364H 			//026F 	3364
		MOVLP 	1H 			//0270 	0181
		RET 					//0271 	1008

		//;DualMixer.C: 284: uint16_t readback;
		//;DualMixer.C: 285: unsigned char i;
		//;DualMixer.C: 286: unsigned char addr;
		//;DualMixer.C: 288: POWER_INITIAL();
		MOVLP 	4H 			//0272 	0184
		LCALL 	43AH 			//0273 	343A
		MOVLP 	2H 			//0274 	0182

		//;DualMixer.C: 289: UART_INITIAL();
		MOVLP 	5H 			//0275 	0185
		LCALL 	56FH 			//0276 	356F
		MOVLP 	2H 			//0277 	0182

		//;DualMixer.C: 290: RFFC2071A_Init();
		MOVLP 	5H 			//0278 	0185
		LCALL 	54AH 			//0279 	354A
		MOVLP 	2H 			//027A 	0182

		//;DualMixer.C: 291: RFFC2071A_Enable();
		MOVLP 	5H 			//027B 	0185
		LCALL 	5A2H 			//027C 	35A2
		MOVLP 	2H 			//027D 	0182

		//;DualMixer.C: 292: RFFC2071A_DefaultConfig();
		MOVLP 	1H 			//027E 	0181
		LCALL 	1D6H 			//027F 	31D6
		MOVLP 	2H 			//0280 	0182

		//;DualMixer.C: 295: {
		//;DualMixer.C: 297: for (addr = 0; addr <= 0x1F; addr++)
		MOVLB 	0H 			//0281 	1020
		CLRF 	58H 			//0282 	11D8

		//;DualMixer.C: 298: {
		//;DualMixer.C: 299: readback = RFFC2071A_ReadReg(addr);
		LDR 	58H, 0H 			//0283 	1858
		MOVLP 	2H 			//0284 	0182
		LCALL 	2EDH 			//0285 	32ED
		MOVLP 	2H 			//0286 	0182
		LDR 	75H, 0H 			//0287 	1875
		MOVLB 	0H 			//0288 	1020
		STR 	57H 			//0289 	10D7
		LDR 	74H, 0H 			//028A 	1874
		STR 	56H 			//028B 	10D6

		//;DualMixer.C: 301: SendStringToUART("R[");
		LDWI 	B5H 			//028C 	00B5
		STR 	73H 			//028D 	10F3
		LDWI 	85H 			//028E 	0085
		STR 	74H 			//028F 	10F4
		MOVLP 	5H 			//0290 	0185
		LCALL 	51EH 			//0291 	351E
		MOVLP 	2H 			//0292 	0182

		//;DualMixer.C: 302: SendByteToUART(HiNibbleToHex(addr));
		MOVLB 	0H 			//0293 	1020
		LDR 	58H, 0H 			//0294 	1858
		MOVLP 	5H 			//0295 	0185
		LCALL 	57FH 			//0296 	357F
		MOVLP 	2H 			//0297 	0182
		MOVLP 	4H 			//0298 	0184
		LCALL 	48FH 			//0299 	348F
		MOVLP 	2H 			//029A 	0182

		//;DualMixer.C: 303: SendByteToUART(LoNibbleToHex(addr));
		MOVLB 	0H 			//029B 	1020
		LDR 	58H, 0H 			//029C 	1858
		MOVLP 	5H 			//029D 	0185
		LCALL 	597H 			//029E 	3597
		MOVLP 	2H 			//029F 	0182
		MOVLP 	4H 			//02A0 	0184
		LCALL 	48FH 			//02A1 	348F
		MOVLP 	2H 			//02A2 	0182

		//;DualMixer.C: 304: SendStringToUART("]=0x");
		LDWI 	19H 			//02A3 	0019
		STR 	73H 			//02A4 	10F3
		LDWI 	85H 			//02A5 	0085
		STR 	74H 			//02A6 	10F4
		MOVLP 	5H 			//02A7 	0185
		LCALL 	51EH 			//02A8 	351E
		MOVLP 	2H 			//02A9 	0182

		//;DualMixer.C: 305: SendByteToUART(HiNibbleToHex((unsigned char)(readback >> 8)));
		MOVLB 	0H 			//02AA 	1020
		LDR 	57H, 0H 			//02AB 	1857
		MOVLP 	5H 			//02AC 	0185
		LCALL 	57FH 			//02AD 	357F
		MOVLP 	2H 			//02AE 	0182
		MOVLP 	4H 			//02AF 	0184
		LCALL 	48FH 			//02B0 	348F
		MOVLP 	2H 			//02B1 	0182

		//;DualMixer.C: 306: SendByteToUART(LoNibbleToHex((unsigned char)(readback >> 8)));
		MOVLB 	0H 			//02B2 	1020
		LDR 	57H, 0H 			//02B3 	1857
		MOVLP 	5H 			//02B4 	0185
		LCALL 	597H 			//02B5 	3597
		MOVLP 	2H 			//02B6 	0182
		MOVLP 	4H 			//02B7 	0184
		LCALL 	48FH 			//02B8 	348F
		MOVLP 	2H 			//02B9 	0182

		//;DualMixer.C: 307: SendByteToUART(HiNibbleToHex((unsigned char)(readback & 0xFF)));
		MOVLB 	0H 			//02BA 	1020
		LDR 	56H, 0H 			//02BB 	1856
		MOVLP 	5H 			//02BC 	0185
		LCALL 	57FH 			//02BD 	357F
		MOVLP 	2H 			//02BE 	0182
		MOVLP 	4H 			//02BF 	0184
		LCALL 	48FH 			//02C0 	348F
		MOVLP 	2H 			//02C1 	0182

		//;DualMixer.C: 308: SendByteToUART(LoNibbleToHex((unsigned char)(readback & 0xFF)));
		MOVLB 	0H 			//02C2 	1020
		LDR 	56H, 0H 			//02C3 	1856
		MOVLP 	5H 			//02C4 	0185
		LCALL 	597H 			//02C5 	3597
		MOVLP 	2H 			//02C6 	0182
		MOVLP 	4H 			//02C7 	0184
		LCALL 	48FH 			//02C8 	348F
		MOVLP 	2H 			//02C9 	0182

		//;DualMixer.C: 309: SendStringToUART("\r\n");
		LDWI 	B2H 			//02CA 	00B2
		STR 	73H 			//02CB 	10F3
		LDWI 	85H 			//02CC 	0085
		STR 	74H 			//02CD 	10F4
		MOVLP 	5H 			//02CE 	0185
		LCALL 	51EH 			//02CF 	351E
		MOVLP 	2H 			//02D0 	0182

		//;DualMixer.C: 310: DelayMs(10);
		LDWI 	AH 			//02D1 	000A
		MOVLP 	4H 			//02D2 	0184
		LCALL 	4F1H 			//02D3 	34F1
		MOVLP 	2H 			//02D4 	0182
		MOVLB 	0H 			//02D5 	1020
		INCR 	58H, 1H 		//02D6 	1AD8
		LDWI 	20H 			//02D7 	0020
		SUBWR 	58H, 0H 		//02D8 	1258
		BTSS 	3H, 0H 			//02D9 	2C03
		LJUMP 	2DCH 			//02DA 	3ADC
		LJUMP 	2DDH 			//02DB 	3ADD
		LJUMP 	283H 			//02DC 	3A83

		//;DualMixer.C: 311: }
		//;DualMixer.C: 316: for (i = 0; i < 8; i++)
		CLRF 	55H 			//02DD 	11D5

		//;DualMixer.C: 317: {
		//;DualMixer.C: 318: DelayMs(250);
		LDWI 	FAH 			//02DE 	00FA
		MOVLP 	4H 			//02DF 	0184
		LCALL 	4F1H 			//02E0 	34F1
		MOVLP 	2H 			//02E1 	0182
		MOVLB 	0H 			//02E2 	1020
		INCR 	55H, 1H 		//02E3 	1AD5
		LDWI 	8H 			//02E4 	0008
		SUBWR 	55H, 0H 		//02E5 	1255
		BTSS 	3H, 0H 			//02E6 	2C03
		LJUMP 	2E9H 			//02E7 	3AE9
		LJUMP 	2EAH 			//02E8 	3AEA
		LJUMP 	2DEH 			//02E9 	3ADE
		LJUMP 	281H 			//02EA 	3A81
		MOVLP 	0H 			//02EB 	0180
		LJUMP 	56H 			//02EC 	3856
		STR 	77H 			//02ED 	10F7

		//;RFFC2071A.c: 121: uint8_t i;
		//;RFFC2071A.c: 122: uint8_t tx_byte;
		//;RFFC2071A.c: 123: uint16_t rx_data = 0;
		CLRF 	79H 			//02EE 	11F9
		CLRF 	7AH 			//02EF 	11FA

		//;RFFC2071A.c: 126: tx_byte = 0x80 | (addr & 0x7F);
		LDR 	77H, 0H 			//02F0 	1877
		ANDWI 	7FH 			//02F1 	097F
		IORWI 	80H 			//02F2 	0880
		STR 	78H 			//02F3 	10F8

		//;RFFC2071A.c: 129: RFFC2071A_SendOneClock();
		MOVLP 	5H 			//02F4 	0185
		LCALL 	55EH 			//02F5 	355E
		MOVLP 	2H 			//02F6 	0182

		//;RFFC2071A.c: 130: (TRISB &= (uint8_t)~0x02);
		MOVLB 	1H 			//02F7 	1021
		BCR 	DH, 1H 			//02F8 	208D

		//;RFFC2071A.c: 131: (PA0 = 0);
		MOVLB 	0H 			//02F9 	1020
		BCR 	CH, 0H 			//02FA 	200C

		//;RFFC2071A.c: 132: delay_us(1);
		CLRF 	72H 			//02FB 	11F2
		INCR 	72H, 1H 		//02FC 	1AF2
		CLRF 	73H 			//02FD 	11F3
		MOVLP 	5H 			//02FE 	0185
		LCALL 	534H 			//02FF 	3534
		MOVLP 	2H 			//0300 	0182

		//;RFFC2071A.c: 134: RFFC2071A_SendOneClock();
		MOVLP 	5H 			//0301 	0185
		LCALL 	55EH 			//0302 	355E
		MOVLP 	2H 			//0303 	0182

		//;RFFC2071A.c: 137: for (i = 0; i < 8; i++) {
		CLRF 	7BH 			//0304 	11FB

		//;RFFC2071A.c: 138: if (tx_byte & 0x80) {
		BTSS 	78H, 7H 		//0305 	2FF8
		LJUMP 	308H 			//0306 	3B08
		LJUMP 	309H 			//0307 	3B09
		LJUMP 	30CH 			//0308 	3B0C

		//;RFFC2071A.c: 139: (PB1 = 1);
		MOVLB 	0H 			//0309 	1020
		BSR 	DH, 1H 			//030A 	248D

		//;RFFC2071A.c: 140: } else {
		LJUMP 	30EH 			//030B 	3B0E

		//;RFFC2071A.c: 141: (PB1 = 0);
		MOVLB 	0H 			//030C 	1020
		BCR 	DH, 1H 			//030D 	208D

		//;RFFC2071A.c: 142: }
		//;RFFC2071A.c: 143: tx_byte <<= 1;
		LSLF 	78H, 1H 		//030E 	05F8

		//;RFFC2071A.c: 145: delay_us(1);
		CLRF 	72H 			//030F 	11F2
		INCR 	72H, 1H 		//0310 	1AF2
		CLRF 	73H 			//0311 	11F3
		MOVLP 	5H 			//0312 	0185
		LCALL 	534H 			//0313 	3534
		MOVLP 	2H 			//0314 	0182

		//;RFFC2071A.c: 146: RFFC2071A_SendOneClock();
		MOVLP 	5H 			//0315 	0185
		LCALL 	55EH 			//0316 	355E
		MOVLP 	2H 			//0317 	0182
		INCR 	7BH, 1H 		//0318 	1AFB
		LDWI 	8H 			//0319 	0008
		SUBWR 	7BH, 0H 		//031A 	127B
		BTSS 	3H, 0H 			//031B 	2C03
		LJUMP 	31EH 			//031C 	3B1E
		LJUMP 	31FH 			//031D 	3B1F
		LJUMP 	305H 			//031E 	3B05

		//;RFFC2071A.c: 147: }
		//;RFFC2071A.c: 151: delay_us(2);
		LDWI 	2H 			//031F 	0002
		STR 	72H 			//0320 	10F2
		CLRF 	73H 			//0321 	11F3
		MOVLP 	5H 			//0322 	0185
		LCALL 	534H 			//0323 	3534
		MOVLP 	2H 			//0324 	0182

		//;RFFC2071A.c: 152: (PB1 = 1);
		MOVLB 	0H 			//0325 	1020
		BSR 	DH, 1H 			//0326 	248D

		//;RFFC2071A.c: 153: (TRISB |= 0x02);
		MOVLB 	1H 			//0327 	1021
		BSR 	DH, 1H 			//0328 	248D

		//;RFFC2071A.c: 154: delay_us(2);
		LDWI 	2H 			//0329 	0002
		STR 	72H 			//032A 	10F2
		CLRF 	73H 			//032B 	11F3
		MOVLP 	5H 			//032C 	0185
		LCALL 	534H 			//032D 	3534
		MOVLP 	2H 			//032E 	0182

		//;RFFC2071A.c: 155: RFFC2071A_SendOneClock();
		MOVLP 	5H 			//032F 	0185
		LCALL 	55EH 			//0330 	355E
		MOVLP 	2H 			//0331 	0182

		//;RFFC2071A.c: 157: for (i = 0; i < 16; i++) {
		CLRF 	7BH 			//0332 	11FB

		//;RFFC2071A.c: 158: (PB0 = 1);
		MOVLB 	0H 			//0333 	1020
		BSR 	DH, 0H 			//0334 	240D

		//;RFFC2071A.c: 159: (PB0 = 0);
		BCR 	DH, 0H 			//0335 	200D

		//;RFFC2071A.c: 160: delay_us(1);
		CLRF 	72H 			//0336 	11F2
		INCR 	72H, 1H 		//0337 	1AF2
		CLRF 	73H 			//0338 	11F3
		MOVLP 	5H 			//0339 	0185
		LCALL 	534H 			//033A 	3534
		MOVLP 	2H 			//033B 	0182

		//;RFFC2071A.c: 162: rx_data <<= 1;
		LSLF 	79H, 1H 		//033C 	05F9
		RLR 	7AH, 1H 			//033D 	1DFA

		//;RFFC2071A.c: 163: rx_data = (rx_data & 0xFFFE) ;
		BCR 	79H, 0H 			//033E 	2079

		//;RFFC2071A.c: 164: if ((PB1)) {
		MOVLB 	0H 			//033F 	1020
		BTSS 	DH, 1H 			//0340 	2C8D
		LJUMP 	343H 			//0341 	3B43
		LJUMP 	344H 			//0342 	3B44
		LJUMP 	345H 			//0343 	3B45

		//;RFFC2071A.c: 165: rx_data |= 1;
		BSR 	79H, 0H 			//0344 	2479

		//;RFFC2071A.c: 166: }
		//;RFFC2071A.c: 168: delay_us(1);
		CLRF 	72H 			//0345 	11F2
		INCR 	72H, 1H 		//0346 	1AF2
		CLRF 	73H 			//0347 	11F3
		MOVLP 	5H 			//0348 	0185
		LCALL 	534H 			//0349 	3534
		MOVLP 	2H 			//034A 	0182
		INCR 	7BH, 1H 		//034B 	1AFB
		LDWI 	10H 			//034C 	0010
		SUBWR 	7BH, 0H 		//034D 	127B
		BTSS 	3H, 0H 			//034E 	2C03
		LJUMP 	351H 			//034F 	3B51
		LJUMP 	352H 			//0350 	3B52
		LJUMP 	333H 			//0351 	3B33

		//;RFFC2071A.c: 169: }
		//;RFFC2071A.c: 171: (PA0 = 1);
		MOVLB 	0H 			//0352 	1020
		BSR 	CH, 0H 			//0353 	240C

		//;RFFC2071A.c: 172: RFFC2071A_SendOneClock();
		MOVLP 	5H 			//0354 	0185
		LCALL 	55EH 			//0355 	355E
		MOVLP 	2H 			//0356 	0182

		//;RFFC2071A.c: 173: (TRISB &= (uint8_t)~0x02);
		MOVLB 	1H 			//0357 	1021
		BCR 	DH, 1H 			//0358 	208D

		//;RFFC2071A.c: 174: delay_us(1);
		CLRF 	72H 			//0359 	11F2
		INCR 	72H, 1H 		//035A 	1AF2
		CLRF 	73H 			//035B 	11F3
		MOVLP 	5H 			//035C 	0185
		LCALL 	534H 			//035D 	3534
		MOVLP 	2H 			//035E 	0182

		//;RFFC2071A.c: 176: return rx_data;
		LDR 	7AH, 0H 			//035F 	187A
		STR 	75H 			//0360 	10F5
		LDR 	79H, 0H 			//0361 	1879
		STR 	74H 			//0362 	10F4
		RET 					//0363 	1008
		MOVLB 	0H 			//0364 	1020
		STR 	20H 			//0365 	10A0

		//;RFFC2071A.c: 83: uint8_t i;
		//;RFFC2071A.c: 84: uint32_t tx_data;
		//;RFFC2071A.c: 87: tx_data = ((uint32_t)(addr & 0x7F) << 16) | data;
		LDR 	20H, 0H 			//0366 	1820
		ANDWI 	7FH 			//0367 	097F
		CLRF 	21H 			//0368 	11A1
		CLRF 	22H 			//0369 	11A2
		STR 	23H 			//036A 	10A3
		CLRF 	24H 			//036B 	11A4
		LDR 	74H, 0H 			//036C 	1874
		STR 	76H 			//036D 	10F6
		LDR 	75H, 0H 			//036E 	1875
		STR 	77H 			//036F 	10F7
		CLRF 	78H 			//0370 	11F8
		CLRF 	79H 			//0371 	11F9
		LDR 	76H, 0H 			//0372 	1876
		IORWR 	21H, 1H 		//0373 	14A1
		LDR 	77H, 0H 			//0374 	1877
		IORWR 	22H, 1H 		//0375 	14A2
		LDR 	78H, 0H 			//0376 	1878
		IORWR 	23H, 1H 		//0377 	14A3
		LDR 	79H, 0H 			//0378 	1879
		IORWR 	24H, 1H 		//0379 	14A4

		//;RFFC2071A.c: 90: RFFC2071A_SendOneClock();
		MOVLP 	5H 			//037A 	0185
		LCALL 	55EH 			//037B 	355E
		MOVLP 	3H 			//037C 	0183

		//;RFFC2071A.c: 91: (TRISB &= (uint8_t)~0x02);
		MOVLB 	1H 			//037D 	1021
		BCR 	DH, 1H 			//037E 	208D

		//;RFFC2071A.c: 92: (PA0 = 0);
		MOVLB 	0H 			//037F 	1020
		BCR 	CH, 0H 			//0380 	200C

		//;RFFC2071A.c: 93: delay_us(1);
		CLRF 	72H 			//0381 	11F2
		INCR 	72H, 1H 		//0382 	1AF2
		CLRF 	73H 			//0383 	11F3
		MOVLP 	5H 			//0384 	0185
		LCALL 	534H 			//0385 	3534
		MOVLP 	3H 			//0386 	0183

		//;RFFC2071A.c: 95: RFFC2071A_SendOneClock();
		MOVLP 	5H 			//0387 	0185
		LCALL 	55EH 			//0388 	355E
		MOVLP 	3H 			//0389 	0183

		//;RFFC2071A.c: 98: for (i = 0; i < 24; i++) {
		MOVLB 	0H 			//038A 	1020
		CLRF 	25H 			//038B 	11A5

		//;RFFC2071A.c: 100: if (tx_data & 0x800000) {
		BTSS 	23H, 7H 		//038C 	2FA3
		LJUMP 	38FH 			//038D 	3B8F
		LJUMP 	390H 			//038E 	3B90
		LJUMP 	392H 			//038F 	3B92

		//;RFFC2071A.c: 101: (PB1 = 1);
		BSR 	DH, 1H 			//0390 	248D

		//;RFFC2071A.c: 102: } else {
		LJUMP 	393H 			//0391 	3B93

		//;RFFC2071A.c: 103: (PB1 = 0);
		BCR 	DH, 1H 			//0392 	208D

		//;RFFC2071A.c: 104: }
		//;RFFC2071A.c: 105: tx_data <<= 1;
		LSLF 	21H, 1H 		//0393 	05A1
		RLR 	22H, 1H 			//0394 	1DA2
		RLR 	23H, 1H 			//0395 	1DA3
		RLR 	24H, 1H 			//0396 	1DA4

		//;RFFC2071A.c: 107: delay_us(1);
		CLRF 	72H 			//0397 	11F2
		INCR 	72H, 1H 		//0398 	1AF2
		CLRF 	73H 			//0399 	11F3
		MOVLP 	5H 			//039A 	0185
		LCALL 	534H 			//039B 	3534
		MOVLP 	3H 			//039C 	0183

		//;RFFC2071A.c: 108: RFFC2071A_SendOneClock();
		MOVLP 	5H 			//039D 	0185
		LCALL 	55EH 			//039E 	355E
		MOVLP 	3H 			//039F 	0183
		MOVLB 	0H 			//03A0 	1020
		INCR 	25H, 1H 		//03A1 	1AA5
		LDWI 	18H 			//03A2 	0018
		SUBWR 	25H, 0H 		//03A3 	1225
		BTSS 	3H, 0H 			//03A4 	2C03
		LJUMP 	3A7H 			//03A5 	3BA7
		LJUMP 	3A8H 			//03A6 	3BA8
		LJUMP 	38CH 			//03A7 	3B8C

		//;RFFC2071A.c: 109: }
		//;RFFC2071A.c: 111: (PA0 = 1);
		BSR 	CH, 0H 			//03A8 	240C

		//;RFFC2071A.c: 112: RFFC2071A_SendOneClock();
		MOVLP 	5H 			//03A9 	0185
		LCALL 	55EH 			//03AA 	355E
		MOVLP 	3H 			//03AB 	0183

		//;RFFC2071A.c: 113: delay_us(1);
		CLRF 	72H 			//03AC 	11F2
		INCR 	72H, 1H 		//03AD 	1AF2
		CLRF 	73H 			//03AE 	11F3
		MOVLP 	5H 			//03AF 	0185
		LCALL 	534H 			//03B0 	3534
		MOVLP 	3H 			//03B1 	0183
		RET 					//03B2 	1008
		CLRF 	20H 			//03B3 	11A0
		CLRF 	21H 			//03B4 	11A1
		CLRF 	22H 			//03B5 	11A2
		CLRF 	23H 			//03B6 	11A3
		LDR 	75H, 0H 			//03B7 	1875
		IORWR 	74H, 0H 		//03B8 	1474
		IORWR 	73H, 0H 		//03B9 	1473
		IORWR 	72H, 0H 		//03BA 	1472
		BTSC 	3H, 2H 			//03BB 	2903
		LJUMP 	3BEH 			//03BC 	3BBE
		LJUMP 	3BFH 			//03BD 	3BBF
		LJUMP 	3F2H 			//03BE 	3BF2
		CLRF 	24H 			//03BF 	11A4
		INCR 	24H, 1H 		//03C0 	1AA4
		LJUMP 	3C7H 			//03C1 	3BC7
		LSLF 	72H, 1H 		//03C2 	05F2
		RLR 	73H, 1H 			//03C3 	1DF3
		RLR 	74H, 1H 			//03C4 	1DF4
		RLR 	75H, 1H 			//03C5 	1DF5
		INCR 	24H, 1H 		//03C6 	1AA4
		BTSS 	75H, 7H 		//03C7 	2FF5
		LJUMP 	3CAH 			//03C8 	3BCA
		LJUMP 	3CBH 			//03C9 	3BCB
		LJUMP 	3C2H 			//03CA 	3BC2
		LSLF 	20H, 1H 		//03CB 	05A0
		RLR 	21H, 1H 			//03CC 	1DA1
		RLR 	22H, 1H 			//03CD 	1DA2
		RLR 	23H, 1H 			//03CE 	1DA3
		LDR 	75H, 0H 			//03CF 	1875
		SUBWR 	79H, 0H 		//03D0 	1279
		BTSS 	3H, 2H 			//03D1 	2D03
		LJUMP 	3DDH 			//03D2 	3BDD
		LDR 	74H, 0H 			//03D3 	1874
		SUBWR 	78H, 0H 		//03D4 	1278
		BTSS 	3H, 2H 			//03D5 	2D03
		LJUMP 	3DDH 			//03D6 	3BDD
		LDR 	73H, 0H 			//03D7 	1873
		SUBWR 	77H, 0H 		//03D8 	1277
		BTSS 	3H, 2H 			//03D9 	2D03
		LJUMP 	3DDH 			//03DA 	3BDD
		LDR 	72H, 0H 			//03DB 	1872
		SUBWR 	76H, 0H 		//03DC 	1276
		BTSS 	3H, 0H 			//03DD 	2C03
		LJUMP 	3E0H 			//03DE 	3BE0
		LJUMP 	3E1H 			//03DF 	3BE1
		LJUMP 	3EAH 			//03E0 	3BEA
		LDR 	72H, 0H 			//03E1 	1872
		SUBWR 	76H, 1H 		//03E2 	12F6
		LDR 	73H, 0H 			//03E3 	1873
		SUBWFB 	77H, 1H 		//03E4 	0BF7
		LDR 	74H, 0H 			//03E5 	1874
		SUBWFB 	78H, 1H 		//03E6 	0BF8
		LDR 	75H, 0H 			//03E7 	1875
		SUBWFB 	79H, 1H 		//03E8 	0BF9
		BSR 	20H, 0H 			//03E9 	2420
		LSRF 	75H, 1H 		//03EA 	06F5
		RRR 	74H, 1H 			//03EB 	1CF4
		RRR 	73H, 1H 			//03EC 	1CF3
		RRR 	72H, 1H 			//03ED 	1CF2
		DECRSZ 	24H, 1H 		//03EE 	1BA4
		LJUMP 	3F1H 			//03EF 	3BF1
		LJUMP 	3F2H 			//03F0 	3BF2
		LJUMP 	3CBH 			//03F1 	3BCB
		LDR 	23H, 0H 			//03F2 	1823
		STR 	75H 			//03F3 	10F5
		LDR 	22H, 0H 			//03F4 	1822
		STR 	74H 			//03F5 	10F4
		LDR 	21H, 0H 			//03F6 	1821
		STR 	73H 			//03F7 	10F3
		LDR 	20H, 0H 			//03F8 	1820
		STR 	72H 			//03F9 	10F2
		RET 					//03FA 	1008
		LDR 	75H, 0H 			//03FB 	1875
		IORWR 	74H, 0H 		//03FC 	1474
		IORWR 	73H, 0H 		//03FD 	1473
		IORWR 	72H, 0H 		//03FE 	1472
		BTSC 	3H, 2H 			//03FF 	2903
		LJUMP 	402H 			//0400 	3C02
		LJUMP 	403H 			//0401 	3C03
		LJUMP 	431H 			//0402 	3C31
		CLRF 	7AH 			//0403 	11FA
		INCR 	7AH, 1H 		//0404 	1AFA
		LJUMP 	40BH 			//0405 	3C0B
		LSLF 	72H, 1H 		//0406 	05F2
		RLR 	73H, 1H 			//0407 	1DF3
		RLR 	74H, 1H 			//0408 	1DF4
		RLR 	75H, 1H 			//0409 	1DF5
		INCR 	7AH, 1H 		//040A 	1AFA
		BTSS 	75H, 7H 		//040B 	2FF5
		LJUMP 	40EH 			//040C 	3C0E
		LJUMP 	40FH 			//040D 	3C0F
		LJUMP 	406H 			//040E 	3C06
		LDR 	75H, 0H 			//040F 	1875
		SUBWR 	79H, 0H 		//0410 	1279
		BTSS 	3H, 2H 			//0411 	2D03
		LJUMP 	41DH 			//0412 	3C1D
		LDR 	74H, 0H 			//0413 	1874
		SUBWR 	78H, 0H 		//0414 	1278
		BTSS 	3H, 2H 			//0415 	2D03
		LJUMP 	41DH 			//0416 	3C1D
		LDR 	73H, 0H 			//0417 	1873
		SUBWR 	77H, 0H 		//0418 	1277
		BTSS 	3H, 2H 			//0419 	2D03
		LJUMP 	41DH 			//041A 	3C1D
		LDR 	72H, 0H 			//041B 	1872
		SUBWR 	76H, 0H 		//041C 	1276
		BTSS 	3H, 0H 			//041D 	2C03
		LJUMP 	420H 			//041E 	3C20
		LJUMP 	421H 			//041F 	3C21
		LJUMP 	429H 			//0420 	3C29
		LDR 	72H, 0H 			//0421 	1872
		SUBWR 	76H, 1H 		//0422 	12F6
		LDR 	73H, 0H 			//0423 	1873
		SUBWFB 	77H, 1H 		//0424 	0BF7
		LDR 	74H, 0H 			//0425 	1874
		SUBWFB 	78H, 1H 		//0426 	0BF8
		LDR 	75H, 0H 			//0427 	1875
		SUBWFB 	79H, 1H 		//0428 	0BF9
		LSRF 	75H, 1H 		//0429 	06F5
		RRR 	74H, 1H 			//042A 	1CF4
		RRR 	73H, 1H 			//042B 	1CF3
		RRR 	72H, 1H 			//042C 	1CF2
		DECRSZ 	7AH, 1H 		//042D 	1BFA
		LJUMP 	430H 			//042E 	3C30
		LJUMP 	431H 			//042F 	3C31
		LJUMP 	40FH 			//0430 	3C0F
		LDR 	79H, 0H 			//0431 	1879
		STR 	75H 			//0432 	10F5
		LDR 	78H, 0H 			//0433 	1878
		STR 	74H 			//0434 	10F4
		LDR 	77H, 0H 			//0435 	1877
		STR 	73H 			//0436 	10F3
		LDR 	76H, 0H 			//0437 	1876
		STR 	72H 			//0438 	10F2
		RET 					//0439 	1008

		//;DualMixer.C: 114: OSCCON = 0B01110001;
		LDWI 	71H 			//043A 	0071
		MOVLB 	1H 			//043B 	1021
		STR 	19H 			//043C 	1099

		//;DualMixer.C: 115: INTCON = 0;
		CLRF 	BH 			//043D 	118B

		//;DualMixer.C: 117: PORTA = 0B00000000;
		MOVLB 	0H 			//043E 	1020
		CLRF 	CH 			//043F 	118C

		//;DualMixer.C: 118: TRISA = 0B10101100;
		LDWI 	ACH 			//0440 	00AC
		MOVLB 	1H 			//0441 	1021
		STR 	CH 			//0442 	108C

		//;DualMixer.C: 119: PORTB = 0B00000000;
		MOVLB 	0H 			//0443 	1020
		CLRF 	DH 			//0444 	118D

		//;DualMixer.C: 120: TRISB = 0B11000000;
		LDWI 	C0H 			//0445 	00C0
		MOVLB 	1H 			//0446 	1021
		STR 	DH 			//0447 	108D

		//;DualMixer.C: 121: PORTC = 0B00000000;
		MOVLB 	0H 			//0448 	1020
		CLRF 	EH 			//0449 	118E

		//;DualMixer.C: 122: TRISC = 0B00000000;
		MOVLB 	1H 			//044A 	1021
		CLRF 	EH 			//044B 	118E

		//;DualMixer.C: 124: WPUA = 0B00010011;
		LDWI 	13H 			//044C 	0013
		MOVLB 	3H 			//044D 	1023
		STR 	CH 			//044E 	108C

		//;DualMixer.C: 125: WPUB = 0B00000000;
		CLRF 	DH 			//044F 	118D

		//;DualMixer.C: 126: WPUC = 0B00000000;
		CLRF 	EH 			//0450 	118E

		//;DualMixer.C: 128: WPDA = 0B10000000;
		LDWI 	80H 			//0451 	0080
		MOVLB 	4H 			//0452 	1024
		STR 	CH 			//0453 	108C

		//;DualMixer.C: 129: WPDB = 0B00000000;
		CLRF 	DH 			//0454 	118D

		//;DualMixer.C: 130: WPDC = 0B00000000;
		CLRF 	EH 			//0455 	118E

		//;DualMixer.C: 132: PSRC0 = 0B11111111;
		LDWI 	FFH 			//0456 	00FF
		MOVLB 	2H 			//0457 	1022
		STR 	1AH 			//0458 	109A

		//;DualMixer.C: 133: PSRC1 = 0B11111111;
		LDWI 	FFH 			//0459 	00FF
		STR 	1BH 			//045A 	109B

		//;DualMixer.C: 134: PSRC2 = 0B11111111;
		LDWI 	FFH 			//045B 	00FF
		STR 	1CH 			//045C 	109C

		//;DualMixer.C: 136: PSINK0 = 0B11111111;
		LDWI 	FFH 			//045D 	00FF
		MOVLB 	3H 			//045E 	1023
		STR 	1AH 			//045F 	109A

		//;DualMixer.C: 137: PSINK1 = 0B11111111;
		LDWI 	FFH 			//0460 	00FF
		STR 	1BH 			//0461 	109B

		//;DualMixer.C: 138: PSINK2 = 0B11111111;
		LDWI 	FFH 			//0462 	00FF
		STR 	1CH 			//0463 	109C

		//;DualMixer.C: 140: ANSELA = 0B00000000;
		CLRF 	17H 			//0464 	1197
		RET 					//0465 	1008
		CLRF 	7AH 			//0466 	11FA
		CLRF 	7BH 			//0467 	11FB
		CLRF 	7CH 			//0468 	11FC
		CLRF 	7DH 			//0469 	11FD
		BTSS 	72H, 0H 		//046A 	2C72
		LJUMP 	46DH 			//046B 	3C6D
		LJUMP 	46EH 			//046C 	3C6E
		LJUMP 	476H 			//046D 	3C76
		LDR 	76H, 0H 			//046E 	1876
		ADDWR 	7AH, 1H 		//046F 	17FA
		LDR 	77H, 0H 			//0470 	1877
		ADDWFC 	7BH, 1H 		//0471 	0DFB
		LDR 	78H, 0H 			//0472 	1878
		ADDWFC 	7CH, 1H 		//0473 	0DFC
		LDR 	79H, 0H 			//0474 	1879
		ADDWFC 	7DH, 1H 		//0475 	0DFD
		LSLF 	76H, 1H 		//0476 	05F6
		RLR 	77H, 1H 			//0477 	1DF7
		RLR 	78H, 1H 			//0478 	1DF8
		RLR 	79H, 1H 			//0479 	1DF9
		LSRF 	75H, 1H 		//047A 	06F5
		RRR 	74H, 1H 			//047B 	1CF4
		RRR 	73H, 1H 			//047C 	1CF3
		RRR 	72H, 1H 			//047D 	1CF2
		LDR 	75H, 0H 			//047E 	1875
		IORWR 	74H, 0H 		//047F 	1474
		IORWR 	73H, 0H 		//0480 	1473
		IORWR 	72H, 0H 		//0481 	1472
		BTSS 	3H, 2H 			//0482 	2D03
		LJUMP 	485H 			//0483 	3C85
		LJUMP 	486H 			//0484 	3C86
		LJUMP 	46AH 			//0485 	3C6A
		LDR 	7DH, 0H 			//0486 	187D
		STR 	75H 			//0487 	10F5
		LDR 	7CH, 0H 			//0488 	187C
		STR 	74H 			//0489 	10F4
		LDR 	7BH, 0H 			//048A 	187B
		STR 	73H 			//048B 	10F3
		LDR 	7AH, 0H 			//048C 	187A
		STR 	72H 			//048D 	10F2
		RET 					//048E 	1008
		STR 	72H 			//048F 	10F2

		//;DualMixer.C: 207: if (txCounter == 0 && TXEF)
		MOVLB 	0H 			//0490 	1020
		LDR 	5BH, 0H 			//0491 	185B
		BTSS 	3H, 2H 			//0492 	2D03
		LJUMP 	495H 			//0493 	3C95
		LJUMP 	496H 			//0494 	3C96
		LJUMP 	49FH 			//0495 	3C9F
		MOVLB 	9H 			//0496 	1029
		BTSS 	12H, 5H 		//0497 	2E92
		LJUMP 	49AH 			//0498 	3C9A
		LJUMP 	49BH 			//0499 	3C9B
		LJUMP 	49FH 			//049A 	3C9F

		//;DualMixer.C: 208: {
		//;DualMixer.C: 209: TCF = 1;
		BSR 	1CH, 0H 			//049B 	241C

		//;DualMixer.C: 210: URDATAL = data;
		LDR 	72H, 0H 			//049C 	1872
		STR 	CH 			//049D 	108C
		LJUMP 	4B2H 			//049E 	3CB2

		//;DualMixer.C: 212: }
		//;DualMixer.C: 213: if (txCounter >= 64)
		LDWI 	40H 			//049F 	0040
		MOVLB 	0H 			//04A0 	1020
		SUBWR 	5BH, 0H 		//04A1 	125B
		BTSS 	3H, 0H 			//04A2 	2C03
		LJUMP 	4A5H 			//04A3 	3CA5
		LJUMP 	4A6H 			//04A4 	3CA6
		LJUMP 	4A7H 			//04A5 	3CA7
		LJUMP 	4B2H 			//04A6 	3CB2

		//;DualMixer.C: 216: }
		//;DualMixer.C: 217: toSend[txIndexIp] = data;
		LDR 	5AH, 0H 			//04A7 	185A
		ADDWI 	20H 			//04A8 	0E20
		STR 	6H 			//04A9 	1086
		LDWI 	1H 			//04AA 	0001
		STR 	7H 			//04AB 	1087
		LDR 	72H, 0H 			//04AC 	1872
		STR 	1H 			//04AD 	1081

		//;DualMixer.C: 218: txIndexIp = (txIndexIp + 1) & (64 - 1);
		INCR 	5AH, 1H 		//04AE 	1ADA
		LDWI 	3FH 			//04AF 	003F
		ANDWR 	5AH, 1H 		//04B0 	15DA

		//;DualMixer.C: 219: txCounter++;
		INCR 	5BH, 1H 		//04B1 	1ADB
		RET 					//04B2 	1008

		//;RFFC2071A.c: 337: RFFC2071A_CalcFrequency(freq1_mhz, 1);
		LDR 	50H, 0H 			//04B3 	1850
		STR 	29H 			//04B4 	10A9
		LDR 	4FH, 0H 			//04B5 	184F
		STR 	28H 			//04B6 	10A8
		LDR 	4EH, 0H 			//04B7 	184E
		STR 	27H 			//04B8 	10A7
		LDR 	4DH, 0H 			//04B9 	184D
		STR 	26H 			//04BA 	10A6
		CLRF 	2AH 			//04BB 	11AA
		INCR 	2AH, 1H 		//04BC 	1AAA
		MOVLP 	0H 			//04BD 	0180
		LCALL 	73H 			//04BE 	3073
		MOVLP 	4H 			//04BF 	0184

		//;RFFC2071A.c: 338: RFFC2071A_CalcFrequency(freq2_mhz, 2);
		MOVLB 	0H 			//04C0 	1020
		LDR 	54H, 0H 			//04C1 	1854
		STR 	29H 			//04C2 	10A9
		LDR 	53H, 0H 			//04C3 	1853
		STR 	28H 			//04C4 	10A8
		LDR 	52H, 0H 			//04C5 	1852
		STR 	27H 			//04C6 	10A7
		LDR 	51H, 0H 			//04C7 	1851
		STR 	26H 			//04C8 	10A6
		LDWI 	2H 			//04C9 	0002
		STR 	2AH 			//04CA 	10AA
		MOVLP 	0H 			//04CB 	0180
		LCALL 	73H 			//04CC 	3073
		MOVLP 	4H 			//04CD 	0184

		//;RFFC2071A.c: 341: RFFC2071A_WriteReg(0x1D, 0x0001);
		CLRF 	74H 			//04CE 	11F4
		INCR 	74H, 1H 		//04CF 	1AF4
		CLRF 	75H 			//04D0 	11F5
		LDWI 	1DH 			//04D1 	001D
		MOVLP 	3H 			//04D2 	0183
		LCALL 	364H 			//04D3 	3364
		MOVLP 	4H 			//04D4 	0184
		RET 					//04D5 	1008

		//;RFFC2071A.c: 58: (PB2 = 0);
		MOVLB 	0H 			//04D6 	1020
		BCR 	DH, 2H 			//04D7 	210D

		//;RFFC2071A.c: 59: (PA1 = 0);
		BCR 	CH, 1H 			//04D8 	208C

		//;RFFC2071A.c: 60: delay_us(100);
		LDWI 	64H 			//04D9 	0064
		STR 	72H 			//04DA 	10F2
		CLRF 	73H 			//04DB 	11F3
		MOVLP 	5H 			//04DC 	0185
		LCALL 	534H 			//04DD 	3534
		MOVLP 	4H 			//04DE 	0184

		//;RFFC2071A.c: 61: (PA1 = 1);
		MOVLB 	0H 			//04DF 	1020
		BSR 	CH, 1H 			//04E0 	248C

		//;RFFC2071A.c: 62: delay_us(100);
		LDWI 	64H 			//04E1 	0064
		STR 	72H 			//04E2 	10F2
		CLRF 	73H 			//04E3 	11F3
		MOVLP 	5H 			//04E4 	0185
		LCALL 	534H 			//04E5 	3534
		MOVLP 	4H 			//04E6 	0184

		//;RFFC2071A.c: 63: (PB2 = 1);
		MOVLB 	0H 			//04E7 	1020
		BSR 	DH, 2H 			//04E8 	250D

		//;RFFC2071A.c: 64: delay_us(1000);
		LDWI 	E8H 			//04E9 	00E8
		STR 	72H 			//04EA 	10F2
		LDWI 	3H 			//04EB 	0003
		STR 	73H 			//04EC 	10F3
		MOVLP 	5H 			//04ED 	0185
		LCALL 	534H 			//04EE 	3534
		MOVLP 	4H 			//04EF 	0184
		RET 					//04F0 	1008
		STR 	74H 			//04F1 	10F4

		//;DualMixer.C: 164: unsigned char a, b;
		//;DualMixer.C: 165: for (a = 0; a < Time; a++)
		CLRF 	75H 			//04F2 	11F5
		LJUMP 	501H 			//04F3 	3D01

		//;DualMixer.C: 166: {
		//;DualMixer.C: 167: for (b = 0; b < 5; b++)
		CLRF 	76H 			//04F4 	11F6

		//;DualMixer.C: 168: {
		//;DualMixer.C: 169: DelayUs(197);
		LDWI 	C5H 			//04F5 	00C5
		MOVLP 	5H 			//04F6 	0185
		LCALL 	58BH 			//04F7 	358B
		MOVLP 	4H 			//04F8 	0184
		INCR 	76H, 1H 		//04F9 	1AF6
		LDWI 	5H 			//04FA 	0005
		SUBWR 	76H, 0H 		//04FB 	1276
		BTSS 	3H, 0H 			//04FC 	2C03
		LJUMP 	4FFH 			//04FD 	3CFF
		LJUMP 	500H 			//04FE 	3D00
		LJUMP 	4F5H 			//04FF 	3CF5
		INCR 	75H, 1H 		//0500 	1AF5
		LDR 	74H, 0H 			//0501 	1874
		SUBWR 	75H, 0H 		//0502 	1275
		BTSS 	3H, 0H 			//0503 	2C03
		LJUMP 	506H 			//0504 	3D06
		LJUMP 	507H 			//0505 	3D07
		LJUMP 	4F4H 			//0506 	3CF4
		RET 					//0507 	1008
		RETW 	30H 			//0508 	0430
		RETW 	31H 			//0509 	0431
		RETW 	32H 			//050A 	0432
		RETW 	33H 			//050B 	0433
		RETW 	34H 			//050C 	0434
		RETW 	35H 			//050D 	0435
		RETW 	36H 			//050E 	0436
		RETW 	37H 			//050F 	0437
		RETW 	38H 			//0510 	0438
		RETW 	39H 			//0511 	0439
		RETW 	41H 			//0512 	0441
		RETW 	42H 			//0513 	0442
		RETW 	43H 			//0514 	0443
		RETW 	44H 			//0515 	0444
		RETW 	45H 			//0516 	0445
		RETW 	46H 			//0517 	0446
		RETW 	0H 			//0518 	0400
		RETW 	5DH 			//0519 	045D
		RETW 	3DH 			//051A 	043D
		RETW 	30H 			//051B 	0430
		RETW 	78H 			//051C 	0478
		RETW 	0H 			//051D 	0400

		//;DualMixer.C: 230: while (*str)
		LJUMP 	52AH 			//051E 	3D2A

		//;DualMixer.C: 231: {
		//;DualMixer.C: 232: SendByteToUART(*str);
		LDR 	73H, 0H 			//051F 	1873
		STR 	4H 			//0520 	1084
		LDR 	74H, 0H 			//0521 	1874
		STR 	5H 			//0522 	1085
		LDR 	0H, 0H 			//0523 	1800
		MOVLP 	4H 			//0524 	0184
		LCALL 	48FH 			//0525 	348F
		MOVLP 	5H 			//0526 	0185

		//;DualMixer.C: 233: str++;
		INCR 	73H, 1H 		//0527 	1AF3
		BTSC 	3H, 2H 			//0528 	2903
		INCR 	74H, 1H 		//0529 	1AF4
		LDR 	73H, 0H 			//052A 	1873
		STR 	4H 			//052B 	1084
		LDR 	74H, 0H 			//052C 	1874
		STR 	5H 			//052D 	1085
		MOVIW 	FSR0++ 		//052E 	1012
		BTSS 	3H, 2H 			//052F 	2D03
		LJUMP 	532H 			//0530 	3D32
		LJUMP 	533H 			//0531 	3D33
		LJUMP 	51FH 			//0532 	3D1F
		RET 					//0533 	1008

		//;RFFC2071A.c: 25: while (us--) {
		LJUMP 	53DH 			//0534 	3D3D

		//;RFFC2071A.c: 26: __nop(); __nop(); __nop(); __nop();
		NOP 					//0535 	1000
		NOP 					//0536 	1000
		NOP 					//0537 	1000
		NOP 					//0538 	1000

		//;RFFC2071A.c: 27: __nop(); __nop(); __nop(); __nop();
		NOP 					//0539 	1000
		NOP 					//053A 	1000
		NOP 					//053B 	1000
		NOP 					//053C 	1000
		LDWI 	1H 			//053D 	0001
		SUBWR 	72H, 1H 		//053E 	12F2
		LDWI 	0H 			//053F 	0000
		SUBWFB 	73H, 1H 		//0540 	0BF3
		INCR 	72H, 0H 		//0541 	1A72
		BTSS 	3H, 2H 			//0542 	2D03
		LJUMP 	548H 			//0543 	3D48
		INCR 	73H, 0H 		//0544 	1A73
		BTSS 	3H, 2H 			//0545 	2D03
		LJUMP 	548H 			//0546 	3D48
		LJUMP 	549H 			//0547 	3D49
		LJUMP 	535H 			//0548 	3D35
		RET 					//0549 	1008

		//;RFFC2071A.c: 37: (PA0 = 1);
		MOVLB 	0H 			//054A 	1020
		BSR 	CH, 0H 			//054B 	240C

		//;RFFC2071A.c: 38: (PB0 = 0);
		BCR 	DH, 0H 			//054C 	200D

		//;RFFC2071A.c: 39: (PB1 = 0);
		BCR 	DH, 1H 			//054D 	208D

		//;RFFC2071A.c: 40: (PB2 = 0);
		BCR 	DH, 2H 			//054E 	210D

		//;RFFC2071A.c: 41: (PA1 = 1);
		BSR 	CH, 1H 			//054F 	248C

		//;RFFC2071A.c: 42: (PA4 = 0);
		BCR 	CH, 4H 			//0550 	220C

		//;RFFC2071A.c: 44: delay_us(100);
		LDWI 	64H 			//0551 	0064
		STR 	72H 			//0552 	10F2
		CLRF 	73H 			//0553 	11F3
		MOVLP 	5H 			//0554 	0185
		LCALL 	534H 			//0555 	3534
		MOVLP 	5H 			//0556 	0185

		//;RFFC2071A.c: 47: RFFC2071A_Reset();
		MOVLP 	4H 			//0557 	0184
		LCALL 	4D6H 			//0558 	34D6
		MOVLP 	5H 			//0559 	0185

		//;RFFC2071A.c: 50: RFFC2071A_DefaultConfig();
		MOVLP 	1H 			//055A 	0181
		LCALL 	1D6H 			//055B 	31D6
		MOVLP 	5H 			//055C 	0185
		RET 					//055D 	1008

		//;RFFC2071A.c: 72: (PB0 = 1);
		MOVLB 	0H 			//055E 	1020
		BSR 	DH, 0H 			//055F 	240D

		//;RFFC2071A.c: 73: delay_us(1);
		CLRF 	72H 			//0560 	11F2
		INCR 	72H, 1H 		//0561 	1AF2
		CLRF 	73H 			//0562 	11F3
		MOVLP 	5H 			//0563 	0185
		LCALL 	534H 			//0564 	3534
		MOVLP 	5H 			//0565 	0185

		//;RFFC2071A.c: 74: (PB0 = 0);
		MOVLB 	0H 			//0566 	1020
		BCR 	DH, 0H 			//0567 	200D

		//;RFFC2071A.c: 75: delay_us(1);
		CLRF 	72H 			//0568 	11F2
		INCR 	72H, 1H 		//0569 	1AF2
		CLRF 	73H 			//056A 	11F3
		MOVLP 	5H 			//056B 	0185
		LCALL 	534H 			//056C 	3534
		MOVLP 	5H 			//056D 	0185
		RET 					//056E 	1008

		//;DualMixer.C: 183: PCKEN |= 0B00100000;
		MOVLB 	1H 			//056F 	1021
		BSR 	1AH, 5H 			//0570 	269A

		//;DualMixer.C: 185: URIER = 0B00100001;
		LDWI 	21H 			//0571 	0021
		MOVLB 	9H 			//0572 	1029
		STR 	EH 			//0573 	108E

		//;DualMixer.C: 186: URLCR = 0B00000001;
		LDWI 	1H 			//0574 	0001
		STR 	FH 			//0575 	108F

		//;DualMixer.C: 187: URMCR = 0B00011000;
		LDWI 	18H 			//0576 	0018
		STR 	11H 			//0577 	1091

		//;DualMixer.C: 189: URDLL = 104;
		LDWI 	68H 			//0578 	0068
		STR 	14H 			//0579 	1094

		//;DualMixer.C: 190: URDLH = 0;
		CLRF 	15H 			//057A 	1195

		//;DualMixer.C: 191: TCF = 1;
		BSR 	1CH, 0H 			//057B 	241C

		//;DualMixer.C: 192: INTCON = 0B11000000;
		LDWI 	C0H 			//057C 	00C0
		STR 	BH 			//057D 	108B
		RET 					//057E 	1008
		STR 	72H 			//057F 	10F2

		//;DualMixer.C: 264: return hex_chars[(val >> 4) & 0x0F];
		SWAPR 	72H, 0H 		//0580 	1E72
		ANDWI 	FH 			//0581 	090F
		ANDWI 	FH 			//0582 	090F
		ADDWI 	8H 			//0583 	0E08
		STR 	4H 			//0584 	1084
		LDWI 	85H 			//0585 	0085
		BTSC 	3H, 0H 			//0586 	2803
		ADDWI 	1H 			//0587 	0E01
		STR 	5H 			//0588 	1085
		LDR 	0H, 0H 			//0589 	1800
		RET 					//058A 	1008
		STR 	72H 			//058B 	10F2

		//;DualMixer.C: 150: unsigned char a;
		//;DualMixer.C: 151: for (a = 0; a < Time; a++)
		CLRF 	73H 			//058C 	11F3
		LJUMP 	590H 			//058D 	3D90

		//;DualMixer.C: 152: {
		//;DualMixer.C: 153: __nop();
		NOP 					//058E 	1000
		INCR 	73H, 1H 		//058F 	1AF3
		LDR 	72H, 0H 			//0590 	1872
		SUBWR 	73H, 0H 		//0591 	1273
		BTSS 	3H, 0H 			//0592 	2C03
		LJUMP 	595H 			//0593 	3D95
		LJUMP 	596H 			//0594 	3D96
		LJUMP 	58EH 			//0595 	3D8E
		RET 					//0596 	1008
		STR 	72H 			//0597 	10F2

		//;DualMixer.C: 274: return hex_chars[val & 0x0F];
		LDR 	72H, 0H 			//0598 	1872
		ANDWI 	FH 			//0599 	090F
		ADDWI 	8H 			//059A 	0E08
		STR 	4H 			//059B 	1084
		LDWI 	85H 			//059C 	0085
		BTSC 	3H, 0H 			//059D 	2803
		ADDWI 	1H 			//059E 	0E01
		STR 	5H 			//059F 	1085
		LDR 	0H, 0H 			//05A0 	1800
		RET 					//05A1 	1008

		//;RFFC2071A.c: 388: (PB2 = 1);
		MOVLB 	0H 			//05A2 	1020
		BSR 	DH, 2H 			//05A3 	250D

		//;RFFC2071A.c: 389: delay_us(1000);
		LDWI 	E8H 			//05A4 	00E8
		STR 	72H 			//05A5 	10F2
		LDWI 	3H 			//05A6 	0003
		STR 	73H 			//05A7 	10F3
		MOVLP 	5H 			//05A8 	0185
		LCALL 	534H 			//05A9 	3534
		MOVLP 	5H 			//05AA 	0185
		RET 					//05AB 	1008
		CLRWDT 			//05AC 	1064
		CLRF 	0H 			//05AD 	1180
		ADDFSR 	0H, 1H 		//05AE 	0101
		DECRSZ 	9H, 1H 		//05AF 	1B89
		LJUMP 	5ADH 			//05B0 	3DAD
		RETW 	0H 			//05B1 	0400
		RETW 	DH 			//05B2 	040D
		RETW 	AH 			//05B3 	040A
		RETW 	0H 			//05B4 	0400
		RETW 	52H 			//05B5 	0452
		RETW 	5BH 			//05B6 	045B
		RETW 	0H 			//05B7 	0400
		RET 					//05B8 	1008
			END
