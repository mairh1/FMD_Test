//Deviec:FT60E21X
//-----------------------Variable---------------------------------
		_PA0		EQU		05H
		_PA2		EQU		05H
		_PA4		EQU		05H
		_TMR2IF		EQU		0CH
		_TMR2ON		EQU		12H
		_TMR2IE		EQU		8CH
		_randx		EQU		4AH
		_TIME_OUT		EQU		79H
		_Seed_Val		EQU		4EH
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
		LJUMP 	126H 			//0018 	3926
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

		//;CX588_SOUND.C: 69: if(TMR2IE && TMR2IF)
		BSR 	STATUS,5 		//0079 	1A83
		BTSS 	CH,1 			//007A 	1C8C
		LJUMP 	8EH 			//007B 	388E
		BCR 	STATUS,5 		//007C 	1283
		BTSS 	CH,1 			//007D 	1C8C
		LJUMP 	8EH 			//007E 	388E

		//;CX588_SOUND.C: 70: {
		//;CX588_SOUND.C: 71: TMR2IF = 0;
		BCR 	CH,1 			//007F 	108C

		//;CX588_SOUND.C: 73: if(TIME_OUT < 0xff)
		LDR 	7AH,0 			//0080 	087A
		XORWI 	80H 			//0081 	2680
		STR 	7FH 			//0082 	01FF
		LDWI 	80H 			//0083 	2A80
		SUBWR 	7FH,0 			//0084 	0C7F
		BTSS 	STATUS,2 		//0085 	1D03
		LJUMP 	89H 			//0086 	3889
		LDWI 	FFH 			//0087 	2AFF
		SUBWR 	79H,0 			//0088 	0C79
		BTSC 	STATUS,0 		//0089 	1403
		LJUMP 	8EH 			//008A 	388E

		//;CX588_SOUND.C: 74: TIME_OUT++;
		INCR	79H,1 			//008B 	09F9
		BTSC 	STATUS,2 		//008C 	1503
		INCR	7AH,1 			//008D 	09FA
		LDR 	72H,0 			//008E 	0872
		BCR 	STATUS,5 		//008F 	1283
		STR 	7FH 			//0090 	01FF
		LDR 	71H,0 			//0091 	0871
		STR 	PCLATH 			//0092 	018A
		SWAPR 	70H,0 			//0093 	0770
		STR 	STATUS 			//0094 	0183
		SWAPR 	7EH,1 			//0095 	07FE
		SWAPR 	7EH,0 			//0096 	077E
		RETI		 			//0097 	0009

		//;CX588_SOUND.C: 18: if(PA2 == 0)
		BCR 	STATUS,5 		//0098 	1283
		BTSC 	5H,2 			//0099 	1505
		RET		 					//009A 	0004

		//;CX588_SOUND.C: 19: {
		//;CX588_SOUND.C: 20: DelayMs(20);
		LDWI 	14H 			//009B 	2A14
		LCALL 	F1H 			//009C 	30F1

		//;CX588_SOUND.C: 21: if(PA2 == 0)
		BCR 	STATUS,5 		//009D 	1283
		BTSC 	5H,2 			//009E 	1505
		RET		 					//009F 	0004

		//;CX588_SOUND.C: 22: {
		//;CX588_SOUND.C: 23: if(CX588_Get_Busy_State())
		LCALL 	13FH 			//00A0 	313F
		XORWI 	0H 			//00A1 	2600
		BTSC 	STATUS,2 		//00A2 	1503
		RET		 					//00A3 	0004

		//;CX588_SOUND.C: 24: {
		//;CX588_SOUND.C: 25: srand(Seed_Val);
		LCALL 	B1H 			//00A4 	30B1
		LCALL 	138H 			//00A5 	3138

		//;CX588_SOUND.C: 26: Seed_Val = Seed_Val + TIME_OUT;
		LDR 	79H,0 			//00A6 	0879
		ADDWR 	4EH,1 			//00A7 	0BCE
		BTSC 	STATUS,0 		//00A8 	1403
		INCR	4FH,1 			//00A9 	09CF
		LDR 	7AH,0 			//00AA 	087A
		ADDWR 	4FH,1 			//00AB 	0BCF

		//;CX588_SOUND.C: 27: CX588_Play_Sound((rand()%8)+1);
		LCALL 	4CH 			//00AC 	304C
		LDR 	48H,0 			//00AD 	0848
		ANDWI 	7H 			//00AE 	2407
		ADDWI 	1H 			//00AF 	2701
		LJUMP 	10FH 			//00B0 	390F
		LDR 	4FH,0 			//00B1 	084F
		STR 	74H 			//00B2 	01F4
		LDR 	4EH,0 			//00B3 	084E
		STR 	73H 			//00B4 	01F3
		RET		 					//00B5 	0004
		STR 	78H 			//00B6 	01F8

		//;CX588.c: 57: if (bit_bit)
		LDR 	78H,0 			//00B7 	0878
		BTSC 	STATUS,2 		//00B8 	1503
		LJUMP 	C3H 			//00B9 	38C3

		//;CX588.c: 58: {
		//;CX588.c: 59: PA4 = 1;
		BSR 	5H,4 			//00BA 	1A05

		//;CX588.c: 60: DelayMs(1);
		LDWI 	1H 			//00BB 	2A01
		LCALL 	F1H 			//00BC 	30F1

		//;CX588.c: 61: DelayUs(100);
		LDWI 	64H 			//00BD 	2A64
		LCALL 	12FH 			//00BE 	312F

		//;CX588.c: 62: PA4 = 0;
		BCR 	STATUS,5 		//00BF 	1283
		BCR 	5H,4 			//00C0 	1205

		//;CX588.c: 63: DelayUs(200);
		LDWI 	C8H 			//00C1 	2AC8
		LJUMP 	12FH 			//00C2 	392F

		//;CX588.c: 64: }
		//;CX588.c: 65: else
		//;CX588.c: 66: {
		//;CX588.c: 67: PA4 = 1;
		BSR 	5H,4 			//00C3 	1A05

		//;CX588.c: 68: DelayUs(200);
		LDWI 	C8H 			//00C4 	2AC8
		LCALL 	12FH 			//00C5 	312F

		//;CX588.c: 69: PA4 = 0;
		BCR 	STATUS,5 		//00C6 	1283
		BCR 	5H,4 			//00C7 	1205

		//;CX588.c: 70: DelayMs(1);
		LDWI 	1H 			//00C8 	2A01
		LCALL 	F1H 			//00C9 	30F1

		//;CX588.c: 71: DelayUs(100);
		LDWI 	64H 			//00CA 	2A64
		LJUMP 	12FH 			//00CB 	392F
		STR 	40H 			//00CC 	01C0

		//;CX588.c: 78: PA4 = 0;
		BCR 	5H,4 			//00CD 	1205

		//;CX588.c: 79: DelayMs(6);
		LDWI 	6H 			//00CE 	2A06
		LCALL 	F1H 			//00CF 	30F1

		//;CX588.c: 81: for (unsigned char i = 0; i < 8; i++)
		BCR 	STATUS,5 		//00D0 	1283
		CLRR 	41H 			//00D1 	0141

		//;CX588.c: 82: {
		//;CX588.c: 83: CX588_OneWire_WriteBit(byte_byte & 0x01);
		LDR 	40H,0 			//00D2 	0840
		ANDWI 	1H 			//00D3 	2401
		LCALL 	B6H 			//00D4 	30B6
		LDWI 	8H 			//00D5 	2A08

		//;CX588.c: 84: byte_byte >>= 1;
		BCR 	STATUS,5 		//00D6 	1283
		BCR 	STATUS,0 		//00D7 	1003
		RRR	40H,1 			//00D8 	06C0
		INCR	41H,1 			//00D9 	09C1
		SUBWR 	41H,0 			//00DA 	0C41
		BTSS 	STATUS,0 		//00DB 	1C03
		LJUMP 	D2H 			//00DC 	38D2

		//;CX588.c: 85: }
		//;CX588.c: 86: PA4 = 1;
		BSR 	5H,4 			//00DD 	1A05
		RET		 					//00DE 	0004

		//;CX588_SOUND.C: 114: T2CON0 = 0B01001011;
		LDWI 	4BH 			//00DF 	2A4B
		BCR 	STATUS,5 		//00E0 	1283
		STR 	12H 			//00E1 	0192

		//;CX588_SOUND.C: 118: T2CON1 = 0B00001000;
		LDWI 	8H 			//00E2 	2A08
		BSR 	STATUS,5 		//00E3 	1A83
		STR 	1EH 			//00E4 	019E

		//;CX588_SOUND.C: 119: TMR2H = 0;
		BCR 	STATUS,5 		//00E5 	1283
		CLRR 	13H 			//00E6 	0113

		//;CX588_SOUND.C: 120: TMR2L = 0;
		CLRR 	11H 			//00E7 	0111

		//;CX588_SOUND.C: 121: PR2H = 100;
		LDWI 	64H 			//00E8 	2A64
		BSR 	STATUS,5 		//00E9 	1A83
		STR 	12H 			//00EA 	0192

		//;CX588_SOUND.C: 122: PR2L = 250;
		LDWI 	FAH 			//00EB 	2AFA
		STR 	11H 			//00EC 	0191

		//;CX588_SOUND.C: 124: TMR2IF = 0;
		BCR 	STATUS,5 		//00ED 	1283
		BCR 	CH,1 			//00EE 	108C

		//;CX588_SOUND.C: 125: TMR2ON = 1;
		BSR 	12H,2 			//00EF 	1912
		RET		 					//00F0 	0004
		STR 	75H 			//00F1 	01F5

		//;CX588.c: 29: unsigned char a,b;
		//;CX588.c: 30: for(a=0;a<Time;a++)
		CLRR 	76H 			//00F2 	0176
		LDR 	75H,0 			//00F3 	0875
		SUBWR 	76H,0 			//00F4 	0C76
		BTSC 	STATUS,0 		//00F5 	1403
		RET		 					//00F6 	0004

		//;CX588.c: 31: {
		//;CX588.c: 32: for(b=0;b<5;b++)
		CLRR 	77H 			//00F7 	0177

		//;CX588.c: 33: {
		//;CX588.c: 34: DelayUs(98);
		LDWI 	62H 			//00F8 	2A62
		LCALL 	12FH 			//00F9 	312F
		LDWI 	5H 			//00FA 	2A05
		INCR	77H,1 			//00FB 	09F7
		SUBWR 	77H,0 			//00FC 	0C77
		BTSS 	STATUS,0 		//00FD 	1C03
		LJUMP 	F8H 			//00FE 	38F8
		INCR	76H,1 			//00FF 	09F6
		LJUMP 	F3H 			//0100 	38F3

		//;CX588_SOUND.C: 96: OSCCON = 0B01110001;
		LDWI 	71H 			//0101 	2A71
		BSR 	STATUS,5 		//0102 	1A83
		STR 	FH 			//0103 	018F

		//;CX588_SOUND.C: 97: INTCON = 0;
		CLRR 	INTCON 			//0104 	010B

		//;CX588_SOUND.C: 99: OPTION = 0;
		CLRR 	1H 			//0105 	0101

		//;CX588_SOUND.C: 100: TRISA = 0B00000100;
		LDWI 	4H 			//0106 	2A04
		STR 	5H 			//0107 	0185

		//;CX588_SOUND.C: 101: PSRCA = 0;
		CLRR 	8H 			//0108 	0108

		//;CX588_SOUND.C: 102: PSINKA = 0;
		CLRR 	17H 			//0109 	0117

		//;CX588_SOUND.C: 103: PORTA = 0B00000000;
		BCR 	STATUS,5 		//010A 	1283
		CLRR 	5H 			//010B 	0105

		//;CX588_SOUND.C: 104: WPUA = 0B00000100;
		BSR 	STATUS,5 		//010C 	1A83
		STR 	15H 			//010D 	0195
		RET		 					//010E 	0004
		STR 	42H 			//010F 	01C2

		//;CX588.c: 98: if (Sound_Code < 0xCF)
		LDWI 	CFH 			//0110 	2ACF
		SUBWR 	42H,0 			//0111 	0C42
		BTSC 	STATUS,0 		//0112 	1403
		RET		 					//0113 	0004

		//;CX588.c: 99: {
		//;CX588.c: 100: if(CX588_Get_Busy_State())
		LCALL 	13FH 			//0114 	313F
		XORWI 	0H 			//0115 	2600
		BTSC 	STATUS,2 		//0116 	1503
		RET		 					//0117 	0004

		//;CX588.c: 101: {
		//;CX588.c: 102: CX588_OneWire_WriteByte(Sound_Code);
		LDR 	42H,0 			//0118 	0842
		LCALL 	CCH 			//0119 	30CC

		//;CX588.c: 103: DelayMs(20);
		LDWI 	14H 			//011A 	2A14
		LJUMP 	F1H 			//011B 	38F1

		//;CX588.c: 41: TRISA |= 0b00000001;
		BSR 	STATUS,5 		//011C 	1A83
		BSR 	5H,0 			//011D 	1805

		//;CX588.c: 42: PSRCA |= 0b00000000;
		LDR 	8H,0 			//011E 	0808

		//;CX588.c: 48: PSINKA |= 0b00000000;
		LDR 	17H,0 			//011F 	0817

		//;CX588.c: 49: PORTA |= 0b00010001;
		LDWI 	11H 			//0120 	2A11
		BCR 	STATUS,5 		//0121 	1283
		IORWR 	5H,1 			//0122 	0385

		//;CX588.c: 50: WPUA |= 0b00000001;
		BSR 	STATUS,5 		//0123 	1A83
		BSR 	15H,0 			//0124 	1815
		RET		 					//0125 	0004

		//;CX588_SOUND.C: 150: POWER_INITIAL();
		LCALL 	101H 			//0126 	3101

		//;CX588_SOUND.C: 151: TIMER2_INITIAL();
		LCALL 	DFH 			//0127 	30DF

		//;CX588_SOUND.C: 152: CX588_GPIO_Init();
		LCALL 	11CH 			//0128 	311C

		//;CX588_SOUND.C: 153: CX588_SET_Sound_Size(SoundLeve_10);
		LDWI 	EAH 			//0129 	2AEA
		LCALL 	142H 			//012A 	3142

		//;CX588_SOUND.C: 154: srand(Seed_Val);
		LCALL 	B1H 			//012B 	30B1
		LCALL 	138H 			//012C 	3138

		//;CX588_SOUND.C: 156: while(1)
		//;CX588_SOUND.C: 157: {
		//;CX588_SOUND.C: 158: Play_Sound();
		LCALL 	98H 			//012D 	3098
		LJUMP 	12DH 			//012E 	392D
		STR 	73H 			//012F 	01F3

		//;CX588.c: 14: unsigned char a;
		//;CX588.c: 15: for(a=0;a<Time;a++)
		CLRR 	74H 			//0130 	0174
		LDR 	73H,0 			//0131 	0873
		SUBWR 	74H,0 			//0132 	0C74
		BTSC 	STATUS,0 		//0133 	1403
		RET		 					//0134 	0004

		//;CX588.c: 16: {
		//;CX588.c: 17: __nop();
		NOP		 					//0135 	0000
		INCR	74H,1 			//0136 	09F4
		LJUMP 	131H 			//0137 	3931
		LDR 	73H,0 			//0138 	0873
		STR 	4AH 			//0139 	01CA
		LDR 	74H,0 			//013A 	0874
		STR 	4BH 			//013B 	01CB
		CLRR 	4CH 			//013C 	014C
		CLRR 	4DH 			//013D 	014D
		RET		 					//013E 	0004

		//;CX588.c: 117: if(PA0)
		BTSC 	5H,0 			//013F 	1405

		//;CX588.c: 118: return 1;
		RETW 	1H 			//0140 	2101

		//;CX588.c: 119: else
		//;CX588.c: 120: return 0;
		RETW 	0H 			//0141 	2100
		BCR 	STATUS,5 		//0142 	1283
		STR 	42H 			//0143 	01C2

		//;CX588.c: 92: CX588_OneWire_WriteByte(Sound_Code);
		LJUMP 	CCH 			//0144 	38CC
			END
