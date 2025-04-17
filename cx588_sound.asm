//Deviec:FT60F21X
//-----------------------Variable---------------------------------
//-----------------------Variable END---------------------------------

		LJUMP 	3FEH 			//0000 	3BFE
		ORG		03EFH

		//;CX588_SOUND.C: 30: POWER_INITIAL();
		LCALL 	3F1H 			//03EF 	33F1

		//;CX588_SOUND.C: 32: while(1)
		//;CX588_SOUND.C: 33: {
		LJUMP 	3F0H 			//03F0 	3BF0

		//;CX588_SOUND.C: 12: OSCCON = 0B01110001;
		LDWI 	71H 			//03F1 	2A71
		BSR 	STATUS,5 		//03F2 	1A83
		STR 	FH 			//03F3 	018F

		//;CX588_SOUND.C: 13: INTCON = 0;
		CLRR 	INTCON 			//03F4 	010B

		//;CX588_SOUND.C: 15: OPTION = 0;
		CLRR 	1H 			//03F5 	0101

		//;CX588_SOUND.C: 16: TRISA = 0;
		CLRR 	5H 			//03F6 	0105

		//;CX588_SOUND.C: 17: PSRCA = 0;
		CLRR 	8H 			//03F7 	0108

		//;CX588_SOUND.C: 18: PSINKA = 0;
		CLRR 	17H 			//03F8 	0117

		//;CX588_SOUND.C: 19: PORTA = 0;
		BCR 	STATUS,5 		//03F9 	1283
		CLRR 	5H 			//03FA 	0105

		//;CX588_SOUND.C: 20: WPUA = 0;
		BSR 	STATUS,5 		//03FB 	1A83
		CLRR 	15H 			//03FC 	0115
		RET		 					//03FD 	0004
		CLRR 	STATUS 			//03FE 	0103
		LJUMP 	3EFH 			//03FF 	3BEF
			END
