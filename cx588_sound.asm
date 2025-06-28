//Deviec:FT60E21X
//-----------------------Variable---------------------------------
		_PA0		EQU		05H
		_PA2		EQU		05H
		_PA4		EQU		05H
		_PAIF		EQU		0BH
		_PAIE		EQU		0BH
		_PEIE		EQU		0BH
		_GIE		EQU		0BH
		_TMR2IF		EQU		0CH
		_EEIF		EQU		0CH
		_TMR2ON		EQU		12H
		_TRISA2		EQU		85H
		_TMR2IE		EQU		8CH
		_IOCA2		EQU		96H
		_RD		EQU		9CH
		_WR		EQU		9DH
		_randx		EQU		4BH
		_Seed_Val		EQU		78H
		_TIME_OUT		EQU		4FH
		_SW1_state		EQU		51H
		_SW1_vibrate		EQU		7AH
//		srand@x		EQU		73H
//		EEPROMwrite@EEAddr		EQU		74H
//		EEPROMwrite@EEAddr		EQU		74H
//		EEPROMwrite@Data		EQU		73H
//		EEPROMwrite@EEAddr		EQU		74H
//		Play_Sound@val		EQU		4AH
//		Play_Sound@val		EQU		4AH
//		Play_Sound@val		EQU		4AH
//		___lmul@product		EQU		73H
//		___lmul@multiplier		EQU		40H
//		___lmul@multiplicand		EQU		44H
//		CX588_Play_Sound@Sound_Code		EQU		43H
//		CX588_Play_Sound@Sound_Code		EQU		43H
//		CX588_Play_Sound@Sound_Code		EQU		43H
//		EEPROMread@EEAddr		EQU		73H
//		EEPROMread@ReEEPROMread		EQU		74H
//		EEPROMread@EEAddr		EQU		73H
//		EEPROMread@EEAddr		EQU		73H
//		CX588_SET_Sound_Size@Sound_Code		EQU		43H
//		CX588_SET_Sound_Size@Sound_Code		EQU		43H
//		CX588_SET_Sound_Size@Sound_Code		EQU		43H
//		CX588_OneWire_WriteByte@byte_byte		EQU		41H
//		CX588_OneWire_WriteByte@i		EQU		42H
//		CX588_OneWire_WriteByte@byte_byte		EQU		41H
//		CX588_OneWire_WriteByte@byte_byte		EQU		41H
//		CX588_OneWire_WriteBit@bit_bit		EQU		40H
//		CX588_OneWire_WriteBit@bit_bit		EQU		40H
//		CX588_OneWire_WriteBit@bit_bit		EQU		40H
//		DelayMs@Time		EQU		75H
//		DelayMs@b		EQU		77H
//		DelayMs@a		EQU		76H
//		DelayMs@Time		EQU		75H
//		DelayMs@Time		EQU		75H
//		DelayUs@Time		EQU		73H
//		DelayUs@a		EQU		74H
//		DelayUs@Time		EQU		73H
//		DelayUs@Time		EQU		73H
//-----------------------Variable END---------------------------------

		LJUMP 	0DH 			//0000 	380D
		ORG		0004H
		STR 	7EH 			//0004 	01FE
		SWAPR 	STATUS,0 		//0005 	0703
		STR 	70H 			//0006 	01F0
		LDR 	PCLATH,0 		//0007 	080A
		STR 	71H 			//0008 	01F1
		BCR 	STATUS,5 		//0009 	1283
		LDR 	7FH,0 			//000A 	087F
		STR 	72H 			//000B 	01F2
		LJUMP 	AFH 			//000C 	38AF
		LJUMP 	0EH 			//000D 	380E
		LDWI 	1H 			//000E 	2A01
		STR 	4BH 			//000F 	01CB
		CLRR 	4CH 			//0010 	014C
		CLRR 	4DH 			//0011 	014D
		CLRR 	4EH 			//0012 	014E
		CLRR 	4FH 			//0013 	014F
		CLRR 	50H 			//0014 	0150
		CLRR 	51H 			//0015 	0151
		CLRR 	78H 			//0016 	0178
		CLRR 	79H 			//0017 	0179
		CLRR 	7AH 			//0018 	017A
		CLRR 	STATUS 			//0019 	0103
		LJUMP 	13EH 			//001A 	393E
		STR 	4AH 			//001B 	01CA

		//;CX588_SOUND.C: 58: if(SW1_state != PA2)
		LDWI 	0H 			//001C 	2A00
		BTSC 	5H,2 			//001D 	1505
		LDWI 	1H 			//001E 	2A01
		XORWR 	51H,0 			//001F 	0451
		BTSC 	STATUS,2 		//0020 	1503
		LJUMP 	33H 			//0021 	3833

		//;CX588_SOUND.C: 59: {
		//;CX588_SOUND.C: 60: SW1_state = PA2;
		LDWI 	0H 			//0022 	2A00
		BTSC 	5H,2 			//0023 	1505
		LDWI 	1H 			//0024 	2A01
		STR 	51H 			//0025 	01D1

		//;CX588_SOUND.C: 61: if((*val) < 0xff)
		LDR 	4AH,0 			//0026 	084A
		STR 	FSR 			//0027 	0184
		INCR	INDF,0 			//0028 	0900
		BTSC 	STATUS,2 		//0029 	1503
		LJUMP 	2FH 			//002A 	382F

		//;CX588_SOUND.C: 62: (*val)++;
		LDR 	4AH,0 			//002B 	084A
		STR 	FSR 			//002C 	0184
		INCR	INDF,1 			//002D 	0980
		LJUMP 	33H 			//002E 	3833

		//;CX588_SOUND.C: 63: else
		//;CX588_SOUND.C: 64: (*val) = 0xff;
		LDR 	4AH,0 			//002F 	084A
		STR 	FSR 			//0030 	0184
		LDWI 	FFH 			//0031 	2AFF
		STR 	INDF 			//0032 	0180

		//;CX588_SOUND.C: 66: }
		//;CX588_SOUND.C: 68: if((*val) >= 10)
		LDR 	4AH,0 			//0033 	084A
		STR 	FSR 			//0034 	0184
		LDWI 	AH 			//0035 	2A0A
		SUBWR 	INDF,0 		//0036 	0C00
		BTSS 	STATUS,0 		//0037 	1C03
		RET		 					//0038 	0004

		//;CX588_SOUND.C: 69: {
		//;CX588_SOUND.C: 70: if(CX588_Get_Busy_State())
		LCALL 	1BCH 			//0039 	31BC
		XORWI 	0H 			//003A 	2600
		BTSC 	STATUS,2 		//003B 	1503
		LJUMP 	4AH 			//003C 	384A

		//;CX588_SOUND.C: 71: {
		//;CX588_SOUND.C: 72: CX588_Play_Sound((rand()%8)+1);
		LCALL 	82H 			//003D 	3082
		LDR 	48H,0 			//003E 	0848
		ANDWI 	7H 			//003F 	2407
		ADDWI 	1H 			//0040 	2701
		LCALL 	180H 			//0041 	3180

		//;CX588_SOUND.C: 73: Seed_Val++;
		INCR	78H,1 			//0042 	09F8
		BTSC 	STATUS,2 		//0043 	1503
		INCR	79H,1 			//0044 	09F9

		//;CX588_SOUND.C: 74: (*val) = 0;
		BCR 	STATUS,5 		//0045 	1283
		LDR 	4AH,0 			//0046 	084A
		STR 	FSR 			//0047 	0184
		CLRR 	INDF 			//0048 	0100

		//;CX588_SOUND.C: 75: }
		RET		 					//0049 	0004

		//;CX588_SOUND.C: 76: else
		//;CX588_SOUND.C: 77: (*val) = 10;
		LDR 	4AH,0 			//004A 	084A
		STR 	FSR 			//004B 	0184
		LDWI 	AH 			//004C 	2A0A
		STR 	INDF 			//004D 	0180
		RET		 					//004E 	0004
		CLRR 	73H 			//004F 	0173
		CLRR 	74H 			//0050 	0174
		CLRR 	75H 			//0051 	0175
		CLRR 	76H 			//0052 	0176
		BTSS 	40H,0 			//0053 	1C40
		LJUMP 	69H 			//0054 	3869
		LDR 	44H,0 			//0055 	0844
		ADDWR 	73H,1 			//0056 	0BF3
		LDR 	45H,0 			//0057 	0845
		BCR 	STATUS,2 		//0058 	1103
		BTSC 	STATUS,0 		//0059 	1403
		ADDWI 	1H 			//005A 	2701
		BTSS 	STATUS,2 		//005B 	1D03
		ADDWR 	74H,1 			//005C 	0BF4
		LDR 	46H,0 			//005D 	0846
		BCR 	STATUS,2 		//005E 	1103
		BTSC 	STATUS,0 		//005F 	1403
		ADDWI 	1H 			//0060 	2701
		BTSS 	STATUS,2 		//0061 	1D03
		ADDWR 	75H,1 			//0062 	0BF5
		LDR 	47H,0 			//0063 	0847
		BCR 	STATUS,2 		//0064 	1103
		BTSC 	STATUS,0 		//0065 	1403
		ADDWI 	1H 			//0066 	2701
		BTSS 	STATUS,2 		//0067 	1D03
		ADDWR 	76H,1 			//0068 	0BF6
		BCR 	STATUS,0 		//0069 	1003
		RLR 	44H,1 			//006A 	05C4
		RLR 	45H,1 			//006B 	05C5
		RLR 	46H,1 			//006C 	05C6
		RLR 	47H,1 			//006D 	05C7
		BCR 	STATUS,0 		//006E 	1003
		RRR	43H,1 			//006F 	06C3
		RRR	42H,1 			//0070 	06C2
		RRR	41H,1 			//0071 	06C1
		RRR	40H,1 			//0072 	06C0
		LDR 	43H,0 			//0073 	0843
		IORWR 	42H,0 			//0074 	0342
		IORWR 	41H,0 			//0075 	0341
		IORWR 	40H,0 			//0076 	0340
		BTSS 	STATUS,2 		//0077 	1D03
		LJUMP 	53H 			//0078 	3853
		LDR 	76H,0 			//0079 	0876
		STR 	43H 			//007A 	01C3
		LDR 	75H,0 			//007B 	0875
		STR 	42H 			//007C 	01C2
		LDR 	74H,0 			//007D 	0874
		STR 	41H 			//007E 	01C1
		LDR 	73H,0 			//007F 	0873
		STR 	40H 			//0080 	01C0
		RET		 					//0081 	0004
		LDWI 	41H 			//0082 	2A41
		STR 	43H 			//0083 	01C3
		LDWI 	C6H 			//0084 	2AC6
		STR 	42H 			//0085 	01C2
		LDWI 	4EH 			//0086 	2A4E
		STR 	41H 			//0087 	01C1
		LDWI 	6DH 			//0088 	2A6D
		STR 	40H 			//0089 	01C0
		LDR 	4EH,0 			//008A 	084E
		STR 	47H 			//008B 	01C7
		LDR 	4DH,0 			//008C 	084D
		STR 	46H 			//008D 	01C6
		LDR 	4CH,0 			//008E 	084C
		STR 	45H 			//008F 	01C5
		LDR 	4BH,0 			//0090 	084B
		STR 	44H 			//0091 	01C4
		LCALL 	4FH 			//0092 	304F
		LDR 	43H,0 			//0093 	0843
		STR 	4EH 			//0094 	01CE
		LDR 	42H,0 			//0095 	0842
		STR 	4DH 			//0096 	01CD
		LDR 	41H,0 			//0097 	0841
		STR 	4CH 			//0098 	01CC
		LDR 	40H,0 			//0099 	0840
		STR 	4BH 			//009A 	01CB
		LDWI 	39H 			//009B 	2A39
		ADDWR 	4BH,1 			//009C 	0BCB
		LDWI 	30H 			//009D 	2A30
		BTSC 	STATUS,0 		//009E 	1403
		LDWI 	31H 			//009F 	2A31
		ADDWR 	4CH,1 			//00A0 	0BCC
		LDWI 	0H 			//00A1 	2A00
		BTSC 	STATUS,0 		//00A2 	1403
		LDWI 	1H 			//00A3 	2A01
		ADDWR 	4DH,1 			//00A4 	0BCD
		LDWI 	0H 			//00A5 	2A00
		BTSC 	STATUS,0 		//00A6 	1403
		LDWI 	1H 			//00A7 	2A01
		ADDWR 	4EH,1 			//00A8 	0BCE
		LDR 	4EH,0 			//00A9 	084E
		STR 	49H 			//00AA 	01C9
		LDR 	4DH,0 			//00AB 	084D
		STR 	48H 			//00AC 	01C8
		BCR 	49H,7 			//00AD 	13C9
		RET		 					//00AE 	0004

		//;CX588_SOUND.C: 90: if(TMR2IE && TMR2IF)
		BSR 	STATUS,5 		//00AF 	1A83
		BTSS 	CH,1 			//00B0 	1C8C
		LJUMP 	C1H 			//00B1 	38C1
		BCR 	STATUS,5 		//00B2 	1283
		BTSS 	CH,1 			//00B3 	1C8C
		LJUMP 	C1H 			//00B4 	38C1

		//;CX588_SOUND.C: 91: {
		//;CX588_SOUND.C: 92: TMR2IF = 0;
		BCR 	CH,1 			//00B5 	108C

		//;CX588_SOUND.C: 94: if(TIME_OUT < 0xff)
		LCALL 	D5H 			//00B6 	30D5
		BTSS 	STATUS,2 		//00B7 	1D03
		LJUMP 	BBH 			//00B8 	38BB
		LDWI 	FFH 			//00B9 	2AFF
		SUBWR 	4FH,0 			//00BA 	0C4F
		BTSC 	STATUS,0 		//00BB 	1403
		LJUMP 	C1H 			//00BC 	38C1

		//;CX588_SOUND.C: 95: TIME_OUT++;
		BCR 	STATUS,5 		//00BD 	1283
		INCR	4FH,1 			//00BE 	09CF
		BTSC 	STATUS,2 		//00BF 	1503
		INCR	50H,1 			//00C0 	09D0

		//;CX588_SOUND.C: 96: }
		//;CX588_SOUND.C: 99: if(PAIE && PAIF)
		BTSC 	INTCON,3 		//00C1 	158B
		BTSS 	INTCON,0 		//00C2 	1C0B
		LJUMP 	CBH 			//00C3 	38CB

		//;CX588_SOUND.C: 100: {
		//;CX588_SOUND.C: 101: ReadAPin = PORTA;
		BCR 	STATUS,5 		//00C4 	1283
		LDR 	5H,0 			//00C5 	0805

		//;CX588_SOUND.C: 102: PAIF = 0;
		BCR 	INTCON,0 		//00C6 	100B

		//;CX588_SOUND.C: 103: PAIE = 0;
		BCR 	INTCON,3 		//00C7 	118B

		//;CX588_SOUND.C: 104: IOCA2 =0;
		BSR 	STATUS,5 		//00C8 	1A83
		BCR 	16H,2 			//00C9 	1116

		//;CX588_SOUND.C: 105: GIE = 1;
		BSR 	INTCON,7 		//00CA 	1B8B
		LDR 	72H,0 			//00CB 	0872
		BCR 	STATUS,5 		//00CC 	1283
		STR 	7FH 			//00CD 	01FF
		LDR 	71H,0 			//00CE 	0871
		STR 	PCLATH 			//00CF 	018A
		SWAPR 	70H,0 			//00D0 	0770
		STR 	STATUS 			//00D1 	0183
		SWAPR 	7EH,1 			//00D2 	07FE
		SWAPR 	7EH,0 			//00D3 	077E
		RETI		 			//00D4 	0009
		LDR 	50H,0 			//00D5 	0850
		XORWI 	80H 			//00D6 	2680
		STR 	7FH 			//00D7 	01FF
		LDWI 	80H 			//00D8 	2A80
		SUBWR 	7FH,0 			//00D9 	0C7F
		RET		 					//00DA 	0004

		//;CX588_SOUND.C: 23: if(CX588_Get_Busy_State())
		LCALL 	1BCH 			//00DB 	31BC
		XORWI 	0H 			//00DC 	2600
		BTSC 	STATUS,2 		//00DD 	1503
		LJUMP 	F5H 			//00DE 	38F5

		//;CX588_SOUND.C: 24: {
		//;CX588_SOUND.C: 25: TMR2IE = 1;
		BSR 	STATUS,5 		//00DF 	1A83
		BSR 	CH,1 			//00E0 	188C

		//;CX588_SOUND.C: 26: PEIE=1;
		BSR 	INTCON,6 		//00E1 	1B0B

		//;CX588_SOUND.C: 27: GIE = 1;
		BSR 	INTCON,7 		//00E2 	1B8B

		//;CX588_SOUND.C: 28: if(TIME_OUT > 3)
		BCR 	STATUS,5 		//00E3 	1283
		LCALL 	D5H 			//00E4 	30D5
		BTSS 	STATUS,2 		//00E5 	1D03
		LJUMP 	E9H 			//00E6 	38E9
		LDWI 	4H 			//00E7 	2A04
		SUBWR 	4FH,0 			//00E8 	0C4F
		BTSS 	STATUS,0 		//00E9 	1C03
		RET		 					//00EA 	0004

		//;CX588_SOUND.C: 29: {
		//;CX588_SOUND.C: 30: TIME_OUT = 0;
		BCR 	STATUS,5 		//00EB 	1283

		//;CX588_SOUND.C: 31: TMR2IE = 0;
		//;CX588_SOUND.C: 32: PEIE = 0;
		//;CX588_SOUND.C: 33: GIE = 0;
		LCALL 	F7H 			//00EC 	30F7

		//;CX588_SOUND.C: 34: EEPROMwrite(0x00,Seed_Val);
		LDR 	78H,0 			//00ED 	0878
		STR 	73H 			//00EE 	01F3
		LDWI 	0H 			//00EF 	2A00
		LCALL 	FEH 			//00F0 	30FE

		//;CX588_SOUND.C: 36: PA2_Level_Change_INITIAL();
		LCALL 	1B4H 			//00F1 	31B4
		SLEEP	 			//00F2 	0002

		//;CX588_SOUND.C: 38: __nop();
		NOP		 					//00F3 	0000
		RET		 					//00F4 	0004

		//;CX588_SOUND.C: 41: else
		//;CX588_SOUND.C: 42: {
		//;CX588_SOUND.C: 43: TIME_OUT = 0;
		//;CX588_SOUND.C: 44: TMR2IE = 0;
		//;CX588_SOUND.C: 45: PEIE = 0;
		//;CX588_SOUND.C: 46: GIE = 0;
		LCALL 	F7H 			//00F5 	30F7
		RET		 					//00F6 	0004
		CLRR 	4FH 			//00F7 	014F
		CLRR 	50H 			//00F8 	0150
		BSR 	STATUS,5 		//00F9 	1A83
		BCR 	CH,1 			//00FA 	108C
		BCR 	INTCON,6 		//00FB 	130B
		BCR 	INTCON,7 		//00FC 	138B
		RET		 					//00FD 	0004
		STR 	74H 			//00FE 	01F4

		//;CX588_SOUND.C: 137: GIE = 0;
		BCR 	INTCON,7 		//00FF 	138B

		//;CX588_SOUND.C: 138: while(GIE);
		BTSC 	INTCON,7 		//0100 	178B
		LJUMP 	100H 			//0101 	3900

		//;CX588_SOUND.C: 139: EEADR = EEAddr;
		LDR 	74H,0 			//0102 	0874
		STR 	1BH 			//0103 	019B

		//;CX588_SOUND.C: 140: EEDAT = Data;
		LDR 	73H,0 			//0104 	0873
		STR 	1AH 			//0105 	019A

		//;CX588_SOUND.C: 141: EEIF = 0;
		BCR 	STATUS,5 		//0106 	1283
		BCR 	CH,7 			//0107 	138C

		//;CX588_SOUND.C: 142: EECON1 |= 0x34;
		LDWI 	34H 			//0108 	2A34
		BSR 	STATUS,5 		//0109 	1A83
		IORWR 	1CH,1 			//010A 	039C

		//;CX588_SOUND.C: 143: WR = 1;
		BSR 	1DH,0 			//010B 	181D

		//;CX588_SOUND.C: 144: __nop();
		NOP		 					//010C 	0000

		//;CX588_SOUND.C: 145: __nop();
		NOP		 					//010D 	0000

		//;CX588_SOUND.C: 146: __nop();
		NOP		 					//010E 	0000

		//;CX588_SOUND.C: 147: __nop();
		NOP		 					//010F 	0000

		//;CX588_SOUND.C: 148: while(WR);
		BSR 	STATUS,5 		//0110 	1A83
		BTSC 	1DH,0 			//0111 	141D
		LJUMP 	110H 			//0112 	3910

		//;CX588_SOUND.C: 149: GIE = 1;
		BSR 	INTCON,7 		//0113 	1B8B
		RET		 					//0114 	0004
		STR 	40H 			//0115 	01C0

		//;CX588.c: 57: if (bit_bit)
		LDR 	40H,0 			//0116 	0840
		BTSC 	STATUS,2 		//0117 	1503
		LJUMP 	122H 			//0118 	3922

		//;CX588.c: 58: {
		//;CX588.c: 59: PA4 = 1;
		BSR 	5H,4 			//0119 	1A05

		//;CX588.c: 60: DelayMs(1);
		LDWI 	1H 			//011A 	2A01
		LCALL 	162H 			//011B 	3162

		//;CX588.c: 61: DelayUs(100);
		LDWI 	64H 			//011C 	2A64
		LCALL 	1A3H 			//011D 	31A3

		//;CX588.c: 62: PA4 = 0;
		BCR 	STATUS,5 		//011E 	1283
		BCR 	5H,4 			//011F 	1205

		//;CX588.c: 63: DelayUs(200);
		LDWI 	C8H 			//0120 	2AC8
		LJUMP 	1A3H 			//0121 	39A3

		//;CX588.c: 64: }
		//;CX588.c: 65: else
		//;CX588.c: 66: {
		//;CX588.c: 67: PA4 = 1;
		BSR 	5H,4 			//0122 	1A05

		//;CX588.c: 68: DelayUs(200);
		LDWI 	C8H 			//0123 	2AC8
		LCALL 	1A3H 			//0124 	31A3

		//;CX588.c: 69: PA4 = 0;
		BCR 	STATUS,5 		//0125 	1283
		BCR 	5H,4 			//0126 	1205

		//;CX588.c: 70: DelayMs(1);
		LDWI 	1H 			//0127 	2A01
		LCALL 	162H 			//0128 	3162

		//;CX588.c: 71: DelayUs(100);
		LDWI 	64H 			//0129 	2A64
		LJUMP 	1A3H 			//012A 	39A3
		STR 	41H 			//012B 	01C1

		//;CX588.c: 78: PA4 = 0;
		BCR 	5H,4 			//012C 	1205

		//;CX588.c: 79: DelayMs(6);
		LDWI 	6H 			//012D 	2A06
		LCALL 	162H 			//012E 	3162

		//;CX588.c: 81: for (unsigned char i = 0; i < 8; i++)
		BCR 	STATUS,5 		//012F 	1283
		CLRR 	42H 			//0130 	0142

		//;CX588.c: 82: {
		//;CX588.c: 83: CX588_OneWire_WriteBit(byte_byte & 0x01);
		LDR 	41H,0 			//0131 	0841
		ANDWI 	1H 			//0132 	2401
		LCALL 	115H 			//0133 	3115
		LDWI 	8H 			//0134 	2A08

		//;CX588.c: 84: byte_byte >>= 1;
		BCR 	STATUS,5 		//0135 	1283
		BCR 	STATUS,0 		//0136 	1003
		RRR	41H,1 			//0137 	06C1
		INCR	42H,1 			//0138 	09C2
		SUBWR 	42H,0 			//0139 	0C42
		BTSS 	STATUS,0 		//013A 	1C03
		LJUMP 	131H 			//013B 	3931

		//;CX588.c: 85: }
		//;CX588.c: 86: PA4 = 1;
		BSR 	5H,4 			//013C 	1A05
		RET		 					//013D 	0004

		//;CX588_SOUND.C: 215: POWER_INITIAL();
		LCALL 	172H 			//013E 	3172

		//;CX588_SOUND.C: 216: TIMER2_INITIAL();
		LCALL 	150H 			//013F 	3150

		//;CX588_SOUND.C: 217: CX588_GPIO_Init();
		LCALL 	199H 			//0140 	3199

		//;CX588_SOUND.C: 218: CX588_SET_Sound_Size(SoundLeve_15);
		LDWI 	EFH 			//0141 	2AEF
		LCALL 	1BFH 			//0142 	31BF

		//;CX588_SOUND.C: 219: Seed_Val = EEPROMread(0x00);
		LDWI 	0H 			//0143 	2A00
		LCALL 	18DH 			//0144 	318D
		STR 	78H 			//0145 	01F8
		CLRR 	79H 			//0146 	0179

		//;CX588_SOUND.C: 220: srand(Seed_Val);
		LDR 	79H,0 			//0147 	0879
		STR 	74H 			//0148 	01F4
		LDR 	78H,0 			//0149 	0878
		STR 	73H 			//014A 	01F3
		LCALL 	1ACH 			//014B 	31AC

		//;CX588_SOUND.C: 223: {
		//;CX588_SOUND.C: 224: Play_Sound(&SW1_vibrate);
		LDWI 	7AH 			//014C 	2A7A
		LCALL 	1BH 			//014D 	301B

		//;CX588_SOUND.C: 225: TIME_OUT_Enter_Sleep();
		LCALL 	DBH 			//014E 	30DB
		LJUMP 	147H 			//014F 	3947

		//;CX588_SOUND.C: 175: T2CON0 = 0B01001011;
		LDWI 	4BH 			//0150 	2A4B
		BCR 	STATUS,5 		//0151 	1283
		STR 	12H 			//0152 	0192

		//;CX588_SOUND.C: 179: T2CON1 = 0B00001000;
		LDWI 	8H 			//0153 	2A08
		BSR 	STATUS,5 		//0154 	1A83
		STR 	1EH 			//0155 	019E

		//;CX588_SOUND.C: 180: TMR2H = 0;
		BCR 	STATUS,5 		//0156 	1283
		CLRR 	13H 			//0157 	0113

		//;CX588_SOUND.C: 181: TMR2L = 0;
		CLRR 	11H 			//0158 	0111

		//;CX588_SOUND.C: 182: PR2H = 100;
		LDWI 	64H 			//0159 	2A64
		BSR 	STATUS,5 		//015A 	1A83
		STR 	12H 			//015B 	0192

		//;CX588_SOUND.C: 183: PR2L = 250;
		LDWI 	FAH 			//015C 	2AFA
		STR 	11H 			//015D 	0191

		//;CX588_SOUND.C: 185: TMR2IF = 0;
		BCR 	STATUS,5 		//015E 	1283
		BCR 	CH,1 			//015F 	108C

		//;CX588_SOUND.C: 186: TMR2ON = 1;
		BSR 	12H,2 			//0160 	1912
		RET		 					//0161 	0004
		STR 	75H 			//0162 	01F5

		//;CX588.c: 29: unsigned char a,b;
		//;CX588.c: 30: for(a=0;a<Time;a++)
		CLRR 	76H 			//0163 	0176
		LDR 	75H,0 			//0164 	0875
		SUBWR 	76H,0 			//0165 	0C76
		BTSC 	STATUS,0 		//0166 	1403
		RET		 					//0167 	0004

		//;CX588.c: 31: {
		//;CX588.c: 32: for(b=0;b<5;b++)
		CLRR 	77H 			//0168 	0177

		//;CX588.c: 33: {
		//;CX588.c: 34: DelayUs(98);
		LDWI 	62H 			//0169 	2A62
		LCALL 	1A3H 			//016A 	31A3
		LDWI 	5H 			//016B 	2A05
		INCR	77H,1 			//016C 	09F7
		SUBWR 	77H,0 			//016D 	0C77
		BTSS 	STATUS,0 		//016E 	1C03
		LJUMP 	169H 			//016F 	3969
		INCR	76H,1 			//0170 	09F6
		LJUMP 	164H 			//0171 	3964

		//;CX588_SOUND.C: 197: OSCCON = 0B01110001;
		LDWI 	71H 			//0172 	2A71
		BSR 	STATUS,5 		//0173 	1A83
		STR 	FH 			//0174 	018F

		//;CX588_SOUND.C: 198: INTCON = 0;
		CLRR 	INTCON 			//0175 	010B

		//;CX588_SOUND.C: 200: OPTION = 0;
		CLRR 	1H 			//0176 	0101

		//;CX588_SOUND.C: 201: TRISA = 0B00000100;
		LDWI 	4H 			//0177 	2A04
		STR 	5H 			//0178 	0185

		//;CX588_SOUND.C: 202: PSRCA = 0;
		CLRR 	8H 			//0179 	0108

		//;CX588_SOUND.C: 203: PSINKA = 0;
		CLRR 	17H 			//017A 	0117

		//;CX588_SOUND.C: 204: PORTA = 0B00000000;
		BCR 	STATUS,5 		//017B 	1283
		CLRR 	5H 			//017C 	0105

		//;CX588_SOUND.C: 205: WPUA = 0B00000000;
		BSR 	STATUS,5 		//017D 	1A83
		CLRR 	15H 			//017E 	0115
		RET		 					//017F 	0004
		STR 	43H 			//0180 	01C3

		//;CX588.c: 98: if (Sound_Code < 0xCF)
		LDWI 	CFH 			//0181 	2ACF
		SUBWR 	43H,0 			//0182 	0C43
		BTSC 	STATUS,0 		//0183 	1403
		RET		 					//0184 	0004

		//;CX588.c: 99: {
		//;CX588.c: 100: if(CX588_Get_Busy_State())
		LCALL 	1BCH 			//0185 	31BC
		XORWI 	0H 			//0186 	2600
		BTSC 	STATUS,2 		//0187 	1503
		RET		 					//0188 	0004

		//;CX588.c: 101: {
		//;CX588.c: 102: CX588_OneWire_WriteByte(Sound_Code);
		LDR 	43H,0 			//0189 	0843
		LCALL 	12BH 			//018A 	312B

		//;CX588.c: 103: DelayMs(20);
		LDWI 	14H 			//018B 	2A14
		LJUMP 	162H 			//018C 	3962
		STR 	73H 			//018D 	01F3

		//;CX588_SOUND.C: 117: unsigned char ReEEPROMread;
		//;CX588_SOUND.C: 118: EEADR = EEAddr;
		BSR 	STATUS,5 		//018E 	1A83
		STR 	1BH 			//018F 	019B

		//;CX588_SOUND.C: 119: RD=1;
		BSR 	1CH,0 			//0190 	181C

		//;CX588_SOUND.C: 120: __nop();
		NOP		 					//0191 	0000

		//;CX588_SOUND.C: 121: __nop();
		NOP		 					//0192 	0000

		//;CX588_SOUND.C: 122: __nop();
		NOP		 					//0193 	0000

		//;CX588_SOUND.C: 123: __nop();
		NOP		 					//0194 	0000

		//;CX588_SOUND.C: 124: ReEEPROMread =EEDAT;
		BSR 	STATUS,5 		//0195 	1A83
		LDR 	1AH,0 			//0196 	081A
		STR 	74H 			//0197 	01F4

		//;CX588_SOUND.C: 125: return ReEEPROMread;
		RET		 					//0198 	0004

		//;CX588.c: 41: TRISA |= 0b00000001;
		BSR 	STATUS,5 		//0199 	1A83
		BSR 	5H,0 			//019A 	1805

		//;CX588.c: 42: PSRCA |= 0b00000000;
		LDR 	8H,0 			//019B 	0808

		//;CX588.c: 48: PSINKA |= 0b00000000;
		LDR 	17H,0 			//019C 	0817

		//;CX588.c: 49: PORTA |= 0b00010001;
		LDWI 	11H 			//019D 	2A11
		BCR 	STATUS,5 		//019E 	1283
		IORWR 	5H,1 			//019F 	0385

		//;CX588.c: 50: WPUA |= 0b00000001;
		BSR 	STATUS,5 		//01A0 	1A83
		BSR 	15H,0 			//01A1 	1815
		RET		 					//01A2 	0004
		STR 	73H 			//01A3 	01F3

		//;CX588.c: 14: unsigned char a;
		//;CX588.c: 15: for(a=0;a<Time;a++)
		CLRR 	74H 			//01A4 	0174
		LDR 	73H,0 			//01A5 	0873
		SUBWR 	74H,0 			//01A6 	0C74
		BTSC 	STATUS,0 		//01A7 	1403
		RET		 					//01A8 	0004

		//;CX588.c: 16: {
		//;CX588.c: 17: __nop();
		NOP		 					//01A9 	0000
		INCR	74H,1 			//01AA 	09F4
		LJUMP 	1A5H 			//01AB 	39A5
		LDR 	73H,0 			//01AC 	0873
		BCR 	STATUS,5 		//01AD 	1283
		STR 	4BH 			//01AE 	01CB
		LDR 	74H,0 			//01AF 	0874
		STR 	4CH 			//01B0 	01CC
		CLRR 	4DH 			//01B1 	014D
		CLRR 	4EH 			//01B2 	014E
		RET		 					//01B3 	0004

		//;CX588_SOUND.C: 160: TRISA2 = 1;
		BSR 	5H,2 			//01B4 	1905

		//;CX588_SOUND.C: 161: ReadAPin = PORTA;
		BCR 	STATUS,5 		//01B5 	1283
		LDR 	5H,0 			//01B6 	0805

		//;CX588_SOUND.C: 162: PAIF = 0;
		BCR 	INTCON,0 		//01B7 	100B

		//;CX588_SOUND.C: 163: IOCA2 = 1;
		BSR 	STATUS,5 		//01B8 	1A83
		BSR 	16H,2 			//01B9 	1916

		//;CX588_SOUND.C: 164: PAIE = 1;
		BSR 	INTCON,3 		//01BA 	198B
		RET		 					//01BB 	0004

		//;CX588.c: 117: if(PA0)
		BTSC 	5H,0 			//01BC 	1405

		//;CX588.c: 118: return 1;
		RETW 	1H 			//01BD 	2101

		//;CX588.c: 119: else
		//;CX588.c: 120: return 0;
		RETW 	0H 			//01BE 	2100
		BCR 	STATUS,5 		//01BF 	1283
		STR 	43H 			//01C0 	01C3

		//;CX588.c: 92: CX588_OneWire_WriteByte(Sound_Code);
		LJUMP 	12BH 			//01C1 	392B
			END
