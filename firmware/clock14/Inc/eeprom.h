#ifndef __EEPROM_H
#define __EEPROM_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"
#include "helpers.h"
#include "shared.h"

#define EEPROM_SIZE 1024
#define EEPROM_READ_ADDR 0xA1
#define EEPROM_WRITE_ADDR 0xA0

void eeprom_init(I2C_HandleTypeDef *hi2c);
void eeprom_write(uint16_t address, uint8_t data);
uint8_t eeprom_read(int32_t address);
void eeprom_erase(void);

#ifdef __cplusplus
}
#endif

#endif


