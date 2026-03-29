//Project: DualMixer.prj
// Device: FT61F14X
// Memory: Flash 4KX14b, EEPROM 128X8b, SRAM 512X8b
// Author: Yogi Fang 
//Company: Anyware Technology Co., Ltd.
//Version: Ver 1.0	
//   Date: 2026-03-26
#ifndef __DUALMIXER_H
#define __DUALMIXER_H

typedef unsigned char u8;
typedef unsigned int u16;
typedef unsigned long u32;

void POWER_INITIAL(void);
void DelayUs(unsigned char Time);
void DelayMs(unsigned char Time);
unsigned char HiNibbleToHex(unsigned char val);
unsigned char LoNibbleToHex(unsigned char val);




#endif 