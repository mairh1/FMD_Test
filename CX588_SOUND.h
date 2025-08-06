#ifndef CX588_SOUND_H
#define CX588_SOUND_H

/******************************************************/

#define VIBRATION_BUT PA2 		//�𶯿��ذ���
#define VIBRATION_FREQUENCY 30	//�𶯴������𶯿����˲���

#define SEED_EEPROM_ADD 0x00 //������ӵ�ַ

#define TIME_FLAG 3 //��ʱ����ʱʱ�� 3*1S=3S

/******************************************************/

void TIME_OUT_Enter_Sleep(void);
void Play_Sound(unsigned char* val);

unsigned char EEPROMread(unsigned char EEAddr);
void EEPROMwrite(unsigned char EEAddr,unsigned char Data);
void PA2_Level_Change_INITIAL();
void TIMER2_INITIAL (void);
void POWER_INITIAL (void);

/******************************************************/
#endif