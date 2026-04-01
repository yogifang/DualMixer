/**
 * RFFC2071A Driver for FT61F142
 * 3-Wire Bi-directional SPI Interface
 * 
 * Target: LO 450 MHz, Full Duplex Mode
 */

#ifndef __RFFC2071A_H
#define __RFFC2071A_H

#include <stdint.h>

//==============================================================================
// Pin Definitions - FT61F142 pin mapping
//==============================================================================
#define RFFC2071_MODE     PA4     // Mode select (Mixer 1/2)
#define RFFC2071_CLK      PB0     // Serial clock
#define RFFC2071_DATA     PB1     // Serial data (bi-directional)
#define RFFC2071_ENBL     PB2     // Device enable
#define RFFC2071_RESET    PA1     // Reset (active low)
#define RFFC2071_ENX      PA0     // Chip select (active low)

// Pin Macros (direct pin access)
#define ENX_HIGH()        (RFFC2071_ENX = 1)
#define ENX_LOW()         (RFFC2071_ENX = 0)
#define SCLK_HIGH()       (RFFC2071_CLK = 1)
#define SCLK_LOW()        (RFFC2071_CLK = 0)
#define SDATA_HIGH()      (RFFC2071_DATA = 1)
#define SDATA_LOW()       (RFFC2071_DATA = 0)
#define SDATA_READ()      (RFFC2071_DATA)

// PB1 is SDATA: TRIS bit = 0 output, 1 input
#define SDATA_OUTPUT()    (TRISB &= (uint8_t)~0x02)
#define SDATA_INPUT()     (TRISB |= 0x02)

#define ENBL_HIGH()       (RFFC2071_ENBL = 1)
#define ENBL_LOW()        (RFFC2071_ENBL = 0)
#define RESET_HIGH()      (RFFC2071_RESET = 1)
#define RESET_LOW()       (RFFC2071_RESET = 0)
#define MODE_HIGH()       (RFFC2071_MODE = 1)
#define MODE_LOW()        (RFFC2071_MODE = 0)

// Register Addresses
#define REG_LF            0x00
#define REG_XO            0x01
#define REG_CAL_TIME      0x02
#define REG_VCO_CTRL      0x03
#define REG_CT_CAL1       0x04
#define REG_CT_CAL2       0x05
#define REG_PLL_CAL1      0x06
#define REG_PLL_CAL2      0x07
#define REG_VCO_AUTO      0x08
#define REG_PLL_CTRL      0x09
#define REG_PLL_BIAS      0x0A
#define REG_MIX_CONT      0x0B
#define REG_P1_FREQ1      0x0C
#define REG_P1_FREQ2      0x0D
#define REG_P1_FREQ3      0x0E
#define REG_P2_FREQ1      0x0F
#define REG_P2_FREQ2      0x10
#define REG_P2_FREQ3      0x11
#define REG_FN_CTRL       0x12
#define REG_EXT_MOD       0x13
#define REG_FMOD          0x14
#define REG_SDI_CTRL      0x15
#define REG_GPO           0x16
#define REG_T_VCO         0x17
#define REG_IQMOD1        0x18
#define REG_IQMOD2        0x19
#define REG_IQMOD3        0x1A
#define REG_IQMOD4        0x1B
#define REG_TEMPC_CTRL    0x1C
#define REG_DEV_CTRL      0x1D
#define REG_TEST          0x1E
#define REG_READBACK      0x1F

// Bit masks used by configuration flow
#define SDI_CTRL_MODE     0x0001
#define SDI_CTRL_ENBL     0x0002
#define SDI_CTRL_SIPIN    0x0004

#define GPO_LOCK          0x0001

#define MIX_CONT_MIX_IDD  0x0700
#define MIX_CONT_FULLD    0x4000

#define DEV_CTRL_RELOCK   0x0001

#define READBACK_LOCK     0x0001

// Function Prototypes
void RFFC2071A_Init(void);
void RFFC2071A_Reset(void);
void RFFC2071A_SendOneClock(void);
void RFFC2071A_DefaultConfig(void);
void RFFC2071A_WriteReg(uint8_t addr, uint16_t data);
uint16_t RFFC2071A_ReadReg(uint8_t addr);
void RFFC2071A_SetFrequency(uint32_t freq_mhz);
void RFFC2071A_SetFrequencyPath1(uint32_t freq_mhz);
void RFFC2071A_SetFrequencyPath2(uint32_t freq_mhz);
void RFFC2071A_SetDualFrequency(uint32_t freq1_mhz, uint32_t freq2_mhz);
void RFFC2071A_SetFullDuplex(uint8_t enable);
void RFFC2071A_SetMixerCurrent(uint8_t current);
void RFFC2071A_Enable(void);
void RFFC2071A_Disable(void);
void RFFC2071A_SetMode(uint8_t mixer);
uint8_t RFFC2071A_IsLocked(void);
uint8_t RFFC2071A_GetVCO(void);
uint8_t RFFC2071A_GetCTCal(void);

#endif