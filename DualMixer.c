//Project: DualMixer.prj
// Device: FT61F14X
// Memory: Flash 4KX14b, EEPROM 128X8b, SRAM 512X8b
// Author: Yogi Fang 
//Company: Anyware Technology Co., Ltd.
//Version: Ver 1.0	
//   Date: 2026-03-26
//===========================================================
//===========================================================
#include	"SYSCFG.h"
#include    "DualMixer.h"
#include    "stdbool.h"
#include 	"string.h"
//===========================================================
#define unchar unsigned char
#define RFFC2701_MODE PA4
#define RFFC2701_CLK PB0
#define RFFC2701_DATA PB1
#define RFFC2701_ENBL PB2
#define RFFC2701_RESET PA1
#define RFFC2701_ENX PA0

#define U_TX PA6
#define U_RX PA7
#define LED_LOCK PB7 // PLL Lock input
#define LED_0 PC1

//Variable definition
volatile char W_TMP  @ 0x70 ;//ϵͳռ�ò�����ɾ�����޸�
volatile char BSR_TMP  @ 0x71 ;//ϵͳռ�ò�����ɾ�����޸�


void user_isr();//�û��жϳ��򣬲���ɾ��
//===========================================================

//===========================================================
//Function name��interrupt ISR
//parameters����
//returned value����
//===========================================================
void interrupt ISR(void)
{
#asm;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
	NOP;//ϵͳ���ò�����ɾ�����޸�
#endasm;//ϵͳ���ò�����ɾ�����޸�
	user_isr(); //�û��жϺ���
}
void user_isr() //�û��жϺ���
{
}


/*-------------------------------------------------
* Proc Name:POWER_INITIAL
* Function  Power Initialization
* Input  None
* Output  None
 --------------------------------------------------*/
void POWER_INITIAL(void)
{
  OSCCON = 0B01110001; // 16MHz 1:1
  INTCON = 0;          // Disable all interrupts

  PORTA = 0B00000000;
  TRISA = 0B10101100; // PA I/O 0-OUTPUT 1-INPUT (PA6-OUTPUT PA7-INPUT TX/RX) (PA0-ENX PA1-RESET PA4-MODE OUTPUT)
  PORTB = 0B00000000;
  TRISB = 0B11000000; // PB I/O 0-OUTPUT 1-INPUT （PB0-CLK PB1-DATA PB2-ENBL OUTPUT）（PB7-LOCK INPUT）
  PORTC = 0B00000000;
  TRISC = 0B00000000; // PC I/O 0-OUTPUT 1-INPUT

  WPUA = 0B00010011; // PA PULL HIGH CONTROL  1- PULL HIGH 0- NO PULL HIGH (PA0,PA1,PA4 PULL HIGH)
  WPUB = 0B00000000; // PB PULL HIGH CONTROL  1- PULL HIGH 0- NO PULL HIGH
  WPUC = 0B00000000; // PC PULL HIGH CONTROL  1- PULL HIGH 0- NO PULL HIGH

  WPDA = 0B10000000; // PA PULL DOWN CONTROL 1- PULL DOWN 0- NO PULL DOWN, PA7 PULL Down
  WPDB = 0B00000000; // PB PULL DOWN CONTROL 1- PULL DOWN 0- NO PULL DOWN
  WPDC = 0B00000000; // PC PULL DOWN CONTROL 1- PULL DOWN 0- NO PULL DOWN

  PSRC0 = 0B11111111; // PORTA CURRENT SOURCE CONFIG 0: MINIMUM 1: MAXIMUM
  PSRC1 = 0B11111111; // PORTB CURRENT SOURCE CONFIG 0: MINIMUM 1: MAXIMUM
  PSRC2 = 0B11111111; // PORTC CURRENT SOURCE CONFIG 00:MINIMUM 11: MAXIMUM

  PSINK0 = 0B11111111; // PORTA CURRENT SINK CONFIG 0: MINIMUM 1: MAXIMUM
  PSINK1 = 0B11111111; // PORTB CURRENT SINK CONFIG 0: MINIMUM 1: MAXIMUM
  PSINK2 = 0B11111111; // PORTC CURRENT SINK CONFIG 0: MINIMUM 1: MAXIMUM

  ANSELA = 0B00000000; // CONFIGURE PORTA ALL DIGITAL
}
/*-------------------------------------------------
* Proc Name:DelayUs
* Function    Delay in microseconds --16M-2T-- Accuracy within 1%.
* INPUT PARAMETERS:Time delay in microseconds
*  OUTPUT PARAMETERS:None
 -------------------------------------------------*/
void DelayUs(unsigned char Time)
{
  unsigned char a;
  for (a = 0; a < Time; a++)
  {
    NOP();
  }
}
/*-------------------------------------------------
* Proc Name:DelayMs
* Function : Delay in milliseconds -- Accuracy within 1%
* INPUT PARAMETERS:Time delay in milliseconds
*  OUTPUT PARAMETERS:None
 -------------------------------------------------*/
void DelayMs(unsigned char Time)
{
  unsigned char a, b;
  for (a = 0; a < Time; a++)
  {
    for (b = 0; b < 5; b++)
    {
      DelayUs(197);
    }
  }
}


/*-------------------------------------------------
* Proc Name:RFFC2701_INITIAL
* Function  RFFC2701 Initialization
* Input  None
* Output  None
 --------------------------------------------------*/
void RFFC2701_INITIAL(void)
{
	//RFFC2701ʼ��
	PA4 = 0; //RFFC2701_MODE
	PB0 = 0; //RFFC2701_CLK
	PB1 = 0; //RFFC2701_DATA
	PB2 = 0; //RFFC2701_ENBL
	PA1 = 0; //RFFC2701_RESET
	PA0 = 0; //RFFC2701_ENX
}


//===========================================================
//Function name��main
//parameters����
//returned value����
//===========================================================
main()
{
	  POWER_INITIAL(); // Power Initialization
  RFFC2701_INITIAL(); // RFFC2701 Initialization

  while (1)
  {
	// Main loop
  }
}
//===========================================================
