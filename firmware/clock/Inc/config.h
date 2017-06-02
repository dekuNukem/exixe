#ifndef __CONFIG_H
#define __CONFIG_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"
#include "helpers.h"
#include "shared.h"

/*
mode button is up button

when in regular mode, press mode button
to cycle through display modes:

0	24hr no temp
1	24hr with temp
2	12hr no temp
3	12hr with temp

hold mode button while booting:
enter UTC offset mode:
then use two buttons to set UTC offset

*/

#define DISPLAY_MODE_SIZE 2

#define DISPLAY_MODE_TIME_ONLY 0
#define DISPLAY_MODE_TIME_TEMP 1

#define EEPROM_ADDR_UTC_OFFSET 0
#define EEPROM_ADDR_DISPLAY_MODE 1
#define EEPROM_ADDR_USE_24HR 2

uint8_t get_display_mode(void);
int8_t get_utc_offset(void);
int8_t utc_offset_trim(int8_t value);
uint8_t get_use_24hour(void);

#ifdef __cplusplus
}
#endif

#endif


