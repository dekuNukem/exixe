#ifndef __DS18B20_H
#define __DS18B20_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"

void ds18b20_start_conversion(void);
int16_t ds18b20_get_temp(void);

#ifdef __cplusplus
}
#endif

#endif


