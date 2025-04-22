#include "SYSCFG.h"
#include <stdlib.h>  // 包含rand()和srand()函数
#include "FT60F21X.h"
#include "CX588.h"

#define VIBRATION_BUT PA2 //震动开关按键
int Seed_Val = 0;	//假随机数种子

unsigned char ReadAPin;
#define TIME_FLAG 5 //超时时间
int TIME_OUT = 0;	//空闲计数值
void PA2_Level_Change_INITIAL();

void TIME_OUT_Enter_Sleep(void)
{
	if(CX588_Get_Busy_State() == 1)
	{	
		TMR2IE = 1;						//使能TIMER2的中断  
		PEIE=1;    						//使能外设中断
		GIE = 1;   						//使能全局中断
		if(TIME_OUT > TIME_FLAG)
		{
			TIME_OUT = 0;//清空计数值
			TMR2IE = 0;						//失能TIMER2的中断  
			PEIE = 0;    					//失能外设中断
			GIE = 0;   						//失能全局中断
			
            PA2_Level_Change_INITIAL();
			SLEEP(); 						//进入休眠模式
			NOP();							//SLEEP()后面要接NOP()
		}
	}
	else
	{
		TIME_OUT = 0;//清空计数值
		TMR2IE = 0;						//失能TIMER2的中断  
		PEIE = 0;    					//失能外设中断
		GIE = 0;   						//失能全局中断
	}
}

void Play_Sound(void)
{
	if(VIBRATION_BUT == 0)
	{
		DelayMs(20);
		if(VIBRATION_BUT == 0)
		{
			if(CX588_Get_Busy_State())
			{
				CX588_Play_Sound((rand()%8)+1);
                Seed_Val++;              
			}
		}		
	}
}

/*-------------------------------------------------
 * 函数名：interrupt ISR
 * 功能：  定时器2的中断处理
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/	
void interrupt ISR(void)
{
	if(TMR2IE && TMR2IF)			//1s中断一次 = 1Hz
	{
		TMR2IF = 0;
        
		if(TIME_OUT < 0xff)
			TIME_OUT++;   
	} 
         
    //PA电平变化中
	if(PAIE && PAIF)		
    {
		ReadAPin = PORTA; 		//读取PORTA数据清PAIF标志
		PAIF = 0;  				//清PAIF标志位
		PAIE = 0;  				//暂先禁止PA0中断
		IOCA2 =0;  				//禁止PA0电平变化中断
        GIE = 1;   						//使能全局中断
    }
}

/*-------------------------------------------------
 * 函数名: PA2_Level_Change_INITIAL
 * 功能：  PA端口(PA2)电平变化中断初始化
 * 输入：  无
 * 输出：  无
--------------------------------------------------*/
void PA2_Level_Change_INITIAL(void)
{
	TRISA2 = 1; 			     	//设置 PA2 输入
	ReadAPin = PORTA;	     		//清PA电平变化中断
	PAIF = 0;   			     	//清PA INT中断标志位
    IOCA2 = 1;  			     	//使能PA2电平变化中断
	PAIE = 1;   			     	//使能PA INT中断
}

/*-------------------------------------------------
 * 函数名：POWER_INITIAL
 * 功能： 上电系统初始化
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/	
void POWER_INITIAL (void) 
{ 
	OSCCON = 0B01110001;	//16MHz 1:1
	INTCON = 0;  			//暂禁止所有中断
    
	OPTION = 0;
    TRISA = 0B00000100;		//1:输入 0:输出 
    PSRCA = 0;				//00:4mA	01/10:8mA	11:28mA	bit[3:2]控制PA5源电流	bit[1:0]控制PA4源电流
    PSINKA = 0;				//bit[1:0]	控制PA5和PA4 0:灌电流最小 1:灌电流最大
    PORTA = 0B00000000;		//1:PAx输出高电平	0:PAx输出低电平	
 	WPUA  = 0B00000100;		//1:使能PA口上拉	0:关闭PA口上拉  
}
/*-------------------------------------------------
 * 函数名：main 
 * 功能：  主函数
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
void main()
{
 	POWER_INITIAL();		//系统初始化

	CX588_GPIO_Init();		//初始化CX588
    CX588_SET_Sound_Size(SoundLeve_10);
    srand(Seed_Val);		//生成随机数;
    
	while(1)
	{
		Play_Sound();  
        TIME_OUT_Enter_Sleep();
        srand(Seed_Val);		//生成随机数;    
	}   	
}
