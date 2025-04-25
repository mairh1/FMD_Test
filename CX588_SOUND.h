#ifndef CX588_SOUND_H
#define CX588_SOUND_H

#define VIBRATION_BUT PA2 //�𶯿��ذ���
#define TIME_FLAG 3 //��ʱ����ʱʱ�� 3*1S=3S

#define Seed_EEPROM_ADD 0x00 //������ӵ�ַ

unsigned char EEPROMread(unsigned char EEAddr);
void EEPROMwrite(unsigned char EEAddr,unsigned char Data);

void PA2_Level_Change_INITIAL();
void TIME_OUT_Enter_Sleep(void);
void Play_Sound(void);

#endif