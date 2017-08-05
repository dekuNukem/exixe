#ifndef __shared_H
#define __shared_H

#include "stm32f0xx_hal.h"
#include "main.h"

extern SPI_HandleTypeDef hspi1;
//-------------timers---------------
extern TIM_HandleTypeDef htim1;
extern TIM_HandleTypeDef htim2;
extern TIM_HandleTypeDef htim3;
extern TIM_HandleTypeDef htim14;
extern TIM_HandleTypeDef htim16;

#endif
