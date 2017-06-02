#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "eeprom.h"
#include "config.h"

uint8_t get_display_mode(void)
{
	return eeprom_read(EEPROM_ADDR_DISPLAY_MODE) % DISPLAY_MODE_SIZE;
}

int8_t utc_offset_trim(int8_t value)
{
	if(value < -12)
		value = -12;
	else if(value > 14)
		value = 14;
	return value;
}

int8_t get_utc_offset(void)
{
	return utc_offset_trim(eeprom_read(EEPROM_ADDR_UTC_OFFSET));
}

uint8_t get_use_24hour(void)
{
	return eeprom_read(EEPROM_ADDR_USE_24HR) % 2;
}

