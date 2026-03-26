// Project:  FT61F14X_ADC_Software_Trigger.prj
// Device:   FT61F14X
// Memory:   PROM=4Kx14, SRAM=0.5KB, EEPROM=128
// Description: 程序采样AN0通道，选择内部2V为参考电压，ADC触发条件软件触发，采样AD值并计算其电压
  
// RELEASE HISTORY
// VERSION DATE     DESCRIPTION
// 1.1     24-2-4   修改文件头
	
//********************************************************
#include "SYSCFG.h"
//******************宏定义********************************
#define  unchar     unsigned char 
#define  unint      unsigned int
#define  unlong     unsigned long

volatile unint  adcData;
volatile unint  theVoltage;
/*-------------------------------------------------
* 函数名：POWER_INITIAL
* 功能：  上电系统初始化
* 输入：  无
* 输出：  无
 --------------------------------------------------*/	
void POWER_INITIAL (void) 
{
	OSCCON = 0B01110001;	//16MHZ 1:1
    PCKEN |=0B00000001;		//AD模块时钟使能
    
	INTCON = 0;  			//暂禁止所有中断
    
	PORTA = 0B00000000;
	TRISA = 0B00000000;		//PA输入输出 0-输出 1-输入
	PORTB = 0B00000000;
	TRISB = 0B00000010;		//PB输入输出 0-输出 1-输入
	//PB1=AN0->输入
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
}
/*------------------------------------------------- 
* 函数名称：DelayUs
* 功能：    短延时函数 --16M-2T--大概快1%左右.
* 输入参数：Time 延时时间长度 延时时长Time Us
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
* 函数名：ADC_INITIAL
* 功能：  ADC初始化
* 输入：  无
* 输出：  无
 --------------------------------------------------*/
void ADC_INITIAL(void) 
{
    ANSELA = 0B00000001;    //模拟口设置，AN0为模拟管脚

	ADCON1 = 0B11100100; 	//右对齐，转换时钟Fosc/64，负参考电压GND，正参考电压内部电压(2V)
	//Bit7: 对齐方式选择位
	//1 = 右对齐
	//0 = 左对齐
  
	//Bit[6:4]:ADC转换时钟选择位 (转换时钟越慢，采样越精准)
	//000 = SysClk/2
	//001 = SysClk/8
	//010 = SysClk/32
	//011 = LIRC
	//100 = SysClk/4
	//101 = SysClk/16
	//110 = SysClk/64
	//111 = LIRC
	
	//Bit[3:2]:ADC负参考电压配置位（使用PB6连接外部参考电压或外部电容）
	//00 = Int Vref（内部参考电压）
	//01 = GND
	//10 = Int Vref + Ext Cap（内部参考电压 + 外部电容）
	//11 = Ext Vref（外部参考电压）

  	//Bit[1:0]:ADC正参考电压配置位（使用PB5连接外部参考电压或外部电容）
	//00 = Int Vref（内部参考电压）
	//01 = VDD
	//10 = Int Vref + Ext Cap（内部参考电压 + 外部电容）
	//11 = Ext Vref（外部参考电压）
                             
	ADCON0 = 0B00000000; 	//选择AD转换通道0，使能ADC
  	//Bit[6:4]:ADC模拟通道选择位
	//000 = AN0
	//001 = AN1
	//010 = AN2
	//011 = AN3
	//100 = AN4
	//101 = AN5
	//110 = AN6
	//111 = 1/4 VDD
	//其余保留

    //Bit3: 保留位

    //Bit2:	ADC触发信号类型选择
	//该位决定启动ADC的触发条件
	//0 = 当软件设定GO/DONE位，启动AD转换
	//1 = 需要外部触发信号触发才可启动AD转换，触发事件置位GO/DONE位。
	//外部触发信号条件由寄存器ETGSEL<2:0>和ETGTYP<1:0>决定。
  
    //Bit1:AD转换状态位
	//0 = A/D转换完成/未进行。
	//1 = A/D转换正在进行或硬件触发延时正在计数。

    //Bit0:使能ADC  
	//0 = ADC被禁止且不消耗工作电流
	//1 = ADC被使能
              
    ADCON2 = 0B01000000; 	//选择内部正参考电压2V，无外部触发源
    //Bit[7:6]:ADC内部参考电压配置位
	//00 = 0.5V
	//01 = 2V
	//10 = 3V
	//11 = float（悬空）
		
	//Bit[5:4]:外部触发信号类型选择
	//当ADEX置1，该位决定响应外部触发的类型
	//00 = PWM 或 ADC_ETR脚的下降沿
	//01 = PWM 或 ADC_ETR脚的上升沿
	//10 = 一个PWM周期的中点
	//11 = 一个PWM周期的终点
		
	//Bit3:ADC外部触发延时计数器阈值 第8位
		
	//Bit[2:0]:外部触发源选择
	//当ADEX为1，该位选择外部触发ADC的来源
	//选择PWM源时需要配置TIMER为PWM输出模式并使能输出。
	//000 = PWM0
	//001 = PWM1
	//010 = PWM2
	//011 = PWM3
	//100 = PWM4
	//101 = PWM5
	//110 = PWM6
	//111 = ADC_ETR

    ADCON3 = 0B00000000; 
    //Bit7:ADC比较结果响应故障刹车使能
	//0 = 禁止
	//1 = ADC触发故障刹车功能使能
		
	//Bit6:ADC比较器输出极性选择位
	//0 = 若ADC结果的高八位大于或等于ADCMPH[7:0]，ADCMPO为1
	//1 = 若ADC结果的高八位小于ADCMPH[7:0]，ADCMPO为1

	//Bit5:ADC结果比较使能位
	//0 = ADC结果比较功能关闭
	//1 = ADC结果比较功能打开
		
	//Bit4:ADC比较结果输出位
	//该位输出ADCMPOP设定的比较输出结果。每次AD转换结束都会更新输出
		
	//Bit3:前沿消隐周期结束后，ADC触发使能
	//1 = 触发ADC转换
	//0 = 不触发ADC转换
		
	//Bit2:保留位
	//Bit[1:0]:外部LVD管脚输入选择，只有当LVDM为1时才有效
	//00 = ELVD0
	//01 = ELVD1
	//10 = ELVD2
	//11 = ELVD3

    ADDLY = 0B00000000;    //外部触发延时，没用到
    //ADC外部触发启动延时计数器阈值低位
	//该8位寄存器与ADCON2.7组成9位计数器，用于在外部触发启动ADC之前加入一段延迟。延迟计数器结束再开始ADC转换
	//外部延迟时间 = (ADDLY+6)×Tad
    
    ADCMPH = 0B00000000;	//ADC比较阈值,仅8位，用于ADC结果高8位比较。
    
    ADON=1; //使能ADC
    //打开 ADC 模块,等待所需 ADC 稳定时间 TST (~15 μs)，当 VADC_REF 选择内部参考电压时，则需
    //等待内部参考电压的稳定时间 TVRINT 和 TST 时间的较长者，即 max(TVRINT，TST)。
    
    DelayUs(200);  //延迟等待ADC稳定时间=max(TVRINT，TST)=450us    
    DelayUs(200); 	
    DelayUs(50); 
    //打开ADC模块,内部2V参考电压的稳定时间 TVRINT=450us     
} 
                     
