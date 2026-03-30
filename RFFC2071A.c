/**
 * RFFC2071A Driver for FT61F142
 * 3-Wire Bi-directional SPI Interface
 * 
 * Target: LO 450 MHz, Full Duplex Mode
 * Reference: 26 MHz TCXO (change REF_FREQ_MHZ if different)
 */

#include "SYSCFG.h"
#include "RFFC2071A.h"

#ifndef PORTA
static volatile uint8_t __rffc_dummy_porta;
#define PORTA __rffc_dummy_porta
#endif

#ifndef PORTB
static volatile uint8_t __rffc_dummy_portb;
#define PORTB __rffc_dummy_portb
#endif

#ifndef TRISA
static volatile uint8_t __rffc_dummy_trisa;
#define TRISA __rffc_dummy_trisa
#endif

#ifndef TRISB
static volatile uint8_t __rffc_dummy_trisb;
#define TRISB __rffc_dummy_trisb
#endif

//==============================================================================
// Configuration - adjust for your hardware
//==============================================================================
#define REF_FREQ_MHZ      26      // Reference frequency (MHz) - set to your TCXO frequency

//==============================================================================
// Delay function - tune for FT61F142 clock settings
//==============================================================================
static void delay_us(uint16_t us)
{
    // FT61F142 @ 16MHz, 2T mode = 8 MIPS
    // Tune NOP count to get about 1 us delay
    while (us--) {
        NOP(); NOP(); NOP(); NOP();
        NOP(); NOP(); NOP(); NOP();
    }
}

//==============================================================================
// GPIO Initialization
//==============================================================================
void RFFC2071A_Init(void)
{
    // Initial pin state
    ENX_HIGH();      // Not selected
    SCLK_LOW();      // Clock idle low
    SDATA_LOW();
    ENBL_LOW();      // Start disabled
    RESET_HIGH();    // Reset released
    MODE_LOW();      // Default to Mixer 1
    
    delay_us(100);
    
    // Hardware reset
    RFFC2071A_Reset();
    
    // Load default configuration
    RFFC2071A_DefaultConfig();
}

//==============================================================================
// Hardware Reset
//==============================================================================
void RFFC2071A_Reset(void)
{
    ENBL_LOW();      // Disable device
    RESET_LOW();     // Assert reset
    delay_us(100);
    RESET_HIGH();    // Release reset
    delay_us(100);
    ENBL_HIGH();     // Enable device
    delay_us(1000);  // Wait for device ready
}

//==============================================================================
// 3-Wire SPI Write (Bit-Bang)
//==============================================================================
void RFFC2071A_WriteReg(uint8_t addr, uint16_t data)
{
    uint8_t i;
    uint32_t tx_data;
    
    // Build 24-bit frame: [0(W) | 7-bit addr | 16-bit data]
    tx_data = ((uint32_t)(addr & 0x7F) << 16) | data;
    
    SDATA_OUTPUT();
    ENX_LOW();
    delay_us(1);

        SCLK_HIGH();  // add an undefined clock
        delay_us(1);
        SCLK_LOW();
        delay_us(1);
 

    // Send 24 bits (MSB first)
    for (i = 0; i < 24; i++) {
        // Drive SDATA
        if (tx_data & 0x800000) {
            SDATA_HIGH();
        } else {
            SDATA_LOW();
        }
        tx_data <<= 1;
        
        delay_us(1);      // Data setup before rising edge
        SCLK_HIGH();
        delay_us(1);
        SCLK_LOW();
        delay_us(1);      // Clock low / hold before next bit
    }
    
    ENX_HIGH();
    delay_us(1);
}

