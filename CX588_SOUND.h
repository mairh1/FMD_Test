#ifndef CX588_SOUND_H
#define CX588_SOUND_H

#define VIBRATION_BUT PA2 //震动开关按键
#define TIME_FLAG 5 //定时器超时时间 5*1S=5S

void PA2_Level_Change_INITIAL();
void TIME_OUT_Enter_Sleep(void);
void Play_Sound(void);

#endif