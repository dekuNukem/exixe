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

extern UART_HandleTypeDef huart1;
#define gps_uart_ptr (&huart1)

extern RTC_HandleTypeDef hrtc;
#define rtc_ptr (&hrtc)

extern IWDG_HandleTypeDef hiwdg;
#define iwdg_ptr (&hiwdg)

#endif