//==============================================================================
// 3-Wire SPI Read (Bit-Bang, Bi-directional)
//==============================================================================
uint16_t RFFC2071A_ReadReg(uint8_t addr)
{
    uint8_t i;
    uint8_t tx_byte;
    uint16_t rx_data = 0;
    
    // Build 8-bit command: [1(R) | 7-bit addr]
    tx_byte = 0x80 | (addr & 0x7F);
    
    SDATA_OUTPUT();
    ENX_LOW();
    delay_us(1);

        SCLK_HIGH();
        delay_us(1);
        SCLK_LOW();
        delay_us(1);
 

    // Send 8-bit address (MSB first)
    for (i = 0; i < 8; i++) {
        if (tx_byte & 0x80) {
            SDATA_HIGH();
        } else {
            SDATA_LOW();
        }
        tx_byte <<= 1;
        
        delay_us(1);      // Data setup before rising edge
        SCLK_HIGH();
        delay_us(1);
        SCLK_LOW();
        delay_us(1);
    }
    
    // Switch SDATA to input
    SDATA_LOW();
   delay_us(2);
   // SDATA_HIGH(); 
    SDATA_INPUT();
   delay_us(2);
    
    // Read 16-bit data (MSB first)
    for (i = 0; i < 16; i++) {
        SCLK_HIGH();      // Device updates output for sampling
        delay_us(1);
        
        rx_data <<= 1;
        rx_data = (rx_data & 0xFFFE) ;
        if (SDATA_READ()) {
            rx_data |= 1;
        }
        
        SCLK_LOW();
        delay_us(1);
    }
    
    ENX_HIGH();
    SDATA_OUTPUT();  // Restore output mode
    delay_us(1);
    
    return rx_data;
}

//==============================================================================
// Default Configuration for 450 MHz LO, Full Duplex
//==============================================================================
void RFFC2071A_DefaultConfig(void)
{
    // Loop Filter Configuration
    RFFC2071A_WriteReg(REG_LF, 0xBEFA);
    
    // Crystal oscillator configuration based on reference frequency
    // SCLK = REF_FREQ / (REF_DIV + 1), must be <= 52 MHz
    #if REF_FREQ_MHZ <= 52
        RFFC2071A_WriteReg(REG_XO, 0x4064);  // REF_DIV = 0
    #else
        RFFC2071A_WriteReg(REG_XO, 0x4164);  // REF_DIV = 1
    #endif
    
    // Calibration Timing
    RFFC2071A_WriteReg(REG_CAL_TIME, 0x1E21);
    
    // VCO Control
    RFFC2071A_WriteReg(REG_VCO_CTRL, 0x2808);
    
    // Coarse Tuning Cal
    RFFC2071A_WriteReg(REG_CT_CAL1, 0x0690);
    RFFC2071A_WriteReg(REG_CT_CAL2, 0x0690);
    
    // PLL Calibration
    RFFC2071A_WriteReg(REG_PLL_CAL1, 0x0A52);
    RFFC2071A_WriteReg(REG_PLL_CAL2, 0x0A52);
    
    // VCO Auto Select
    RFFC2071A_WriteReg(REG_VCO_AUTO, 0x1C22);
    
    // PLL Control
    RFFC2071A_WriteReg(REG_PLL_CTRL, 0x408C);
    
    // PLL Bias
    RFFC2071A_WriteReg(REG_PLL_BIAS, 0x0021);
    
    // Mixer Control - Full Duplex, High Linearity
    RFFC2071A_WriteReg(REG_MIX_CONT, 0x4F00);  // FULLD=1, MIX_IDD=6
    
    // Set LO frequencies: Path1=500 MHz, Path2=450 MHz
    RFFC2071A_SetDualFrequency(500, 450);
    
    // Frac-N Control
    RFFC2071A_WriteReg(REG_FN_CTRL, 0x0000);
    
    // SDI Control
    RFFC2071A_WriteReg(REG_SDI_CTRL, 0x0000);
    
    // GPO - Lock Detect on GPO4
    RFFC2071A_WriteReg(REG_GPO, 0x0001);
    
    // Temperature Compensation (A series)
    RFFC2071A_WriteReg(REG_T_VCO, 0x0048);
    RFFC2071A_WriteReg(REG_TEMPC_CTRL, 0x0020);
    
    // Device Control - Enable re-lock
    RFFC2071A_WriteReg(REG_DEV_CTRL, 0x0001);
}

