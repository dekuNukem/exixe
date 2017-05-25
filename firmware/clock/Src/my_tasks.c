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
uint32_t frame_counter;
digit_animation test_anime;
uint8_t brightness_modifier;
pwm_status exixe_pwm_status[TUBE_COUNT];

linear_buf gps_lb;
uint8_t gps_byte_buf[1];

void spi_send(uint8_t* data, uint8_t size)
{
  HAL_GPIO_WritePin(EXIXE1_CS_GPIO_Port, EXIXE1_CS_Pin, GPIO_PIN_RESET);
  HAL_SPI_Transmit(&hspi1, data, size, 100);
  HAL_GPIO_WritePin(EXIXE1_CS_GPIO_Port, EXIXE1_CS_Pin, GPIO_PIN_SET);
}

void setup_task(void)
{
  linear_buf_init(&gps_lb, GPS_BUF_SIZE);
  gps_init();
  HAL_UART_Receive_IT(gps_uart_ptr, gps_byte_buf, 1);

  brightness_modifier = 1;
  frame_counter = 0;
  spi_buf[0] = 0xab;
}

void animation_task_start(void const * argument)
{
  for(;;)
  {
    frame_counter++;
    animation_handler(frame_counter, &test_anime, &exixe_pwm_status[0]);

    for (int i = 1; i < SPI_CMD_SIZE; ++i)
      spi_buf[i] = ((exixe_pwm_status[0].value[i] >> 1) / brightness_modifier) | 0x80;
    
    spi_send(spi_buf, SPI_CMD_SIZE);
    osDelay(17);
  }
}

void test_task_start(void const * argument)
{
  for(;;)
  {
    osDelay(1000);
  }
}


void gps_temp_parse_task_start(void const * argument)
{
  for(;;)
  {
    if(linear_buf_line_available(&gps_lb))
    {
      printf("%s\n", gps_lb.buf);
      linear_buf_reset(&gps_lb);
    }
    ds18b20_start_conversion();
    osDelay(750);
    printf("temp: %d\n", ds18b20_get_temp() >> 4);
  }
}

