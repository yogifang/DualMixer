//Deviec:FT61F14X
//-----------------------Variable---------------------------------
		_receivedata		EQU		A0H
		_rxCounter		EQU		58H
		_rxIndexIp		EQU		57H
		_rxIndexOp		EQU		56H
		_toSend		EQU		120H
		_txCounter		EQU		55H
		_txIndexIp		EQU		54H
		_txIndexOp		EQU		53H
		_W_TMP		EQU		70H
		_BSR_TMP		EQU		71H
//		main@readback		EQU		50H
//		main@addr		EQU		52H
//		main@i		EQU		4FH
//		SendStringToUART@str		EQU		73H
//		SendByteToUART@data		EQU		72H
//		SendByteToUART@data		EQU		72H
//		SendByteToUART@data		EQU		72H
//		RFFC2071A_DefaultConfig@reg		EQU		4DH
//		RFFC2071A_ReadReg@addr		EQU		77H
//		RFFC2071A_ReadReg@rx_data		EQU		79H
//		RFFC2071A_ReadReg@i		EQU		7BH
//		RFFC2071A_ReadReg@tx_byte		EQU		78H
//		RFFC2071A_ReadReg@addr		EQU		77H
//		RFFC2071A_ReadReg@addr		EQU		77H
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
		LDR 	57H, 0H 			//0026 	1857
		ADDWI 	A0H 			//0027 	0EA0
		STR 	6H 			//0028 	1086
		CLRF 	7H 			//0029 	1187
		MOVLB 	9H 			//002A 	1029
		LDR 	CH, 0H 			//002B 	180C
		STR 	1H 			//002C 	1081

		//;DualMixer.C: 80: rxIndexIp = (rxIndexIp + 1) & (32 - 1);
		MOVLB 	0H 			//002D 	1020
		INCR 	57H, 1H 		//002E 	1AD7
		LDWI 	1FH 			//002F 	001F

		//;RFFC2071A.c: 336: freq1 = ((n_div & 0x07) << 13) | ((n_int & 0x0FFF) << 1) | ((n_frac >
		ANDWR 	57H, 1H 		//0030 	15D7

		//;DualMixer.C: 81: rxCounter++;
		INCR 	58H, 1H 		//0031 	1AD8

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
		LDR 	55H, 0H 			//003E 	1855
		BTSC 	3H, 2H 			//003F 	2903
		LJUMP 	42H 			//0040 	3842
		LJUMP 	43H 			//0041 	3843
		LJUMP 	50H 			//0042 	3850

		//;DualMixer.C: 91: {
		//;DualMixer.C: 92: URDATAL = toSend[txIndexOp];
		LDR 	53H, 0H 			//0043 	1853
		ADDWI 	20H 			//0044 	0E20
		STR 	6H 			//0045 	1086
		LDWI 	1H 			//0046 	0001
		STR 	7H 			//0047 	1087
		LDR 	1H, 0H 			//0048 	1801
		MOVLB 	9H 			//0049 	1029
		STR 	CH 			//004A 	108C

		//;DualMixer.C: 93: txIndexOp = (txIndexOp + 1) & (64 - 1);
		MOVLB 	0H 			//004B 	1020
		INCR 	53H, 1H 		//004C 	1AD3
		LDWI 	3FH 			//004D 	003F
		ANDWR 	53H, 1H 		//004E 	15D3

		//;DualMixer.C: 94: txCounter--;
		DECR 	55H, 1H 		//004F 	13D5

		//;DualMixer.C: 95: }
		//;DualMixer.C: 96: __nop();
		NOP 					//0050 	1000

		//;DualMixer.C: 97: }
		//;DualMixer.C: 99: user_isr();
		MOVLP 	5H 			//0051 	0185
		LCALL 	5F3H 			//0052 	35F3
		MOVLP 	0H 			//0053 	0180
		BCR 	7EH, 0H 			//0054 	207E
		RETI 					//0055 	1009
		MOVLP 	0H 			//0056 	0180
		LJUMP 	58H 			//0057 	3858
		MOVLB 	0H 			//0058 	1020
		CLRF 	53H 			//0059 	11D3
		CLRF 	54H 			//005A 	11D4
		CLRF 	55H 			//005B 	11D5
		CLRF 	56H 			//005C 	11D6
		CLRF 	57H 			//005D 	11D7
		CLRF 	58H 			//005E 	11D8
		LDWI 	A0H 			//005F 	00A0
		STR 	4H 			//0060 	1084
		LDWI 	0H 			//0061 	0000
		STR 	5H 			//0062 	1085
		LDWI 	20H 			//0063 	0020
		MOVLP 	5H 			//0064 	0185
		LCALL 	5E7H 			//0065 	35E7
		MOVLP 	0H 			//0066 	0180
		LDWI 	20H 			//0067 	0020
		STR 	4H 			//0068 	1084
		LDWI 	1H 			//0069 	0001
		STR 	5H 			//006A 	1085
		LDWI 	40H 			//006B 	0040
		MOVLP 	5H 			//006C 	0185
		LCALL 	5E7H 			//006D 	35E7
		MOVLP 	0H 			//006E 	0180
		BCR 	7EH, 0H 			//006F 	207E
		MOVLB 	0H 			//0070 	1020
		MOVLP 	2H 			//0071 	0182
		LJUMP 	2D0H 			//0072 	3AD0

		//;RFFC2071A.c: 289: uint8_t n_div;
		//;RFFC2071A.c: 290: uint32_t n_lo;
		//;RFFC2071A.c: 291: uint16_t n_int;
		//;RFFC2071A.c: 292: uint32_t n_frac;
		//;RFFC2071A.c: 293: uint16_t freq1, freq2, freq3;
		//;RFFC2071A.c: 294: uint8_t reg_base;
		//;RFFC2071A.c: 297: reg_base = (path == 1) ? 0x0C : 0x0F;
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

		//;RFFC2071A.c: 300: if (freq_mhz >= 1500) {
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

		//;RFFC2071A.c: 301: n_lo = 1;
		CLRF 	44H 			//008F 	11C4
		INCR 	44H, 1H 		//0090 	1AC4
		CLRF 	45H 			//0091 	11C5
		CLRF 	46H 			//0092 	11C6
		CLRF 	47H 			//0093 	11C7

		//;RFFC2071A.c: 302: } else if (freq_mhz >= 750) {
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

		//;RFFC2071A.c: 303: n_lo = 2;
		LDWI 	2H 			//00A3 	0002
		STR 	44H 			//00A4 	10C4
		CLRF 	45H 			//00A5 	11C5
		CLRF 	46H 			//00A6 	11C6
		CLRF 	47H 			//00A7 	11C7

		//;RFFC2071A.c: 304: } else if (freq_mhz >= 375) {
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

		//;RFFC2071A.c: 305: n_lo = 4;
		LDWI 	4H 			//00B7 	0004
		STR 	44H 			//00B8 	10C4
		CLRF 	45H 			//00B9 	11C5
		CLRF 	46H 			//00BA 	11C6
		CLRF 	47H 			//00BB 	11C7

		//;RFFC2071A.c: 306: } else if (freq_mhz >= 188) {
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

		//;RFFC2071A.c: 307: n_lo = 8;
		LDWI 	8H 			//00CC 	0008
		STR 	44H 			//00CD 	10C4
		CLRF 	45H 			//00CE 	11C5
		CLRF 	46H 			//00CF 	11C6
		CLRF 	47H 			//00D0 	11C7

		//;RFFC2071A.c: 308: } else {
		LJUMP 	D7H 			//00D1 	38D7

		//;RFFC2071A.c: 309: n_lo = 16;
		LDWI 	10H 			//00D2 	0010
		STR 	44H 			//00D3 	10C4
		CLRF 	45H 			//00D4 	11C5
		CLRF 	46H 			//00D5 	11C6
		CLRF 	47H 			//00D6 	11C7

		//;RFFC2071A.c: 310: }
		//;RFFC2071A.c: 313: uint32_t vco_freq = freq_mhz * n_lo * 2;
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
		LCALL 	4C4H 			//00E8 	34C4
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

		//;RFFC2071A.c: 317: n_int = vco_freq / 26;
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
		MOVLP 	4H 			//0103 	0184
		LCALL 	411H 			//0104 	3411
		MOVLP 	0H 			//0105 	0180
		LDR 	73H, 0H 			//0106 	1873
		STR 	36H 			//0107 	10B6
		LDR 	72H, 0H 			//0108 	1872
		STR 	35H 			//0109 	10B5

		//;RFFC2071A.c: 320: uint32_t remainder = vco_freq % 26;
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
		MOVLP 	4H 			//0117 	0184
		LCALL 	459H 			//0118 	3459
		MOVLP 	0H 			//0119 	0180
		LDR 	75H, 0H 			//011A 	1875
		STR 	34H 			//011B 	10B4
		LDR 	74H, 0H 			//011C 	1874
		STR 	33H 			//011D 	10B3
		LDR 	73H, 0H 			//011E 	1873
		STR 	32H 			//011F 	10B2
		LDR 	72H, 0H 			//0120 	1872
		STR 	31H 			//0121 	10B1

		//;RFFC2071A.c: 321: n_frac = (remainder << 24) / 26;
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
		MOVLP 	4H 			//012C 	0184
		LCALL 	411H 			//012D 	3411
		MOVLP 	0H 			//012E 	0180
		LDR 	75H, 0H 			//012F 	1875
		STR 	4BH 			//0130 	10CB
		LDR 	74H, 0H 			//0131 	1874
		STR 	4AH 			//0132 	10CA
		LDR 	73H, 0H 			//0133 	1873
		STR 	49H 			//0134 	10C9
		LDR 	72H, 0H 			//0135 	1872
		STR 	48H 			//0136 	10C8

		//;RFFC2071A.c: 324: switch (n_lo) {
		LJUMP 	149H 			//0137 	3949
		CLRF 	43H 			//0138 	11C3
		LJUMP 	16CH 			//0139 	396C

		//;RFFC2071A.c: 326: case 2: n_div = 1; break;
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

		//;RFFC2071A.c: 339: freq2 = (n_frac >> 7) & 0xFFFF;
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

		//;RFFC2071A.c: 342: freq3 = ((n_frac & 0x7F) << 9) | (0x02 << 7);
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

		//;RFFC2071A.c: 345: RFFC2071A_WriteReg(reg_base + 0, freq1);
		LDR 	3EH, 0H 			//01B9 	183E
		STR 	75H 			//01BA 	10F5
		LDR 	3DH, 0H 			//01BB 	183D
		STR 	74H 			//01BC 	10F4
		LDR 	4CH, 0H 			//01BD 	184C
		MOVLP 	3H 			//01BE 	0183
		LCALL 	3C2H 			//01BF 	33C2
		MOVLP 	0H 			//01C0 	0180

		//;RFFC2071A.c: 346: RFFC2071A_WriteReg(reg_base + 1, freq2);
		MOVLB 	0H 			//01C1 	1020
		LDR 	38H, 0H 			//01C2 	1838
		STR 	75H 			//01C3 	10F5
		LDR 	37H, 0H 			//01C4 	1837
		STR 	74H 			//01C5 	10F4
		LDR 	4CH, 0H 			//01C6 	184C
		ADDWI 	1H 			//01C7 	0E01
		MOVLP 	3H 			//01C8 	0183
		LCALL 	3C2H 			//01C9 	33C2
		MOVLP 	0H 			//01CA 	0180

		//;RFFC2071A.c: 347: RFFC2071A_WriteReg(reg_base + 2, freq3);
		MOVLB 	0H 			//01CB 	1020
		LDR 	3CH, 0H 			//01CC 	183C
		STR 	75H 			//01CD 	10F5
		LDR 	3BH, 0H 			//01CE 	183B
		STR 	74H 			//01CF 	10F4
		LDR 	4CH, 0H 			//01D0 	184C
		ADDWI 	2H 			//01D1 	0E02
		MOVLP 	3H 			//01D2 	0183
		LCALL 	3C2H 			//01D3 	33C2
		MOVLP 	0H 			//01D4 	0180
		RET 					//01D5 	1008

		//;RFFC2071A.c: 188: uint16_t reg;
		//;RFFC2071A.c: 224: RFFC2071A_WriteReg(0x00, 0xBEFA);
		LDWI 	FAH 			//01D6 	00FA
		STR 	74H 			//01D7 	10F4
		LDWI 	BEH 			//01D8 	00BE
		STR 	75H 			//01D9 	10F5
		LDWI 	0H 			//01DA 	0000
		MOVLP 	3H 			//01DB 	0183
		LCALL 	3C2H 			//01DC 	33C2
		MOVLP 	1H 			//01DD 	0181

		//;RFFC2071A.c: 225: RFFC2071A_WriteReg(0x01, 0x4064);
		LDWI 	64H 			//01DE 	0064
		STR 	74H 			//01DF 	10F4
		LDWI 	40H 			//01E0 	0040
		STR 	75H 			//01E1 	10F5
		LDWI 	1H 			//01E2 	0001
		MOVLP 	3H 			//01E3 	0183
		LCALL 	3C2H 			//01E4 	33C2
		MOVLP 	1H 			//01E5 	0181

		//;RFFC2071A.c: 226: RFFC2071A_WriteReg(0x02, 0x9055);
		LDWI 	55H 			//01E6 	0055
		STR 	74H 			//01E7 	10F4
		LDWI 	90H 			//01E8 	0090
		STR 	75H 			//01E9 	10F5
		LDWI 	2H 			//01EA 	0002
		MOVLP 	3H 			//01EB 	0183
		LCALL 	3C2H 			//01EC 	33C2
		MOVLP 	1H 			//01ED 	0181

		//;RFFC2071A.c: 227: RFFC2071A_WriteReg(0x03, 0x2D02);
		LDWI 	2H 			//01EE 	0002
		STR 	74H 			//01EF 	10F4
		LDWI 	2DH 			//01F0 	002D
		STR 	75H 			//01F1 	10F5
		LDWI 	3H 			//01F2 	0003
		MOVLP 	3H 			//01F3 	0183
		LCALL 	3C2H 			//01F4 	33C2
		MOVLP 	1H 			//01F5 	0181

		//;RFFC2071A.c: 228: RFFC2071A_WriteReg(0x04, 0xACBF);
		LDWI 	BFH 			//01F6 	00BF
		STR 	74H 			//01F7 	10F4
		LDWI 	ACH 			//01F8 	00AC
		STR 	75H 			//01F9 	10F5
		LDWI 	4H 			//01FA 	0004
		MOVLP 	3H 			//01FB 	0183
		LCALL 	3C2H 			//01FC 	33C2
		MOVLP 	1H 			//01FD 	0181

		//;RFFC2071A.c: 229: RFFC2071A_WriteReg(0x05, 0xACBF);
		LDWI 	BFH 			//01FE 	00BF
		STR 	74H 			//01FF 	10F4
		LDWI 	ACH 			//0200 	00AC
		STR 	75H 			//0201 	10F5
		LDWI 	5H 			//0202 	0005
		MOVLP 	3H 			//0203 	0183
		LCALL 	3C2H 			//0204 	33C2
		MOVLP 	1H 			//0205 	0181

		//;RFFC2071A.c: 230: RFFC2071A_WriteReg(0x06, 0x0028);
		LDWI 	28H 			//0206 	0028
		STR 	74H 			//0207 	10F4
		CLRF 	75H 			//0208 	11F5
		LDWI 	6H 			//0209 	0006
		MOVLP 	3H 			//020A 	0183
		LCALL 	3C2H 			//020B 	33C2
		MOVLP 	1H 			//020C 	0181

		//;RFFC2071A.c: 231: RFFC2071A_WriteReg(0x07, 0x0028);
		LDWI 	28H 			//020D 	0028
		STR 	74H 			//020E 	10F4
		CLRF 	75H 			//020F 	11F5
		LDWI 	7H 			//0210 	0007
		MOVLP 	3H 			//0211 	0183
		LCALL 	3C2H 			//0212 	33C2
		MOVLP 	1H 			//0213 	0181

		//;RFFC2071A.c: 232: RFFC2071A_WriteReg(0x08, 0xFF00);
		LDWI 	0H 			//0214 	0000
		STR 	74H 			//0215 	10F4
		LDWI 	FFH 			//0216 	00FF
		STR 	75H 			//0217 	10F5
		LDWI 	8H 			//0218 	0008
		MOVLP 	3H 			//0219 	0183
		LCALL 	3C2H 			//021A 	33C2
		MOVLP 	1H 			//021B 	0181

		//;RFFC2071A.c: 233: RFFC2071A_WriteReg(0x09, 0x8220);
		LDWI 	20H 			//021C 	0020
		STR 	74H 			//021D 	10F4
		LDWI 	82H 			//021E 	0082
		STR 	75H 			//021F 	10F5
		LDWI 	9H 			//0220 	0009
		MOVLP 	3H 			//0221 	0183
		LCALL 	3C2H 			//0222 	33C2
		MOVLP 	1H 			//0223 	0181

		//;RFFC2071A.c: 234: RFFC2071A_WriteReg(0x0A, 0x0202);
		LDWI 	2H 			//0224 	0002
		STR 	74H 			//0225 	10F4
		LDWI 	2H 			//0226 	0002
		STR 	75H 			//0227 	10F5
		LDWI 	AH 			//0228 	000A
		MOVLP 	3H 			//0229 	0183
		LCALL 	3C2H 			//022A 	33C2
		MOVLP 	1H 			//022B 	0181

		//;RFFC2071A.c: 235: RFFC2071A_WriteReg(0x1E, 0x0005);
		LDWI 	5H 			//022C 	0005
		STR 	74H 			//022D 	10F4
		CLRF 	75H 			//022E 	11F5
		LDWI 	1EH 			//022F 	001E
		MOVLP 	3H 			//0230 	0183
		LCALL 	3C2H 			//0231 	33C2
		MOVLP 	1H 			//0232 	0181

		//;RFFC2071A.c: 239: reg = RFFC2071A_ReadReg(0x15);
		LDWI 	15H 			//0233 	0015
		MOVLP 	3H 			//0234 	0183
		LCALL 	34BH 			//0235 	334B
		MOVLP 	1H 			//0236 	0181
		LDR 	75H, 0H 			//0237 	1875
		MOVLB 	0H 			//0238 	1020
		STR 	4EH 			//0239 	10CE
		LDR 	74H, 0H 			//023A 	1874
		STR 	4DH 			//023B 	10CD

		//;RFFC2071A.c: 240: reg |= (0x0004 | 0x0002 | 0x0001);
		LDWI 	7H 			//023C 	0007
		IORWR 	4DH, 1H 		//023D 	14CD

		//;RFFC2071A.c: 241: RFFC2071A_WriteReg(0x15, reg);
		LDR 	4EH, 0H 			//023E 	184E
		STR 	75H 			//023F 	10F5
		LDR 	4DH, 0H 			//0240 	184D
		STR 	74H 			//0241 	10F4
		LDWI 	15H 			//0242 	0015
		MOVLP 	3H 			//0243 	0183
		LCALL 	3C2H 			//0244 	33C2
		MOVLP 	1H 			//0245 	0181

		//;RFFC2071A.c: 244: reg = RFFC2071A_ReadReg(0x0B);
		LDWI 	BH 			//0246 	000B
		MOVLP 	3H 			//0247 	0183
		LCALL 	34BH 			//0248 	334B
		MOVLP 	1H 			//0249 	0181
		LDR 	75H, 0H 			//024A 	1875
		MOVLB 	0H 			//024B 	1020
		STR 	4EH 			//024C 	10CE
		LDR 	74H, 0H 			//024D 	1874
		STR 	4DH 			//024E 	10CD

		//;RFFC2071A.c: 245: reg |= 0x4000;
		BSR 	4EH, 6H 			//024F 	274E

		//;RFFC2071A.c: 246: RFFC2071A_WriteReg(0x0B, reg);
		LDR 	4EH, 0H 			//0250 	184E
		STR 	75H 			//0251 	10F5
		LDR 	4DH, 0H 			//0252 	184D
		STR 	74H 			//0253 	10F4
		LDWI 	BH 			//0254 	000B
		MOVLP 	3H 			//0255 	0183
		LCALL 	3C2H 			//0256 	33C2
		MOVLP 	1H 			//0257 	0181

		//;RFFC2071A.c: 249: reg = RFFC2071A_ReadReg(0x16);
		LDWI 	16H 			//0258 	0016
		MOVLP 	3H 			//0259 	0183
		LCALL 	34BH 			//025A 	334B
		MOVLP 	1H 			//025B 	0181
		LDR 	75H, 0H 			//025C 	1875
		MOVLB 	0H 			//025D 	1020
		STR 	4EH 			//025E 	10CE
		LDR 	74H, 0H 			//025F 	1874
		STR 	4DH 			//0260 	10CD

		//;RFFC2071A.c: 250: reg |= 0x0001;
		BSR 	4DH, 0H 			//0261 	244D

		//;RFFC2071A.c: 251: RFFC2071A_WriteReg(0x16, reg);
		LDR 	4EH, 0H 			//0262 	184E
		STR 	75H 			//0263 	10F5
		LDR 	4DH, 0H 			//0264 	184D
		STR 	74H 			//0265 	10F4
		LDWI 	16H 			//0266 	0016
		MOVLP 	3H 			//0267 	0183
		LCALL 	3C2H 			//0268 	33C2
		MOVLP 	1H 			//0269 	0181

		//;RFFC2071A.c: 254: RFFC2071A_WriteReg(0x13, 0x0000);
		CLRF 	74H 			//026A 	11F4
		CLRF 	75H 			//026B 	11F5
		LDWI 	13H 			//026C 	0013
		MOVLP 	3H 			//026D 	0183
		LCALL 	3C2H 			//026E 	33C2
		MOVLP 	1H 			//026F 	0181

		//;RFFC2071A.c: 255: RFFC2071A_WriteReg(0x14, 0x0000);
		CLRF 	74H 			//0270 	11F4
		CLRF 	75H 			//0271 	11F5
		LDWI 	14H 			//0272 	0014
		MOVLP 	3H 			//0273 	0183
		LCALL 	3C2H 			//0274 	33C2
		MOVLP 	1H 			//0275 	0181

		//;RFFC2071A.c: 266: RFFC2071A_CalcFrequency(450, 1);
		LDWI 	0H 			//0276 	0000
		MOVLB 	0H 			//0277 	1020
		STR 	29H 			//0278 	10A9
		LDWI 	0H 			//0279 	0000
		STR 	28H 			//027A 	10A8
		LDWI 	1H 			//027B 	0001
		STR 	27H 			//027C 	10A7
		LDWI 	C2H 			//027D 	00C2
		STR 	26H 			//027E 	10A6
		CLRF 	2AH 			//027F 	11AA
		INCR 	2AH, 1H 		//0280 	1AAA
		MOVLP 	0H 			//0281 	0180
		LCALL 	73H 			//0282 	3073
		MOVLP 	1H 			//0283 	0181

		//;RFFC2071A.c: 267: RFFC2071A_CalcFrequency(500, 2);
		LDWI 	0H 			//0284 	0000
		MOVLB 	0H 			//0285 	1020
		STR 	29H 			//0286 	10A9
		LDWI 	0H 			//0287 	0000
		STR 	28H 			//0288 	10A8
		LDWI 	1H 			//0289 	0001
		STR 	27H 			//028A 	10A7
		LDWI 	F4H 			//028B 	00F4
		STR 	26H 			//028C 	10A6
		LDWI 	2H 			//028D 	0002
		STR 	2AH 			//028E 	10AA
		MOVLP 	0H 			//028F 	0180
		LCALL 	73H 			//0290 	3073
		MOVLP 	1H 			//0291 	0181

		//;RFFC2071A.c: 270: RFFC2071A_WriteReg(0x12, 0x2A80);
		LDWI 	80H 			//0292 	0080
		STR 	74H 			//0293 	10F4
		LDWI 	2AH 			//0294 	002A
		STR 	75H 			//0295 	10F5
		LDWI 	12H 			//0296 	0012
		MOVLP 	3H 			//0297 	0183
		LCALL 	3C2H 			//0298 	33C2
		MOVLP 	1H 			//0299 	0181

		//;RFFC2071A.c: 271: RFFC2071A_WriteReg(0x17, 0x4900);
		LDWI 	0H 			//029A 	0000
		STR 	74H 			//029B 	10F4
		LDWI 	49H 			//029C 	0049
		STR 	75H 			//029D 	10F5
		LDWI 	17H 			//029E 	0017
		MOVLP 	3H 			//029F 	0183
		LCALL 	3C2H 			//02A0 	33C2
		MOVLP 	1H 			//02A1 	0181

		//;RFFC2071A.c: 272: RFFC2071A_WriteReg(0x18, 0x0281);
		LDWI 	81H 			//02A2 	0081
		STR 	74H 			//02A3 	10F4
		LDWI 	2H 			//02A4 	0002
		STR 	75H 			//02A5 	10F5
		LDWI 	18H 			//02A6 	0018
		MOVLP 	3H 			//02A7 	0183
		LCALL 	3C2H 			//02A8 	33C2
		MOVLP 	1H 			//02A9 	0181

		//;RFFC2071A.c: 273: RFFC2071A_WriteReg(0x19, 0xF00F);
		LDWI 	FH 			//02AA 	000F
		STR 	74H 			//02AB 	10F4
		LDWI 	F0H 			//02AC 	00F0
		STR 	75H 			//02AD 	10F5
		LDWI 	19H 			//02AE 	0019
		MOVLP 	3H 			//02AF 	0183
		LCALL 	3C2H 			//02B0 	33C2
		MOVLP 	1H 			//02B1 	0181

		//;RFFC2071A.c: 274: RFFC2071A_WriteReg(0x1A, 0x0000);
		CLRF 	74H 			//02B2 	11F4
		CLRF 	75H 			//02B3 	11F5
		LDWI 	1AH 			//02B4 	001A
		MOVLP 	3H 			//02B5 	0183
		LCALL 	3C2H 			//02B6 	33C2
		MOVLP 	1H 			//02B7 	0181

		//;RFFC2071A.c: 275: RFFC2071A_WriteReg(0x1B, 0x0005);
		LDWI 	5H 			//02B8 	0005
		STR 	74H 			//02B9 	10F4
		CLRF 	75H 			//02BA 	11F5
		LDWI 	1BH 			//02BB 	001B
		MOVLP 	3H 			//02BC 	0183
		LCALL 	3C2H 			//02BD 	33C2
		MOVLP 	1H 			//02BE 	0181

		//;RFFC2071A.c: 276: RFFC2071A_WriteReg(0x1C, 0xC840);
		LDWI 	40H 			//02BF 	0040
		STR 	74H 			//02C0 	10F4
		LDWI 	C8H 			//02C1 	00C8
		STR 	75H 			//02C2 	10F5
		LDWI 	1CH 			//02C3 	001C
		MOVLP 	3H 			//02C4 	0183
		LCALL 	3C2H 			//02C5 	33C2
		MOVLP 	1H 			//02C6 	0181

		//;RFFC2071A.c: 280: RFFC2071A_WriteReg(0x1D, 0x1000);
		LDWI 	0H 			//02C7 	0000
		STR 	74H 			//02C8 	10F4
		LDWI 	10H 			//02C9 	0010
		STR 	75H 			//02CA 	10F5
		LDWI 	1DH 			//02CB 	001D
		MOVLP 	3H 			//02CC 	0183
		LCALL 	3C2H 			//02CD 	33C2
		MOVLP 	1H 			//02CE 	0181
		RET 					//02CF 	1008

		//;DualMixer.C: 284: uint16_t readback;
		//;DualMixer.C: 285: unsigned char i;
		//;DualMixer.C: 286: unsigned char addr;
		//;DualMixer.C: 288: POWER_INITIAL();
		MOVLP 	4H 			//02D0 	0184
		LCALL 	498H 			//02D1 	3498
		MOVLP 	2H 			//02D2 	0182

		//;DualMixer.C: 289: UART_INITIAL();
		MOVLP 	5H 			//02D3 	0185
		LCALL 	5AAH 			//02D4 	35AA
		MOVLP 	2H 			//02D5 	0182

		//;DualMixer.C: 290: RFFC2071A_Init();
		MOVLP 	5H 			//02D6 	0185
		LCALL 	585H 			//02D7 	3585
		MOVLP 	2H 			//02D8 	0182

		//;DualMixer.C: 291: RFFC2071A_Enable();
		MOVLP 	5H 			//02D9 	0185
		LCALL 	5DDH 			//02DA 	35DD
		MOVLP 	2H 			//02DB 	0182

		//;DualMixer.C: 292: RFFC2071A_DefaultConfig();
		MOVLP 	1H 			//02DC 	0181
		LCALL 	1D6H 			//02DD 	31D6
		MOVLP 	2H 			//02DE 	0182

		//;DualMixer.C: 295: {
		//;DualMixer.C: 297: for (addr = 0; addr <= 0x1F; addr++)
		MOVLB 	0H 			//02DF 	1020
		CLRF 	52H 			//02E0 	11D2

		//;DualMixer.C: 298: {
		//;DualMixer.C: 299: readback = RFFC2071A_ReadReg(addr);
		LDR 	52H, 0H 			//02E1 	1852
		MOVLP 	3H 			//02E2 	0183
		LCALL 	34BH 			//02E3 	334B
		MOVLP 	2H 			//02E4 	0182
		LDR 	75H, 0H 			//02E5 	1875
		MOVLB 	0H 			//02E6 	1020
		STR 	51H 			//02E7 	10D1
		LDR 	74H, 0H 			//02E8 	1874
		STR 	50H 			//02E9 	10D0

		//;DualMixer.C: 301: SendStringToUART("R[");
		LDWI 	F0H 			//02EA 	00F0
		STR 	73H 			//02EB 	10F3
		LDWI 	85H 			//02EC 	0085
		STR 	74H 			//02ED 	10F4
		MOVLP 	5H 			//02EE 	0185
		LCALL 	559H 			//02EF 	3559
		MOVLP 	2H 			//02F0 	0182

		//;DualMixer.C: 302: SendByteToUART(HiNibbleToHex(addr));
		MOVLB 	0H 			//02F1 	1020
		LDR 	52H, 0H 			//02F2 	1852
		MOVLP 	5H 			//02F3 	0185
		LCALL 	5BAH 			//02F4 	35BA
		MOVLP 	2H 			//02F5 	0182
		MOVLP 	4H 			//02F6 	0184
		LCALL 	4EDH 			//02F7 	34ED
		MOVLP 	2H 			//02F8 	0182

		//;DualMixer.C: 303: SendByteToUART(LoNibbleToHex(addr));
		MOVLB 	0H 			//02F9 	1020
		LDR 	52H, 0H 			//02FA 	1852
		MOVLP 	5H 			//02FB 	0185
		LCALL 	5D2H 			//02FC 	35D2
		MOVLP 	2H 			//02FD 	0182
		MOVLP 	4H 			//02FE 	0184
		LCALL 	4EDH 			//02FF 	34ED
		MOVLP 	2H 			//0300 	0182

		//;DualMixer.C: 304: SendStringToUART("]=0x");
		LDWI 	54H 			//0301 	0054
		STR 	73H 			//0302 	10F3
		LDWI 	85H 			//0303 	0085
		STR 	74H 			//0304 	10F4
		MOVLP 	5H 			//0305 	0185
		LCALL 	559H 			//0306 	3559
		MOVLP 	2H 			//0307 	0182

		//;DualMixer.C: 305: SendByteToUART(HiNibbleToHex((unsigned char)(readback >> 8)));
		MOVLB 	0H 			//0308 	1020
		LDR 	51H, 0H 			//0309 	1851
		MOVLP 	5H 			//030A 	0185
		LCALL 	5BAH 			//030B 	35BA
		MOVLP 	2H 			//030C 	0182
		MOVLP 	4H 			//030D 	0184
		LCALL 	4EDH 			//030E 	34ED
		MOVLP 	2H 			//030F 	0182

		//;DualMixer.C: 306: SendByteToUART(LoNibbleToHex((unsigned char)(readback >> 8)));
		MOVLB 	0H 			//0310 	1020
		LDR 	51H, 0H 			//0311 	1851
		MOVLP 	5H 			//0312 	0185
		LCALL 	5D2H 			//0313 	35D2
		MOVLP 	2H 			//0314 	0182
		MOVLP 	4H 			//0315 	0184
		LCALL 	4EDH 			//0316 	34ED
		MOVLP 	2H 			//0317 	0182

		//;DualMixer.C: 307: SendByteToUART(HiNibbleToHex((unsigned char)(readback & 0xFF)));
		MOVLB 	0H 			//0318 	1020
		LDR 	50H, 0H 			//0319 	1850
		MOVLP 	5H 			//031A 	0185
		LCALL 	5BAH 			//031B 	35BA
		MOVLP 	2H 			//031C 	0182
		MOVLP 	4H 			//031D 	0184
		LCALL 	4EDH 			//031E 	34ED
		MOVLP 	2H 			//031F 	0182

		//;DualMixer.C: 308: SendByteToUART(LoNibbleToHex((unsigned char)(readback & 0xFF)));
		MOVLB 	0H 			//0320 	1020
		LDR 	50H, 0H 			//0321 	1850
		MOVLP 	5H 			//0322 	0185
		LCALL 	5D2H 			//0323 	35D2
		MOVLP 	2H 			//0324 	0182
		MOVLP 	4H 			//0325 	0184
		LCALL 	4EDH 			//0326 	34ED
		MOVLP 	2H 			//0327 	0182

		//;DualMixer.C: 309: SendStringToUART("\r\n");
		LDWI 	EDH 			//0328 	00ED
		STR 	73H 			//0329 	10F3
		LDWI 	85H 			//032A 	0085
		STR 	74H 			//032B 	10F4
		MOVLP 	5H 			//032C 	0185
		LCALL 	559H 			//032D 	3559
		MOVLP 	2H 			//032E 	0182

		//;DualMixer.C: 310: DelayMs(10);
		LDWI 	AH 			//032F 	000A
		MOVLP 	5H 			//0330 	0185
		LCALL 	52CH 			//0331 	352C
		MOVLP 	2H 			//0332 	0182
		MOVLB 	0H 			//0333 	1020
		INCR 	52H, 1H 		//0334 	1AD2
		LDWI 	20H 			//0335 	0020
		SUBWR 	52H, 0H 		//0336 	1252
		BTSS 	3H, 0H 			//0337 	2C03
		LJUMP 	33AH 			//0338 	3B3A
		LJUMP 	33BH 			//0339 	3B3B
		LJUMP 	2E1H 			//033A 	3AE1

		//;DualMixer.C: 311: }
		//;DualMixer.C: 316: for (i = 0; i < 8; i++)
		CLRF 	4FH 			//033B 	11CF

		//;DualMixer.C: 317: {
		//;DualMixer.C: 318: DelayMs(250);
		LDWI 	FAH 			//033C 	00FA
		MOVLP 	5H 			//033D 	0185
		LCALL 	52CH 			//033E 	352C
		MOVLP 	2H 			//033F 	0182
		MOVLB 	0H 			//0340 	1020
		INCR 	4FH, 1H 		//0341 	1ACF
		LDWI 	8H 			//0342 	0008
		SUBWR 	4FH, 0H 		//0343 	124F
		BTSS 	3H, 0H 			//0344 	2C03
		LJUMP 	347H 			//0345 	3B47
		LJUMP 	348H 			//0346 	3B48
		LJUMP 	33CH 			//0347 	3B3C
		LJUMP 	2DFH 			//0348 	3ADF
		MOVLP 	0H 			//0349 	0180
		LJUMP 	56H 			//034A 	3856
		STR 	77H 			//034B 	10F7

		//;RFFC2071A.c: 125: uint8_t i;
		//;RFFC2071A.c: 126: uint8_t tx_byte;
		//;RFFC2071A.c: 127: uint16_t rx_data = 0;
		CLRF 	79H 			//034C 	11F9
		CLRF 	7AH 			//034D 	11FA

		//;RFFC2071A.c: 130: tx_byte = 0x80 | (addr & 0x7F);
		LDR 	77H, 0H 			//034E 	1877
		ANDWI 	7FH 			//034F 	097F
		IORWI 	80H 			//0350 	0880
		STR 	78H 			//0351 	10F8

		//;RFFC2071A.c: 133: RFFC2071A_SendOneClock();
		MOVLP 	5H 			//0352 	0185
		LCALL 	599H 			//0353 	3599
		MOVLP 	3H 			//0354 	0183

		//;RFFC2071A.c: 134: (TRISB &= (uint8_t)~0x02);
		MOVLB 	1H 			//0355 	1021
		BCR 	DH, 1H 			//0356 	208D

		//;RFFC2071A.c: 135: (PA0 = 0);
		MOVLB 	0H 			//0357 	1020
		BCR 	CH, 0H 			//0358 	200C

		//;RFFC2071A.c: 136: delay_us(1);
		CLRF 	72H 			//0359 	11F2
		INCR 	72H, 1H 		//035A 	1AF2
		CLRF 	73H 			//035B 	11F3
		MOVLP 	5H 			//035C 	0185
		LCALL 	56FH 			//035D 	356F
		MOVLP 	3H 			//035E 	0183

		//;RFFC2071A.c: 138: RFFC2071A_SendOneClock();
		MOVLP 	5H 			//035F 	0185
		LCALL 	599H 			//0360 	3599
		MOVLP 	3H 			//0361 	0183

		//;RFFC2071A.c: 141: for (i = 0; i < 8; i++) {
		CLRF 	7BH 			//0362 	11FB

		//;RFFC2071A.c: 142: if (tx_byte & 0x80) {
		BTSS 	78H, 7H 		//0363 	2FF8
		LJUMP 	366H 			//0364 	3B66
		LJUMP 	367H 			//0365 	3B67
		LJUMP 	36AH 			//0366 	3B6A

		//;RFFC2071A.c: 143: (PB1 = 1);
		MOVLB 	0H 			//0367 	1020
		BSR 	DH, 1H 			//0368 	248D

		//;RFFC2071A.c: 144: } else {
		LJUMP 	36CH 			//0369 	3B6C

		//;RFFC2071A.c: 145: (PB1 = 0);
		MOVLB 	0H 			//036A 	1020
		BCR 	DH, 1H 			//036B 	208D

		//;RFFC2071A.c: 146: }
		//;RFFC2071A.c: 147: tx_byte <<= 1;
		LSLF 	78H, 1H 		//036C 	05F8

		//;RFFC2071A.c: 149: delay_us(1);
		CLRF 	72H 			//036D 	11F2
		INCR 	72H, 1H 		//036E 	1AF2
		CLRF 	73H 			//036F 	11F3
		MOVLP 	5H 			//0370 	0185
		LCALL 	56FH 			//0371 	356F
		MOVLP 	3H 			//0372 	0183

		//;RFFC2071A.c: 150: RFFC2071A_SendOneClock();
		MOVLP 	5H 			//0373 	0185
		LCALL 	599H 			//0374 	3599
		MOVLP 	3H 			//0375 	0183
		INCR 	7BH, 1H 		//0376 	1AFB
		LDWI 	8H 			//0377 	0008
		SUBWR 	7BH, 0H 		//0378 	127B
		BTSS 	3H, 0H 			//0379 	2C03
		LJUMP 	37CH 			//037A 	3B7C
		LJUMP 	37DH 			//037B 	3B7D
		LJUMP 	363H 			//037C 	3B63

		//;RFFC2071A.c: 151: }
		//;RFFC2071A.c: 155: delay_us(2);
		LDWI 	2H 			//037D 	0002
		STR 	72H 			//037E 	10F2
		CLRF 	73H 			//037F 	11F3
		MOVLP 	5H 			//0380 	0185
		LCALL 	56FH 			//0381 	356F
		MOVLP 	3H 			//0382 	0183

		//;RFFC2071A.c: 156: (PB1 = 1);
		MOVLB 	0H 			//0383 	1020
		BSR 	DH, 1H 			//0384 	248D

		//;RFFC2071A.c: 157: (TRISB |= 0x02);
		MOVLB 	1H 			//0385 	1021
		BSR 	DH, 1H 			//0386 	248D

		//;RFFC2071A.c: 158: delay_us(2);
		LDWI 	2H 			//0387 	0002
		STR 	72H 			//0388 	10F2
		CLRF 	73H 			//0389 	11F3
		MOVLP 	5H 			//038A 	0185
		LCALL 	56FH 			//038B 	356F
		MOVLP 	3H 			//038C 	0183

		//;RFFC2071A.c: 159: RFFC2071A_SendOneClock();
		MOVLP 	5H 			//038D 	0185
		LCALL 	599H 			//038E 	3599
		MOVLP 	3H 			//038F 	0183

		//;RFFC2071A.c: 161: for (i = 0; i < 16; i++) {
		CLRF 	7BH 			//0390 	11FB

		//;RFFC2071A.c: 162: (PB0 = 1);
		MOVLB 	0H 			//0391 	1020
		BSR 	DH, 0H 			//0392 	240D

		//;RFFC2071A.c: 163: (PB0 = 0);
		BCR 	DH, 0H 			//0393 	200D

		//;RFFC2071A.c: 164: delay_us(1);
		CLRF 	72H 			//0394 	11F2
		INCR 	72H, 1H 		//0395 	1AF2
		CLRF 	73H 			//0396 	11F3
		MOVLP 	5H 			//0397 	0185
		LCALL 	56FH 			//0398 	356F
		MOVLP 	3H 			//0399 	0183

		//;RFFC2071A.c: 166: rx_data <<= 1;
		LSLF 	79H, 1H 		//039A 	05F9
		RLR 	7AH, 1H 			//039B 	1DFA

		//;RFFC2071A.c: 167: rx_data = (rx_data & 0xFFFE) ;
		BCR 	79H, 0H 			//039C 	2079

		//;RFFC2071A.c: 168: if ((PB1)) {
		MOVLB 	0H 			//039D 	1020
		BTSS 	DH, 1H 			//039E 	2C8D
		LJUMP 	3A1H 			//039F 	3BA1
		LJUMP 	3A2H 			//03A0 	3BA2
		LJUMP 	3A3H 			//03A1 	3BA3

		//;RFFC2071A.c: 169: rx_data |= 1;
		BSR 	79H, 0H 			//03A2 	2479

		//;RFFC2071A.c: 170: }
		//;RFFC2071A.c: 172: delay_us(1);
		CLRF 	72H 			//03A3 	11F2
		INCR 	72H, 1H 		//03A4 	1AF2
		CLRF 	73H 			//03A5 	11F3
		MOVLP 	5H 			//03A6 	0185
		LCALL 	56FH 			//03A7 	356F
		MOVLP 	3H 			//03A8 	0183
		INCR 	7BH, 1H 		//03A9 	1AFB
		LDWI 	10H 			//03AA 	0010
		SUBWR 	7BH, 0H 		//03AB 	127B
		BTSS 	3H, 0H 			//03AC 	2C03
		LJUMP 	3AFH 			//03AD 	3BAF
		LJUMP 	3B0H 			//03AE 	3BB0
		LJUMP 	391H 			//03AF 	3B91

		//;RFFC2071A.c: 173: }
		//;RFFC2071A.c: 175: (PA0 = 1);
		MOVLB 	0H 			//03B0 	1020
		BSR 	CH, 0H 			//03B1 	240C

		//;RFFC2071A.c: 176: RFFC2071A_SendOneClock();
		MOVLP 	5H 			//03B2 	0185
		LCALL 	599H 			//03B3 	3599
		MOVLP 	3H 			//03B4 	0183

		//;RFFC2071A.c: 177: (TRISB &= (uint8_t)~0x02);
		MOVLB 	1H 			//03B5 	1021
		BCR 	DH, 1H 			//03B6 	208D

		//;RFFC2071A.c: 178: delay_us(1);
		CLRF 	72H 			//03B7 	11F2
		INCR 	72H, 1H 		//03B8 	1AF2
		CLRF 	73H 			//03B9 	11F3
		MOVLP 	5H 			//03BA 	0185
		LCALL 	56FH 			//03BB 	356F
		MOVLP 	3H 			//03BC 	0183

		//;RFFC2071A.c: 180: return rx_data;
		LDR 	7AH, 0H 			//03BD 	187A
		STR 	75H 			//03BE 	10F5
		LDR 	79H, 0H 			//03BF 	1879
		STR 	74H 			//03C0 	10F4
		RET 					//03C1 	1008
		MOVLB 	0H 			//03C2 	1020
		STR 	20H 			//03C3 	10A0

		//;RFFC2071A.c: 87: uint8_t i;
		//;RFFC2071A.c: 88: uint32_t tx_data;
		//;RFFC2071A.c: 91: tx_data = ((uint32_t)(addr & 0x7F) << 16) | data;
		LDR 	20H, 0H 			//03C4 	1820
		ANDWI 	7FH 			//03C5 	097F
		CLRF 	21H 			//03C6 	11A1
		CLRF 	22H 			//03C7 	11A2
		STR 	23H 			//03C8 	10A3
		CLRF 	24H 			//03C9 	11A4
		LDR 	74H, 0H 			//03CA 	1874
		STR 	76H 			//03CB 	10F6
		LDR 	75H, 0H 			//03CC 	1875
		STR 	77H 			//03CD 	10F7
		CLRF 	78H 			//03CE 	11F8
		CLRF 	79H 			//03CF 	11F9
		LDR 	76H, 0H 			//03D0 	1876
		IORWR 	21H, 1H 		//03D1 	14A1
		LDR 	77H, 0H 			//03D2 	1877
		IORWR 	22H, 1H 		//03D3 	14A2
		LDR 	78H, 0H 			//03D4 	1878
		IORWR 	23H, 1H 		//03D5 	14A3
		LDR 	79H, 0H 			//03D6 	1879
		IORWR 	24H, 1H 		//03D7 	14A4

		//;RFFC2071A.c: 94: RFFC2071A_SendOneClock();
		MOVLP 	5H 			//03D8 	0185
		LCALL 	599H 			//03D9 	3599
		MOVLP 	3H 			//03DA 	0183

		//;RFFC2071A.c: 95: (TRISB &= (uint8_t)~0x02);
		MOVLB 	1H 			//03DB 	1021
		BCR 	DH, 1H 			//03DC 	208D

		//;RFFC2071A.c: 96: (PA0 = 0);
		MOVLB 	0H 			//03DD 	1020
		BCR 	CH, 0H 			//03DE 	200C

		//;RFFC2071A.c: 97: delay_us(1);
		CLRF 	72H 			//03DF 	11F2
		INCR 	72H, 1H 		//03E0 	1AF2
		CLRF 	73H 			//03E1 	11F3
		MOVLP 	5H 			//03E2 	0185
		LCALL 	56FH 			//03E3 	356F
		MOVLP 	3H 			//03E4 	0183

		//;RFFC2071A.c: 99: RFFC2071A_SendOneClock();
		MOVLP 	5H 			//03E5 	0185
		LCALL 	599H 			//03E6 	3599
		MOVLP 	3H 			//03E7 	0183

		//;RFFC2071A.c: 102: for (i = 0; i < 24; i++) {
		MOVLB 	0H 			//03E8 	1020
		CLRF 	25H 			//03E9 	11A5

		//;RFFC2071A.c: 104: if (tx_data & 0x800000) {
		BTSS 	23H, 7H 		//03EA 	2FA3
		LJUMP 	3EDH 			//03EB 	3BED
		LJUMP 	3EEH 			//03EC 	3BEE
		LJUMP 	3F0H 			//03ED 	3BF0

		//;RFFC2071A.c: 105: (PB1 = 1);
		BSR 	DH, 1H 			//03EE 	248D

		//;RFFC2071A.c: 106: } else {
		LJUMP 	3F1H 			//03EF 	3BF1

		//;RFFC2071A.c: 107: (PB1 = 0);
		BCR 	DH, 1H 			//03F0 	208D

		//;RFFC2071A.c: 108: }
		//;RFFC2071A.c: 109: tx_data <<= 1;
		LSLF 	21H, 1H 		//03F1 	05A1
		RLR 	22H, 1H 			//03F2 	1DA2
		RLR 	23H, 1H 			//03F3 	1DA3
		RLR 	24H, 1H 			//03F4 	1DA4

		//;RFFC2071A.c: 111: delay_us(1);
		CLRF 	72H 			//03F5 	11F2
		INCR 	72H, 1H 		//03F6 	1AF2
		CLRF 	73H 			//03F7 	11F3
		MOVLP 	5H 			//03F8 	0185
		LCALL 	56FH 			//03F9 	356F
		MOVLP 	3H 			//03FA 	0183

		//;RFFC2071A.c: 112: RFFC2071A_SendOneClock();
		MOVLP 	5H 			//03FB 	0185
		LCALL 	599H 			//03FC 	3599
		MOVLP 	3H 			//03FD 	0183
		MOVLB 	0H 			//03FE 	1020
		INCR 	25H, 1H 		//03FF 	1AA5
		LDWI 	18H 			//0400 	0018
		SUBWR 	25H, 0H 		//0401 	1225
		BTSS 	3H, 0H 			//0402 	2C03
		LJUMP 	405H 			//0403 	3C05
		LJUMP 	406H 			//0404 	3C06
		LJUMP 	3EAH 			//0405 	3BEA

		//;RFFC2071A.c: 113: }
		//;RFFC2071A.c: 115: (PA0 = 1);
		BSR 	CH, 0H 			//0406 	240C

		//;RFFC2071A.c: 116: RFFC2071A_SendOneClock();
		MOVLP 	5H 			//0407 	0185
		LCALL 	599H 			//0408 	3599
		MOVLP 	3H 			//0409 	0183

		//;RFFC2071A.c: 117: delay_us(1);
		CLRF 	72H 			//040A 	11F2
		INCR 	72H, 1H 		//040B 	1AF2
		CLRF 	73H 			//040C 	11F3
		MOVLP 	5H 			//040D 	0185
		LCALL 	56FH 			//040E 	356F
		MOVLP 	3H 			//040F 	0183
		RET 					//0410 	1008
		CLRF 	20H 			//0411 	11A0
		CLRF 	21H 			//0412 	11A1
		CLRF 	22H 			//0413 	11A2
		CLRF 	23H 			//0414 	11A3
		LDR 	75H, 0H 			//0415 	1875
		IORWR 	74H, 0H 		//0416 	1474
		IORWR 	73H, 0H 		//0417 	1473
		IORWR 	72H, 0H 		//0418 	1472
		BTSC 	3H, 2H 			//0419 	2903
		LJUMP 	41CH 			//041A 	3C1C
		LJUMP 	41DH 			//041B 	3C1D
		LJUMP 	450H 			//041C 	3C50
		CLRF 	24H 			//041D 	11A4
		INCR 	24H, 1H 		//041E 	1AA4
		LJUMP 	425H 			//041F 	3C25
		LSLF 	72H, 1H 		//0420 	05F2
		RLR 	73H, 1H 			//0421 	1DF3
		RLR 	74H, 1H 			//0422 	1DF4
		RLR 	75H, 1H 			//0423 	1DF5
		INCR 	24H, 1H 		//0424 	1AA4
		BTSS 	75H, 7H 		//0425 	2FF5
		LJUMP 	428H 			//0426 	3C28
		LJUMP 	429H 			//0427 	3C29
		LJUMP 	420H 			//0428 	3C20
		LSLF 	20H, 1H 		//0429 	05A0
		RLR 	21H, 1H 			//042A 	1DA1
		RLR 	22H, 1H 			//042B 	1DA2
		RLR 	23H, 1H 			//042C 	1DA3
		LDR 	75H, 0H 			//042D 	1875
		SUBWR 	79H, 0H 		//042E 	1279
		BTSS 	3H, 2H 			//042F 	2D03
		LJUMP 	43BH 			//0430 	3C3B
		LDR 	74H, 0H 			//0431 	1874
		SUBWR 	78H, 0H 		//0432 	1278
		BTSS 	3H, 2H 			//0433 	2D03
		LJUMP 	43BH 			//0434 	3C3B
		LDR 	73H, 0H 			//0435 	1873
		SUBWR 	77H, 0H 		//0436 	1277
		BTSS 	3H, 2H 			//0437 	2D03
		LJUMP 	43BH 			//0438 	3C3B
		LDR 	72H, 0H 			//0439 	1872
		SUBWR 	76H, 0H 		//043A 	1276
		BTSS 	3H, 0H 			//043B 	2C03
		LJUMP 	43EH 			//043C 	3C3E
		LJUMP 	43FH 			//043D 	3C3F
		LJUMP 	448H 			//043E 	3C48
		LDR 	72H, 0H 			//043F 	1872
		SUBWR 	76H, 1H 		//0440 	12F6
		LDR 	73H, 0H 			//0441 	1873
		SUBWFB 	77H, 1H 		//0442 	0BF7
		LDR 	74H, 0H 			//0443 	1874
		SUBWFB 	78H, 1H 		//0444 	0BF8
		LDR 	75H, 0H 			//0445 	1875
		SUBWFB 	79H, 1H 		//0446 	0BF9
		BSR 	20H, 0H 			//0447 	2420
		LSRF 	75H, 1H 		//0448 	06F5
		RRR 	74H, 1H 			//0449 	1CF4
		RRR 	73H, 1H 			//044A 	1CF3
		RRR 	72H, 1H 			//044B 	1CF2
		DECRSZ 	24H, 1H 		//044C 	1BA4
		LJUMP 	44FH 			//044D 	3C4F
		LJUMP 	450H 			//044E 	3C50
		LJUMP 	429H 			//044F 	3C29
		LDR 	23H, 0H 			//0450 	1823
		STR 	75H 			//0451 	10F5
		LDR 	22H, 0H 			//0452 	1822
		STR 	74H 			//0453 	10F4
		LDR 	21H, 0H 			//0454 	1821
		STR 	73H 			//0455 	10F3
		LDR 	20H, 0H 			//0456 	1820
		STR 	72H 			//0457 	10F2
		RET 					//0458 	1008
		LDR 	75H, 0H 			//0459 	1875
		IORWR 	74H, 0H 		//045A 	1474
		IORWR 	73H, 0H 		//045B 	1473
		IORWR 	72H, 0H 		//045C 	1472
		BTSC 	3H, 2H 			//045D 	2903
		LJUMP 	460H 			//045E 	3C60
		LJUMP 	461H 			//045F 	3C61
		LJUMP 	48FH 			//0460 	3C8F
		CLRF 	7AH 			//0461 	11FA
		INCR 	7AH, 1H 		//0462 	1AFA
		LJUMP 	469H 			//0463 	3C69
		LSLF 	72H, 1H 		//0464 	05F2
		RLR 	73H, 1H 			//0465 	1DF3
		RLR 	74H, 1H 			//0466 	1DF4
		RLR 	75H, 1H 			//0467 	1DF5
		INCR 	7AH, 1H 		//0468 	1AFA
		BTSS 	75H, 7H 		//0469 	2FF5
		LJUMP 	46CH 			//046A 	3C6C
		LJUMP 	46DH 			//046B 	3C6D
		LJUMP 	464H 			//046C 	3C64
		LDR 	75H, 0H 			//046D 	1875
		SUBWR 	79H, 0H 		//046E 	1279
		BTSS 	3H, 2H 			//046F 	2D03
		LJUMP 	47BH 			//0470 	3C7B
		LDR 	74H, 0H 			//0471 	1874
		SUBWR 	78H, 0H 		//0472 	1278
		BTSS 	3H, 2H 			//0473 	2D03
		LJUMP 	47BH 			//0474 	3C7B
		LDR 	73H, 0H 			//0475 	1873
		SUBWR 	77H, 0H 		//0476 	1277
		BTSS 	3H, 2H 			//0477 	2D03
		LJUMP 	47BH 			//0478 	3C7B
		LDR 	72H, 0H 			//0479 	1872
		SUBWR 	76H, 0H 		//047A 	1276
		BTSS 	3H, 0H 			//047B 	2C03
		LJUMP 	47EH 			//047C 	3C7E
		LJUMP 	47FH 			//047D 	3C7F
		LJUMP 	487H 			//047E 	3C87
		LDR 	72H, 0H 			//047F 	1872
		SUBWR 	76H, 1H 		//0480 	12F6
		LDR 	73H, 0H 			//0481 	1873
		SUBWFB 	77H, 1H 		//0482 	0BF7
		LDR 	74H, 0H 			//0483 	1874
		SUBWFB 	78H, 1H 		//0484 	0BF8
		LDR 	75H, 0H 			//0485 	1875
		SUBWFB 	79H, 1H 		//0486 	0BF9
		LSRF 	75H, 1H 		//0487 	06F5
		RRR 	74H, 1H 			//0488 	1CF4
		RRR 	73H, 1H 			//0489 	1CF3
		RRR 	72H, 1H 			//048A 	1CF2
		DECRSZ 	7AH, 1H 		//048B 	1BFA
		LJUMP 	48EH 			//048C 	3C8E
		LJUMP 	48FH 			//048D 	3C8F
		LJUMP 	46DH 			//048E 	3C6D
		LDR 	79H, 0H 			//048F 	1879
		STR 	75H 			//0490 	10F5
		LDR 	78H, 0H 			//0491 	1878
		STR 	74H 			//0492 	10F4
		LDR 	77H, 0H 			//0493 	1877
		STR 	73H 			//0494 	10F3
		LDR 	76H, 0H 			//0495 	1876
		STR 	72H 			//0496 	10F2
		RET 					//0497 	1008

		//;DualMixer.C: 114: OSCCON = 0B01110001;
		LDWI 	71H 			//0498 	0071
		MOVLB 	1H 			//0499 	1021
		STR 	19H 			//049A 	1099

		//;DualMixer.C: 115: INTCON = 0;
		CLRF 	BH 			//049B 	118B

		//;DualMixer.C: 117: PORTA = 0B00000000;
		MOVLB 	0H 			//049C 	1020
		CLRF 	CH 			//049D 	118C

		//;DualMixer.C: 118: TRISA = 0B10101100;
		LDWI 	ACH 			//049E 	00AC
		MOVLB 	1H 			//049F 	1021
		STR 	CH 			//04A0 	108C

		//;DualMixer.C: 119: PORTB = 0B00000000;
		MOVLB 	0H 			//04A1 	1020
		CLRF 	DH 			//04A2 	118D

		//;DualMixer.C: 120: TRISB = 0B11000000;
		LDWI 	C0H 			//04A3 	00C0
		MOVLB 	1H 			//04A4 	1021
		STR 	DH 			//04A5 	108D

		//;DualMixer.C: 121: PORTC = 0B00000000;
		MOVLB 	0H 			//04A6 	1020
		CLRF 	EH 			//04A7 	118E

		//;DualMixer.C: 122: TRISC = 0B00000000;
		MOVLB 	1H 			//04A8 	1021
		CLRF 	EH 			//04A9 	118E

		//;DualMixer.C: 124: WPUA = 0B00010011;
		LDWI 	13H 			//04AA 	0013
		MOVLB 	3H 			//04AB 	1023
		STR 	CH 			//04AC 	108C

		//;DualMixer.C: 125: WPUB = 0B00000000;
		CLRF 	DH 			//04AD 	118D

		//;DualMixer.C: 126: WPUC = 0B00000000;
		CLRF 	EH 			//04AE 	118E

		//;DualMixer.C: 128: WPDA = 0B10000000;
		LDWI 	80H 			//04AF 	0080
		MOVLB 	4H 			//04B0 	1024
		STR 	CH 			//04B1 	108C

		//;DualMixer.C: 129: WPDB = 0B00000000;
		CLRF 	DH 			//04B2 	118D

		//;DualMixer.C: 130: WPDC = 0B00000000;
		CLRF 	EH 			//04B3 	118E

		//;DualMixer.C: 132: PSRC0 = 0B11111111;
		LDWI 	FFH 			//04B4 	00FF
		MOVLB 	2H 			//04B5 	1022
		STR 	1AH 			//04B6 	109A

		//;DualMixer.C: 133: PSRC1 = 0B11111111;
		LDWI 	FFH 			//04B7 	00FF
		STR 	1BH 			//04B8 	109B

		//;DualMixer.C: 134: PSRC2 = 0B11111111;
		LDWI 	FFH 			//04B9 	00FF
		STR 	1CH 			//04BA 	109C

		//;DualMixer.C: 136: PSINK0 = 0B11111111;
		LDWI 	FFH 			//04BB 	00FF
		MOVLB 	3H 			//04BC 	1023
		STR 	1AH 			//04BD 	109A

		//;DualMixer.C: 137: PSINK1 = 0B11111111;
		LDWI 	FFH 			//04BE 	00FF
		STR 	1BH 			//04BF 	109B

		//;DualMixer.C: 138: PSINK2 = 0B11111111;
		LDWI 	FFH 			//04C0 	00FF
		STR 	1CH 			//04C1 	109C

		//;DualMixer.C: 140: ANSELA = 0B00000000;
		CLRF 	17H 			//04C2 	1197
		RET 					//04C3 	1008
		CLRF 	7AH 			//04C4 	11FA
		CLRF 	7BH 			//04C5 	11FB
		CLRF 	7CH 			//04C6 	11FC
		CLRF 	7DH 			//04C7 	11FD
		BTSS 	72H, 0H 		//04C8 	2C72
		LJUMP 	4CBH 			//04C9 	3CCB
		LJUMP 	4CCH 			//04CA 	3CCC
		LJUMP 	4D4H 			//04CB 	3CD4
		LDR 	76H, 0H 			//04CC 	1876
		ADDWR 	7AH, 1H 		//04CD 	17FA
		LDR 	77H, 0H 			//04CE 	1877
		ADDWFC 	7BH, 1H 		//04CF 	0DFB
		LDR 	78H, 0H 			//04D0 	1878
		ADDWFC 	7CH, 1H 		//04D1 	0DFC
		LDR 	79H, 0H 			//04D2 	1879
		ADDWFC 	7DH, 1H 		//04D3 	0DFD
		LSLF 	76H, 1H 		//04D4 	05F6
		RLR 	77H, 1H 			//04D5 	1DF7
		RLR 	78H, 1H 			//04D6 	1DF8
		RLR 	79H, 1H 			//04D7 	1DF9
		LSRF 	75H, 1H 		//04D8 	06F5
		RRR 	74H, 1H 			//04D9 	1CF4
		RRR 	73H, 1H 			//04DA 	1CF3
		RRR 	72H, 1H 			//04DB 	1CF2
		LDR 	75H, 0H 			//04DC 	1875
		IORWR 	74H, 0H 		//04DD 	1474
		IORWR 	73H, 0H 		//04DE 	1473
		IORWR 	72H, 0H 		//04DF 	1472
		BTSS 	3H, 2H 			//04E0 	2D03
		LJUMP 	4E3H 			//04E1 	3CE3
		LJUMP 	4E4H 			//04E2 	3CE4
		LJUMP 	4C8H 			//04E3 	3CC8
		LDR 	7DH, 0H 			//04E4 	187D
		STR 	75H 			//04E5 	10F5
		LDR 	7CH, 0H 			//04E6 	187C
		STR 	74H 			//04E7 	10F4
		LDR 	7BH, 0H 			//04E8 	187B
		STR 	73H 			//04E9 	10F3
		LDR 	7AH, 0H 			//04EA 	187A
		STR 	72H 			//04EB 	10F2
		RET 					//04EC 	1008
		STR 	72H 			//04ED 	10F2

		//;DualMixer.C: 207: if (txCounter == 0 && TXEF)
		MOVLB 	0H 			//04EE 	1020
		LDR 	55H, 0H 			//04EF 	1855
		BTSS 	3H, 2H 			//04F0 	2D03
		LJUMP 	4F3H 			//04F1 	3CF3
		LJUMP 	4F4H 			//04F2 	3CF4
		LJUMP 	4FDH 			//04F3 	3CFD
		MOVLB 	9H 			//04F4 	1029
		BTSS 	12H, 5H 		//04F5 	2E92
		LJUMP 	4F8H 			//04F6 	3CF8
		LJUMP 	4F9H 			//04F7 	3CF9
		LJUMP 	4FDH 			//04F8 	3CFD

		//;DualMixer.C: 208: {
		//;DualMixer.C: 209: TCF = 1;
		BSR 	1CH, 0H 			//04F9 	241C

		//;DualMixer.C: 210: URDATAL = data;
		LDR 	72H, 0H 			//04FA 	1872
		STR 	CH 			//04FB 	108C
		LJUMP 	510H 			//04FC 	3D10

		//;DualMixer.C: 212: }
		//;DualMixer.C: 213: if (txCounter >= 64)
		LDWI 	40H 			//04FD 	0040
		MOVLB 	0H 			//04FE 	1020
		SUBWR 	55H, 0H 		//04FF 	1255
		BTSS 	3H, 0H 			//0500 	2C03
		LJUMP 	503H 			//0501 	3D03
		LJUMP 	504H 			//0502 	3D04
		LJUMP 	505H 			//0503 	3D05
		LJUMP 	510H 			//0504 	3D10

		//;DualMixer.C: 216: }
		//;DualMixer.C: 217: toSend[txIndexIp] = data;
		LDR 	54H, 0H 			//0505 	1854
		ADDWI 	20H 			//0506 	0E20
		STR 	6H 			//0507 	1086
		LDWI 	1H 			//0508 	0001
		STR 	7H 			//0509 	1087
		LDR 	72H, 0H 			//050A 	1872
		STR 	1H 			//050B 	1081

		//;DualMixer.C: 218: txIndexIp = (txIndexIp + 1) & (64 - 1);
		INCR 	54H, 1H 		//050C 	1AD4
		LDWI 	3FH 			//050D 	003F
		ANDWR 	54H, 1H 		//050E 	15D4

		//;DualMixer.C: 219: txCounter++;
		INCR 	55H, 1H 		//050F 	1AD5
		RET 					//0510 	1008

		//;RFFC2071A.c: 62: (PB2 = 0);
		MOVLB 	0H 			//0511 	1020
		BCR 	DH, 2H 			//0512 	210D

		//;RFFC2071A.c: 63: (PA1 = 0);
		BCR 	CH, 1H 			//0513 	208C

		//;RFFC2071A.c: 64: delay_us(100);
		LDWI 	64H 			//0514 	0064
		STR 	72H 			//0515 	10F2
		CLRF 	73H 			//0516 	11F3
		MOVLP 	5H 			//0517 	0185
		LCALL 	56FH 			//0518 	356F
		MOVLP 	5H 			//0519 	0185

		//;RFFC2071A.c: 65: (PA1 = 1);
		MOVLB 	0H 			//051A 	1020
		BSR 	CH, 1H 			//051B 	248C

		//;RFFC2071A.c: 66: delay_us(100);
		LDWI 	64H 			//051C 	0064
		STR 	72H 			//051D 	10F2
		CLRF 	73H 			//051E 	11F3
		MOVLP 	5H 			//051F 	0185
		LCALL 	56FH 			//0520 	356F
		MOVLP 	5H 			//0521 	0185

		//;RFFC2071A.c: 67: (PB2 = 1);
		MOVLB 	0H 			//0522 	1020
		BSR 	DH, 2H 			//0523 	250D

		//;RFFC2071A.c: 68: delay_us(1000);
		LDWI 	E8H 			//0524 	00E8
		STR 	72H 			//0525 	10F2
		LDWI 	3H 			//0526 	0003
		STR 	73H 			//0527 	10F3
		MOVLP 	5H 			//0528 	0185
		LCALL 	56FH 			//0529 	356F
		MOVLP 	5H 			//052A 	0185
		RET 					//052B 	1008
		STR 	74H 			//052C 	10F4

		//;DualMixer.C: 164: unsigned char a, b;
		//;DualMixer.C: 165: for (a = 0; a < Time; a++)
		CLRF 	75H 			//052D 	11F5
		LJUMP 	53CH 			//052E 	3D3C

		//;DualMixer.C: 166: {
		//;DualMixer.C: 167: for (b = 0; b < 5; b++)
		CLRF 	76H 			//052F 	11F6

		//;DualMixer.C: 168: {
		//;DualMixer.C: 169: DelayUs(197);
		LDWI 	C5H 			//0530 	00C5
		MOVLP 	5H 			//0531 	0185
		LCALL 	5C6H 			//0532 	35C6
		MOVLP 	5H 			//0533 	0185
		INCR 	76H, 1H 		//0534 	1AF6
		LDWI 	5H 			//0535 	0005
		SUBWR 	76H, 0H 		//0536 	1276
		BTSS 	3H, 0H 			//0537 	2C03
		LJUMP 	53AH 			//0538 	3D3A
		LJUMP 	53BH 			//0539 	3D3B
		LJUMP 	530H 			//053A 	3D30
		INCR 	75H, 1H 		//053B 	1AF5
		LDR 	74H, 0H 			//053C 	1874
		SUBWR 	75H, 0H 		//053D 	1275
		BTSS 	3H, 0H 			//053E 	2C03
		LJUMP 	541H 			//053F 	3D41
		LJUMP 	542H 			//0540 	3D42
		LJUMP 	52FH 			//0541 	3D2F
		RET 					//0542 	1008
		RETW 	30H 			//0543 	0430
		RETW 	31H 			//0544 	0431
		RETW 	32H 			//0545 	0432
		RETW 	33H 			//0546 	0433
		RETW 	34H 			//0547 	0434
		RETW 	35H 			//0548 	0435
		RETW 	36H 			//0549 	0436
		RETW 	37H 			//054A 	0437
		RETW 	38H 			//054B 	0438
		RETW 	39H 			//054C 	0439
		RETW 	41H 			//054D 	0441
		RETW 	42H 			//054E 	0442
		RETW 	43H 			//054F 	0443
		RETW 	44H 			//0550 	0444
		RETW 	45H 			//0551 	0445
		RETW 	46H 			//0552 	0446
		RETW 	0H 			//0553 	0400
		RETW 	5DH 			//0554 	045D
		RETW 	3DH 			//0555 	043D
		RETW 	30H 			//0556 	0430
		RETW 	78H 			//0557 	0478
		RETW 	0H 			//0558 	0400

		//;DualMixer.C: 230: while (*str)
		LJUMP 	565H 			//0559 	3D65

		//;DualMixer.C: 231: {
		//;DualMixer.C: 232: SendByteToUART(*str);
		LDR 	73H, 0H 			//055A 	1873
		STR 	4H 			//055B 	1084
		LDR 	74H, 0H 			//055C 	1874
		STR 	5H 			//055D 	1085
		LDR 	0H, 0H 			//055E 	1800
		MOVLP 	4H 			//055F 	0184
		LCALL 	4EDH 			//0560 	34ED
		MOVLP 	5H 			//0561 	0185

		//;DualMixer.C: 233: str++;
		INCR 	73H, 1H 		//0562 	1AF3
		BTSC 	3H, 2H 			//0563 	2903
		INCR 	74H, 1H 		//0564 	1AF4
		LDR 	73H, 0H 			//0565 	1873
		STR 	4H 			//0566 	1084
		LDR 	74H, 0H 			//0567 	1874
		STR 	5H 			//0568 	1085
		MOVIW 	FSR0++ 		//0569 	1012
		BTSS 	3H, 2H 			//056A 	2D03
		LJUMP 	56DH 			//056B 	3D6D
		LJUMP 	56EH 			//056C 	3D6E
		LJUMP 	55AH 			//056D 	3D5A
		RET 					//056E 	1008

		//;RFFC2071A.c: 29: while (us--) {
		LJUMP 	578H 			//056F 	3D78

		//;RFFC2071A.c: 30: __nop(); __nop(); __nop(); __nop();
		NOP 					//0570 	1000
		NOP 					//0571 	1000
		NOP 					//0572 	1000
		NOP 					//0573 	1000

		//;RFFC2071A.c: 31: __nop(); __nop(); __nop(); __nop();
		NOP 					//0574 	1000
		NOP 					//0575 	1000
		NOP 					//0576 	1000
		NOP 					//0577 	1000
		LDWI 	1H 			//0578 	0001
		SUBWR 	72H, 1H 		//0579 	12F2
		LDWI 	0H 			//057A 	0000
		SUBWFB 	73H, 1H 		//057B 	0BF3
		INCR 	72H, 0H 		//057C 	1A72
		BTSS 	3H, 2H 			//057D 	2D03
		LJUMP 	583H 			//057E 	3D83
		INCR 	73H, 0H 		//057F 	1A73
		BTSS 	3H, 2H 			//0580 	2D03
		LJUMP 	583H 			//0581 	3D83
		LJUMP 	584H 			//0582 	3D84
		LJUMP 	570H 			//0583 	3D70
		RET 					//0584 	1008

		//;RFFC2071A.c: 41: (PA0 = 1);
		MOVLB 	0H 			//0585 	1020
		BSR 	CH, 0H 			//0586 	240C

		//;RFFC2071A.c: 42: (PB0 = 0);
		BCR 	DH, 0H 			//0587 	200D

		//;RFFC2071A.c: 43: (PB1 = 0);
		BCR 	DH, 1H 			//0588 	208D

		//;RFFC2071A.c: 44: (PB2 = 0);
		BCR 	DH, 2H 			//0589 	210D

		//;RFFC2071A.c: 45: (PA1 = 1);
		BSR 	CH, 1H 			//058A 	248C

		//;RFFC2071A.c: 46: (PA4 = 0);
		BCR 	CH, 4H 			//058B 	220C

		//;RFFC2071A.c: 48: delay_us(100);
		LDWI 	64H 			//058C 	0064
		STR 	72H 			//058D 	10F2
		CLRF 	73H 			//058E 	11F3
		MOVLP 	5H 			//058F 	0185
		LCALL 	56FH 			//0590 	356F
		MOVLP 	5H 			//0591 	0185

		//;RFFC2071A.c: 51: RFFC2071A_Reset();
		MOVLP 	5H 			//0592 	0185
		LCALL 	511H 			//0593 	3511
		MOVLP 	5H 			//0594 	0185

		//;RFFC2071A.c: 54: RFFC2071A_DefaultConfig();
		MOVLP 	1H 			//0595 	0181
		LCALL 	1D6H 			//0596 	31D6
		MOVLP 	5H 			//0597 	0185
		RET 					//0598 	1008

		//;RFFC2071A.c: 76: (PB0 = 1);
		MOVLB 	0H 			//0599 	1020
		BSR 	DH, 0H 			//059A 	240D

		//;RFFC2071A.c: 77: delay_us(1);
		CLRF 	72H 			//059B 	11F2
		INCR 	72H, 1H 		//059C 	1AF2
		CLRF 	73H 			//059D 	11F3
		MOVLP 	5H 			//059E 	0185
		LCALL 	56FH 			//059F 	356F
		MOVLP 	5H 			//05A0 	0185

		//;RFFC2071A.c: 78: (PB0 = 0);
		MOVLB 	0H 			//05A1 	1020
		BCR 	DH, 0H 			//05A2 	200D

		//;RFFC2071A.c: 79: delay_us(1);
		CLRF 	72H 			//05A3 	11F2
		INCR 	72H, 1H 		//05A4 	1AF2
		CLRF 	73H 			//05A5 	11F3
		MOVLP 	5H 			//05A6 	0185
		LCALL 	56FH 			//05A7 	356F
		MOVLP 	5H 			//05A8 	0185
		RET 					//05A9 	1008

		//;DualMixer.C: 183: PCKEN |= 0B00100000;
		MOVLB 	1H 			//05AA 	1021
		BSR 	1AH, 5H 			//05AB 	269A

		//;DualMixer.C: 185: URIER = 0B00100001;
		LDWI 	21H 			//05AC 	0021
		MOVLB 	9H 			//05AD 	1029
		STR 	EH 			//05AE 	108E

		//;DualMixer.C: 186: URLCR = 0B00000001;
		LDWI 	1H 			//05AF 	0001
		STR 	FH 			//05B0 	108F

		//;DualMixer.C: 187: URMCR = 0B00011000;
		LDWI 	18H 			//05B1 	0018
		STR 	11H 			//05B2 	1091

		//;DualMixer.C: 189: URDLL = 104;
		LDWI 	68H 			//05B3 	0068
		STR 	14H 			//05B4 	1094

		//;DualMixer.C: 190: URDLH = 0;
		CLRF 	15H 			//05B5 	1195

		//;DualMixer.C: 191: TCF = 1;
		BSR 	1CH, 0H 			//05B6 	241C

		//;DualMixer.C: 192: INTCON = 0B11000000;
		LDWI 	C0H 			//05B7 	00C0
		STR 	BH 			//05B8 	108B
		RET 					//05B9 	1008
		STR 	72H 			//05BA 	10F2

		//;DualMixer.C: 264: return hex_chars[(val >> 4) & 0x0F];
		SWAPR 	72H, 0H 		//05BB 	1E72
		ANDWI 	FH 			//05BC 	090F
		ANDWI 	FH 			//05BD 	090F
		ADDWI 	43H 			//05BE 	0E43
		STR 	4H 			//05BF 	1084
		LDWI 	85H 			//05C0 	0085
		BTSC 	3H, 0H 			//05C1 	2803
		ADDWI 	1H 			//05C2 	0E01
		STR 	5H 			//05C3 	1085
		LDR 	0H, 0H 			//05C4 	1800
		RET 					//05C5 	1008
		STR 	72H 			//05C6 	10F2

		//;DualMixer.C: 150: unsigned char a;
		//;DualMixer.C: 151: for (a = 0; a < Time; a++)
		CLRF 	73H 			//05C7 	11F3
		LJUMP 	5CBH 			//05C8 	3DCB

		//;DualMixer.C: 152: {
		//;DualMixer.C: 153: __nop();
		NOP 					//05C9 	1000
		INCR 	73H, 1H 		//05CA 	1AF3
		LDR 	72H, 0H 			//05CB 	1872
		SUBWR 	73H, 0H 		//05CC 	1273
		BTSS 	3H, 0H 			//05CD 	2C03
		LJUMP 	5D0H 			//05CE 	3DD0
		LJUMP 	5D1H 			//05CF 	3DD1
		LJUMP 	5C9H 			//05D0 	3DC9
		RET 					//05D1 	1008
		STR 	72H 			//05D2 	10F2

		//;DualMixer.C: 274: return hex_chars[val & 0x0F];
		LDR 	72H, 0H 			//05D3 	1872
		ANDWI 	FH 			//05D4 	090F
		ADDWI 	43H 			//05D5 	0E43
		STR 	4H 			//05D6 	1084
		LDWI 	85H 			//05D7 	0085
		BTSC 	3H, 0H 			//05D8 	2803
		ADDWI 	1H 			//05D9 	0E01
		STR 	5H 			//05DA 	1085
		LDR 	0H, 0H 			//05DB 	1800
		RET 					//05DC 	1008

		//;RFFC2071A.c: 430: (PB2 = 1);
		MOVLB 	0H 			//05DD 	1020
		BSR 	DH, 2H 			//05DE 	250D

		//;RFFC2071A.c: 431: delay_us(1000);
		LDWI 	E8H 			//05DF 	00E8
		STR 	72H 			//05E0 	10F2
		LDWI 	3H 			//05E1 	0003
		STR 	73H 			//05E2 	10F3
		MOVLP 	5H 			//05E3 	0185
		LCALL 	56FH 			//05E4 	356F
		MOVLP 	5H 			//05E5 	0185
		RET 					//05E6 	1008
		CLRWDT 			//05E7 	1064
		CLRF 	0H 			//05E8 	1180
		ADDFSR 	0H, 1H 		//05E9 	0101
		DECRSZ 	9H, 1H 		//05EA 	1B89
		LJUMP 	5E8H 			//05EB 	3DE8
		RETW 	0H 			//05EC 	0400
		RETW 	DH 			//05ED 	040D
		RETW 	AH 			//05EE 	040A
		RETW 	0H 			//05EF 	0400
		RETW 	52H 			//05F0 	0452
		RETW 	5BH 			//05F1 	045B
		RETW 	0H 			//05F2 	0400
		RET 					//05F3 	1008
			END