//==============================================================================
// Calculate and write frequency registers for a specific path
// path: 1 = Path1 (REG_P1_FREQx), 2 = Path2 (REG_P2_FREQx)
//==============================================================================
static void RFFC2071A_CalcFrequency(uint32_t freq_mhz, uint8_t path)
{
    uint8_t n_div;
    uint32_t n_lo;
    uint16_t n_int;
    uint32_t n_frac;
    uint16_t freq1, freq2, freq3;
    uint8_t reg_base;
    
    // Select register base address
    reg_base = (path == 1) ? REG_P1_FREQ1 : REG_P2_FREQ1;
    
    // Calculate LO divider (keep VCO in 1500-3000 MHz range)
    if (freq_mhz >= 1500) {
        n_lo = 1;
    } else if (freq_mhz >= 750) {
        n_lo = 2;
    } else if (freq_mhz >= 375) {
        n_lo = 4;
    } else if (freq_mhz >= 188) {
        n_lo = 8;
    } else {
        n_lo = 16;
    }
    
    // VCO frequency = LO frequency * n_lo * 2 (internal /2 path)
    uint32_t vco_freq = freq_mhz * n_lo * 2;
    
    // N divider: VCO_freq = REF_freq * N
    // N = N_int + N_frac / 2^24
    n_int = vco_freq / REF_FREQ_MHZ;
    
    // N_frac = ((VCO_freq % REF_freq) * 2^24) / REF_freq
    uint32_t remainder = vco_freq % REF_FREQ_MHZ;
    n_frac = (remainder << 24) / REF_FREQ_MHZ;
    
    // Encode LO divider
    switch (n_lo) {
        case 1:  n_div = 0; break;
        case 2:  n_div = 1; break;
        case 4:  n_div = 2; break;
        case 8:  n_div = 3; break;
        case 16: n_div = 4; break;
        case 32: n_div = 5; break;
        default: n_div = 2; break;
    }
    
    // Build register values
    // Px_FREQ1: [lodiv(3) | n_int(12) | frac_msb(1)]
    freq1 = ((n_div & 0x07) << 13) | ((n_int & 0x0FFF) << 1) | ((n_frac >> 23) & 0x01);
    
    // Px_FREQ2: frac[22:7]
    freq2 = (n_frac >> 7) & 0xFFFF;
    
    // Px_FREQ3: [frac[6:0] | prsc(2) | 0(7)]
    freq3 = ((n_frac & 0x7F) << 9) | (0x02 << 7);  // Prescaler = 2
    
    // Write frequency registers
    RFFC2071A_WriteReg(reg_base + 0, freq1);  // Px_FREQ1
    RFFC2071A_WriteReg(reg_base + 1, freq2);  // Px_FREQ2
    RFFC2071A_WriteReg(reg_base + 2, freq3);  // Px_FREQ3
}

//==============================================================================
// Set Path 1 (Mixer 1) LO Frequency
//==============================================================================
void RFFC2071A_SetFrequencyPath1(uint32_t freq_mhz)
{
    RFFC2071A_CalcFrequency(freq_mhz, 1);
    
    // Trigger PLL re-lock
    RFFC2071A_WriteReg(REG_DEV_CTRL, 0x0001);
}

//==============================================================================
// Set Path 2 (Mixer 2) LO Frequency
//==============================================================================
void RFFC2071A_SetFrequencyPath2(uint32_t freq_mhz)
{
    RFFC2071A_CalcFrequency(freq_mhz, 2);
    
    // Trigger PLL re-lock
    RFFC2071A_WriteReg(REG_DEV_CTRL, 0x0001);
}

