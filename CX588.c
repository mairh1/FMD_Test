#include "CX588.h"
#include "SYSCFG.h"
#include "FT60F21X.h"


/*-------------------------------------------------
 * 函数名：DelayUs
 * 功能：  短延时函数 --16M-4T--大概快1%左右.
 * 输入：  Time延时时间长度 延时时长Time*2Us
 * 输出：  无 
 -------------------------------------------------*/
void DelayUs(unsigned char Time)
{
	unsigned char a;
	for(a=0;a<Time;a++)
	{
		NOP();
	}
} 

/*------------------------------------------------- 
 * 函数名：DelayMs
 * 功能：  短延时函数 快1%
 * 输入： Time延时时间长度 延时时长Time ms
 * 输出： 无 
 -------------------------------------------------*/
void DelayMs(unsigned char Time)
{
	unsigned char a,b;
	for(a=0;a<Time;a++)
	{
		for(b=0;b<5;b++)
		{
		 	DelayUs(98); 
		}
	}
}

void CX588_GPIO_Init(void)//(根据实际情况更改)
{
	TRISA |= 0b00000001;				//1:输入 0:输出 
    PSRCA |= 0b00000000;
    //00:	4mA		
    //01/10:8mA
    //11:	28mA
    //Bit[3:2]:控制PA5源电流
    //Bit[1:0]:控制PA4源电流
    PSINKA |= 0b00000000;				//Bit[1:0]:控制PA5和PA4 0:灌电流最小 1:灌电流最大
    PORTA  |= 0b00010001;				//1:PAx输出高电平	0:PAx输出低电平
 	WPUA   |= 0b00000001;				//1:使能PA口上拉	0:关闭PA口上拉   
}


// 单总线写一位数据
static void CX588_OneWire_WriteBit(unsigned char bit_bit) 
{
    if (bit_bit) // 写1时，高电平1200us，低电平400us
    {     
		GPIO_OneLine = 1;
		DelayMs(1);
        DelayUs(100);//100*2=200
        GPIO_OneLine = 0;
		DelayUs(200);//200*2=400
    } 
    else // 写0时，高电平400us，低电平1200us
    {         
        GPIO_OneLine = 1;
        DelayUs(200);
        GPIO_OneLine = 0;
		DelayMs(1);
        DelayUs(100);
    }
}

// 单总线写一个字节数据
static void CX588_OneWire_WriteByte(unsigned char byte_byte) 
{
	GPIO_OneLine = 0;
    DelayMs(6);//拉低总线6ms

    for (unsigned char i = 0; i < 8; i++) 
    {
        CX588_OneWire_WriteBit(byte_byte & 0x01);// 逐位写入字节数据
        byte_byte >>= 1;
    }
    GPIO_OneLine = 1;
}

//设置CX588音量大小
void CX588_SET_Sound_Size(CX588_SoundSize Sound_Code)
{
    CX588_OneWire_WriteByte(Sound_Code);
}

//CX588播放当前语音
void CX588_Play_Sound(unsigned char Sound_Code)
{
    if (Sound_Code < CX588_MAX_SOUND_CODE) 
    {
		if(CX588_Get_Busy_State())
        {
			CX588_OneWire_WriteByte(Sound_Code);
			DelayMs(20);
        }
    }
}

//CX588停止播放音频
void CX588_Stop_Sound(void)
{
    CX588_OneWire_WriteByte(CX588_STOPPLAY_CMD);
}

//CX588关机（进入低功耗模式）
void CX588_Shut_Down(void)
{
    CX588_OneWire_WriteByte(CX588_SHOTDOWN_CMD);
}

//CX588从低功耗模式中唤醒
void CX588_Wake_UP(void)
{
	/* 数据引脚拉低40ms唤醒 */
    GPIO_OneLine = 1;
    DelayMs(1);
    GPIO_OneLine = 0;
	DelayMs(40);
    GPIO_OneLine = 1;
}

// 检查CX588是否为忙碌状态
unsigned char CX588_Get_Busy_State(void)
{
	if(GPIO_Busy)	
		return 1;
    else
		return 0;
}