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
		_randx		EQU		55H
		_Seed_Val		EQU		51H
		_TIME_OUT		EQU		4FH
		_SW1_state		EQU		53H
		_SW1_vibrate		EQU		54H
//		srand@x		EQU		40H
//		EEPROMwrite@EEAddr		EQU		41H
//		EEPROMwrite@EEAddr		EQU		41H
//		EEPROMwrite@Data		EQU		40H
//		EEPROMwrite@EEAddr		EQU		41H
//		Play_Sound@val		EQU		4EH
//		Play_Sound@val		EQU		4EH
//		Play_Sound@val		EQU		4EH
//		___lmul@product		EQU		48H
//		___lmul@multiplier		EQU		40H
//		___lmul@multiplicand		EQU		44H
//		CX588_Play_Sound@Sound_Code		EQU		48H
//		CX588_Play_Sound@Sound_Code		EQU		48H
//		CX588_Play_Sound@Sound_Code		EQU		48H
//		EEPROMread@EEAddr		EQU		40H
//		EEPROMread@ReEEPROMread		EQU		41H
//		EEPROMread@EEAddr		EQU		40H
//		EEPROMread@EEAddr		EQU		40H
//		CX588_SET_Sound_Size@Sound_Code		EQU		48H
//		CX588_SET_Sound_Size@Sound_Code		EQU		48H
//		CX588_SET_Sound_Size@Sound_Code		EQU		48H
//		CX588_OneWire_WriteByte@byte_byte		EQU		46H
//		CX588_OneWire_WriteByte@i		EQU		47H
//		CX588_OneWire_WriteByte@byte_byte		EQU		46H
//		CX588_OneWire_WriteByte@byte_byte		EQU		46H
//		CX588_OneWire_WriteBit@bit_bit		EQU		45H
//		CX588_OneWire_WriteBit@bit_bit		EQU		45H
//		CX588_OneWire_WriteBit@bit_bit		EQU		45H
//		DelayMs@Time		EQU		42H
//		DelayMs@b		EQU		44H
//		DelayMs@a		EQU		43H
//		DelayMs@Time		EQU		42H
//		DelayMs@Time		EQU		42H
//		DelayUs@Time		EQU		40H
//		DelayUs@a		EQU		41H
//		DelayUs@Time		EQU		40H
//		DelayUs@Time		EQU		40H
//		i1DelayMs@Time		EQU		72H
//		i1DelayMs@b		EQU		74H
//		i1DelayMs@a		EQU		73H
//		i1DelayMs@Time		EQU		72H
//		i1DelayMs@Time		EQU		72H
//		i1DelayUs@Time		EQU		70H
//		i1DelayUs@a		EQU		71H
//		i1DelayUs@Time		EQU		70H
//		i1DelayUs@Time		EQU		70H
//-----------------------Variable END---------------------------------

		LJUMP 	0AH 			//0000 	380A
		ORG		0004H
		STR 	7EH 			//0004 	01FE
		SWAPR 	STATUS,0 		//0005 	0703
		STR 	75H 			//0006 	01F5
		LDR 	PCLATH,0 		//0007 	080A
		STR 	76H 			//0008 	01F6
		LJUMP 	CEH 			//0009 	38CE
		LJUMP 	0BH 			//000A 	380B
		LDWI 	1H 			//000B 	2A01
		STR 	55H 			//000C 	01D5
		CLRR 	56H 			//000D 	0156
		CLRR 	57H 			//000E 	0157
		CLRR 	58H 			//000F 	0158
		CLRR 	4FH 			//0010 	014F
		CLRR 	50H 			//0011 	0150
		CLRR 	51H 			//0012 	0151
		CLRR 	52H 			//0013 	0152
		CLRR 	53H 			//0014 	0153
		CLRR 	54H 			//0015 	0154
		CLRR 	STATUS 			//0016 	0103
		LJUMP 	11FH 			//0017 	391F
		CLRR 	48H 			//0018 	0148
		CLRR 	49H 			//0019 	0149
		CLRR 	4AH 			//001A 	014A
		CLRR 	4BH 			//001B 	014B
		BTSS 	40H,0 			//001C 	1C40
		LJUMP 	32H 			//001D 	3832
		LDR 	44H,0 			//001E 	0844
		ADDWR 	48H,1 			//001F 	0BC8
		LDR 	45H,0 			//0020 	0845
		BCR 	STATUS,2 		//0021 	1103
		BTSC 	STATUS,0 		//0022 	1403
		ADDWI 	1H 			//0023 	2701
		BTSS 	STATUS,2 		//0024 	1D03
		ADDWR 	49H,1 			//0025 	0BC9
		LDR 	46H,0 			//0026 	0846
		BCR 	STATUS,2 		//0027 	1103
		BTSC 	STATUS,0 		//0028 	1403
		ADDWI 	1H 			//0029 	2701
		BTSS 	STATUS,2 		//002A 	1D03
		ADDWR 	4AH,1 			//002B 	0BCA
		LDR 	47H,0 			//002C 	0847
		BCR 	STATUS,2 		//002D 	1103
		BTSC 	STATUS,0 		//002E 	1403
		ADDWI 	1H 			//002F 	2701
		BTSS 	STATUS,2 		//0030 	1D03
		ADDWR 	4BH,1 			//0031 	0BCB
		BCR 	STATUS,0 		//0032 	1003
		RLR 	44H,1 			//0033 	05C4
		RLR 	45H,1 			//0034 	05C5
		RLR 	46H,1 			//0035 	05C6
		RLR 	47H,1 			//0036 	05C7
		BCR 	STATUS,0 		//0037 	1003
		RRR	43H,1 			//0038 	06C3
		RRR	42H,1 			//0039 	06C2
		RRR	41H,1 			//003A 	06C1
		RRR	40H,1 			//003B 	06C0
		LDR 	43H,0 			//003C 	0843
		IORWR 	42H,0 			//003D 	0342
		IORWR 	41H,0 			//003E 	0341
		IORWR 	40H,0 			//003F 	0340
		BTSS 	STATUS,2 		//0040 	1D03
		LJUMP 	1CH 			//0041 	381C
		LDR 	4BH,0 			//0042 	084B
		STR 	43H 			//0043 	01C3
		LDR 	4AH,0 			//0044 	084A
		STR 	42H 			//0045 	01C2
		LDR 	49H,0 			//0046 	0849
		STR 	41H 			//0047 	01C1
		LDR 	48H,0 			//0048 	0848
		STR 	40H 			//0049 	01C0
		RET		 					//004A 	0004
		STR 	4EH 			//004B 	01CE

		//;CX588_SOUND.C: 59: if(SW1_state != PA2)
		LDWI 	0H 			//004C 	2A00
		BTSC 	5H,2 			//004D 	1505
		LDWI 	1H 			//004E 	2A01
		XORWR 	53H,0 			//004F 	0453
		BTSC 	STATUS,2 		//0050 	1503
		LJUMP 	63H 			//0051 	3863

		//;CX588_SOUND.C: 60: {
		//;CX588_SOUND.C: 61: SW1_state = PA2;
		LDWI 	0H 			//0052 	2A00
		BTSC 	5H,2 			//0053 	1505
		LDWI 	1H 			//0054 	2A01
		STR 	53H 			//0055 	01D3

		//;CX588_SOUND.C: 62: if((*val) < 0xfe)
		LDR 	4EH,0 			//0056 	084E
		STR 	FSR 			//0057 	0184
		LDWI 	FEH 			//0058 	2AFE
		BCR 	STATUS,7 		//0059 	1383
		SUBWR 	INDF,0 		//005A 	0C00

		//;CX588_SOUND.C: 63: (*val)++;
		LDR 	4EH,0 			//005B 	084E
		STR 	FSR 			//005C 	0184
		BTSC 	STATUS,0 		//005D 	1403
		LJUMP 	61H 			//005E 	3861
		INCR	INDF,1 			//005F 	0980
		LJUMP 	63H 			//0060 	3863

		//;CX588_SOUND.C: 64: else
		//;CX588_SOUND.C: 65: (*val) = 0xff;
		LDWI 	FFH 			//0061 	2AFF
		STR 	INDF 			//0062 	0180

		//;CX588_SOUND.C: 66: }
		//;CX588_SOUND.C: 68: if((*val) >= 10)
		LDR 	4EH,0 			//0063 	084E
		STR 	FSR 			//0064 	0184
		LDWI 	AH 			//0065 	2A0A
		BCR 	STATUS,7 		//0066 	1383
		SUBWR 	INDF,0 		//0067 	0C00
		BTSS 	STATUS,0 		//0068 	1C03
		RET		 					//0069 	0004

		//;CX588_SOUND.C: 69: {
		//;CX588_SOUND.C: 70: if(CX588_Get_Busy_State())
		LCALL 	1D5H 			//006A 	31D5
		XORWI 	0H 			//006B 	2600
		BTSC 	STATUS,2 		//006C 	1503
		LJUMP 	73H 			//006D 	3873

		//;CX588_SOUND.C: 71: {
		//;CX588_SOUND.C: 72: CX588_Play_Sound((rand()%8)+1);
		LCALL 	7BH 			//006E 	307B
		LDR 	4CH,0 			//006F 	084C
		ANDWI 	7H 			//0070 	2407
		ADDWI 	1H 			//0071 	2701
		LCALL 	184H 			//0072 	3184

		//;CX588_SOUND.C: 73: Seed_Val++;
		INCR	51H,1 			//0073 	09D1
		BTSC 	STATUS,2 		//0074 	1503
		INCR	52H,1 			//0075 	09D2

		//;CX588_SOUND.C: 74: (*val) = 0;
		LDR 	4EH,0 			//0076 	084E
		STR 	FSR 			//0077 	0184
		BCR 	STATUS,7 		//0078 	1383
		CLRR 	INDF 			//0079 	0100

		//;CX588_SOUND.C: 75: }
		RET		 					//007A 	0004
		LDWI 	41H 			//007B 	2A41
		STR 	43H 			//007C 	01C3
		LDWI 	C6H 			//007D 	2AC6
		STR 	42H 			//007E 	01C2
		LDWI 	4EH 			//007F 	2A4E
		STR 	41H 			//0080 	01C1
		LDWI 	6DH 			//0081 	2A6D
		STR 	40H 			//0082 	01C0
		LDR 	58H,0 			//0083 	0858
		STR 	47H 			//0084 	01C7
		LDR 	57H,0 			//0085 	0857
		STR 	46H 			//0086 	01C6
		LDR 	56H,0 			//0087 	0856
		STR 	45H 			//0088 	01C5
		LDR 	55H,0 			//0089 	0855
		STR 	44H 			//008A 	01C4
		LCALL 	18H 			//008B 	3018
		LDR 	43H,0 			//008C 	0843
		STR 	58H 			//008D 	01D8
		LDR 	42H,0 			//008E 	0842
		STR 	57H 			//008F 	01D7
		LDR 	41H,0 			//0090 	0841
		STR 	56H 			//0091 	01D6
		LDR 	40H,0 			//0092 	0840
		STR 	55H 			//0093 	01D5
		LDWI 	39H 			//0094 	2A39
		ADDWR 	55H,1 			//0095 	0BD5
		LDWI 	30H 			//0096 	2A30
		BTSC 	STATUS,0 		//0097 	1403
		LDWI 	31H 			//0098 	2A31
		ADDWR 	56H,1 			//0099 	0BD6
		LDWI 	0H 			//009A 	2A00
		BTSC 	STATUS,0 		//009B 	1403
		LDWI 	1H 			//009C 	2A01
		ADDWR 	57H,1 			//009D 	0BD7
		LDWI 	0H 			//009E 	2A00
		BTSC 	STATUS,0 		//009F 	1403
		LDWI 	1H 			//00A0 	2A01
		ADDWR 	58H,1 			//00A1 	0BD8
		LDR 	58H,0 			//00A2 	0858
		STR 	4DH 			//00A3 	01CD
		LDR 	57H,0 			//00A4 	0857
		STR 	4CH 			//00A5 	01CC
		BCR 	4DH,7 			//00A6 	13CD
		RET		 					//00A7 	0004

		//;CX588_SOUND.C: 23: if(CX588_Get_Busy_State())
		LCALL 	1D5H 			//00A8 	31D5
		XORWI 	0H 			//00A9 	2600
		BTSC 	STATUS,2 		//00AA 	1503
		LJUMP 	C7H 			//00AB 	38C7

		//;CX588_SOUND.C: 24: {
		//;CX588_SOUND.C: 25: TMR2IE = 1;
		BSR 	STATUS,5 		//00AC 	1A83
		BSR 	CH,1 			//00AD 	188C

		//;CX588_SOUND.C: 26: PEIE=1;
		BSR 	INTCON,6 		//00AE 	1B0B

		//;CX588_SOUND.C: 27: GIE = 1;
		BSR 	INTCON,7 		//00AF 	1B8B

		//;CX588_SOUND.C: 28: if(TIME_OUT > 3)
		LDWI 	0H 			//00B0 	2A00
		BCR 	STATUS,5 		//00B1 	1283
		SUBWR 	50H,0 			//00B2 	0C50
		LDWI 	4H 			//00B3 	2A04
		BTSC 	STATUS,2 		//00B4 	1503
		SUBWR 	4FH,0 			//00B5 	0C4F
		BTSS 	STATUS,0 		//00B6 	1C03
		RET		 					//00B7 	0004

		//;CX588_SOUND.C: 29: {
		//;CX588_SOUND.C: 30: TIME_OUT = 0;
		CLRR 	4FH 			//00B8 	014F
		CLRR 	50H 			//00B9 	0150

		//;CX588_SOUND.C: 31: TMR2IE = 0;
		BSR 	STATUS,5 		//00BA 	1A83
		BCR 	CH,1 			//00BB 	108C

		//;CX588_SOUND.C: 32: PEIE = 0;
		BCR 	INTCON,6 		//00BC 	130B

		//;CX588_SOUND.C: 33: GIE = 0;
		BCR 	INTCON,7 		//00BD 	138B

		//;CX588_SOUND.C: 34: CX588_Shut_Down();
		LCALL 	1DBH 			//00BE 	31DB

		//;CX588_SOUND.C: 35: EEPROMwrite(0x00,Seed_Val);
		LDR 	51H,0 			//00BF 	0851
		STR 	40H 			//00C0 	01C0
		LDWI 	0H 			//00C1 	2A00
		LCALL 	F1H 			//00C2 	30F1

		//;CX588_SOUND.C: 37: PA2_Level_Change_INITIAL();
		LCALL 	1C6H 			//00C3 	31C6
		SLEEP	 			//00C4 	0002

		//;CX588_SOUND.C: 39: __nop();
		NOP		 					//00C5 	0000
		RET		 					//00C6 	0004

		//;CX588_SOUND.C: 42: else
		//;CX588_SOUND.C: 43: {
		//;CX588_SOUND.C: 44: TIME_OUT = 0;
		CLRR 	4FH 			//00C7 	014F
		CLRR 	50H 			//00C8 	0150

		//;CX588_SOUND.C: 45: TMR2IE = 0;
		BSR 	STATUS,5 		//00C9 	1A83
		BCR 	CH,1 			//00CA 	108C

		//;CX588_SOUND.C: 46: PEIE = 0;
		BCR 	INTCON,6 		//00CB 	130B

		//;CX588_SOUND.C: 47: GIE = 0;
		BCR 	INTCON,7 		//00CC 	138B
		RET		 					//00CD 	0004

		//;CX588_SOUND.C: 94: if(TMR2IE && TMR2IF)
		BSR 	STATUS,5 		//00CE 	1A83
		BTSS 	CH,1 			//00CF 	1C8C
		LJUMP 	DFH 			//00D0 	38DF
		BCR 	STATUS,5 		//00D1 	1283
		BTSS 	CH,1 			//00D2 	1C8C
		LJUMP 	DFH 			//00D3 	38DF

		//;CX588_SOUND.C: 95: {
		//;CX588_SOUND.C: 96: TMR2IF = 0;
		BCR 	CH,1 			//00D4 	108C

		//;CX588_SOUND.C: 98: if(TIME_OUT < 0xff)
		LDWI 	0H 			//00D5 	2A00
		SUBWR 	50H,0 			//00D6 	0C50
		LDWI 	FFH 			//00D7 	2AFF
		BTSC 	STATUS,2 		//00D8 	1503
		SUBWR 	4FH,0 			//00D9 	0C4F
		BTSC 	STATUS,0 		//00DA 	1403
		LJUMP 	DFH 			//00DB 	38DF

		//;CX588_SOUND.C: 99: TIME_OUT++;
		INCR	4FH,1 			//00DC 	09CF
		BTSC 	STATUS,2 		//00DD 	1503
		INCR	50H,1 			//00DE 	09D0

		//;CX588_SOUND.C: 100: }
		//;CX588_SOUND.C: 103: if(PAIE && PAIF)
		BTSC 	INTCON,3 		//00DF 	158B
		BTSS 	INTCON,0 		//00E0 	1C0B
		LJUMP 	EAH 			//00E1 	38EA

		//;CX588_SOUND.C: 104: {
		//;CX588_SOUND.C: 105: ReadAPin = PORTA;
		BCR 	STATUS,5 		//00E2 	1283
		LDR 	5H,0 			//00E3 	0805

		//;CX588_SOUND.C: 106: PAIF = 0;
		BCR 	INTCON,0 		//00E4 	100B

		//;CX588_SOUND.C: 107: PAIE = 0;
		BCR 	INTCON,3 		//00E5 	118B

		//;CX588_SOUND.C: 108: IOCA2 =0;
		BSR 	STATUS,5 		//00E6 	1A83
		BCR 	16H,2 			//00E7 	1116

		//;CX588_SOUND.C: 109: GIE = 1;
		BSR 	INTCON,7 		//00E8 	1B8B

		//;CX588_SOUND.C: 111: CX588_Wake_UP();
		LCALL 	19EH 			//00E9 	319E
		LDR 	76H,0 			//00EA 	0876
		STR 	PCLATH 			//00EB 	018A
		SWAPR 	75H,0 			//00EC 	0775
		STR 	STATUS 			//00ED 	0183
		SWAPR 	7EH,1 			//00EE 	07FE
		SWAPR 	7EH,0 			//00EF 	077E
		RETI		 			//00F0 	0009
		STR 	41H 			//00F1 	01C1

		//;CX588_SOUND.C: 143: GIE = 0;
		BCR 	INTCON,7 		//00F2 	138B

		//;CX588_SOUND.C: 144: while(GIE);
		BTSC 	INTCON,7 		//00F3 	178B
		LJUMP 	F3H 			//00F4 	38F3

		//;CX588_SOUND.C: 145: EEADR = EEAddr;
		LDR 	41H,0 			//00F5 	0841
		BSR 	STATUS,5 		//00F6 	1A83
		STR 	1BH 			//00F7 	019B

		//;CX588_SOUND.C: 146: EEDAT = Data;
		BCR 	STATUS,5 		//00F8 	1283
		LDR 	40H,0 			//00F9 	0840
		BSR 	STATUS,5 		//00FA 	1A83
		STR 	1AH 			//00FB 	019A

		//;CX588_SOUND.C: 147: EEIF = 0;
		BCR 	STATUS,5 		//00FC 	1283
		BCR 	CH,7 			//00FD 	138C

		//;CX588_SOUND.C: 148: EECON1 |= 0x34;
		LDWI 	34H 			//00FE 	2A34
		BSR 	STATUS,5 		//00FF 	1A83
		IORWR 	1CH,1 			//0100 	039C

		//;CX588_SOUND.C: 149: WR = 1;
		BSR 	1DH,0 			//0101 	181D

		//;CX588_SOUND.C: 150: __nop();
		NOP		 					//0102 	0000

		//;CX588_SOUND.C: 151: __nop();
		NOP		 					//0103 	0000

		//;CX588_SOUND.C: 152: __nop();
		NOP		 					//0104 	0000

		//;CX588_SOUND.C: 153: __nop();
		NOP		 					//0105 	0000

		//;CX588_SOUND.C: 154: while(WR);
		BSR 	STATUS,5 		//0106 	1A83
		BTSC 	1DH,0 			//0107 	141D
		LJUMP 	106H 			//0108 	3906

		//;CX588_SOUND.C: 155: GIE = 1;
		BSR 	INTCON,7 		//0109 	1B8B
		RET		 					//010A 	0004
		STR 	45H 			//010B 	01C5

		//;CX588.c: 57: if (bit_bit)
		LDR 	45H,0 			//010C 	0845
		BTSC 	STATUS,2 		//010D 	1503
		LJUMP 	117H 			//010E 	3917

		//;CX588.c: 58: {
		//;CX588.c: 59: PA4 = 1;
		BSR 	5H,4 			//010F 	1A05

		//;CX588.c: 60: DelayMs(1);
		LDWI 	1H 			//0110 	2A01
		LCALL 	156H 			//0111 	3156

		//;CX588.c: 61: DelayUs(100);
		LDWI 	64H 			//0112 	2A64
		LCALL 	1A9H 			//0113 	31A9

		//;CX588.c: 62: PA4 = 0;
		BCR 	5H,4 			//0114 	1205

		//;CX588.c: 63: DelayUs(200);
		LDWI 	C8H 			//0115 	2AC8
		LJUMP 	1A9H 			//0116 	39A9

		//;CX588.c: 64: }
		//;CX588.c: 65: else
		//;CX588.c: 66: {
		//;CX588.c: 67: PA4 = 1;
		BSR 	5H,4 			//0117 	1A05

		//;CX588.c: 68: DelayUs(200);
		LDWI 	C8H 			//0118 	2AC8
		LCALL 	1A9H 			//0119 	31A9

		//;CX588.c: 69: PA4 = 0;
		BCR 	5H,4 			//011A 	1205

		//;CX588.c: 70: DelayMs(1);
		LDWI 	1H 			//011B 	2A01
		LCALL 	156H 			//011C 	3156

		//;CX588.c: 71: DelayUs(100);
		LDWI 	64H 			//011D 	2A64
		LJUMP 	1A9H 			//011E 	39A9

		//;CX588_SOUND.C: 221: POWER_INITIAL();
		LCALL 	176H 			//011F 	3176

		//;CX588_SOUND.C: 222: TIMER2_INITIAL();
		LCALL 	132H 			//0120 	3132

		//;CX588_SOUND.C: 224: CX588_GPIO_Init();
		LCALL 	1B3H 			//0121 	31B3

		//;CX588_SOUND.C: 225: CX588_SET_Sound_Size(SoundLeve_15);
		LDWI 	EFH 			//0122 	2AEF
		LCALL 	1D8H 			//0123 	31D8

		//;CX588_SOUND.C: 227: Seed_Val = EEPROMread(0x00);
		LDWI 	0H 			//0124 	2A00
		LCALL 	191H 			//0125 	3191
		STR 	51H 			//0126 	01D1
		CLRR 	52H 			//0127 	0152

		//;CX588_SOUND.C: 231: {
		//;CX588_SOUND.C: 232: Play_Sound(&SW1_vibrate);
		LDWI 	54H 			//0128 	2A54
		LCALL 	4BH 			//0129 	304B

		//;CX588_SOUND.C: 233: TIME_OUT_Enter_Sleep();
		LCALL 	A8H 			//012A 	30A8

		//;CX588_SOUND.C: 234: srand(Seed_Val);
		BCR 	STATUS,5 		//012B 	1283
		LDR 	52H,0 			//012C 	0852
		STR 	41H 			//012D 	01C1
		LDR 	51H,0 			//012E 	0851
		STR 	40H 			//012F 	01C0
		LCALL 	1CEH 			//0130 	31CE
		LJUMP 	128H 			//0131 	3928

		//;CX588_SOUND.C: 181: T2CON0 = 0B01001011;
		LDWI 	4BH 			//0132 	2A4B
		BCR 	STATUS,5 		//0133 	1283
		STR 	12H 			//0134 	0192

		//;CX588_SOUND.C: 185: T2CON1 = 0B00001000;
		LDWI 	8H 			//0135 	2A08
		BSR 	STATUS,5 		//0136 	1A83
		STR 	1EH 			//0137 	019E

		//;CX588_SOUND.C: 186: TMR2H = 0;
		BCR 	STATUS,5 		//0138 	1283
		CLRR 	13H 			//0139 	0113

		//;CX588_SOUND.C: 187: TMR2L = 0;
		CLRR 	11H 			//013A 	0111

		//;CX588_SOUND.C: 188: PR2H = 100;
		LDWI 	64H 			//013B 	2A64
		BSR 	STATUS,5 		//013C 	1A83
		STR 	12H 			//013D 	0192

		//;CX588_SOUND.C: 189: PR2L = 250;
		LDWI 	FAH 			//013E 	2AFA
		STR 	11H 			//013F 	0191

		//;CX588_SOUND.C: 191: TMR2IF = 0;
		BCR 	STATUS,5 		//0140 	1283
		BCR 	CH,1 			//0141 	108C

		//;CX588_SOUND.C: 192: TMR2ON = 1;
		BSR 	12H,2 			//0142 	1912
		RET		 					//0143 	0004
		BCR 	STATUS,5 		//0144 	1283
		STR 	46H 			//0145 	01C6

		//;CX588.c: 78: PA4 = 0;
		BCR 	5H,4 			//0146 	1205

		//;CX588.c: 79: DelayMs(6);
		LDWI 	6H 			//0147 	2A06
		LCALL 	156H 			//0148 	3156

		//;CX588.c: 81: for (unsigned char i = 0; i < 8; i++)
		CLRR 	47H 			//0149 	0147

		//;CX588.c: 82: {
		//;CX588.c: 83: CX588_OneWire_WriteBit(byte_byte & 0x01);
		LDR 	46H,0 			//014A 	0846
		ANDWI 	1H 			//014B 	2401
		LCALL 	10BH 			//014C 	310B
		LDWI 	8H 			//014D 	2A08

		//;CX588.c: 84: byte_byte >>= 1;
		BCR 	STATUS,0 		//014E 	1003
		RRR	46H,1 			//014F 	06C6
		INCR	47H,1 			//0150 	09C7
		SUBWR 	47H,0 			//0151 	0C47
		BTSS 	STATUS,0 		//0152 	1C03
		LJUMP 	14AH 			//0153 	394A

		//;CX588.c: 85: }
		//;CX588.c: 86: PA4 = 1;
		BSR 	5H,4 			//0154 	1A05
		RET		 					//0155 	0004
		STR 	42H 			//0156 	01C2

		//;CX588.c: 29: unsigned char a,b;
		//;CX588.c: 30: for(a=0;a<Time;a++)
		CLRR 	43H 			//0157 	0143
		LDR 	42H,0 			//0158 	0842
		SUBWR 	43H,0 			//0159 	0C43
		BTSC 	STATUS,0 		//015A 	1403
		RET		 					//015B 	0004

		//;CX588.c: 31: {
		//;CX588.c: 32: for(b=0;b<5;b++)
		CLRR 	44H 			//015C 	0144

		//;CX588.c: 33: {
		//;CX588.c: 34: DelayUs(98);
		LDWI 	62H 			//015D 	2A62
		LCALL 	1A9H 			//015E 	31A9
		LDWI 	5H 			//015F 	2A05
		INCR	44H,1 			//0160 	09C4
		SUBWR 	44H,0 			//0161 	0C44
		BTSS 	STATUS,0 		//0162 	1C03
		LJUMP 	15DH 			//0163 	395D
		INCR	43H,1 			//0164 	09C3
		LJUMP 	158H 			//0165 	3958
		STR 	72H 			//0166 	01F2

		//;CX588.c: 29: unsigned char a,b;
		//;CX588.c: 30: for(a=0;a<Time;a++)
		CLRR 	73H 			//0167 	0173
		LDR 	72H,0 			//0168 	0872
		SUBWR 	73H,0 			//0169 	0C73
		BTSC 	STATUS,0 		//016A 	1403
		RET		 					//016B 	0004

		//;CX588.c: 31: {
		//;CX588.c: 32: for(b=0;b<5;b++)
		CLRR 	74H 			//016C 	0174

		//;CX588.c: 33: {
		//;CX588.c: 34: DelayUs(98);
		LDWI 	62H 			//016D 	2A62
		LCALL 	1BDH 			//016E 	31BD
		LDWI 	5H 			//016F 	2A05
		INCR	74H,1 			//0170 	09F4
		SUBWR 	74H,0 			//0171 	0C74
		BTSS 	STATUS,0 		//0172 	1C03
		LJUMP 	16DH 			//0173 	396D
		INCR	73H,1 			//0174 	09F3
		LJUMP 	168H 			//0175 	3968

		//;CX588_SOUND.C: 203: OSCCON = 0B01110000;
		LDWI 	70H 			//0176 	2A70
		BSR 	STATUS,5 		//0177 	1A83
		STR 	FH 			//0178 	018F

		//;CX588_SOUND.C: 204: INTCON = 0;
		CLRR 	INTCON 			//0179 	010B

		//;CX588_SOUND.C: 206: OPTION = 0B00000000;
		CLRR 	1H 			//017A 	0101

		//;CX588_SOUND.C: 207: TRISA = 0B00000100;
		LDWI 	4H 			//017B 	2A04
		STR 	5H 			//017C 	0185

		//;CX588_SOUND.C: 208: PSRCA = 0;
		CLRR 	8H 			//017D 	0108

		//;CX588_SOUND.C: 209: PSINKA = 0;
		CLRR 	17H 			//017E 	0117

		//;CX588_SOUND.C: 210: PORTA = 0B00000000;
		BCR 	STATUS,5 		//017F 	1283
		CLRR 	5H 			//0180 	0105

		//;CX588_SOUND.C: 211: WPUA = 0B00000000;
		BSR 	STATUS,5 		//0181 	1A83
		CLRR 	15H 			//0182 	0115
		RET		 					//0183 	0004
		STR 	48H 			//0184 	01C8

		//;CX588.c: 98: if (Sound_Code < 0xCF)
		LDWI 	CFH 			//0185 	2ACF
		SUBWR 	48H,0 			//0186 	0C48
		BTSC 	STATUS,0 		//0187 	1403
		RET		 					//0188 	0004

		//;CX588.c: 99: {
		//;CX588.c: 100: if(CX588_Get_Busy_State())
		LCALL 	1D5H 			//0189 	31D5
		XORWI 	0H 			//018A 	2600
		BTSC 	STATUS,2 		//018B 	1503
		RET		 					//018C 	0004

		//;CX588.c: 101: {
		//;CX588.c: 102: CX588_OneWire_WriteByte(Sound_Code);
		LDR 	48H,0 			//018D 	0848
		LCALL 	144H 			//018E 	3144

		//;CX588.c: 103: DelayMs(20);
		LDWI 	14H 			//018F 	2A14
		LJUMP 	156H 			//0190 	3956
		STR 	40H 			//0191 	01C0

		//;CX588_SOUND.C: 123: unsigned char ReEEPROMread;
		//;CX588_SOUND.C: 124: EEADR = EEAddr;
		BSR 	STATUS,5 		//0192 	1A83
		STR 	1BH 			//0193 	019B

		//;CX588_SOUND.C: 125: RD=1;
		BSR 	1CH,0 			//0194 	181C

		//;CX588_SOUND.C: 126: __nop();
		NOP		 					//0195 	0000

		//;CX588_SOUND.C: 127: __nop();
		NOP		 					//0196 	0000

		//;CX588_SOUND.C: 128: __nop();
		NOP		 					//0197 	0000

		//;CX588_SOUND.C: 129: __nop();
		NOP		 					//0198 	0000

		//;CX588_SOUND.C: 130: ReEEPROMread =EEDAT;
		BSR 	STATUS,5 		//0199 	1A83
		LDR 	1AH,0 			//019A 	081A
		BCR 	STATUS,5 		//019B 	1283
		STR 	41H 			//019C 	01C1

		//;CX588_SOUND.C: 131: return ReEEPROMread;
		RET		 					//019D 	0004

		//;CX588.c: 124: PA4 = 1;
		BCR 	STATUS,5 		//019E 	1283
		BSR 	5H,4 			//019F 	1A05

		//;CX588.c: 125: DelayMs(1);
		LDWI 	1H 			//01A0 	2A01
		LCALL 	166H 			//01A1 	3166

		//;CX588.c: 126: PA4 = 0;
		BCR 	STATUS,5 		//01A2 	1283
		BCR 	5H,4 			//01A3 	1205

		//;CX588.c: 127: DelayMs(40);
		LDWI 	28H 			//01A4 	2A28
		LCALL 	166H 			//01A5 	3166

		//;CX588.c: 128: PA4 = 1;
		BCR 	STATUS,5 		//01A6 	1283
		BSR 	5H,4 			//01A7 	1A05
		RET		 					//01A8 	0004
		STR 	40H 			//01A9 	01C0

		//;CX588.c: 14: unsigned char a;
		//;CX588.c: 15: for(a=0;a<Time;a++)
		CLRR 	41H 			//01AA 	0141
		LDR 	40H,0 			//01AB 	0840
		SUBWR 	41H,0 			//01AC 	0C41
		BTSC 	STATUS,0 		//01AD 	1403
		RET		 					//01AE 	0004

		//;CX588.c: 16: {
		//;CX588.c: 17: __nop();
		NOP		 					//01AF 	0000
		BCR 	STATUS,5 		//01B0 	1283
		INCR	41H,1 			//01B1 	09C1
		LJUMP 	1ABH 			//01B2 	39AB

		//;CX588.c: 41: TRISA |= 0b00000001;
		BSR 	STATUS,5 		//01B3 	1A83
		BSR 	5H,0 			//01B4 	1805

		//;CX588.c: 42: PSRCA |= 0b00000000;
		LDR 	8H,0 			//01B5 	0808

		//;CX588.c: 48: PSINKA |= 0b00000000;
		LDR 	17H,0 			//01B6 	0817

		//;CX588.c: 49: PORTA |= 0b00010001;
		LDWI 	11H 			//01B7 	2A11
		BCR 	STATUS,5 		//01B8 	1283
		IORWR 	5H,1 			//01B9 	0385

		//;CX588.c: 50: WPUA |= 0b00000001;
		BSR 	STATUS,5 		//01BA 	1A83
		BSR 	15H,0 			//01BB 	1815
		RET		 					//01BC 	0004
		STR 	70H 			//01BD 	01F0

		//;CX588.c: 14: unsigned char a;
		//;CX588.c: 15: for(a=0;a<Time;a++)
		CLRR 	71H 			//01BE 	0171
		LDR 	70H,0 			//01BF 	0870
		SUBWR 	71H,0 			//01C0 	0C71
		BTSC 	STATUS,0 		//01C1 	1403
		RET		 					//01C2 	0004

		//;CX588.c: 16: {
		//;CX588.c: 17: __nop();
		NOP		 					//01C3 	0000
		INCR	71H,1 			//01C4 	09F1
		LJUMP 	1BFH 			//01C5 	39BF

		//;CX588_SOUND.C: 166: TRISA2 = 1;
		BSR 	5H,2 			//01C6 	1905

		//;CX588_SOUND.C: 167: ReadAPin = PORTA;
		BCR 	STATUS,5 		//01C7 	1283
		LDR 	5H,0 			//01C8 	0805

		//;CX588_SOUND.C: 168: PAIF = 0;
		BCR 	INTCON,0 		//01C9 	100B

		//;CX588_SOUND.C: 169: IOCA2 = 1;
		BSR 	STATUS,5 		//01CA 	1A83
		BSR 	16H,2 			//01CB 	1916

		//;CX588_SOUND.C: 170: PAIE = 1;
		BSR 	INTCON,3 		//01CC 	198B
		RET		 					//01CD 	0004
		LDR 	40H,0 			//01CE 	0840
		STR 	55H 			//01CF 	01D5
		LDR 	41H,0 			//01D0 	0841
		STR 	56H 			//01D1 	01D6
		CLRR 	57H 			//01D2 	0157
		CLRR 	58H 			//01D3 	0158
		RET		 					//01D4 	0004

		//;CX588.c: 134: if(PA0)
		BTSC 	5H,0 			//01D5 	1405

		//;CX588.c: 135: return 1;
		RETW 	1H 			//01D6 	2101

		//;CX588.c: 136: else
		//;CX588.c: 137: return 0;
		RETW 	0H 			//01D7 	2100
		BCR 	STATUS,5 		//01D8 	1283
		STR 	48H 			//01D9 	01C8

		//;CX588.c: 92: CX588_OneWire_WriteByte(Sound_Code);
		LJUMP 	144H 			//01DA 	3944

		//;CX588.c: 117: CX588_OneWire_WriteByte(0xF0);
		LDWI 	F0H 			//01DB 	2AF0
		LJUMP 	144H 			//01DC 	3944
			END
