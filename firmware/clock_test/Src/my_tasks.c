#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "shared.h"
#include "my_tasks.h"
#include "main.h"
#include "my_usb.h"
#include "helpers.h"

uint8_t spi_buf[16];
uint32_t frame_counter;
digit_animation test_anime;

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
  frame_counter = 0;
  test_anime.start_digit = 1;
  test_anime.end_digit = 3;
  test_anime.frame_end = 255;
}

void animation_task_start(void const * argument)
{
  for(;;)
  {
    for (int i = 0; i < 16; ++i)
      spi_buf[i] = 0;
    spi_buf[0] = 0xab;

    frame_counter++;
    if(frame_counter <= test_anime.frame_end)
    {
      spi_buf[7] = (frame_counter % 128) | 0x80;
    }
    spi_send(spi_buf, 16);
    osDelay(16);
  }
}

void test_task_start(void const * argument)
{
  for(;;)
  {
    if(HAL_GPIO_ReadPin(USER_BUTTON_GPIO_Port, USER_BUTTON_Pin) == GPIO_PIN_RESET)
    {
      printf("button pressed\n");
      test_anime.frame_end = frame_counter + 255;
    }
    printf("no pressed\n");
    osDelay(500);
  }
}
