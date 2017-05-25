#ifndef __shared_H
#define __shared_H

#include "stm32f0xx_hal.h"
#include "main.h"

extern SPI_HandleTypeDef hspi1;
#define spi1_ptr (&hspi1)

extern ADC_HandleTypeDef hadc;
#define adc_ptr (&hadc)

extern I2C_HandleTypeDef hi2c1;
#define i2c1_ptr (&hi2c1)

#endif