//==============================================================================
// Set Both Path Frequencies (for Full Duplex with different LO)
// freq1_mhz: Path 1 / Mixer 1 LO frequency
// freq2_mhz: Path 2 / Mixer 2 LO frequency
//==============================================================================
void RFFC2071A_SetDualFrequency(uint32_t freq1_mhz, uint32_t freq2_mhz)
{
    RFFC2071A_CalcFrequency(freq1_mhz, 1);
    RFFC2071A_CalcFrequency(freq2_mhz, 2);
    
    // Trigger PLL re-lock
    RFFC2071A_WriteReg(REG_DEV_CTRL, 0x0001);
}

//==============================================================================
// Set LO Frequency (Both paths same frequency)
// freq_mhz: target frequency (MHz), range 85-2700
//==============================================================================
void RFFC2071A_SetFrequency(uint32_t freq_mhz)
{
    RFFC2071A_SetDualFrequency(freq_mhz, freq_mhz);
}

//==============================================================================
// Enable/Disable Full Duplex Mode
//==============================================================================
void RFFC2071A_SetFullDuplex(uint8_t enable)
{
    uint16_t reg = RFFC2071A_ReadReg(REG_MIX_CONT);
    
    if (enable) {
        reg |= 0x4000;   // FULLD = 1
    } else {
        reg &= ~0x4000;  // FULLD = 0
    }
    
    RFFC2071A_WriteReg(REG_MIX_CONT, reg);
}

//==============================================================================
// Set Mixer Bias Current
// current: 0-7 (0=lowest power, 6-7=highest linearity)
//==============================================================================
void RFFC2071A_SetMixerCurrent(uint8_t current)
{
    uint16_t reg = RFFC2071A_ReadReg(REG_MIX_CONT);
    
    reg &= ~0x0700;                      // Clear MIX_IDD bits
    reg |= ((current & 0x07) << 8);      // Apply new value
    
    RFFC2071A_WriteReg(REG_MIX_CONT, reg);
}

//==============================================================================
// Enable Device
//==============================================================================
void RFFC2071A_Enable(void)
{
    ENBL_HIGH();
    delay_us(1000);
}

//==============================================================================
// Disable Device
//==============================================================================
void RFFC2071A_Disable(void)
{
    ENBL_LOW();
}

//==============================================================================
// Set MODE Pin (Mixer Select)
// mixer: 0 = Mixer 1, 1 = Mixer 2
//==============================================================================
void RFFC2071A_SetMode(uint8_t mixer)
{
    if (mixer) {
        MODE_HIGH();  // Mixer 2
    } else {
        MODE_LOW();   // Mixer 1
    }
}

//==============================================================================
// Check if PLL is Locked
//==============================================================================
uint8_t RFFC2071A_IsLocked(void)
{
    uint16_t reg = RFFC2071A_ReadReg(REG_READBACK);
    return (reg & 0x0001) ? 1 : 0;  // LOCK bit
}

//==============================================================================
// Get Current VCO Selection (1, 2, or 3)
//==============================================================================
uint8_t RFFC2071A_GetVCO(void)
{
    uint16_t reg = RFFC2071A_ReadReg(REG_READBACK);
    return (reg >> 5) & 0x03;
}

//==============================================================================
// Get Coarse Tuning Calibration Value (0-127)
//==============================================================================
uint8_t RFFC2071A_GetCTCal(void)
{
    uint16_t reg = RFFC2071A_ReadReg(REG_READBACK);
    return (reg >> 7) & 0x7F;
}

//==============================================================================
// Main Example
//==============================================================================
#ifdef RFFC2071A_EXAMPLE

void main(void)
{
    // System initialization (configure for FT61F142)
    // ...
    
    // Initialize RFFC2071A
    RFFC2071A_Init();
    
    // Wait for PLL lock
    delay_us(5000);  // 5ms
    
    // Check lock status
    if (RFFC2071A_IsLocked()) {
        // PLL is locked, ready to use
    } else {
        // Lock failed, handle error
    }
    
    // To change frequency:
    // RFFC2071A_SetFrequency(915);  // Set to 915 MHz
    
    while (1) {
        // Main loop
    }
}

#endif // RFFC2071A_EXAMPLE
