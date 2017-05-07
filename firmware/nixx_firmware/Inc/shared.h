#ifndef __shared_H
#define __shared_H

#include "stm32f0xx_hal.h"
#include "main.h"

extern SPI_HandleTypeDef hspi1;
#define spi1_ptr (&hspi1)

extern I2C_HandleTypeDef hi2c1;
#define i2c1_ptr (&hi2c1)

#define spi_cs_low() do { HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_RESET); } while (0)
#define spi_cs_high() do { HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_SET); } while (0)

#endif
