// Project:  FT61F14X_SLEEP.prj
// Device:   FT61F14X
// Memory:   PROM=4Kx14, SRAM=0.5KB, EEPROM=128
// Description: 程序在PB3输出50Hz方波，2秒后进入休眠，无波形输出

// RELEASE HISTORY
// VERSION DATE     DESCRIPTION
// 1.1     24-2-2   修改文件头
//*********************************************************
#include "SYSCFG.h"
//***********************宏定义****************************
#define  unchar     unsigned char 

#define  DemoPortOut	PB3   

unchar  outputcounter=0;
/*-------------------------------------------------
* 函数名：POWER_INITIAL
* 功能：  上电系统初始化
* 输入：  无
* 输出：  无
 --------------------------------------------------*/	
void POWER_INITIAL (void) 
{
	OSCCON = 0B01110001;	//16MHz 1:1
	INTCON = 0;  			//暂禁止所有中断
    
	PORTA = 0B00000000;		
	TRISA = 0B00000000;		//PA输入输出 0-输出 1-输入
	PORTB = 0B00000000;		
	TRISB = 0B00000000;		//PB输入输出 0-输出 1-输入	PB3->输出						
	PORTC = 0B00000000; 	
	TRISC = 0B00000000;		//PC输入输出 0-输出 1-输入  	
	
	WPUA = 0B00000000;     	//PA端口上拉控制 1-开上拉 0-关上拉
	WPUB = 0B00000000;     	//PB端口上拉控制 1-开上拉 0-关上拉
	WPUC = 0B00000000;     	//PC端口上拉控制 1-开上拉 0-关上拉
    
    WPDA = 0B00000000;     	//PA端口下拉控制 1-开下拉 0-关下拉
	WPDB = 0B00000000;     	//PB端口下拉控制 1-开下拉 0-关下拉
	WPDC = 0B00000000;     	//PC端口下拉控制 1-开下拉 0-关下拉
    
    PSRC0 = 0B11111111;  	//PORTA 源电流设置最大 0:最小，1:最大
    PSRC1 = 0B11111111;     //PORTB 源电流设置最大 0:最小，1:最大
    PSRC2 = 0B11111111;		//PORTC 源电流设置最大 00:最小 11:最大    
    
    PSINK0 = 0B11111111;  	//PORTA灌电流设置最大 0:最小，1:最大
    PSINK1 = 0B11111111; 	//PORTB灌电流设置最大 0:最小，1:最大
    PSINK2 = 0B11111111;	//PORTC灌电流设置最大 0:最小，1:最大
	
    ANSELA = 0B00000000;    //全为数字管脚
}
/*------------------------------------------------- 
* 函数名称：DelayUs
* 功能：    短延时函数 --16M-2T--大概快1%左右.
* 输入参数：Time延时时间长度 延时时长Time Us
* 返回参数：无 
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
* 函数名称：DelayMs
* 功能：    短延时函数
* 输入参数：Time延时时间长度 延时时长Time ms
* 返回参数：无 
 -------------------------------------------------*/
void DelayMs(unsigned char Time)
{
	unsigned char a,b;
	for(a=0;a<Time;a++)
	{
		for(b=0;b<5;b++)
		{
		 	DelayUs(197); //快1%
		}
	}
}
/*-------------------------------------------------
* 函数名: main 
* 功能：  主函数
* 输入：  无
* 输出：  无
 --------------------------------------------------*/
void main(void)
{
	POWER_INITIAL();		//系统初始化
	while(1)
	{
		DemoPortOut = 1; 	
		DelayMs(10);     	//10ms
		DemoPortOut = 0;
		DelayMs(10); 
        
        if(++outputcounter>100)//2秒进入休眠
        {
        	outputcounter=0;
            
        	SLEEP(); 
            NOP();
            NOP();
        }
	}
}