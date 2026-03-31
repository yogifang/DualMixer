//Deviec:FT61F14X
//-----------------------Variable---------------------------------
		_receivedata		EQU		20H
		_rxCounter		EQU		43H
		_rxIndexIp		EQU		7DH
		_rxIndexOp		EQU		42H
		_toSend		EQU		A0H
		_txCounter		EQU		7CH
		_txIndexIp		EQU		41H
		_txIndexOp		EQU		40H
		_W_TMP		EQU		70H
		_BSR_TMP		EQU		71H
//		main@readback		EQU		4BH
//		main@addr		EQU		4DH
//		main@i		EQU		4AH
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
//		RFFC2071A_WriteReg@addr		EQU		44H
//		RFFC2071A_WriteReg@tx_data		EQU		45H
//		RFFC2071A_WriteReg@i		EQU		49H
//		RFFC2071A_WriteReg@addr		EQU		44H
//		RFFC2071A_WriteReg@data		EQU		74H
//		RFFC2071A_WriteReg@addr		EQU		44H
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
		LJUMP 	53H 			//0001 	3853
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
		LJUMP 	31H 			//001F 	3831
		BTSS 	12H, 0H 		//0020 	2C12
		LJUMP 	23H 			//0021 	3823
		LJUMP 	24H 			//0022 	3824
		LJUMP 	31H 			//0023 	3831

		//;DualMixer.C: 76: {
		//;DualMixer.C: 77: RXNEF = 1;
		BSR 	12H, 0H 			//0024 	2412

		//;DualMixer.C: 78: {
		//;DualMixer.C: 79: receivedata[rxIndexIp] = URDATAL;
		LDR 	7DH, 0H 			//0025 	187D
		ADDWI 	20H 			//0026 	0E20
		STR 	6H 			//0027 	1086
		CLRF 	7H 			//0028 	1187
		LDR 	CH, 0H 			//0029 	180C
		STR 	1H 			//002A 	1081

		//;DualMixer.C: 80: rxIndexIp = (rxIndexIp + 1) & (32 - 1);
		INCR 	7DH, 1H 		//002B 	1AFD
		LDWI 	1FH 			//002C 	001F
		ANDWR 	7DH, 1H 		//002D 	15FD

		//;DualMixer.C: 81: rxCounter++;
		MOVLB 	0H 			//002E 	1020
		INCR 	43H, 1H 		//002F 	1AC3

		//;DualMixer.C: 82: __nop();
		NOP 					//0030 	1000

		//;DualMixer.C: 83: }
		//;DualMixer.C: 84: }
		//;DualMixer.C: 86: if (TCEN && TCF)
		MOVLB 	9H 			//0031 	1029
		BTSS 	EH, 5H 			//0032 	2E8E
		LJUMP 	35H 			//0033 	3835
		LJUMP 	36H 			//0034 	3836
		LJUMP 	4EH 			//0035 	384E
		BTSS 	1CH, 0H 		//0036 	2C1C
		LJUMP 	39H 			//0037 	3839
		LJUMP 	3AH 			//0038 	383A
		LJUMP 	4EH 			//0039 	384E

		//;DualMixer.C: 87: {
		//;DualMixer.C: 88: TCF = 1;
		BSR 	1CH, 0H 			//003A 	241C

		//;DualMixer.C: 90: if (txCounter > 0)
		LDR 	7CH, 0H 			//003B 	187C
		BTSC 	3H, 2H 			//003C 	2903
		LJUMP 	3FH 			//003D 	383F
		LJUMP 	40H 			//003E 	3840
		LJUMP 	4DH 			//003F 	384D

		//;DualMixer.C: 91: {
		//;DualMixer.C: 92: URDATAL = toSend[txIndexOp];
		MOVLB 	0H 			//0040 	1020
		LDR 	40H, 0H 			//0041 	1840
		ADDWI 	A0H 			//0042 	0EA0
		STR 	6H 			//0043 	1086
		CLRF 	7H 			//0044 	1187
		LDR 	1H, 0H 			//0045 	1801
		MOVLB 	9H 			//0046 	1029
		STR 	CH 			//0047 	108C

		//;DualMixer.C: 93: txIndexOp = (txIndexOp + 1) & (64 - 1);
		MOVLB 	0H 			//0048 	1020
		INCR 	40H, 1H 		//0049 	1AC0
		LDWI 	3FH 			//004A 	003F
		ANDWR 	40H, 1H 		//004B 	15C0

		//;DualMixer.C: 94: txCounter--;
		DECR 	7CH, 1H 		//004C 	13FC

		//;DualMixer.C: 95: }
		//;DualMixer.C: 96: __nop();
		NOP 					//004D 	1000

		//;DualMixer.C: 97: }
		//;DualMixer.C: 99: user_isr();
		MOVLP 	3H 			//004E 	0183
		LCALL 	3C7H 			//004F 	33C7
		MOVLP 	0H 			//0050 	0180
		BCR 	7EH, 0H 			//0051 	207E
		RETI 					//0052 	1009
		MOVLP 	0H 			//0053 	0180
		LJUMP 	55H 			//0054 	3855
		CLRF 	7CH 			//0055 	11FC
		CLRF 	7DH 			//0056 	11FD
		LDWI 	20H 			//0057 	0020
		STR 	4H 			//0058 	1084
		LDWI 	0H 			//0059 	0000
		STR 	5H 			//005A 	1085
		LDWI 	24H 			//005B 	0024
		MOVLP 	3H 			//005C 	0183
		LCALL 	3BBH 			//005D 	33BB
		MOVLP 	0H 			//005E 	0180
		LDWI 	A0H 			//005F 	00A0
		STR 	4H 			//0060 	1084
		LDWI 	0H 			//0061 	0000
		STR 	5H 			//0062 	1085
		LDWI 	40H 			//0063 	0040
		MOVLP 	3H 			//0064 	0183
		LCALL 	3BBH 			//0065 	33BB
		MOVLP 	0H 			//0066 	0180
		BCR 	7EH, 0H 			//0067 	207E
		MOVLB 	0H 			//0068 	1020
		MOVLP 	1H 			//0069 	0181
		LJUMP 	156H 			//006A 	3956

		//;RFFC2071A.c: 185: RFFC2071A_WriteReg(0x00, 0xBEFA);
		LDWI 	FAH 			//006B 	00FA
		STR 	74H 			//006C 	10F4
		LDWI 	BEH 			//006D 	00BE
		STR 	75H 			//006E 	10F5
		LDWI 	0H 			//006F 	0000
		MOVLP 	2H 			//0070 	0182
		LCALL 	248H 			//0071 	3248
		MOVLP 	0H 			//0072 	0180

		//;RFFC2071A.c: 186: RFFC2071A_WriteReg(0x01, 0x4064);
		LDWI 	64H 			//0073 	0064
		STR 	74H 			//0074 	10F4
		LDWI 	40H 			//0075 	0040
		STR 	75H 			//0076 	10F5
		LDWI 	1H 			//0077 	0001
		MOVLP 	2H 			//0078 	0182
		LCALL 	248H 			//0079 	3248
		MOVLP 	0H 			//007A 	0180

		//;RFFC2071A.c: 187: RFFC2071A_WriteReg(0x02, 0x9055);
		LDWI 	55H 			//007B 	0055
		STR 	74H 			//007C 	10F4
		LDWI 	90H 			//007D 	0090
		STR 	75H 			//007E 	10F5
		LDWI 	2H 			//007F 	0002
		MOVLP 	2H 			//0080 	0182
		LCALL 	248H 			//0081 	3248
		MOVLP 	0H 			//0082 	0180

		//;RFFC2071A.c: 188: RFFC2071A_WriteReg(0x03, 0x2D02);
		LDWI 	2H 			//0083 	0002
		STR 	74H 			//0084 	10F4
		LDWI 	2DH 			//0085 	002D
		STR 	75H 			//0086 	10F5
		LDWI 	3H 			//0087 	0003
		MOVLP 	2H 			//0088 	0182
		LCALL 	248H 			//0089 	3248
		MOVLP 	0H 			//008A 	0180

		//;RFFC2071A.c: 189: RFFC2071A_WriteReg(0x04, 0xACBF);
		LDWI 	BFH 			//008B 	00BF
		STR 	74H 			//008C 	10F4
		LDWI 	ACH 			//008D 	00AC
		STR 	75H 			//008E 	10F5
		LDWI 	4H 			//008F 	0004
		MOVLP 	2H 			//0090 	0182
		LCALL 	248H 			//0091 	3248
		MOVLP 	0H 			//0092 	0180

		//;RFFC2071A.c: 190: RFFC2071A_WriteReg(0x05, 0xACBF);
		LDWI 	BFH 			//0093 	00BF
		STR 	74H 			//0094 	10F4
		LDWI 	ACH 			//0095 	00AC
		STR 	75H 			//0096 	10F5
		LDWI 	5H 			//0097 	0005
		MOVLP 	2H 			//0098 	0182
		LCALL 	248H 			//0099 	3248
		MOVLP 	0H 			//009A 	0180

		//;RFFC2071A.c: 191: RFFC2071A_WriteReg(0x06, 0x0028);
		LDWI 	28H 			//009B 	0028
		STR 	74H 			//009C 	10F4
		CLRF 	75H 			//009D 	11F5
		LDWI 	6H 			//009E 	0006
		MOVLP 	2H 			//009F 	0182
		LCALL 	248H 			//00A0 	3248
		MOVLP 	0H 			//00A1 	0180

		//;RFFC2071A.c: 192: RFFC2071A_WriteReg(0x07, 0x0028);
		LDWI 	28H 			//00A2 	0028
		STR 	74H 			//00A3 	10F4
		CLRF 	75H 			//00A4 	11F5
		LDWI 	7H 			//00A5 	0007
		MOVLP 	2H 			//00A6 	0182
		LCALL 	248H 			//00A7 	3248
		MOVLP 	0H 			//00A8 	0180

		//;RFFC2071A.c: 193: RFFC2071A_WriteReg(0x08, 0xFF00);
		LDWI 	0H 			//00A9 	0000
		STR 	74H 			//00AA 	10F4
		LDWI 	FFH 			//00AB 	00FF
		STR 	75H 			//00AC 	10F5
		LDWI 	8H 			//00AD 	0008
		MOVLP 	2H 			//00AE 	0182
		LCALL 	248H 			//00AF 	3248
		MOVLP 	0H 			//00B0 	0180

		//;RFFC2071A.c: 194: RFFC2071A_WriteReg(0x09, 0x8220);
		LDWI 	20H 			//00B1 	0020
		STR 	74H 			//00B2 	10F4
		LDWI 	82H 			//00B3 	0082
		STR 	75H 			//00B4 	10F5
		LDWI 	9H 			//00B5 	0009
		MOVLP 	2H 			//00B6 	0182
		LCALL 	248H 			//00B7 	3248
		MOVLP 	0H 			//00B8 	0180

		//;RFFC2071A.c: 195: RFFC2071A_WriteReg(0x0A, 0x0202);
		LDWI 	2H 			//00B9 	0002
		STR 	74H 			//00BA 	10F4
		LDWI 	2H 			//00BB 	0002
		STR 	75H 			//00BC 	10F5
		LDWI 	AH 			//00BD 	000A
		MOVLP 	2H 			//00BE 	0182
		LCALL 	248H 			//00BF 	3248
		MOVLP 	0H 			//00C0 	0180

		//;RFFC2071A.c: 196: RFFC2071A_WriteReg(0x0B, 0x4800);
		LDWI 	0H 			//00C1 	0000
		STR 	74H 			//00C2 	10F4
		LDWI 	48H 			//00C3 	0048
		STR 	75H 			//00C4 	10F5
		LDWI 	BH 			//00C5 	000B
		MOVLP 	2H 			//00C6 	0182
		LCALL 	248H 			//00C7 	3248
		MOVLP 	0H 			//00C8 	0180

		//;RFFC2071A.c: 198: RFFC2071A_WriteReg(0x0C, 0x1A94);
		LDWI 	94H 			//00C9 	0094
		STR 	74H 			//00CA 	10F4
		LDWI 	1AH 			//00CB 	001A
		STR 	75H 			//00CC 	10F5
		LDWI 	CH 			//00CD 	000C
		MOVLP 	2H 			//00CE 	0182
		LCALL 	248H 			//00CF 	3248
		MOVLP 	0H 			//00D0 	0180

		//;RFFC2071A.c: 199: RFFC2071A_WriteReg(0x0D, 0xD89D);
		LDWI 	9DH 			//00D1 	009D
		STR 	74H 			//00D2 	10F4
		LDWI 	D8H 			//00D3 	00D8
		STR 	75H 			//00D4 	10F5
		LDWI 	DH 			//00D5 	000D
		MOVLP 	2H 			//00D6 	0182
		LCALL 	248H 			//00D7 	3248
		MOVLP 	0H 			//00D8 	0180

		//;RFFC2071A.c: 200: RFFC2071A_WriteReg(0x0E, 0x8900);
		LDWI 	0H 			//00D9 	0000
		STR 	74H 			//00DA 	10F4
		LDWI 	89H 			//00DB 	0089
		STR 	75H 			//00DC 	10F5
		LDWI 	EH 			//00DD 	000E
		MOVLP 	2H 			//00DE 	0182
		LCALL 	248H 			//00DF 	3248
		MOVLP 	0H 			//00E0 	0180

		//;RFFC2071A.c: 201: RFFC2071A_WriteReg(0x0F, 0x1E84);
		LDWI 	84H 			//00E1 	0084
		STR 	74H 			//00E2 	10F4
		LDWI 	1EH 			//00E3 	001E
		STR 	75H 			//00E4 	10F5
		LDWI 	FH 			//00E5 	000F
		MOVLP 	2H 			//00E6 	0182
		LCALL 	248H 			//00E7 	3248
		MOVLP 	0H 			//00E8 	0180

		//;RFFC2071A.c: 202: RFFC2071A_WriteReg(0x10, 0x89D8);
		LDWI 	D8H 			//00E9 	00D8
		STR 	74H 			//00EA 	10F4
		LDWI 	89H 			//00EB 	0089
		STR 	75H 			//00EC 	10F5
		LDWI 	10H 			//00ED 	0010
		MOVLP 	2H 			//00EE 	0182
		LCALL 	248H 			//00EF 	3248
		MOVLP 	0H 			//00F0 	0180

		//;RFFC2071A.c: 203: RFFC2071A_WriteReg(0x11, 0x9D00);
		LDWI 	0H 			//00F1 	0000
		STR 	74H 			//00F2 	10F4
		LDWI 	9DH 			//00F3 	009D
		STR 	75H 			//00F4 	10F5
		LDWI 	11H 			//00F5 	0011
		MOVLP 	2H 			//00F6 	0182
		LCALL 	248H 			//00F7 	3248
		MOVLP 	0H 			//00F8 	0180

		//;RFFC2071A.c: 205: RFFC2071A_WriteReg(0x12, 0x2A80);
		LDWI 	80H 			//00F9 	0080
		STR 	74H 			//00FA 	10F4
		LDWI 	2AH 			//00FB 	002A
		STR 	75H 			//00FC 	10F5
		LDWI 	12H 			//00FD 	0012
		MOVLP 	2H 			//00FE 	0182
		LCALL 	248H 			//00FF 	3248
		MOVLP 	0H 			//0100 	0180

		//;RFFC2071A.c: 206: RFFC2071A_WriteReg(0x13, 0x0000);
		CLRF 	74H 			//0101 	11F4
		CLRF 	75H 			//0102 	11F5
		LDWI 	13H 			//0103 	0013
		MOVLP 	2H 			//0104 	0182
		LCALL 	248H 			//0105 	3248
		MOVLP 	0H 			//0106 	0180

		//;RFFC2071A.c: 207: RFFC2071A_WriteReg(0x14, 0x0000);
		CLRF 	74H 			//0107 	11F4
		CLRF 	75H 			//0108 	11F5
		LDWI 	14H 			//0109 	0014
		MOVLP 	2H 			//010A 	0182
		LCALL 	248H 			//010B 	3248
		MOVLP 	0H 			//010C 	0180

		//;RFFC2071A.c: 208: RFFC2071A_WriteReg(0x15, 0x0000);
		CLRF 	74H 			//010D 	11F4
		CLRF 	75H 			//010E 	11F5
		LDWI 	15H 			//010F 	0015
		MOVLP 	2H 			//0110 	0182
		LCALL 	248H 			//0111 	3248
		MOVLP 	0H 			//0112 	0180

		//;RFFC2071A.c: 209: RFFC2071A_WriteReg(0x16, 0x0000);
		CLRF 	74H 			//0113 	11F4
		CLRF 	75H 			//0114 	11F5
		LDWI 	16H 			//0115 	0016
		MOVLP 	2H 			//0116 	0182
		LCALL 	248H 			//0117 	3248
		MOVLP 	0H 			//0118 	0180

		//;RFFC2071A.c: 210: RFFC2071A_WriteReg(0x17, 0x4900);
		LDWI 	0H 			//0119 	0000
		STR 	74H 			//011A 	10F4
		LDWI 	49H 			//011B 	0049
		STR 	75H 			//011C 	10F5
		LDWI 	17H 			//011D 	0017
		MOVLP 	2H 			//011E 	0182
		LCALL 	248H 			//011F 	3248
		MOVLP 	0H 			//0120 	0180

		//;RFFC2071A.c: 211: RFFC2071A_WriteReg(0x18, 0x0281);
		LDWI 	81H 			//0121 	0081
		STR 	74H 			//0122 	10F4
		LDWI 	2H 			//0123 	0002
		STR 	75H 			//0124 	10F5
		LDWI 	18H 			//0125 	0018
		MOVLP 	2H 			//0126 	0182
		LCALL 	248H 			//0127 	3248
		MOVLP 	0H 			//0128 	0180

		//;RFFC2071A.c: 212: RFFC2071A_WriteReg(0x19, 0xF00F);
		LDWI 	FH 			//0129 	000F
		STR 	74H 			//012A 	10F4
		LDWI 	F0H 			//012B 	00F0
		STR 	75H 			//012C 	10F5
		LDWI 	19H 			//012D 	0019
		MOVLP 	2H 			//012E 	0182
		LCALL 	248H 			//012F 	3248
		MOVLP 	0H 			//0130 	0180

		//;RFFC2071A.c: 213: RFFC2071A_WriteReg(0x1A, 0x0000);
		CLRF 	74H 			//0131 	11F4
		CLRF 	75H 			//0132 	11F5
		LDWI 	1AH 			//0133 	001A
		MOVLP 	2H 			//0134 	0182
		LCALL 	248H 			//0135 	3248
		MOVLP 	0H 			//0136 	0180

		//;RFFC2071A.c: 214: RFFC2071A_WriteReg(0x1B, 0x0005);
		LDWI 	5H 			//0137 	0005
		STR 	74H 			//0138 	10F4
		CLRF 	75H 			//0139 	11F5
		LDWI 	1BH 			//013A 	001B
		MOVLP 	2H 			//013B 	0182
		LCALL 	248H 			//013C 	3248
		MOVLP 	0H 			//013D 	0180

		//;RFFC2071A.c: 215: RFFC2071A_WriteReg(0x1C, 0xC840);
		LDWI 	40H 			//013E 	0040
		STR 	74H 			//013F 	10F4
		LDWI 	C8H 			//0140 	00C8
		STR 	75H 			//0141 	10F5
		LDWI 	1CH 			//0142 	001C
		MOVLP 	2H 			//0143 	0182
		LCALL 	248H 			//0144 	3248
		MOVLP 	0H 			//0145 	0180

		//;RFFC2071A.c: 216: RFFC2071A_WriteReg(0x1D, 0x1000);
		LDWI 	0H 			//0146 	0000
		STR 	74H 			//0147 	10F4
		LDWI 	10H 			//0148 	0010
		STR 	75H 			//0149 	10F5
		LDWI 	1DH 			//014A 	001D
		MOVLP 	2H 			//014B 	0182
		LCALL 	248H 			//014C 	3248
		MOVLP 	0H 			//014D 	0180

		//;RFFC2071A.c: 217: RFFC2071A_WriteReg(0x1E, 0x0005);
		LDWI 	5H 			//014E 	0005
		STR 	74H 			//014F 	10F4
		CLRF 	75H 			//0150 	11F5
		LDWI 	1EH 			//0151 	001E
		MOVLP 	2H 			//0152 	0182
		LCALL 	248H 			//0153 	3248
		MOVLP 	0H 			//0154 	0180
		RET 					//0155 	1008

		//;DualMixer.C: 284: uint16_t readback;
		//;DualMixer.C: 285: unsigned char i;
		//;DualMixer.C: 286: unsigned char addr;
		//;DualMixer.C: 288: POWER_INITIAL();
		MOVLP 	2H 			//0156 	0182
		LCALL 	297H 			//0157 	3297
		MOVLP 	1H 			//0158 	0181

		//;DualMixer.C: 289: UART_INITIAL();
		MOVLP 	3H 			//0159 	0183
		LCALL 	37EH 			//015A 	337E
		MOVLP 	1H 			//015B 	0181

		//;DualMixer.C: 290: RFFC2071A_Init();
		MOVLP 	3H 			//015C 	0183
		LCALL 	359H 			//015D 	3359
		MOVLP 	1H 			//015E 	0181

		//;DualMixer.C: 291: RFFC2071A_Enable();
		MOVLP 	3H 			//015F 	0183
		LCALL 	3B1H 			//0160 	33B1
		MOVLP 	1H 			//0161 	0181

		//;DualMixer.C: 292: RFFC2071A_DefaultConfig();
		MOVLP 	0H 			//0162 	0180
		LCALL 	6BH 			//0163 	306B
		MOVLP 	1H 			//0164 	0181

		//;DualMixer.C: 295: {
		//;DualMixer.C: 297: for (addr = 0; addr <= 0x1F; addr++)
		MOVLB 	0H 			//0165 	1020
		CLRF 	4DH 			//0166 	11CD

		//;DualMixer.C: 298: {
		//;DualMixer.C: 299: readback = RFFC2071A_ReadReg(addr);
		LDR 	4DH, 0H 			//0167 	184D
		MOVLP 	1H 			//0168 	0181
		LCALL 	1D1H 			//0169 	31D1
		MOVLP 	1H 			//016A 	0181
		LDR 	75H, 0H 			//016B 	1875
		MOVLB 	0H 			//016C 	1020
		STR 	4CH 			//016D 	10CC
		LDR 	74H, 0H 			//016E 	1874
		STR 	4BH 			//016F 	10CB

		//;DualMixer.C: 301: SendStringToUART("R[");
		LDWI 	C4H 			//0170 	00C4
		STR 	73H 			//0171 	10F3
		LDWI 	83H 			//0172 	0083
		STR 	74H 			//0173 	10F4
		MOVLP 	3H 			//0174 	0183
		LCALL 	32DH 			//0175 	332D
		MOVLP 	1H 			//0176 	0181

		//;DualMixer.C: 302: SendByteToUART(HiNibbleToHex(addr));
		MOVLB 	0H 			//0177 	1020
		LDR 	4DH, 0H 			//0178 	184D
		MOVLP 	3H 			//0179 	0183
		LCALL 	38EH 			//017A 	338E
		MOVLP 	1H 			//017B 	0181
		MOVLP 	2H 			//017C 	0182
		LCALL 	2C3H 			//017D 	32C3
		MOVLP 	1H 			//017E 	0181

		//;DualMixer.C: 303: SendByteToUART(LoNibbleToHex(addr));
		MOVLB 	0H 			//017F 	1020
		LDR 	4DH, 0H 			//0180 	184D
		MOVLP 	3H 			//0181 	0183
		LCALL 	3A6H 			//0182 	33A6
		MOVLP 	1H 			//0183 	0181
		MOVLP 	2H 			//0184 	0182
		LCALL 	2C3H 			//0185 	32C3
		MOVLP 	1H 			//0186 	0181

		//;DualMixer.C: 304: SendStringToUART("]=0x");
		LDWI 	28H 			//0187 	0028
		STR 	73H 			//0188 	10F3
		LDWI 	83H 			//0189 	0083
		STR 	74H 			//018A 	10F4
		MOVLP 	3H 			//018B 	0183
		LCALL 	32DH 			//018C 	332D
		MOVLP 	1H 			//018D 	0181

		//;DualMixer.C: 305: SendByteToUART(HiNibbleToHex((unsigned char)(readback >> 8)));
		MOVLB 	0H 			//018E 	1020
		LDR 	4CH, 0H 			//018F 	184C
		MOVLP 	3H 			//0190 	0183
		LCALL 	38EH 			//0191 	338E
		MOVLP 	1H 			//0192 	0181
		MOVLP 	2H 			//0193 	0182
		LCALL 	2C3H 			//0194 	32C3
		MOVLP 	1H 			//0195 	0181

		//;DualMixer.C: 306: SendByteToUART(LoNibbleToHex((unsigned char)(readback >> 8)));
		MOVLB 	0H 			//0196 	1020
		LDR 	4CH, 0H 			//0197 	184C
		MOVLP 	3H 			//0198 	0183
		LCALL 	3A6H 			//0199 	33A6
		MOVLP 	1H 			//019A 	0181
		MOVLP 	2H 			//019B 	0182
		LCALL 	2C3H 			//019C 	32C3
		MOVLP 	1H 			//019D 	0181

		//;DualMixer.C: 307: SendByteToUART(HiNibbleToHex((unsigned char)(readback & 0xFF)));
		MOVLB 	0H 			//019E 	1020
		LDR 	4BH, 0H 			//019F 	184B
		MOVLP 	3H 			//01A0 	0183
		LCALL 	38EH 			//01A1 	338E
		MOVLP 	1H 			//01A2 	0181
		MOVLP 	2H 			//01A3 	0182
		LCALL 	2C3H 			//01A4 	32C3
		MOVLP 	1H 			//01A5 	0181

		//;DualMixer.C: 308: SendByteToUART(LoNibbleToHex((unsigned char)(readback & 0xFF)));
		MOVLB 	0H 			//01A6 	1020
		LDR 	4BH, 0H 			//01A7 	184B
		MOVLP 	3H 			//01A8 	0183
		LCALL 	3A6H 			//01A9 	33A6
		MOVLP 	1H 			//01AA 	0181
		MOVLP 	2H 			//01AB 	0182
		LCALL 	2C3H 			//01AC 	32C3
		MOVLP 	1H 			//01AD 	0181

		//;DualMixer.C: 309: SendStringToUART("\r\n");
		LDWI 	C1H 			//01AE 	00C1
		STR 	73H 			//01AF 	10F3
		LDWI 	83H 			//01B0 	0083
		STR 	74H 			//01B1 	10F4
		MOVLP 	3H 			//01B2 	0183
		LCALL 	32DH 			//01B3 	332D
		MOVLP 	1H 			//01B4 	0181

		//;DualMixer.C: 310: DelayMs(10);
		LDWI 	AH 			//01B5 	000A
		MOVLP 	3H 			//01B6 	0183
		LCALL 	300H 			//01B7 	3300
		MOVLP 	1H 			//01B8 	0181
		MOVLB 	0H 			//01B9 	1020
		INCR 	4DH, 1H 		//01BA 	1ACD
		LDWI 	20H 			//01BB 	0020
		SUBWR 	4DH, 0H 		//01BC 	124D
		BTSS 	3H, 0H 			//01BD 	2C03
		LJUMP 	1C0H 			//01BE 	39C0
		LJUMP 	1C1H 			//01BF 	39C1
		LJUMP 	167H 			//01C0 	3967

		//;DualMixer.C: 311: }
		//;DualMixer.C: 316: for (i = 0; i < 8; i++)
		CLRF 	4AH 			//01C1 	11CA

		//;DualMixer.C: 317: {
		//;DualMixer.C: 318: DelayMs(250);
		LDWI 	FAH 			//01C2 	00FA
		MOVLP 	3H 			//01C3 	0183
		LCALL 	300H 			//01C4 	3300
		MOVLP 	1H 			//01C5 	0181
		MOVLB 	0H 			//01C6 	1020
		INCR 	4AH, 1H 		//01C7 	1ACA
		LDWI 	8H 			//01C8 	0008
		SUBWR 	4AH, 0H 		//01C9 	124A
		BTSS 	3H, 0H 			//01CA 	2C03
		LJUMP 	1CDH 			//01CB 	39CD
		LJUMP 	1CEH 			//01CC 	39CE
		LJUMP 	1C2H 			//01CD 	39C2
		LJUMP 	165H 			//01CE 	3965
		MOVLP 	0H 			//01CF 	0180
		LJUMP 	53H 			//01D0 	3853
		STR 	77H 			//01D1 	10F7

		//;RFFC2071A.c: 121: uint8_t i;
		//;RFFC2071A.c: 122: uint8_t tx_byte;
		//;RFFC2071A.c: 123: uint16_t rx_data = 0;
		CLRF 	79H 			//01D2 	11F9
		CLRF 	7AH 			//01D3 	11FA

		//;RFFC2071A.c: 126: tx_byte = 0x80 | (addr & 0x7F);
		LDR 	77H, 0H 			//01D4 	1877
		ANDWI 	7FH 			//01D5 	097F
		IORWI 	80H 			//01D6 	0880
		STR 	78H 			//01D7 	10F8

		//;RFFC2071A.c: 129: RFFC2071A_SendOneClock();
		MOVLP 	3H 			//01D8 	0183
		LCALL 	36DH 			//01D9 	336D
		MOVLP 	1H 			//01DA 	0181

		//;RFFC2071A.c: 130: (TRISB &= (uint8_t)~0x02);
		MOVLB 	1H 			//01DB 	1021
		BCR 	DH, 1H 			//01DC 	208D

		//;RFFC2071A.c: 131: (PA0 = 0);
		MOVLB 	0H 			//01DD 	1020
		BCR 	CH, 0H 			//01DE 	200C

		//;RFFC2071A.c: 132: delay_us(1);
		CLRF 	72H 			//01DF 	11F2
		INCR 	72H, 1H 		//01E0 	1AF2
		CLRF 	73H 			//01E1 	11F3
		MOVLP 	3H 			//01E2 	0183
		LCALL 	343H 			//01E3 	3343
		MOVLP 	1H 			//01E4 	0181

		//;RFFC2071A.c: 134: RFFC2071A_SendOneClock();
		MOVLP 	3H 			//01E5 	0183
		LCALL 	36DH 			//01E6 	336D
		MOVLP 	1H 			//01E7 	0181

		//;RFFC2071A.c: 137: for (i = 0; i < 8; i++) {
		CLRF 	7BH 			//01E8 	11FB

		//;RFFC2071A.c: 138: if (tx_byte & 0x80) {
		BTSS 	78H, 7H 		//01E9 	2FF8
		LJUMP 	1ECH 			//01EA 	39EC
		LJUMP 	1EDH 			//01EB 	39ED
		LJUMP 	1F0H 			//01EC 	39F0

		//;RFFC2071A.c: 139: (PB1 = 1);
		MOVLB 	0H 			//01ED 	1020
		BSR 	DH, 1H 			//01EE 	248D

		//;RFFC2071A.c: 140: } else {
		LJUMP 	1F2H 			//01EF 	39F2

		//;RFFC2071A.c: 141: (PB1 = 0);
		MOVLB 	0H 			//01F0 	1020
		BCR 	DH, 1H 			//01F1 	208D

		//;RFFC2071A.c: 142: }
		//;RFFC2071A.c: 143: tx_byte <<= 1;
		LSLF 	78H, 1H 		//01F2 	05F8

		//;RFFC2071A.c: 145: delay_us(1);
		CLRF 	72H 			//01F3 	11F2
		INCR 	72H, 1H 		//01F4 	1AF2
		CLRF 	73H 			//01F5 	11F3
		MOVLP 	3H 			//01F6 	0183
		LCALL 	343H 			//01F7 	3343
		MOVLP 	1H 			//01F8 	0181

		//;RFFC2071A.c: 146: RFFC2071A_SendOneClock();
		MOVLP 	3H 			//01F9 	0183
		LCALL 	36DH 			//01FA 	336D
		MOVLP 	1H 			//01FB 	0181
		INCR 	7BH, 1H 		//01FC 	1AFB
		LDWI 	8H 			//01FD 	0008
		SUBWR 	7BH, 0H 		//01FE 	127B
		BTSS 	3H, 0H 			//01FF 	2C03
		LJUMP 	202H 			//0200 	3A02
		LJUMP 	203H 			//0201 	3A03
		LJUMP 	1E9H 			//0202 	39E9

		//;RFFC2071A.c: 147: }
		//;RFFC2071A.c: 151: delay_us(2);
		LDWI 	2H 			//0203 	0002
		STR 	72H 			//0204 	10F2
		CLRF 	73H 			//0205 	11F3
		MOVLP 	3H 			//0206 	0183
		LCALL 	343H 			//0207 	3343
		MOVLP 	1H 			//0208 	0181

		//;RFFC2071A.c: 152: (PB1 = 1);
		MOVLB 	0H 			//0209 	1020
		BSR 	DH, 1H 			//020A 	248D

		//;RFFC2071A.c: 153: (TRISB |= 0x02);
		MOVLB 	1H 			//020B 	1021
		BSR 	DH, 1H 			//020C 	248D

		//;RFFC2071A.c: 154: delay_us(2);
		LDWI 	2H 			//020D 	0002
		STR 	72H 			//020E 	10F2
		CLRF 	73H 			//020F 	11F3
		MOVLP 	3H 			//0210 	0183
		LCALL 	343H 			//0211 	3343
		MOVLP 	1H 			//0212 	0181

		//;RFFC2071A.c: 155: RFFC2071A_SendOneClock();
		MOVLP 	3H 			//0213 	0183
		LCALL 	36DH 			//0214 	336D
		MOVLP 	1H 			//0215 	0181

		//;RFFC2071A.c: 157: for (i = 0; i < 16; i++) {
		CLRF 	7BH 			//0216 	11FB

		//;RFFC2071A.c: 158: (PB0 = 1);
		MOVLB 	0H 			//0217 	1020
		BSR 	DH, 0H 			//0218 	240D

		//;RFFC2071A.c: 159: (PB0 = 0);
		BCR 	DH, 0H 			//0219 	200D

		//;RFFC2071A.c: 160: delay_us(1);
		CLRF 	72H 			//021A 	11F2
		INCR 	72H, 1H 		//021B 	1AF2
		CLRF 	73H 			//021C 	11F3
		MOVLP 	3H 			//021D 	0183
		LCALL 	343H 			//021E 	3343
		MOVLP 	1H 			//021F 	0181

		//;RFFC2071A.c: 162: rx_data <<= 1;
		LSLF 	79H, 1H 		//0220 	05F9
		RLR 	7AH, 1H 			//0221 	1DFA

		//;RFFC2071A.c: 163: rx_data = (rx_data & 0xFFFE) ;
		BCR 	79H, 0H 			//0222 	2079

		//;RFFC2071A.c: 164: if ((PB1)) {
		MOVLB 	0H 			//0223 	1020
		BTSS 	DH, 1H 			//0224 	2C8D
		LJUMP 	227H 			//0225 	3A27
		LJUMP 	228H 			//0226 	3A28
		LJUMP 	229H 			//0227 	3A29

		//;RFFC2071A.c: 165: rx_data |= 1;
		BSR 	79H, 0H 			//0228 	2479

		//;RFFC2071A.c: 166: }
		//;RFFC2071A.c: 168: delay_us(1);
		CLRF 	72H 			//0229 	11F2
		INCR 	72H, 1H 		//022A 	1AF2
		CLRF 	73H 			//022B 	11F3
		MOVLP 	3H 			//022C 	0183
		LCALL 	343H 			//022D 	3343
		MOVLP 	1H 			//022E 	0181
		INCR 	7BH, 1H 		//022F 	1AFB
		LDWI 	10H 			//0230 	0010
		SUBWR 	7BH, 0H 		//0231 	127B
		BTSS 	3H, 0H 			//0232 	2C03
		LJUMP 	235H 			//0233 	3A35
		LJUMP 	236H 			//0234 	3A36
		LJUMP 	217H 			//0235 	3A17

		//;RFFC2071A.c: 169: }
		//;RFFC2071A.c: 171: (PA0 = 1);
		MOVLB 	0H 			//0236 	1020
		BSR 	CH, 0H 			//0237 	240C

		//;RFFC2071A.c: 172: RFFC2071A_SendOneClock();
		MOVLP 	3H 			//0238 	0183
		LCALL 	36DH 			//0239 	336D
		MOVLP 	1H 			//023A 	0181

		//;RFFC2071A.c: 173: (TRISB &= (uint8_t)~0x02);
		MOVLB 	1H 			//023B 	1021
		BCR 	DH, 1H 			//023C 	208D

		//;RFFC2071A.c: 174: delay_us(1);
		CLRF 	72H 			//023D 	11F2
		INCR 	72H, 1H 		//023E 	1AF2
		CLRF 	73H 			//023F 	11F3
		MOVLP 	3H 			//0240 	0183
		LCALL 	343H 			//0241 	3343
		MOVLP 	1H 			//0242 	0181

		//;RFFC2071A.c: 176: return rx_data;
		LDR 	7AH, 0H 			//0243 	187A
		STR 	75H 			//0244 	10F5
		LDR 	79H, 0H 			//0245 	1879
		STR 	74H 			//0246 	10F4
		RET 					//0247 	1008
		MOVLB 	0H 			//0248 	1020
		STR 	44H 			//0249 	10C4

		//;RFFC2071A.c: 83: uint8_t i;
		//;RFFC2071A.c: 84: uint32_t tx_data;
		//;RFFC2071A.c: 87: tx_data = ((uint32_t)(addr & 0x7F) << 16) | data;
		LDR 	44H, 0H 			//024A 	1844
		ANDWI 	7FH 			//024B 	097F
		CLRF 	45H 			//024C 	11C5
		CLRF 	46H 			//024D 	11C6
		STR 	47H 			//024E 	10C7
		CLRF 	48H 			//024F 	11C8
		LDR 	74H, 0H 			//0250 	1874
		STR 	76H 			//0251 	10F6
		LDR 	75H, 0H 			//0252 	1875
		STR 	77H 			//0253 	10F7
		CLRF 	78H 			//0254 	11F8
		CLRF 	79H 			//0255 	11F9
		LDR 	76H, 0H 			//0256 	1876
		IORWR 	45H, 1H 		//0257 	14C5
		LDR 	77H, 0H 			//0258 	1877
		IORWR 	46H, 1H 		//0259 	14C6
		LDR 	78H, 0H 			//025A 	1878
		IORWR 	47H, 1H 		//025B 	14C7
		LDR 	79H, 0H 			//025C 	1879
		IORWR 	48H, 1H 		//025D 	14C8

		//;RFFC2071A.c: 90: RFFC2071A_SendOneClock();
		MOVLP 	3H 			//025E 	0183
		LCALL 	36DH 			//025F 	336D
		MOVLP 	2H 			//0260 	0182

		//;RFFC2071A.c: 91: (TRISB &= (uint8_t)~0x02);
		MOVLB 	1H 			//0261 	1021
		BCR 	DH, 1H 			//0262 	208D

		//;RFFC2071A.c: 92: (PA0 = 0);
		MOVLB 	0H 			//0263 	1020
		BCR 	CH, 0H 			//0264 	200C

		//;RFFC2071A.c: 93: delay_us(1);
		CLRF 	72H 			//0265 	11F2
		INCR 	72H, 1H 		//0266 	1AF2
		CLRF 	73H 			//0267 	11F3
		MOVLP 	3H 			//0268 	0183
		LCALL 	343H 			//0269 	3343
		MOVLP 	2H 			//026A 	0182

		//;RFFC2071A.c: 95: RFFC2071A_SendOneClock();
		MOVLP 	3H 			//026B 	0183
		LCALL 	36DH 			//026C 	336D
		MOVLP 	2H 			//026D 	0182

		//;RFFC2071A.c: 98: for (i = 0; i < 24; i++) {
		MOVLB 	0H 			//026E 	1020
		CLRF 	49H 			//026F 	11C9

		//;RFFC2071A.c: 100: if (tx_data & 0x800000) {
		BTSS 	47H, 7H 		//0270 	2FC7
		LJUMP 	273H 			//0271 	3A73
		LJUMP 	274H 			//0272 	3A74
		LJUMP 	276H 			//0273 	3A76

		//;RFFC2071A.c: 101: (PB1 = 1);
		BSR 	DH, 1H 			//0274 	248D

		//;RFFC2071A.c: 102: } else {
		LJUMP 	277H 			//0275 	3A77

		//;RFFC2071A.c: 103: (PB1 = 0);
		BCR 	DH, 1H 			//0276 	208D

		//;RFFC2071A.c: 104: }
		//;RFFC2071A.c: 105: tx_data <<= 1;
		LSLF 	45H, 1H 		//0277 	05C5
		RLR 	46H, 1H 			//0278 	1DC6
		RLR 	47H, 1H 			//0279 	1DC7
		RLR 	48H, 1H 			//027A 	1DC8

		//;RFFC2071A.c: 107: delay_us(1);
		CLRF 	72H 			//027B 	11F2
		INCR 	72H, 1H 		//027C 	1AF2
		CLRF 	73H 			//027D 	11F3
		MOVLP 	3H 			//027E 	0183
		LCALL 	343H 			//027F 	3343
		MOVLP 	2H 			//0280 	0182

		//;RFFC2071A.c: 108: RFFC2071A_SendOneClock();
		MOVLP 	3H 			//0281 	0183
		LCALL 	36DH 			//0282 	336D
		MOVLP 	2H 			//0283 	0182
		MOVLB 	0H 			//0284 	1020
		INCR 	49H, 1H 		//0285 	1AC9
		LDWI 	18H 			//0286 	0018
		SUBWR 	49H, 0H 		//0287 	1249
		BTSS 	3H, 0H 			//0288 	2C03
		LJUMP 	28BH 			//0289 	3A8B
		LJUMP 	28CH 			//028A 	3A8C
		LJUMP 	270H 			//028B 	3A70

		//;RFFC2071A.c: 109: }
		//;RFFC2071A.c: 111: (PA0 = 1);
		BSR 	CH, 0H 			//028C 	240C

		//;RFFC2071A.c: 112: RFFC2071A_SendOneClock();
		MOVLP 	3H 			//028D 	0183
		LCALL 	36DH 			//028E 	336D
		MOVLP 	2H 			//028F 	0182

		//;RFFC2071A.c: 113: delay_us(1);
		CLRF 	72H 			//0290 	11F2
		INCR 	72H, 1H 		//0291 	1AF2
		CLRF 	73H 			//0292 	11F3
		MOVLP 	3H 			//0293 	0183
		LCALL 	343H 			//0294 	3343
		MOVLP 	2H 			//0295 	0182
		RET 					//0296 	1008

		//;DualMixer.C: 114: OSCCON = 0B01110001;
		LDWI 	71H 			//0297 	0071
		MOVLB 	1H 			//0298 	1021
		STR 	19H 			//0299 	1099

		//;DualMixer.C: 115: INTCON = 0;
		CLRF 	BH 			//029A 	118B

		//;DualMixer.C: 117: PORTA = 0B00000000;
		MOVLB 	0H 			//029B 	1020
		CLRF 	CH 			//029C 	118C

		//;DualMixer.C: 118: TRISA = 0B10101100;
		LDWI 	ACH 			//029D 	00AC
		MOVLB 	1H 			//029E 	1021
		STR 	CH 			//029F 	108C

		//;DualMixer.C: 119: PORTB = 0B00000000;
		MOVLB 	0H 			//02A0 	1020
		CLRF 	DH 			//02A1 	118D

		//;DualMixer.C: 120: TRISB = 0B11000000;
		LDWI 	C0H 			//02A2 	00C0
		MOVLB 	1H 			//02A3 	1021
		STR 	DH 			//02A4 	108D

		//;DualMixer.C: 121: PORTC = 0B00000000;
		MOVLB 	0H 			//02A5 	1020
		CLRF 	EH 			//02A6 	118E

		//;DualMixer.C: 122: TRISC = 0B00000000;
		MOVLB 	1H 			//02A7 	1021
		CLRF 	EH 			//02A8 	118E

		//;DualMixer.C: 124: WPUA = 0B00010011;
		LDWI 	13H 			//02A9 	0013
		MOVLB 	3H 			//02AA 	1023
		STR 	CH 			//02AB 	108C

		//;DualMixer.C: 125: WPUB = 0B00000000;
		CLRF 	DH 			//02AC 	118D

		//;DualMixer.C: 126: WPUC = 0B00000000;
		CLRF 	EH 			//02AD 	118E

		//;DualMixer.C: 128: WPDA = 0B10000000;
		LDWI 	80H 			//02AE 	0080
		MOVLB 	4H 			//02AF 	1024
		STR 	CH 			//02B0 	108C

		//;DualMixer.C: 129: WPDB = 0B00000000;
		CLRF 	DH 			//02B1 	118D

		//;DualMixer.C: 130: WPDC = 0B00000000;
		CLRF 	EH 			//02B2 	118E

		//;DualMixer.C: 132: PSRC0 = 0B11111111;
		LDWI 	FFH 			//02B3 	00FF
		MOVLB 	2H 			//02B4 	1022
		STR 	1AH 			//02B5 	109A

		//;DualMixer.C: 133: PSRC1 = 0B11111111;
		LDWI 	FFH 			//02B6 	00FF
		STR 	1BH 			//02B7 	109B

		//;DualMixer.C: 134: PSRC2 = 0B11111111;
		LDWI 	FFH 			//02B8 	00FF
		STR 	1CH 			//02B9 	109C

		//;DualMixer.C: 136: PSINK0 = 0B11111111;
		LDWI 	FFH 			//02BA 	00FF
		MOVLB 	3H 			//02BB 	1023
		STR 	1AH 			//02BC 	109A

		//;DualMixer.C: 137: PSINK1 = 0B11111111;
		LDWI 	FFH 			//02BD 	00FF
		STR 	1BH 			//02BE 	109B

		//;DualMixer.C: 138: PSINK2 = 0B11111111;
		LDWI 	FFH 			//02BF 	00FF
		STR 	1CH 			//02C0 	109C

		//;DualMixer.C: 140: ANSELA = 0B00000000;
		CLRF 	17H 			//02C1 	1197
		RET 					//02C2 	1008
		STR 	72H 			//02C3 	10F2

		//;DualMixer.C: 207: if (txCounter == 0 && TXEF)
		LDR 	7CH, 0H 			//02C4 	187C
		BTSS 	3H, 2H 			//02C5 	2D03
		LJUMP 	2C8H 			//02C6 	3AC8
		LJUMP 	2C9H 			//02C7 	3AC9
		LJUMP 	2D2H 			//02C8 	3AD2
		MOVLB 	9H 			//02C9 	1029
		BTSS 	12H, 5H 		//02CA 	2E92
		LJUMP 	2CDH 			//02CB 	3ACD
		LJUMP 	2CEH 			//02CC 	3ACE
		LJUMP 	2D2H 			//02CD 	3AD2

		//;DualMixer.C: 208: {
		//;DualMixer.C: 209: TCF = 1;
		BSR 	1CH, 0H 			//02CE 	241C

		//;DualMixer.C: 210: URDATAL = data;
		LDR 	72H, 0H 			//02CF 	1872
		STR 	CH 			//02D0 	108C
		LJUMP 	2E4H 			//02D1 	3AE4

		//;DualMixer.C: 212: }
		//;DualMixer.C: 213: if (txCounter >= 64)
		LDWI 	40H 			//02D2 	0040
		SUBWR 	7CH, 0H 		//02D3 	127C
		BTSS 	3H, 0H 			//02D4 	2C03
		LJUMP 	2D7H 			//02D5 	3AD7
		LJUMP 	2D8H 			//02D6 	3AD8
		LJUMP 	2D9H 			//02D7 	3AD9
		LJUMP 	2E4H 			//02D8 	3AE4

		//;DualMixer.C: 216: }
		//;DualMixer.C: 217: toSend[txIndexIp] = data;
		MOVLB 	0H 			//02D9 	1020
		LDR 	41H, 0H 			//02DA 	1841
		ADDWI 	A0H 			//02DB 	0EA0
		STR 	6H 			//02DC 	1086
		CLRF 	7H 			//02DD 	1187
		LDR 	72H, 0H 			//02DE 	1872
		STR 	1H 			//02DF 	1081

		//;DualMixer.C: 218: txIndexIp = (txIndexIp + 1) & (64 - 1);
		INCR 	41H, 1H 		//02E0 	1AC1
		LDWI 	3FH 			//02E1 	003F
		ANDWR 	41H, 1H 		//02E2 	15C1

		//;DualMixer.C: 219: txCounter++;
		INCR 	7CH, 1H 		//02E3 	1AFC
		RET 					//02E4 	1008

		//;RFFC2071A.c: 58: (PB2 = 0);
		MOVLB 	0H 			//02E5 	1020
		BCR 	DH, 2H 			//02E6 	210D

		//;RFFC2071A.c: 59: (PA1 = 0);
		BCR 	CH, 1H 			//02E7 	208C

		//;RFFC2071A.c: 60: delay_us(100);
		LDWI 	64H 			//02E8 	0064
		STR 	72H 			//02E9 	10F2
		CLRF 	73H 			//02EA 	11F3
		MOVLP 	3H 			//02EB 	0183
		LCALL 	343H 			//02EC 	3343
		MOVLP 	2H 			//02ED 	0182

		//;RFFC2071A.c: 61: (PA1 = 1);
		MOVLB 	0H 			//02EE 	1020
		BSR 	CH, 1H 			//02EF 	248C

		//;RFFC2071A.c: 62: delay_us(100);
		LDWI 	64H 			//02F0 	0064
		STR 	72H 			//02F1 	10F2
		CLRF 	73H 			//02F2 	11F3
		MOVLP 	3H 			//02F3 	0183
		LCALL 	343H 			//02F4 	3343
		MOVLP 	2H 			//02F5 	0182

		//;RFFC2071A.c: 63: (PB2 = 1);
		MOVLB 	0H 			//02F6 	1020
		BSR 	DH, 2H 			//02F7 	250D

		//;RFFC2071A.c: 64: delay_us(1000);
		LDWI 	E8H 			//02F8 	00E8
		STR 	72H 			//02F9 	10F2
		LDWI 	3H 			//02FA 	0003
		STR 	73H 			//02FB 	10F3
		MOVLP 	3H 			//02FC 	0183
		LCALL 	343H 			//02FD 	3343
		MOVLP 	2H 			//02FE 	0182
		RET 					//02FF 	1008
		STR 	74H 			//0300 	10F4

		//;DualMixer.C: 164: unsigned char a, b;
		//;DualMixer.C: 165: for (a = 0; a < Time; a++)
		CLRF 	75H 			//0301 	11F5
		LJUMP 	310H 			//0302 	3B10

		//;DualMixer.C: 166: {
		//;DualMixer.C: 167: for (b = 0; b < 5; b++)
		CLRF 	76H 			//0303 	11F6

		//;DualMixer.C: 168: {
		//;DualMixer.C: 169: DelayUs(197);
		LDWI 	C5H 			//0304 	00C5
		MOVLP 	3H 			//0305 	0183
		LCALL 	39AH 			//0306 	339A
		MOVLP 	3H 			//0307 	0183
		INCR 	76H, 1H 		//0308 	1AF6
		LDWI 	5H 			//0309 	0005
		SUBWR 	76H, 0H 		//030A 	1276
		BTSS 	3H, 0H 			//030B 	2C03
		LJUMP 	30EH 			//030C 	3B0E
		LJUMP 	30FH 			//030D 	3B0F
		LJUMP 	304H 			//030E 	3B04
		INCR 	75H, 1H 		//030F 	1AF5
		LDR 	74H, 0H 			//0310 	1874
		SUBWR 	75H, 0H 		//0311 	1275
		BTSS 	3H, 0H 			//0312 	2C03
		LJUMP 	315H 			//0313 	3B15
		LJUMP 	316H 			//0314 	3B16
		LJUMP 	303H 			//0315 	3B03
		RET 					//0316 	1008
		RETW 	30H 			//0317 	0430
		RETW 	31H 			//0318 	0431
		RETW 	32H 			//0319 	0432
		RETW 	33H 			//031A 	0433
		RETW 	34H 			//031B 	0434
		RETW 	35H 			//031C 	0435
		RETW 	36H 			//031D 	0436
		RETW 	37H 			//031E 	0437
		RETW 	38H 			//031F 	0438
		RETW 	39H 			//0320 	0439
		RETW 	41H 			//0321 	0441
		RETW 	42H 			//0322 	0442
		RETW 	43H 			//0323 	0443
		RETW 	44H 			//0324 	0444
		RETW 	45H 			//0325 	0445
		RETW 	46H 			//0326 	0446
		RETW 	0H 			//0327 	0400
		RETW 	5DH 			//0328 	045D
		RETW 	3DH 			//0329 	043D
		RETW 	30H 			//032A 	0430
		RETW 	78H 			//032B 	0478
		RETW 	0H 			//032C 	0400

		//;DualMixer.C: 230: while (*str)
		LJUMP 	339H 			//032D 	3B39

		//;DualMixer.C: 231: {
		//;DualMixer.C: 232: SendByteToUART(*str);
		LDR 	73H, 0H 			//032E 	1873
		STR 	4H 			//032F 	1084
		LDR 	74H, 0H 			//0330 	1874
		STR 	5H 			//0331 	1085
		LDR 	0H, 0H 			//0332 	1800
		MOVLP 	2H 			//0333 	0182
		LCALL 	2C3H 			//0334 	32C3
		MOVLP 	3H 			//0335 	0183

		//;DualMixer.C: 233: str++;
		INCR 	73H, 1H 		//0336 	1AF3
		BTSC 	3H, 2H 			//0337 	2903
		INCR 	74H, 1H 		//0338 	1AF4
		LDR 	73H, 0H 			//0339 	1873
		STR 	4H 			//033A 	1084
		LDR 	74H, 0H 			//033B 	1874
		STR 	5H 			//033C 	1085
		MOVIW 	FSR0++ 		//033D 	1012
		BTSS 	3H, 2H 			//033E 	2D03
		LJUMP 	341H 			//033F 	3B41
		LJUMP 	342H 			//0340 	3B42
		LJUMP 	32EH 			//0341 	3B2E
		RET 					//0342 	1008

		//;RFFC2071A.c: 25: while (us--) {
		LJUMP 	34CH 			//0343 	3B4C

		//;RFFC2071A.c: 26: __nop(); __nop(); __nop(); __nop();
		NOP 					//0344 	1000
		NOP 					//0345 	1000
		NOP 					//0346 	1000
		NOP 					//0347 	1000

		//;RFFC2071A.c: 27: __nop(); __nop(); __nop(); __nop();
		NOP 					//0348 	1000
		NOP 					//0349 	1000
		NOP 					//034A 	1000
		NOP 					//034B 	1000
		LDWI 	1H 			//034C 	0001
		SUBWR 	72H, 1H 		//034D 	12F2
		LDWI 	0H 			//034E 	0000
		SUBWFB 	73H, 1H 		//034F 	0BF3
		INCR 	72H, 0H 		//0350 	1A72
		BTSS 	3H, 2H 			//0351 	2D03
		LJUMP 	357H 			//0352 	3B57
		INCR 	73H, 0H 		//0353 	1A73
		BTSS 	3H, 2H 			//0354 	2D03
		LJUMP 	357H 			//0355 	3B57
		LJUMP 	358H 			//0356 	3B58
		LJUMP 	344H 			//0357 	3B44
		RET 					//0358 	1008

		//;RFFC2071A.c: 37: (PA0 = 1);
		MOVLB 	0H 			//0359 	1020
		BSR 	CH, 0H 			//035A 	240C

		//;RFFC2071A.c: 38: (PB0 = 0);
		BCR 	DH, 0H 			//035B 	200D

		//;RFFC2071A.c: 39: (PB1 = 0);
		BCR 	DH, 1H 			//035C 	208D

		//;RFFC2071A.c: 40: (PB2 = 0);
		BCR 	DH, 2H 			//035D 	210D

		//;RFFC2071A.c: 41: (PA1 = 1);
		BSR 	CH, 1H 			//035E 	248C

		//;RFFC2071A.c: 42: (PA4 = 0);
		BCR 	CH, 4H 			//035F 	220C

		//;RFFC2071A.c: 44: delay_us(100);
		LDWI 	64H 			//0360 	0064
		STR 	72H 			//0361 	10F2
		CLRF 	73H 			//0362 	11F3
		MOVLP 	3H 			//0363 	0183
		LCALL 	343H 			//0364 	3343
		MOVLP 	3H 			//0365 	0183

		//;RFFC2071A.c: 47: RFFC2071A_Reset();
		MOVLP 	2H 			//0366 	0182
		LCALL 	2E5H 			//0367 	32E5
		MOVLP 	3H 			//0368 	0183

		//;RFFC2071A.c: 50: RFFC2071A_DefaultConfig();
		MOVLP 	0H 			//0369 	0180
		LCALL 	6BH 			//036A 	306B
		MOVLP 	3H 			//036B 	0183
		RET 					//036C 	1008

		//;RFFC2071A.c: 72: (PB0 = 1);
		MOVLB 	0H 			//036D 	1020
		BSR 	DH, 0H 			//036E 	240D

		//;RFFC2071A.c: 73: delay_us(1);
		CLRF 	72H 			//036F 	11F2
		INCR 	72H, 1H 		//0370 	1AF2
		CLRF 	73H 			//0371 	11F3
		MOVLP 	3H 			//0372 	0183
		LCALL 	343H 			//0373 	3343
		MOVLP 	3H 			//0374 	0183

		//;RFFC2071A.c: 74: (PB0 = 0);
		MOVLB 	0H 			//0375 	1020
		BCR 	DH, 0H 			//0376 	200D

		//;RFFC2071A.c: 75: delay_us(1);
		CLRF 	72H 			//0377 	11F2
		INCR 	72H, 1H 		//0378 	1AF2
		CLRF 	73H 			//0379 	11F3
		MOVLP 	3H 			//037A 	0183
		LCALL 	343H 			//037B 	3343
		MOVLP 	3H 			//037C 	0183
		RET 					//037D 	1008

		//;DualMixer.C: 183: PCKEN |= 0B00100000;
		MOVLB 	1H 			//037E 	1021
		BSR 	1AH, 5H 			//037F 	269A

		//;DualMixer.C: 185: URIER = 0B00100001;
		LDWI 	21H 			//0380 	0021
		MOVLB 	9H 			//0381 	1029
		STR 	EH 			//0382 	108E

		//;DualMixer.C: 186: URLCR = 0B00000001;
		LDWI 	1H 			//0383 	0001
		STR 	FH 			//0384 	108F

		//;DualMixer.C: 187: URMCR = 0B00011000;
		LDWI 	18H 			//0385 	0018
		STR 	11H 			//0386 	1091

		//;DualMixer.C: 189: URDLL = 104;
		LDWI 	68H 			//0387 	0068
		STR 	14H 			//0388 	1094

		//;DualMixer.C: 190: URDLH = 0;
		CLRF 	15H 			//0389 	1195

		//;DualMixer.C: 191: TCF = 1;
		BSR 	1CH, 0H 			//038A 	241C

		//;DualMixer.C: 192: INTCON = 0B11000000;
		LDWI 	C0H 			//038B 	00C0
		STR 	BH 			//038C 	108B
		RET 					//038D 	1008
		STR 	72H 			//038E 	10F2

		//;DualMixer.C: 264: return hex_chars[(val >> 4) & 0x0F];
		SWAPR 	72H, 0H 		//038F 	1E72
		ANDWI 	FH 			//0390 	090F
		ANDWI 	FH 			//0391 	090F
		ADDWI 	17H 			//0392 	0E17
		STR 	4H 			//0393 	1084
		LDWI 	83H 			//0394 	0083
		BTSC 	3H, 0H 			//0395 	2803
		ADDWI 	1H 			//0396 	0E01
		STR 	5H 			//0397 	1085
		LDR 	0H, 0H 			//0398 	1800
		RET 					//0399 	1008
		STR 	72H 			//039A 	10F2

		//;DualMixer.C: 150: unsigned char a;
		//;DualMixer.C: 151: for (a = 0; a < Time; a++)
		CLRF 	73H 			//039B 	11F3
		LJUMP 	39FH 			//039C 	3B9F

		//;DualMixer.C: 152: {
		//;DualMixer.C: 153: __nop();
		NOP 					//039D 	1000
		INCR 	73H, 1H 		//039E 	1AF3
		LDR 	72H, 0H 			//039F 	1872
		SUBWR 	73H, 0H 		//03A0 	1273
		BTSS 	3H, 0H 			//03A1 	2C03
		LJUMP 	3A4H 			//03A2 	3BA4
		LJUMP 	3A5H 			//03A3 	3BA5
		LJUMP 	39DH 			//03A4 	3B9D
		RET 					//03A5 	1008
		STR 	72H 			//03A6 	10F2

		//;DualMixer.C: 274: return hex_chars[val & 0x0F];
		LDR 	72H, 0H 			//03A7 	1872
		ANDWI 	FH 			//03A8 	090F
		ADDWI 	17H 			//03A9 	0E17
		STR 	4H 			//03AA 	1084
		LDWI 	83H 			//03AB 	0083
		BTSC 	3H, 0H 			//03AC 	2803
		ADDWI 	1H 			//03AD 	0E01
		STR 	5H 			//03AE 	1085
		LDR 	0H, 0H 			//03AF 	1800
		RET 					//03B0 	1008

		//;RFFC2071A.c: 367: (PB2 = 1);
		MOVLB 	0H 			//03B1 	1020
		BSR 	DH, 2H 			//03B2 	250D

		//;RFFC2071A.c: 368: delay_us(1000);
		LDWI 	E8H 			//03B3 	00E8
		STR 	72H 			//03B4 	10F2
		LDWI 	3H 			//03B5 	0003
		STR 	73H 			//03B6 	10F3
		MOVLP 	3H 			//03B7 	0183
		LCALL 	343H 			//03B8 	3343
		MOVLP 	3H 			//03B9 	0183
		RET 					//03BA 	1008
		CLRWDT 			//03BB 	1064
		CLRF 	0H 			//03BC 	1180
		ADDFSR 	0H, 1H 		//03BD 	0101
		DECRSZ 	9H, 1H 		//03BE 	1B89
		LJUMP 	3BCH 			//03BF 	3BBC
		RETW 	0H 			//03C0 	0400
		RETW 	DH 			//03C1 	040D
		RETW 	AH 			//03C2 	040A
		RETW 	0H 			//03C3 	0400
		RETW 	52H 			//03C4 	0452
		RETW 	5BH 			//03C5 	045B
		RETW 	0H 			//03C6 	0400
		RET 					//03C7 	1008
			END
