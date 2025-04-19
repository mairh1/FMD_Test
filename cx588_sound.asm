//Deviec:FT60E21X
//-----------------------Variable---------------------------------
		_PA0		EQU		05H
		_PA2		EQU		05H
		_PA4		EQU		05H
		_randx		EQU		46H
		_Seed_Val		EQU		7AH
//		srand@x		EQU		72H
//		___lmul@product		EQU		40H
//		___lmul@multiplier		EQU		72H
//		___lmul@multiplicand		EQU		76H
//		CX588_Play_Sound@Sound_Code		EQU		40H
//		CX588_Play_Sound@Sound_Code		EQU		40H
//		CX588_Play_Sound@Sound_Code		EQU		40H
//		CX588_SET_Sound_Size@Sound_Code		EQU		40H
//		CX588_SET_Sound_Size@Sound_Code		EQU		40H
//		CX588_SET_Sound_Size@Sound_Code		EQU		40H
//		CX588_OneWire_WriteByte@byte_byte		EQU		78H
//		CX588_OneWire_WriteByte@i		EQU		79H
//		CX588_OneWire_WriteByte@byte_byte		EQU		78H
//		CX588_OneWire_WriteByte@byte_byte		EQU		78H
//		CX588_OneWire_WriteBit@bit_bit		EQU		77H
//		CX588_OneWire_WriteBit@bit_bit		EQU		77H
//		CX588_OneWire_WriteBit@bit_bit		EQU		77H
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

		LJUMP 	0AH 			//0000 	380A
		ORG		0004H
		STR 	7EH 			//0004 	01FE
		SWAPR 	STATUS,0 		//0005 	0703
		STR 	70H 			//0006 	01F0
		LDR 	PCLATH,0 		//0007 	080A
		STR 	71H 			//0008 	01F1
		LJUMP 	101H 			//0009 	3901
		LJUMP 	0BH 			//000A 	380B
		LDWI 	1H 			//000B 	2A01
		STR 	46H 			//000C 	01C6
		CLRR 	47H 			//000D 	0147
		CLRR 	48H 			//000E 	0148
		CLRR 	49H 			//000F 	0149
		CLRR 	7AH 			//0010 	017A
		CLRR 	7BH 			//0011 	017B
		CLRR 	STATUS 			//0012 	0103
		LJUMP 	DCH 			//0013 	38DC
		CLRR 	40H 			//0014 	0140
		CLRR 	41H 			//0015 	0141
		CLRR 	42H 			//0016 	0142
		CLRR 	43H 			//0017 	0143
		BTSS 	72H,0 			//0018 	1C72
		LJUMP 	2EH 			//0019 	382E
		LDR 	76H,0 			//001A 	0876
		ADDWR 	40H,1 			//001B 	0BC0
		LDR 	77H,0 			//001C 	0877
		BCR 	STATUS,2 		//001D 	1103
		BTSC 	STATUS,0 		//001E 	1403
		ADDWI 	1H 			//001F 	2701
		BTSS 	STATUS,2 		//0020 	1D03
		ADDWR 	41H,1 			//0021 	0BC1
		LDR 	78H,0 			//0022 	0878
		BCR 	STATUS,2 		//0023 	1103
		BTSC 	STATUS,0 		//0024 	1403
		ADDWI 	1H 			//0025 	2701
		BTSS 	STATUS,2 		//0026 	1D03
		ADDWR 	42H,1 			//0027 	0BC2
		LDR 	79H,0 			//0028 	0879
		BCR 	STATUS,2 		//0029 	1103
		BTSC 	STATUS,0 		//002A 	1403
		ADDWI 	1H 			//002B 	2701
		BTSS 	STATUS,2 		//002C 	1D03
		ADDWR 	43H,1 			//002D 	0BC3
		BCR 	STATUS,0 		//002E 	1003
		RLR 	76H,1 			//002F 	05F6
		RLR 	77H,1 			//0030 	05F7
		RLR 	78H,1 			//0031 	05F8
		RLR 	79H,1 			//0032 	05F9
		BCR 	STATUS,0 		//0033 	1003
		RRR	75H,1 			//0034 	06F5
		RRR	74H,1 			//0035 	06F4
		RRR	73H,1 			//0036 	06F3
		RRR	72H,1 			//0037 	06F2
		LDR 	75H,0 			//0038 	0875
		IORWR 	74H,0 			//0039 	0374
		IORWR 	73H,0 			//003A 	0373
		IORWR 	72H,0 			//003B 	0372
		BTSS 	STATUS,2 		//003C 	1D03
		LJUMP 	18H 			//003D 	3818
		LDR 	43H,0 			//003E 	0843
		STR 	75H 			//003F 	01F5
		LDR 	42H,0 			//0040 	0842
		STR 	74H 			//0041 	01F4
		LDR 	41H,0 			//0042 	0841
		STR 	73H 			//0043 	01F3
		LDR 	40H,0 			//0044 	0840
		STR 	72H 			//0045 	01F2
		RET		 					//0046 	0004
		LDWI 	41H 			//0047 	2A41
		STR 	75H 			//0048 	01F5
		LDWI 	C6H 			//0049 	2AC6
		STR 	74H 			//004A 	01F4
		LDWI 	4EH 			//004B 	2A4E
		STR 	73H 			//004C 	01F3
		LDWI 	6DH 			//004D 	2A6D
		STR 	72H 			//004E 	01F2
		LDR 	49H,0 			//004F 	0849
		STR 	79H 			//0050 	01F9
		LDR 	48H,0 			//0051 	0848
		STR 	78H 			//0052 	01F8
		LDR 	47H,0 			//0053 	0847
		STR 	77H 			//0054 	01F7
		LDR 	46H,0 			//0055 	0846
		STR 	76H 			//0056 	01F6
		LCALL 	14H 			//0057 	3014
		LDR 	75H,0 			//0058 	0875
		STR 	49H 			//0059 	01C9
		LDR 	74H,0 			//005A 	0874
		STR 	48H 			//005B 	01C8
		LDR 	73H,0 			//005C 	0873
		STR 	47H 			//005D 	01C7
		LDR 	72H,0 			//005E 	0872
		STR 	46H 			//005F 	01C6
		LDWI 	39H 			//0060 	2A39
		ADDWR 	46H,1 			//0061 	0BC6
		LDWI 	30H 			//0062 	2A30
		BTSC 	STATUS,0 		//0063 	1403
		LDWI 	31H 			//0064 	2A31
		ADDWR 	47H,1 			//0065 	0BC7
		LDWI 	0H 			//0066 	2A00
		BTSC 	STATUS,0 		//0067 	1403
		LDWI 	1H 			//0068 	2A01
		ADDWR 	48H,1 			//0069 	0BC8
		LDWI 	0H 			//006A 	2A00
		BTSC 	STATUS,0 		//006B 	1403
		LDWI 	1H 			//006C 	2A01
		ADDWR 	49H,1 			//006D 	0BC9
		LDR 	49H,0 			//006E 	0849
		STR 	45H 			//006F 	01C5
		LDR 	48H,0 			//0070 	0848
		STR 	44H 			//0071 	01C4
		BCR 	45H,7 			//0072 	13C5
		RET		 					//0073 	0004
		STR 	77H 			//0074 	01F7

		//;CX588.c: 57: if (bit_bit)
		LDR 	77H,0 			//0075 	0877

		//;CX588.c: 58: {
		//;CX588.c: 59: PA4 = 1;
		BCR 	STATUS,5 		//0076 	1283
		BTSC 	STATUS,2 		//0077 	1503
		LJUMP 	82H 			//0078 	3882
		BSR 	5H,4 			//0079 	1A05

		//;CX588.c: 60: DelayMs(1);
		LDWI 	1H 			//007A 	2A01
		LCALL 	B1H 			//007B 	30B1

		//;CX588.c: 61: DelayUs(100);
		LDWI 	64H 			//007C 	2A64
		LCALL 	E7H 			//007D 	30E7

		//;CX588.c: 62: PA4 = 0;
		BCR 	STATUS,5 		//007E 	1283
		BCR 	5H,4 			//007F 	1205

		//;CX588.c: 63: DelayUs(200);
		LDWI 	C8H 			//0080 	2AC8
		LJUMP 	E7H 			//0081 	38E7

		//;CX588.c: 65: else
		//;CX588.c: 66: {
		//;CX588.c: 67: PA4 = 1;
		//;CX588.c: 64: }
		BSR 	5H,4 			//0082 	1A05

		//;CX588.c: 68: DelayUs(200);
		LDWI 	C8H 			//0083 	2AC8
		LCALL 	E7H 			//0084 	30E7

		//;CX588.c: 69: PA4 = 0;
		BCR 	STATUS,5 		//0085 	1283
		BCR 	5H,4 			//0086 	1205

		//;CX588.c: 70: DelayMs(1);
		LDWI 	1H 			//0087 	2A01
		LCALL 	B1H 			//0088 	30B1

		//;CX588.c: 71: DelayUs(100);
		LDWI 	64H 			//0089 	2A64
		LJUMP 	E7H 			//008A 	38E7

		//;CX588_SOUND.C: 13: if(PA2 == 0)
		BTSC 	5H,2 			//008B 	1505
		RET		 					//008C 	0004

		//;CX588_SOUND.C: 14: {
		//;CX588_SOUND.C: 15: DelayMs(20);
		LDWI 	14H 			//008D 	2A14
		LCALL 	B1H 			//008E 	30B1

		//;CX588_SOUND.C: 16: if(PA2 == 0)
		BCR 	STATUS,5 		//008F 	1283
		BTSC 	5H,2 			//0090 	1505
		RET		 					//0091 	0004

		//;CX588_SOUND.C: 17: {
		//;CX588_SOUND.C: 18: if(CX588_Get_Busy_State())
		LCALL 	108H 			//0092 	3108
		XORWI 	0H 			//0093 	2600
		BTSC 	STATUS,2 		//0094 	1503
		RET		 					//0095 	0004

		//;CX588_SOUND.C: 19: {
		//;CX588_SOUND.C: 20: CX588_Play_Sound((rand()%8)+1);
		LCALL 	47H 			//0096 	3047
		LDR 	44H,0 			//0097 	0844
		ANDWI 	7H 			//0098 	2407
		ADDWI 	1H 			//0099 	2701
		LCALL 	CFH 			//009A 	30CF

		//;CX588_SOUND.C: 21: Seed_Val++;
		INCR	7AH,1 			//009B 	09FA
		BTSC 	STATUS,2 		//009C 	1503
		INCR	7BH,1 			//009D 	09FB
		RET		 					//009E 	0004
		STR 	78H 			//009F 	01F8

		//;CX588.c: 78: PA4 = 0;
		BCR 	5H,4 			//00A0 	1205

		//;CX588.c: 79: DelayMs(6);
		LDWI 	6H 			//00A1 	2A06
		LCALL 	B1H 			//00A2 	30B1

		//;CX588.c: 81: for (unsigned char i = 0; i < 8; i++)
		CLRR 	79H 			//00A3 	0179

		//;CX588.c: 82: {
		//;CX588.c: 83: CX588_OneWire_WriteBit(byte_byte & 0x01);
		LDR 	78H,0 			//00A4 	0878
		ANDWI 	1H 			//00A5 	2401
		LCALL 	74H 			//00A6 	3074
		LDWI 	8H 			//00A7 	2A08

		//;CX588.c: 84: byte_byte >>= 1;
		BCR 	STATUS,0 		//00A8 	1003
		RRR	78H,1 			//00A9 	06F8
		INCR	79H,1 			//00AA 	09F9
		SUBWR 	79H,0 			//00AB 	0C79
		BTSS 	STATUS,0 		//00AC 	1C03
		LJUMP 	A4H 			//00AD 	38A4

		//;CX588.c: 85: }
		//;CX588.c: 86: PA4 = 1;
		BCR 	STATUS,5 		//00AE 	1283
		BSR 	5H,4 			//00AF 	1A05
		RET		 					//00B0 	0004
		STR 	74H 			//00B1 	01F4

		//;CX588.c: 29: unsigned char a,b;
		//;CX588.c: 30: for(a=0;a<Time;a++)
		CLRR 	75H 			//00B2 	0175
		LDR 	74H,0 			//00B3 	0874
		SUBWR 	75H,0 			//00B4 	0C75
		BTSC 	STATUS,0 		//00B5 	1403
		RET		 					//00B6 	0004

		//;CX588.c: 31: {
		//;CX588.c: 32: for(b=0;b<5;b++)
		CLRR 	76H 			//00B7 	0176

		//;CX588.c: 33: {
		//;CX588.c: 34: DelayUs(98);
		LDWI 	62H 			//00B8 	2A62
		LCALL 	E7H 			//00B9 	30E7
		LDWI 	5H 			//00BA 	2A05
		INCR	76H,1 			//00BB 	09F6
		SUBWR 	76H,0 			//00BC 	0C76
		BTSS 	STATUS,0 		//00BD 	1C03
		LJUMP 	B8H 			//00BE 	38B8
		INCR	75H,1 			//00BF 	09F5
		LJUMP 	B3H 			//00C0 	38B3

		//;CX588_SOUND.C: 46: OSCCON = 0B01110001;
		LDWI 	71H 			//00C1 	2A71
		BSR 	STATUS,5 		//00C2 	1A83
		STR 	FH 			//00C3 	018F

		//;CX588_SOUND.C: 47: INTCON = 0;
		CLRR 	INTCON 			//00C4 	010B

		//;CX588_SOUND.C: 49: OPTION = 0;
		CLRR 	1H 			//00C5 	0101

		//;CX588_SOUND.C: 50: TRISA = 0B00000100;
		LDWI 	4H 			//00C6 	2A04
		STR 	5H 			//00C7 	0185

		//;CX588_SOUND.C: 51: PSRCA = 0;
		CLRR 	8H 			//00C8 	0108

		//;CX588_SOUND.C: 52: PSINKA = 0;
		CLRR 	17H 			//00C9 	0117

		//;CX588_SOUND.C: 53: PORTA = 0B00000000;
		BCR 	STATUS,5 		//00CA 	1283
		CLRR 	5H 			//00CB 	0105

		//;CX588_SOUND.C: 54: WPUA = 0B00000100;
		BSR 	STATUS,5 		//00CC 	1A83
		STR 	15H 			//00CD 	0195
		RET		 					//00CE 	0004
		STR 	40H 			//00CF 	01C0

		//;CX588.c: 98: if (Sound_Code < 0xCF)
		LDWI 	CFH 			//00D0 	2ACF
		SUBWR 	40H,0 			//00D1 	0C40
		BTSC 	STATUS,0 		//00D2 	1403
		RET		 					//00D3 	0004

		//;CX588.c: 99: {
		//;CX588.c: 100: if(CX588_Get_Busy_State())
		LCALL 	108H 			//00D4 	3108
		XORWI 	0H 			//00D5 	2600
		BTSC 	STATUS,2 		//00D6 	1503
		RET		 					//00D7 	0004

		//;CX588.c: 101: {
		//;CX588.c: 102: CX588_OneWire_WriteByte(Sound_Code);
		LDR 	40H,0 			//00D8 	0840
		LCALL 	9FH 			//00D9 	309F

		//;CX588.c: 103: DelayMs(20);
		LDWI 	14H 			//00DA 	2A14
		LJUMP 	B1H 			//00DB 	38B1

		//;CX588_SOUND.C: 64: POWER_INITIAL();
		LCALL 	C1H 			//00DC 	30C1

		//;CX588_SOUND.C: 66: CX588_GPIO_Init();
		LCALL 	F0H 			//00DD 	30F0

		//;CX588_SOUND.C: 67: CX588_SET_Sound_Size(SoundLeve_10);
		LDWI 	EAH 			//00DE 	2AEA
		LCALL 	10BH 			//00DF 	310B

		//;CX588_SOUND.C: 68: srand(Seed_Val);
		LDR 	7BH,0 			//00E0 	087B
		STR 	73H 			//00E1 	01F3
		LDR 	7AH,0 			//00E2 	087A
		STR 	72H 			//00E3 	01F2
		LCALL 	F9H 			//00E4 	30F9

		//;CX588_SOUND.C: 71: {
		//;CX588_SOUND.C: 72: Play_Sound();
		//;CX588_SOUND.C: 70: while(1)
		LCALL 	8BH 			//00E5 	308B
		LJUMP 	E0H 			//00E6 	38E0
		STR 	72H 			//00E7 	01F2

		//;CX588.c: 14: unsigned char a;
		//;CX588.c: 15: for(a=0;a<Time;a++)
		CLRR 	73H 			//00E8 	0173
		LDR 	72H,0 			//00E9 	0872
		SUBWR 	73H,0 			//00EA 	0C73
		BTSC 	STATUS,0 		//00EB 	1403
		RET		 					//00EC 	0004

		//;CX588.c: 16: {
		//;CX588.c: 17: __nop();
		NOP		 					//00ED 	0000
		INCR	73H,1 			//00EE 	09F3
		LJUMP 	E9H 			//00EF 	38E9

		//;CX588.c: 41: TRISA |= 0b00000001;
		BSR 	5H,0 			//00F0 	1805

		//;CX588.c: 42: PSRCA |= 0b00000000;
		LDR 	8H,0 			//00F1 	0808

		//;CX588.c: 48: PSINKA |= 0b00000000;
		LDR 	17H,0 			//00F2 	0817

		//;CX588.c: 49: PORTA |= 0b00010001;
		LDWI 	11H 			//00F3 	2A11
		BCR 	STATUS,5 		//00F4 	1283
		IORWR 	5H,1 			//00F5 	0385

		//;CX588.c: 50: WPUA |= 0b00000001;
		BSR 	STATUS,5 		//00F6 	1A83
		BSR 	15H,0 			//00F7 	1815
		RET		 					//00F8 	0004

		//;CX588_SOUND.C: 73: srand(Seed_Val);
		LDR 	72H,0 			//00F9 	0872
		BCR 	STATUS,5 		//00FA 	1283
		STR 	46H 			//00FB 	01C6
		LDR 	73H,0 			//00FC 	0873
		STR 	47H 			//00FD 	01C7
		CLRR 	48H 			//00FE 	0148
		CLRR 	49H 			//00FF 	0149
		RET		 					//0100 	0004
		LDR 	71H,0 			//0101 	0871
		STR 	PCLATH 			//0102 	018A
		SWAPR 	70H,0 			//0103 	0770
		STR 	STATUS 			//0104 	0183
		SWAPR 	7EH,1 			//0105 	07FE
		SWAPR 	7EH,0 			//0106 	077E
		RETI		 			//0107 	0009

		//;CX588.c: 117: if(PA0)
		BTSC 	5H,0 			//0108 	1405

		//;CX588.c: 118: return 1;
		RETW 	1H 			//0109 	2101

		//;CX588.c: 119: else
		//;CX588.c: 120: return 0;
		RETW 	0H 			//010A 	2100
		BCR 	STATUS,5 		//010B 	1283
		STR 	40H 			//010C 	01C0

		//;CX588.c: 92: CX588_OneWire_WriteByte(Sound_Code);
		LJUMP 	9FH 			//010D 	389F
			END
