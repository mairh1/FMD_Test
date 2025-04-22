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
		_TRISA2		EQU		85H
		_TMR2IE		EQU		8CH
		_IOCA2		EQU		96H
		_randx		EQU		4AH
		_Seed_Val		EQU		79H
		_TIME_OUT		EQU		4EH
//		srand@x		EQU		73H
//		___lmul@product		EQU		73H
//		___lmul@multiplier		EQU		40H
//		___lmul@multiplicand		EQU		44H
//		CX588_Play_Sound@Sound_Code		EQU		42H
//		CX588_Play_Sound@Sound_Code		EQU		42H
//		CX588_Play_Sound@Sound_Code		EQU		42H
//		CX588_SET_Sound_Size@Sound_Code		EQU		42H
//		CX588_SET_Sound_Size@Sound_Code		EQU		42H
//		CX588_SET_Sound_Size@Sound_Code		EQU		42H
//		CX588_OneWire_WriteByte@byte_byte		EQU		40H
//		CX588_OneWire_WriteByte@i		EQU		41H
//		CX588_OneWire_WriteByte@byte_byte		EQU		40H
//		CX588_OneWire_WriteByte@byte_byte		EQU		40H
//		CX588_OneWire_WriteBit@bit_bit		EQU		78H
//		CX588_OneWire_WriteBit@bit_bit		EQU		78H
//		CX588_OneWire_WriteBit@bit_bit		EQU		78H
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
		LJUMP 	79H 			//000C 	3879
		LJUMP 	0EH 			//000D 	380E
		LDWI 	1H 			//000E 	2A01
		STR 	4AH 			//000F 	01CA
		CLRR 	4BH 			//0010 	014B
		CLRR 	4CH 			//0011 	014C
		CLRR 	4DH 			//0012 	014D
		CLRR 	4EH 			//0013 	014E
		CLRR 	4FH 			//0014 	014F
		CLRR 	79H 			//0015 	0179
		CLRR 	7AH 			//0016 	017A
		CLRR 	STATUS 			//0017 	0103
		LJUMP 	12CH 			//0018 	392C
		CLRR 	73H 			//0019 	0173
		CLRR 	74H 			//001A 	0174
		CLRR 	75H 			//001B 	0175
		CLRR 	76H 			//001C 	0176
		BTSS 	40H,0 			//001D 	1C40
		LJUMP 	33H 			//001E 	3833
		LDR 	44H,0 			//001F 	0844
		ADDWR 	73H,1 			//0020 	0BF3
		LDR 	45H,0 			//0021 	0845
		BCR 	STATUS,2 		//0022 	1103
		BTSC 	STATUS,0 		//0023 	1403
		ADDWI 	1H 			//0024 	2701
		BTSS 	STATUS,2 		//0025 	1D03
		ADDWR 	74H,1 			//0026 	0BF4
		LDR 	46H,0 			//0027 	0846
		BCR 	STATUS,2 		//0028 	1103
		BTSC 	STATUS,0 		//0029 	1403
		ADDWI 	1H 			//002A 	2701
		BTSS 	STATUS,2 		//002B 	1D03
		ADDWR 	75H,1 			//002C 	0BF5
		LDR 	47H,0 			//002D 	0847
		BCR 	STATUS,2 		//002E 	1103
		BTSC 	STATUS,0 		//002F 	1403
		ADDWI 	1H 			//0030 	2701
		BTSS 	STATUS,2 		//0031 	1D03
		ADDWR 	76H,1 			//0032 	0BF6
		BCR 	STATUS,0 		//0033 	1003
		RLR 	44H,1 			//0034 	05C4
		RLR 	45H,1 			//0035 	05C5
		RLR 	46H,1 			//0036 	05C6
		RLR 	47H,1 			//0037 	05C7
		BCR 	STATUS,0 		//0038 	1003
		RRR	43H,1 			//0039 	06C3
		RRR	42H,1 			//003A 	06C2
		RRR	41H,1 			//003B 	06C1
		RRR	40H,1 			//003C 	06C0
		LDR 	43H,0 			//003D 	0843
		IORWR 	42H,0 			//003E 	0342
		IORWR 	41H,0 			//003F 	0341
		IORWR 	40H,0 			//0040 	0340
		BTSS 	STATUS,2 		//0041 	1D03
		LJUMP 	1DH 			//0042 	381D
		LDR 	76H,0 			//0043 	0876
		STR 	43H 			//0044 	01C3
		LDR 	75H,0 			//0045 	0875
		STR 	42H 			//0046 	01C2
		LDR 	74H,0 			//0047 	0874
		STR 	41H 			//0048 	01C1
		LDR 	73H,0 			//0049 	0873
		STR 	40H 			//004A 	01C0
		RET		 					//004B 	0004
		LDWI 	41H 			//004C 	2A41
		STR 	43H 			//004D 	01C3
		LDWI 	C6H 			//004E 	2AC6
		STR 	42H 			//004F 	01C2
		LDWI 	4EH 			//0050 	2A4E
		STR 	41H 			//0051 	01C1
		LDWI 	6DH 			//0052 	2A6D
		STR 	40H 			//0053 	01C0
		LDR 	4DH,0 			//0054 	084D
		STR 	47H 			//0055 	01C7
		LDR 	4CH,0 			//0056 	084C
		STR 	46H 			//0057 	01C6
		LDR 	4BH,0 			//0058 	084B
		STR 	45H 			//0059 	01C5
		LDR 	4AH,0 			//005A 	084A
		STR 	44H 			//005B 	01C4
		LCALL 	19H 			//005C 	3019
		LDR 	43H,0 			//005D 	0843
		STR 	4DH 			//005E 	01CD
		LDR 	42H,0 			//005F 	0842
		STR 	4CH 			//0060 	01CC
		LDR 	41H,0 			//0061 	0841
		STR 	4BH 			//0062 	01CB
		LDR 	40H,0 			//0063 	0840
		STR 	4AH 			//0064 	01CA
		LDWI 	39H 			//0065 	2A39
		ADDWR 	4AH,1 			//0066 	0BCA
		LDWI 	30H 			//0067 	2A30
		BTSC 	STATUS,0 		//0068 	1403
		LDWI 	31H 			//0069 	2A31
		ADDWR 	4BH,1 			//006A 	0BCB
		LDWI 	0H 			//006B 	2A00
		BTSC 	STATUS,0 		//006C 	1403
		LDWI 	1H 			//006D 	2A01
		ADDWR 	4CH,1 			//006E 	0BCC
		LDWI 	0H 			//006F 	2A00
		BTSC 	STATUS,0 		//0070 	1403
		LDWI 	1H 			//0071 	2A01
		ADDWR 	4DH,1 			//0072 	0BCD
		LDR 	4DH,0 			//0073 	084D
		STR 	49H 			//0074 	01C9
		LDR 	4CH,0 			//0075 	084C
		STR 	48H 			//0076 	01C8
		BCR 	49H,7 			//0077 	13C9
		RET		 					//0078 	0004

		//;CX588_SOUND.C: 66: if(TMR2IE && TMR2IF)
		BSR 	STATUS,5 		//0079 	1A83
		BTSS 	CH,1 			//007A 	1C8C
		LJUMP 	8BH 			//007B 	388B
		BCR 	STATUS,5 		//007C 	1283
		BTSS 	CH,1 			//007D 	1C8C
		LJUMP 	8BH 			//007E 	388B

		//;CX588_SOUND.C: 67: {
		//;CX588_SOUND.C: 68: TMR2IF = 0;
		BCR 	CH,1 			//007F 	108C

		//;CX588_SOUND.C: 70: if(TIME_OUT < 0xff)
		LCALL 	9FH 			//0080 	309F
		BTSS 	STATUS,2 		//0081 	1D03
		LJUMP 	85H 			//0082 	3885
		LDWI 	FFH 			//0083 	2AFF
		SUBWR 	4EH,0 			//0084 	0C4E
		BTSC 	STATUS,0 		//0085 	1403
		LJUMP 	8BH 			//0086 	388B

		//;CX588_SOUND.C: 71: TIME_OUT++;
		BCR 	STATUS,5 		//0087 	1283
		INCR	4EH,1 			//0088 	09CE
		BTSC 	STATUS,2 		//0089 	1503
		INCR	4FH,1 			//008A 	09CF

		//;CX588_SOUND.C: 72: }
		//;CX588_SOUND.C: 75: if(PAIE && PAIF)
		BTSC 	INTCON,3 		//008B 	158B
		BTSS 	INTCON,0 		//008C 	1C0B
		LJUMP 	95H 			//008D 	3895

		//;CX588_SOUND.C: 76: {
		//;CX588_SOUND.C: 77: ReadAPin = PORTA;
		BCR 	STATUS,5 		//008E 	1283
		LDR 	5H,0 			//008F 	0805

		//;CX588_SOUND.C: 78: PAIF = 0;
		BCR 	INTCON,0 		//0090 	100B

		//;CX588_SOUND.C: 79: PAIE = 0;
		BCR 	INTCON,3 		//0091 	118B

		//;CX588_SOUND.C: 80: IOCA2 =0;
		BSR 	STATUS,5 		//0092 	1A83
		BCR 	16H,2 			//0093 	1116

		//;CX588_SOUND.C: 81: GIE = 1;
		BSR 	INTCON,7 		//0094 	1B8B
		LDR 	72H,0 			//0095 	0872
		BCR 	STATUS,5 		//0096 	1283
		STR 	7FH 			//0097 	01FF
		LDR 	71H,0 			//0098 	0871
		STR 	PCLATH 			//0099 	018A
		SWAPR 	70H,0 			//009A 	0770
		STR 	STATUS 			//009B 	0183
		SWAPR 	7EH,1 			//009C 	07FE
		SWAPR 	7EH,0 			//009D 	077E
		RETI		 			//009E 	0009
		LDR 	4FH,0 			//009F 	084F
		XORWI 	80H 			//00A0 	2680
		STR 	7FH 			//00A1 	01FF
		LDWI 	80H 			//00A2 	2A80
		SUBWR 	7FH,0 			//00A3 	0C7F
		RET		 					//00A4 	0004

		//;CX588_SOUND.C: 16: if(CX588_Get_Busy_State() == 1)
		LCALL 	15AH 			//00A5 	315A
		XORWI 	1H 			//00A6 	2601
		BTSS 	STATUS,2 		//00A7 	1D03
		LJUMP 	BBH 			//00A8 	38BB

		//;CX588_SOUND.C: 17: {
		//;CX588_SOUND.C: 18: TMR2IE = 1;
		BSR 	STATUS,5 		//00A9 	1A83
		BSR 	CH,1 			//00AA 	188C

		//;CX588_SOUND.C: 19: PEIE=1;
		BSR 	INTCON,6 		//00AB 	1B0B

		//;CX588_SOUND.C: 20: GIE = 1;
		BSR 	INTCON,7 		//00AC 	1B8B

		//;CX588_SOUND.C: 21: if(TIME_OUT > 5)
		BCR 	STATUS,5 		//00AD 	1283
		LCALL 	9FH 			//00AE 	309F
		BTSS 	STATUS,2 		//00AF 	1D03
		LJUMP 	B3H 			//00B0 	38B3
		LDWI 	6H 			//00B1 	2A06
		SUBWR 	4EH,0 			//00B2 	0C4E
		BTSS 	STATUS,0 		//00B3 	1C03
		RET		 					//00B4 	0004

		//;CX588_SOUND.C: 22: {
		//;CX588_SOUND.C: 23: TIME_OUT = 0;
		BCR 	STATUS,5 		//00B5 	1283

		//;CX588_SOUND.C: 24: TMR2IE = 0;
		//;CX588_SOUND.C: 25: PEIE = 0;
		//;CX588_SOUND.C: 26: GIE = 0;
		LCALL 	BDH 			//00B6 	30BD

		//;CX588_SOUND.C: 28: PA2_Level_Change_INITIAL();
		LCALL 	152H 			//00B7 	3152
		SLEEP	 			//00B8 	0002

		//;CX588_SOUND.C: 30: __nop();
		NOP		 					//00B9 	0000
		RET		 					//00BA 	0004

		//;CX588_SOUND.C: 33: else
		//;CX588_SOUND.C: 34: {
		//;CX588_SOUND.C: 35: TIME_OUT = 0;
		//;CX588_SOUND.C: 36: TMR2IE = 0;
		//;CX588_SOUND.C: 37: PEIE = 0;
		//;CX588_SOUND.C: 38: GIE = 0;
		LCALL 	BDH 			//00BB 	30BD
		RET		 					//00BC 	0004
		CLRR 	4EH 			//00BD 	014E
		CLRR 	4FH 			//00BE 	014F
		BSR 	STATUS,5 		//00BF 	1A83
		BCR 	CH,1 			//00C0 	108C
		BCR 	INTCON,6 		//00C1 	130B
		BCR 	INTCON,7 		//00C2 	138B
		RET		 					//00C3 	0004
		STR 	78H 			//00C4 	01F8

		//;CX588.c: 57: if (bit_bit)
		LDR 	78H,0 			//00C5 	0878
		BTSC 	STATUS,2 		//00C6 	1503
		LJUMP 	D1H 			//00C7 	38D1

		//;CX588.c: 58: {
		//;CX588.c: 59: PA4 = 1;
		BSR 	5H,4 			//00C8 	1A05

		//;CX588.c: 60: DelayMs(1);
		LDWI 	1H 			//00C9 	2A01
		LCALL 	101H 			//00CA 	3101

		//;CX588.c: 61: DelayUs(100);
		LDWI 	64H 			//00CB 	2A64
		LCALL 	138H 			//00CC 	3138

		//;CX588.c: 62: PA4 = 0;
		BCR 	STATUS,5 		//00CD 	1283
		BCR 	5H,4 			//00CE 	1205

		//;CX588.c: 63: DelayUs(200);
		LDWI 	C8H 			//00CF 	2AC8
		LJUMP 	138H 			//00D0 	3938

		//;CX588.c: 64: }
		//;CX588.c: 65: else
		//;CX588.c: 66: {
		//;CX588.c: 67: PA4 = 1;
		BSR 	5H,4 			//00D1 	1A05

		//;CX588.c: 68: DelayUs(200);
		LDWI 	C8H 			//00D2 	2AC8
		LCALL 	138H 			//00D3 	3138

		//;CX588.c: 69: PA4 = 0;
		BCR 	STATUS,5 		//00D4 	1283
		BCR 	5H,4 			//00D5 	1205

		//;CX588.c: 70: DelayMs(1);
		LDWI 	1H 			//00D6 	2A01
		LCALL 	101H 			//00D7 	3101

		//;CX588.c: 71: DelayUs(100);
		LDWI 	64H 			//00D8 	2A64
		LJUMP 	138H 			//00D9 	3938

		//;CX588_SOUND.C: 44: if(PA2 == 0)
		BTSC 	5H,2 			//00DA 	1505
		RET		 					//00DB 	0004

		//;CX588_SOUND.C: 45: {
		//;CX588_SOUND.C: 46: DelayMs(20);
		LDWI 	14H 			//00DC 	2A14
		LCALL 	101H 			//00DD 	3101

		//;CX588_SOUND.C: 47: if(PA2 == 0)
		BCR 	STATUS,5 		//00DE 	1283
		BTSC 	5H,2 			//00DF 	1505
		RET		 					//00E0 	0004

		//;CX588_SOUND.C: 48: {
		//;CX588_SOUND.C: 49: if(CX588_Get_Busy_State())
		LCALL 	15AH 			//00E1 	315A
		XORWI 	0H 			//00E2 	2600
		BTSC 	STATUS,2 		//00E3 	1503
		RET		 					//00E4 	0004

		//;CX588_SOUND.C: 50: {
		//;CX588_SOUND.C: 51: CX588_Play_Sound((rand()%8)+1);
		LCALL 	4CH 			//00E5 	304C
		LDR 	48H,0 			//00E6 	0848
		ANDWI 	7H 			//00E7 	2407
		ADDWI 	1H 			//00E8 	2701
		LCALL 	11FH 			//00E9 	311F

		//;CX588_SOUND.C: 52: Seed_Val++;
		INCR	79H,1 			//00EA 	09F9
		BTSC 	STATUS,2 		//00EB 	1503
		INCR	7AH,1 			//00EC 	09FA
		RET		 					//00ED 	0004
		STR 	40H 			//00EE 	01C0

		//;CX588.c: 78: PA4 = 0;
		BCR 	5H,4 			//00EF 	1205

		//;CX588.c: 79: DelayMs(6);
		LDWI 	6H 			//00F0 	2A06
		LCALL 	101H 			//00F1 	3101

		//;CX588.c: 81: for (unsigned char i = 0; i < 8; i++)
		BCR 	STATUS,5 		//00F2 	1283
		CLRR 	41H 			//00F3 	0141

		//;CX588.c: 82: {
		//;CX588.c: 83: CX588_OneWire_WriteBit(byte_byte & 0x01);
		LDR 	40H,0 			//00F4 	0840
		ANDWI 	1H 			//00F5 	2401
		LCALL 	C4H 			//00F6 	30C4
		LDWI 	8H 			//00F7 	2A08

		//;CX588.c: 84: byte_byte >>= 1;
		BCR 	STATUS,5 		//00F8 	1283
		BCR 	STATUS,0 		//00F9 	1003
		RRR	40H,1 			//00FA 	06C0
		INCR	41H,1 			//00FB 	09C1
		SUBWR 	41H,0 			//00FC 	0C41
		BTSS 	STATUS,0 		//00FD 	1C03
		LJUMP 	F4H 			//00FE 	38F4

		//;CX588.c: 85: }
		//;CX588.c: 86: PA4 = 1;
		BSR 	5H,4 			//00FF 	1A05
		RET		 					//0100 	0004
		STR 	75H 			//0101 	01F5

		//;CX588.c: 29: unsigned char a,b;
		//;CX588.c: 30: for(a=0;a<Time;a++)
		CLRR 	76H 			//0102 	0176
		LDR 	75H,0 			//0103 	0875
		SUBWR 	76H,0 			//0104 	0C76
		BTSC 	STATUS,0 		//0105 	1403
		RET		 					//0106 	0004

		//;CX588.c: 31: {
		//;CX588.c: 32: for(b=0;b<5;b++)
		CLRR 	77H 			//0107 	0177

		//;CX588.c: 33: {
		//;CX588.c: 34: DelayUs(98);
		LDWI 	62H 			//0108 	2A62
		LCALL 	138H 			//0109 	3138
		LDWI 	5H 			//010A 	2A05
		INCR	77H,1 			//010B 	09F7
		SUBWR 	77H,0 			//010C 	0C77
		BTSS 	STATUS,0 		//010D 	1C03
		LJUMP 	108H 			//010E 	3908
		INCR	76H,1 			//010F 	09F6
		LJUMP 	103H 			//0110 	3903

		//;CX588_SOUND.C: 108: OSCCON = 0B01110001;
		LDWI 	71H 			//0111 	2A71
		BSR 	STATUS,5 		//0112 	1A83
		STR 	FH 			//0113 	018F

		//;CX588_SOUND.C: 109: INTCON = 0;
		CLRR 	INTCON 			//0114 	010B

		//;CX588_SOUND.C: 111: OPTION = 0;
		CLRR 	1H 			//0115 	0101

		//;CX588_SOUND.C: 112: TRISA = 0B00000100;
		LDWI 	4H 			//0116 	2A04
		STR 	5H 			//0117 	0185

		//;CX588_SOUND.C: 113: PSRCA = 0;
		CLRR 	8H 			//0118 	0108

		//;CX588_SOUND.C: 114: PSINKA = 0;
		CLRR 	17H 			//0119 	0117

		//;CX588_SOUND.C: 115: PORTA = 0B00000000;
		BCR 	STATUS,5 		//011A 	1283
		CLRR 	5H 			//011B 	0105

		//;CX588_SOUND.C: 116: WPUA = 0B00000100;
		BSR 	STATUS,5 		//011C 	1A83
		STR 	15H 			//011D 	0195
		RET		 					//011E 	0004
		STR 	42H 			//011F 	01C2

		//;CX588.c: 98: if (Sound_Code < 0xCF)
		LDWI 	CFH 			//0120 	2ACF
		SUBWR 	42H,0 			//0121 	0C42
		BTSC 	STATUS,0 		//0122 	1403
		RET		 					//0123 	0004

		//;CX588.c: 99: {
		//;CX588.c: 100: if(CX588_Get_Busy_State())
		LCALL 	15AH 			//0124 	315A
		XORWI 	0H 			//0125 	2600
		BTSC 	STATUS,2 		//0126 	1503
		RET		 					//0127 	0004

		//;CX588.c: 101: {
		//;CX588.c: 102: CX588_OneWire_WriteByte(Sound_Code);
		LDR 	42H,0 			//0128 	0842
		LCALL 	EEH 			//0129 	30EE

		//;CX588.c: 103: DelayMs(20);
		LDWI 	14H 			//012A 	2A14
		LJUMP 	101H 			//012B 	3901

		//;CX588_SOUND.C: 126: POWER_INITIAL();
		LCALL 	111H 			//012C 	3111

		//;CX588_SOUND.C: 128: CX588_GPIO_Init();
		LCALL 	141H 			//012D 	3141

		//;CX588_SOUND.C: 129: CX588_SET_Sound_Size(SoundLeve_10);
		LDWI 	EAH 			//012E 	2AEA
		LCALL 	15EH 			//012F 	315E

		//;CX588_SOUND.C: 130: srand(Seed_Val);
		LDR 	7AH,0 			//0130 	087A
		STR 	74H 			//0131 	01F4
		LDR 	79H,0 			//0132 	0879
		STR 	73H 			//0133 	01F3
		LCALL 	14AH 			//0134 	314A

		//;CX588_SOUND.C: 133: {
		//;CX588_SOUND.C: 134: Play_Sound();
		//;CX588_SOUND.C: 132: while(1)
		LCALL 	DAH 			//0135 	30DA

		//;CX588_SOUND.C: 135: TIME_OUT_Enter_Sleep();
		LCALL 	A5H 			//0136 	30A5
		LJUMP 	130H 			//0137 	3930
		STR 	73H 			//0138 	01F3

		//;CX588.c: 14: unsigned char a;
		//;CX588.c: 15: for(a=0;a<Time;a++)
		CLRR 	74H 			//0139 	0174
		LDR 	73H,0 			//013A 	0873
		SUBWR 	74H,0 			//013B 	0C74
		BTSC 	STATUS,0 		//013C 	1403
		RET		 					//013D 	0004

		//;CX588.c: 16: {
		//;CX588.c: 17: __nop();
		NOP		 					//013E 	0000
		INCR	74H,1 			//013F 	09F4
		LJUMP 	13AH 			//0140 	393A

		//;CX588.c: 41: TRISA |= 0b00000001;
		BSR 	5H,0 			//0141 	1805

		//;CX588.c: 42: PSRCA |= 0b00000000;
		LDR 	8H,0 			//0142 	0808

		//;CX588.c: 48: PSINKA |= 0b00000000;
		LDR 	17H,0 			//0143 	0817

		//;CX588.c: 49: PORTA |= 0b00010001;
		LDWI 	11H 			//0144 	2A11
		BCR 	STATUS,5 		//0145 	1283
		IORWR 	5H,1 			//0146 	0385

		//;CX588.c: 50: WPUA |= 0b00000001;
		BSR 	STATUS,5 		//0147 	1A83
		BSR 	15H,0 			//0148 	1815
		RET		 					//0149 	0004

		//;CX588_SOUND.C: 136: srand(Seed_Val);
		LDR 	73H,0 			//014A 	0873
		BCR 	STATUS,5 		//014B 	1283
		STR 	4AH 			//014C 	01CA
		LDR 	74H,0 			//014D 	0874
		STR 	4BH 			//014E 	01CB
		CLRR 	4CH 			//014F 	014C
		CLRR 	4DH 			//0150 	014D
		RET		 					//0151 	0004

		//;CX588_SOUND.C: 93: TRISA2 = 1;
		BSR 	5H,2 			//0152 	1905

		//;CX588_SOUND.C: 94: ReadAPin = PORTA;
		BCR 	STATUS,5 		//0153 	1283
		LDR 	5H,0 			//0154 	0805

		//;CX588_SOUND.C: 95: PAIF = 0;
		BCR 	INTCON,0 		//0155 	100B

		//;CX588_SOUND.C: 96: IOCA2 = 1;
		BSR 	STATUS,5 		//0156 	1A83
		BSR 	16H,2 			//0157 	1916

		//;CX588_SOUND.C: 97: PAIE = 1;
		BSR 	INTCON,3 		//0158 	198B
		RET		 					//0159 	0004

		//;CX588.c: 117: if(PA0)
		BCR 	STATUS,5 		//015A 	1283
		BTSC 	5H,0 			//015B 	1405

		//;CX588.c: 118: return 1;
		RETW 	1H 			//015C 	2101

		//;CX588.c: 119: else
		//;CX588.c: 120: return 0;
		RETW 	0H 			//015D 	2100
		BCR 	STATUS,5 		//015E 	1283
		STR 	42H 			//015F 	01C2

		//;CX588.c: 92: CX588_OneWire_WriteByte(Sound_Code);
		LJUMP 	EEH 			//0160 	38EE
			END
