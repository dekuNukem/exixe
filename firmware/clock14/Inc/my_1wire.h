#ifndef __MY_1WIRE_H
#define __MY_1WIRE_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"

uint8_t my_1wire_reset(void);
void my_1wire_write_byte(uint8_t v);
uint8_t my_1wire_read_byte(void);
void my_1wire_read_bytes(uint8_t* arr, uint8_t size);

#ifdef __cplusplus
}
#endif

#endif


