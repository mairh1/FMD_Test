#ifndef CX588_H
#define CX588_H

#include "FT60F21X.h"

#define	GPIO_OneLine PA1
#define GPIO_Busy	 PA2


typedef enum
{
    SoundLeve_0=0xE0,
    SoundLeve_1,
    SoundLeve_2,
    SoundLeve_3,
    SoundLeve_4,
    SoundLeve_5,
    SoundLeve_6,
    SoundLeve_7,
    SoundLeve_8,
    SoundLeve_9,
    SoundLeve_10,
    SoundLeve_11,
    SoundLeve_12,
    SoundLeve_13,
    SoundLeve_14,
    SoundLeve_15
}CX588_SoundSize;

#define CX588_STOPPLAY_CMD  0xF0

void DelayUs(unsigned char Time);
void DelayMs(unsigned char Time);
void CX588_GPIO_Init(void);
void CX588_SET_Sound_Size(CX588_SoundSize Sound_Code);
void CX588_Play_Sound(unsigned char Sound_Code);
void CX588_Stop_Sound(void);
unsigned char CX588_Get_Busy_State(void);

#endif