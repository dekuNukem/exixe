#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "shared.h"
#include "my_tasks.h"
#include "main.h"
#include "my_usb.h"
#include "helpers.h"
#include "animations.h"
#include "delay_us.h"
#include "my_1wire.h"
#include "ds18b20.h"
#include "eeprom.h"
#include "gps_config.h"

uint8_t spi_buf[SPI_CMD_SIZE];
uint8_t brightness_modifier = 1;
uint8_t gps_byte_buf[1];
uint32_t frame_counter;
int16_t raw_temp;
digit_animation tube_animation[TUBE_COUNT];
linear_buf gps_lb;

void spi_send(uint8_t* data, uint8_t size, uint8_t index)
{
  GPIO_TypeDef *target_port;
  uint16_t target_pin;

  switch(index)
  {
    case 0:
    target_port = EXIXE1_CS_GPIO_Port;
    target_pin = EXIXE1_CS_Pin;
    break;

    case 1:
    target_port = EXIXE2_CS_GPIO_Port;
    target_pin = EXIXE2_CS_Pin;
    break;

    case 2:
    target_port = EXIXE3_CS_GPIO_Port;
    target_pin = EXIXE3_CS_Pin;
    break;

    case 3:
    target_port = EXIXE4_CS_GPIO_Port;
    target_pin = EXIXE4_CS_Pin;
    break;

    case 4:
    target_port = EXIXE5_CS_GPIO_Port;
    target_pin = EXIXE5_CS_Pin;
    break;

    case 5:
    target_port = EXIXE6_CS_GPIO_Port;
    target_pin = EXIXE6_CS_Pin;
    break;

    default:
    return;
  }

  HAL_GPIO_WritePin(target_port, target_pin, GPIO_PIN_RESET);
  HAL_SPI_Transmit(&hspi1, data, size, 100);
  HAL_GPIO_WritePin(target_port, target_pin, GPIO_PIN_SET);
}

void setup_task(void)
{
  HAL_GPIO_WritePin(EXIXE_RESET_GPIO_Port, EXIXE_RESET_Pin, GPIO_PIN_RESET);
  HAL_Delay(10);
  HAL_GPIO_WritePin(EXIXE_RESET_GPIO_Port, EXIXE_RESET_Pin, GPIO_PIN_SET);
  HAL_Delay(10);

  linear_buf_init(&gps_lb, GPS_BUF_SIZE);
  gps_init();
  
  for (int i = 0; i < TUBE_COUNT; ++i)
    animation_init(&(tube_animation[i]));
  
  HAL_UART_Receive_IT(gps_uart_ptr, gps_byte_buf, 1);
}

void animation_task_start(void const * argument)
{
  for(;;)
  {
    frame_counter++;

    for (int i = 0; i < TUBE_COUNT; ++i)
      animation_handler(&(tube_animation[i]));

    spi_buf[0] = SPI_CMD_UPDATE;
    for (int curr_tube = 0; curr_tube < TUBE_COUNT; ++curr_tube)
    {
      for (int j = 1; j < SPI_CMD_SIZE; ++j)
        spi_buf[j] = ((tube_animation[curr_tube].pwm_status[j] >> 1) / brightness_modifier) | 0x80;
      spi_send(spi_buf, SPI_CMD_SIZE, curr_tube);
    }
    osDelay(17);
  }
}

void test_task_start(void const * argument)
{
  for(;;)
  {
    osDelay(500);
  }
}


void gps_temp_parse_task_start(void const * argument)
{
  for(;;)
  {
    if(linear_buf_line_available(&gps_lb))
    {
      // printf("%s\n", gps_lb.buf);
      linear_buf_reset(&gps_lb);
    }
    ds18b20_start_conversion();
    osDelay(750);
    raw_temp = ds18b20_get_temp();
    tube_print2(raw_temp >> 4, &(tube_animation[1]), &(tube_animation[0]));
  }
}

