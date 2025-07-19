#include <stdlib.h>  // 包含rand()和srand()函数
#include <stdbool.h>
#include "SYSCFG.h"
#include "FT60F21X.h"
#include "CX588_SOUND.h"
#include "CX588.h"

unsigned char ReadAPin;
unsigned int Seed_Val = 0;	//假随机数种子
unsigned int TIME_OUT = 0;	//空闲计数值

bool SW_State = false;     //SW1开关震动状态
unsigned char SW_Vibrate = 0;    //SW1震动计数

/*-------------------------------------------------
 * 函数名：TIME_OUT_Enter_Sleep
 * 功能：  空闲超时进入Sleep模式
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
void TIME_OUT_Enter_Sleep(void)
{
	if(CX588_Get_Busy_State())
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
            CX588_Shut_Down();				//CX588进入低功耗模式
            EEPROMwrite(SEED_EEPROM_ADD,Seed_Val);//写入随机种子地址
			
            //TRISA = 0B11111111;		//1:输入 0:输?
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

/*-------------------------------------------------
 * 函数名：Play_Sound
 * 功能：  播放声音文件
 * 输入：  SW1震动计数 val
 * 输出：  无
 --------------------------------------------------*/
void Play_Sound(unsigned char* val)
{
	if(SW_State != VIBRATION_BUT)//判断震动开关是否震动（参考开关手册）
	{
		SW_State = VIBRATION_BUT;
		if((*val) < 0xfe)
            (*val)++;
        else
            (*val) = 0xff;
	}
	
	if((*val) >= VIBRATION_FREQUENCY)//震动开关超过滤波值
	{	
		if(CX588_Get_Busy_State())
		{
			CX588_Play_Sound((rand()%CX588_WAREHOUSE)+1);//播放声音
			Seed_Val++;   
			(*val) = 0;			
		}
		else
        {
			Seed_Val++;
			(*val) = 0;	           
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
	//1s中断一次 = 1Hz
	if(TMR2IE && TMR2IF)			
	{
		TMR2IF = 0;
        
		if(TIME_OUT < 0xff)
			TIME_OUT++;   
	} 
         
    //PA电平变化中断
	if(PAIE && PAIF)		
    {
		ReadAPin = PORTA; 		//读取PORTA数据清PAIF标志
		PAIF = 0;  				//清PAIF标志位
		PAIE = 0;  				//暂先禁止PA0中断
		IOCA2 =0;  				//禁止PA0电平变化中断
        GIE = 1;   				//使能全局中断
        
        //TRISA = 0B11101111;		//1:输入 0:输?
        CX588_Wake_UP();		//唤醒CX588
    }
}

/*-------------------------------------------------
 * 函数名：EEPROMread
 * 功能：  读EEPROM数据
 * 输入：  需要读取数据的地址 EEAddr
 * 输出：  对应地址读出的数据 ReEEPROMread
 --------------------------------------------------*/
unsigned char EEPROMread(unsigned char EEAddr)
{
	unsigned char ReEEPROMread;
    EEADR = EEAddr;
    RD=1;
    NOP();
    NOP();
    NOP();
    NOP();
    ReEEPROMread =EEDAT;
    return ReEEPROMread;
}

/*-------------------------------------------------
 * 函数名：EEPROMwrite
 * 功能：  写数据到EEPROM
 * 输入：  需要读取数据的地址 EEAddr
		   需要写入的数据	Data
 * 输出：  无
 --------------------------------------------------*/
void EEPROMwrite(unsigned char EEAddr,unsigned char Data)
{
	GIE = 0;					//写数据必须关闭中断
	while(GIE); 				//等待GIE为0
	EEADR = EEAddr; 	 		//EEPROM的地址
	EEDAT = Data;		 		//EEPROM的写数据  EEDATA = Data;
	EEIF = 0;
	EECON1 |= 0x34;				//置位WREN1,WREN2,WREN3三个变量.
	WR = 1;						//置位WR启动
    NOP();
    NOP();
    NOP();
    NOP();
	while(WR);      			//等待EE写入完成
	GIE = 1;
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
 * 函数名：TIMER2_INITIAL
 * 功能：  初始化设置定时器1 
 * 设置Timer2定时时长 = (1/系统时钟频率)*4*预分频值*后分频值*PR2
 *					  = (1/16000000)*4*16*10*25000=1000000us=1S
 -------------------------------------------------*/
void TIMER2_INITIAL (void) 
{
	T2CON0 = 0B01001011;
	//Bit[6:3]=0000,T2时钟后分频比1:10
    //Bit[1:0]=01,T2时钟预分频比1:16
    
    T2CON1 = 0B00001000;			//Bit[2:0] 000:	指令周期 100:HIRC Timer2时钟源选择	
    TMR2H = 0;
	TMR2L = 0;  					//TMR2赋初值
    PR2H = 100;
	PR2L = 250; 					//设置PR2=25000
    
	TMR2IF = 0;						//清TIMER2中断标志
	TMR2ON = 1;						//使能TIMER2启动
}

/*-------------------------------------------------
 * 函数名：POWER_INITIAL
 * 功能： 上电系统初始化
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/	
void POWER_INITIAL (void) 
{ 
	OSCCON = 0B01110000;	//16MHz 1:1
	INTCON = 0;  			//暂禁止所有中断
    
	OPTION = 0B00000000;		//Bit3=1 WDT MODE,PS=000=1:1 WDT RATE
    TRISA = 0B11101111;		//1:输入 0:输出 
    PSRCA = 0;				//00:4mA	01/10:8mA	11:28mA	bit[3:2]控制PA5源电流	bit[1:0]控制PA4源电流
    PSINKA = 0;				//bit[1:0]	控制PA5和PA4 0:灌电流最小 1:灌电流最大
    PORTA = 0B00000000;		//1:PAx输出高电平	0:PAx输出低电平	
 	WPUA  = 0B11101011;		//1:使能PA口上拉	0:关闭PA口上拉  
}

/*-------------------------------------------------
 * 函数名：WDT_INITIAL
 * 功能：  初始化设置看门狗32ms时间复位
 * 说明：  wdt溢出时间 = (1/32000)*16位预分频值*8位预分频值 
 * 			= (1/32kHz)*32768*64 = 65.536s
 -------------------------------------------------*/
void WDT_INITIAL (void) 
{
    CLRWDT(); //清看门狗
	WDTCON = 0B00010011;	
    //Bit5: 	0:LIRC 1:HIRC
    //Bit[4:1]: 0X05 1:1024
    //Bit0:		1:使能 WDT
	OPTION = 0B00000110;
    PSA = 1;					//预分频分配位	1：WDT	0: Timer0(option)
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
	TIMER2_INITIAL();		//初始化定时器
	WDT_INITIAL();			//看门狗初始化
    
	CX588_GPIO_Init();		//初始化CX588
    CX588_SET_Sound_Size(SoundLeve_15);//设置CX588音量最大
	
    Seed_Val = EEPROMread(SEED_EEPROM_ADD);//从eeprom中读取随机数种子
       
	while(1)
	{
		CLRWDT(); 			//清看门狗
		
		Play_Sound(&SW_Vibrate); 	//播放声音代码 
        TIME_OUT_Enter_Sleep();		//系统空闲计数（超时进入休眠模式）
        srand(Seed_Val);			//生成随机数种子;    
	}   	
}
