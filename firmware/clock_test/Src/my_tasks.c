#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "shared.h"
#include "my_tasks.h"
#include "main.h"
#include "my_usb.h"
#include "helpers.h"

uint8_t spi_buf[16];

void spi_send(uint8_t* data, uint8_t size)
{
  HAL_GPIO_WritePin(EXIXE1_CS_GPIO_Port, EXIXE1_CS_Pin, GPIO_PIN_RESET);
  HAL_SPI_Transmit(&hspi1, data, size, 100);
  HAL_GPIO_WritePin(EXIXE1_CS_GPIO_Port, EXIXE1_CS_Pin, GPIO_PIN_SET);
}

void setup_task(void)
{
  HAL_GPIO_WritePin(USER_LED_GPIO_Port, USER_LED_Pin, GPIO_PIN_RESET);
  HAL_Delay(100);
  HAL_GPIO_WritePin(USER_LED_GPIO_Port, USER_LED_Pin, GPIO_PIN_SET);
  uint8_t count = 0;
  while(1)
  {
    count++;
    for (int i = 0; i < 16; ++i)
      spi_buf[i] = 0;
    spi_buf[0] = 0xab;
    spi_buf[1] = count | 0x80;
    spi_buf[7] = count | 0x80;
    spi_send(spi_buf, 16);
    HAL_Delay(5);
  }
}
