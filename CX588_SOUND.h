#ifndef CX588_SOUND_H
#define CX588_SOUND_H

/******************************************************/

#define VIBRATION_BUT PA2 		//震动开关按键
#define VIBRATION_FREQUENCY 30	//震动次数（震动开关滤波）

#define SEED_EEPROM_ADD 0x00 //随机种子地址

#define TIME_FLAG 3 //定时器超时时间 3*1S=3S

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