/*-------------------------------------------------
* 函数名：GET_ADC_DATA
* 功能：  读取通道ADC值
* 输入：  adcChannel 通道序号
* 输出：  INT类型AD值(单次采样无滤波)
 --------------------------------------------------*/
 
unint GET_ADC_DATA (unchar adcChannel) 
{ 
	ADCON0 &= 0B00001111;        		//通道切换		   
    ADCON0 |= adcChannel<<4; 			//重新加载通道值 
 
	DelayUs(2);                        	//TACQ延时2us,外部串联电阻21kΩ
    //TACQ时间：必做，通道切换到GO/DONE置1的时间,保证内部 ADC 输入电容充满。
    //TACQ > 0.09*(R+1)us;R为外部串联电阻(kΩ),串联电阻越小越好，最大不要超过50kΩ
    
	GO = 1;             				//启动ADC 
    NOP();								//采样保持时间0~1TAD待采样完成
    NOP();
	while(GO);    						//等待ADC转换完成
    //GO=1->GO=0: 等待时间为15*TAD到16*TAD 时间，
    //其中采样保持时间需0~1TAD，转换过程需15TAD时间。
    //TAD(us)与转换时钟Fosc/ADCS[2:0]有关

    return  (unint)(ADRESH<<8|ADRESL);  //整合12位AD值
} 

/*-------------------------------------------------
* 函数名：main
* 功能：  主函数
* 输入：  无
* 输出：  无
 --------------------------------------------------*/
void main(void)
{
	POWER_INITIAL();	            				//初始化
	ADC_INITIAL();		            				//ADC初始化	
	 
	while(1)
	{
		adcData = GET_ADC_DATA(0); 					//通道0 AD值
		theVoltage = (unlong)adcData*2*1000/4096;	//电压放大1000倍			
		NOP();
		NOP();	
	}
}