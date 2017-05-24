#ifndef __shared_H
#define __shared_H

#include "stm32f0xx_hal.h"
#include "main.h"

extern SPI_HandleTypeDef hspi1;
#define spi1_ptr (&hspi1)

extern ADC_HandleTypeDef hadc;
#define adc_ptr (&hadc)

#endif
