#include "CX588.h"
#include "SYSCFG.h"
#include "FT60F21X.h"


/*-------------------------------------------------
 * ��������DelayUs
 * ���ܣ�  ����ʱ���� --16M-4T--��ſ�1%����.
 * ���룺  Time��ʱʱ�䳤�� ��ʱʱ��Time*2Us
 * �����  �� 
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
 * ��������DelayMs
 * ���ܣ�  ����ʱ���� ��1%
 * ���룺 Time��ʱʱ�䳤�� ��ʱʱ��Time ms
 * ����� �� 
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

void CX588_GPIO_Init(void)//(����ʵ���������)
{
	TRISA |= 0b00000001;				//1:���� 0:��� 
    PSRCA |= 0b00000000;
    //00:	4mA		
    //01/10:8mA
    //11:	28mA
    //Bit[3:2]:����PA5Դ����
    //Bit[1:0]:����PA4Դ����
    PSINKA |= 0b00000000;				//Bit[1:0]:����PA5��PA4 0:�������С 1:��������
    PORTA  |= 0b00010001;				//1:PAx����ߵ�ƽ	0:PAx����͵�ƽ
 	WPUA   |= 0b00000001;				//1:ʹ��PA������	0:�ر�PA������   
}


// ������дһλ����
static void CX588_OneWire_WriteBit(unsigned char bit_bit) 
{
    if (bit_bit) // д1ʱ���ߵ�ƽ1200us���͵�ƽ400us
    {     
		GPIO_OneLine = 1;
		DelayMs(1);
        DelayUs(100);//100*2=200
        GPIO_OneLine = 0;
		DelayUs(200);//200*2=400
    } 
    else // д0ʱ���ߵ�ƽ400us���͵�ƽ1200us
    {         
        GPIO_OneLine = 1;
        DelayUs(200);
        GPIO_OneLine = 0;
		DelayMs(1);
        DelayUs(100);
    }
}

// ������дһ���ֽ�����
static void CX588_OneWire_WriteByte(unsigned char byte_byte) 
{
	GPIO_OneLine = 0;
    DelayMs(6);//��������6ms

    for (unsigned char i = 0; i < 8; i++) 
    {
        CX588_OneWire_WriteBit(byte_byte & 0x01);// ��λд���ֽ�����
        byte_byte >>= 1;
    }
    GPIO_OneLine = 1;
}

//����CX588������С
void CX588_SET_Sound_Size(CX588_SoundSize Sound_Code)
{
    CX588_OneWire_WriteByte(Sound_Code);
}

//CX588���ŵ�ǰ����
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

//CX588ֹͣ������Ƶ
void CX588_Stop_Sound(void)
{
    CX588_OneWire_WriteByte(CX588_STOPPLAY_CMD);
}

//CX588�ػ�������͹���ģʽ��
void CX588_Shut_Down(void)
{
    CX588_OneWire_WriteByte(CX588_SHOTDOWN_CMD);
}

//CX588�ӵ͹���ģʽ�л���
void CX588_Wake_UP(void)
{
	/* ������������40ms���� */
    GPIO_OneLine = 1;
    DelayMs(1);
    GPIO_OneLine = 0;
	DelayMs(40);
    GPIO_OneLine = 1;
}

// ���CX588�Ƿ�Ϊæµ״̬
unsigned char CX588_Get_Busy_State(void)
{
	if(GPIO_Busy)	
		return 1;
    else
		return 0;
}