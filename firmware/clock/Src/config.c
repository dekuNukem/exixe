#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "eeprom.h"
#include "config.h"

uint8_t get_display_mode(void)
{
	return eeprom_read(EEPROM_ADDR_DISPLAY_MODE) % DISPLAY_MODE_SIZE;
}

