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
#include    "RFFC2071A.h"
#include    "stdbool.h"
#include 	"string.h"
//===========================================================
#define unchar unsigned char

#define U_TX PA6
#define U_RX PA7
#define LED_LOCK PB7 // PLL Lock input
#define LED_0 PC1

// UART Buffer Definitions
#define RXBUFFERSIZE 32
volatile unchar receivedata[RXBUFFERSIZE] = 0;
volatile unchar rxCounter = 0; // how many bytes received
volatile unchar rxIndexIp = 0; // current byte index being received
volatile unchar rxIndexOp = 0; // current byte index being processed
#define TXBUFFERSIZE 64
volatile unchar toSend[TXBUFFERSIZE] = 0;
volatile unchar txCounter = 0; // how many bytes to send
volatile unchar txIndexIp = 0; // current byte index being sent
volatile unchar txIndexOp = 0; // current byte index being processed


//Variable definition
const char hex_chars[] = "0123456789ABCDEF"; // Shared hex digit lookup table
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
 if (URRXNE && RXNEF) // Received data interrupt
  {
    RXNEF = 1; // Clear interrupt flag
    {
      receivedata[rxIndexIp] = URDATAL;
      rxIndexIp = (rxIndexIp + 1) & (RXBUFFERSIZE - 1);
      rxCounter++;
      NOP();
    }
  }
  //----------------------------
  if (TCEN && TCF) // Transmit complete interrupt
  {
    TCF = 1; // Clear interrupt flag

    if (txCounter > 0)
    {
      URDATAL = toSend[txIndexOp];
      txIndexOp = (txIndexOp + 1) & (TXBUFFERSIZE - 1);
      txCounter--;
    }
    NOP();
  }

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
  WPUB = 0B00000010; // PB PULL HIGH CONTROL  1- PULL HIGH 0- NO PULL HIGH (PB1 PULL HIGH)
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
* Proc Name: UART_INITIAL
* Function : UART Initialization
* Input  None
* Output  None
 --------------------------------------------------*/
void UART_INITIAL(void)
{
  PCKEN |= 0B00100000; // ENABLE UART CLOCK

  URIER = 0B00100001; // ENABLE UART INTERRUPTS
  URLCR = 0B00000001; // 8 BIT DATA, 1 STOP BIT, NO PARITY, NO FLOW CONTROL
  URMCR = 0B00011000;

  URDLL = 104; // 9600 Baud Rate = Fosc/16*[URDLH:URDLL]
  URDLH = 0;
  TCF = 1;
  INTCON = 0B11000000;

  // TCF: Transmit Complete Flag
  // TXEF:1 Transmit Buffer Empty Flag
  // RXNEF:1 Receive Buffer Not Empty Flag
}
/*-------------------------------------------------
* Proc Name: SendByteToUART
* Function : Sedn a byte to UART
*             if buffer empty , send 1st byte directly
* Input : data to send
* Output  None
 --------------------------------------------------*/
void SendByteToUART(unchar data)
{
  if (txCounter == 0 && TXEF)
  {
    TCF = 1;
    URDATAL = data;
    return;
  }
  if (txCounter >= TXBUFFERSIZE)
  {
    return; // buffer full
  }
  toSend[txIndexIp] = data;
  txIndexIp = (txIndexIp + 1) & (TXBUFFERSIZE - 1);
  txCounter++;
}
/*-------------------------------------------------
* Proc Name: SendStringToUART
* Function : Sedn a string to UART
*
* Input : string to send
* Output  None
 --------------------------------------------------*/
void SendStringToUART(const char *str)
{
  while (*str)
  {
    SendByteToUART(*str);
    str++;
  }
}
/*-------------------------------------------------
* Proc Name: ReceiveByteFromUART
* Function : Receive a byte from UART
* Input : None
* Output : data received
 --------------------------------------------------*/
unchar ReceiveByteFromUART(void)
{
  unsigned char retData;
  if (rxCounter > 0)
  {
    rxCounter--;
    retData = receivedata[rxIndexOp];
    rxIndexOp = (rxIndexOp + 1) & (RXBUFFERSIZE - 1);
    return retData;
  }
  return 0;
}


/*-------------------------------------------------
* Proc Name: HiNibbleToHex
* Function : Convert high nibble of a byte to uppercase hex char
* Input    : val - source byte
* Output   : uppercase hex character ('0'-'9', 'A'-'F')
 -------------------------------------------------*/
unchar HiNibbleToHex(unchar val)
{
    return hex_chars[(val >> 4) & 0x0F];
}
/*-------------------------------------------------
* Proc Name: LoNibbleToHex
* Function : Convert low nibble of a byte to uppercase hex char
* Input    : val - source byte
* Output   : uppercase hex character ('0'-'9', 'A'-'F')
 -------------------------------------------------*/
unchar LoNibbleToHex(unchar val)
{
    return hex_chars[val & 0x0F];
}

//===========================================================
//Function name��main
//parameters����
//returned value����
//===========================================================
main()
{
    uint16_t readback;
    unchar i;

    POWER_INITIAL(); // Power Initialization
    UART_INITIAL();
    RFFC2071A_Init();
  RFFC2071A_Enable();
   RFFC2071A_DefaultConfig();

    while (1)
    {
        readback = RFFC2071A_ReadReg(REG_READBACK);
      //  readback = RFFC2071A_ReadReg(0x05);
        // Send readback value as 4-digit hex
        SendStringToUART("RB:0x");
        SendByteToUART(HiNibbleToHex((unchar)(readback >> 8)));
        SendByteToUART(LoNibbleToHex((unchar)(readback >> 8)));
        SendByteToUART(HiNibbleToHex((unchar)(readback & 0xFF)));
        SendByteToUART(LoNibbleToHex((unchar)(readback & 0xFF)));
        SendStringToUART(" LOCK:");
        SendByteToUART('0' + (readback & 0x0001));
        SendStringToUART("\r\n");

        // 2-second delay (8 x 250 ms, max per call is 255)
        for (i = 0; i < 2; i++)
        {
            DelayMs(250);
        }
    }
}
//===========================================================
