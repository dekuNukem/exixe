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
#include "minmea.h"

uint8_t spi_buf[SPI_CMD_SIZE];
double brightness_modifier = 1;
uint8_t gps_byte_buf[1];
uint32_t frame_counter;
int16_t raw_temp;
digit_animation tube_animation[TUBE_COUNT];
led_animation rgb_animation[TUBE_COUNT];
linear_buf gps_lb;

struct minmea_sentence_rmc gps_rmc;
struct minmea_sentence_gga gps_gga;
struct minmea_sentence_gsa gps_gsa;
struct minmea_sentence_gll gps_gll;
struct minmea_sentence_gst gps_gst;
struct minmea_sentence_gsv gps_gsv;

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

  for (int i = 0; i < TUBE_COUNT; ++i)
    led_animation_init(&(rgb_animation[i]));

  uint8_t sdfsdf[LED_CHANNEL_SIZE] = {255, 0, 255};
  led_start_animation(&(rgb_animation[3]), sdfsdf, ANIMATION_CROSS_FADE);
  
  HAL_UART_Receive_IT(gps_uart_ptr, gps_byte_buf, 1);
}

void animation_task_start(void const * argument)
{
  for(;;)
  {
    frame_counter++;

    for (int i = 0; i < TUBE_COUNT; ++i)
    {
      animation_handler(&(tube_animation[i]));
      led_animation_handler(&(rgb_animation[i]));
    }

    for (int curr_tube = 0; curr_tube < TUBE_COUNT; ++curr_tube)
    {
      spi_buf[0] = SPI_CMD_UPDATE;
      if(tube_animation[curr_tube].end_digit == DIGIT_2 || tube_animation[curr_tube].end_digit == DIGIT_3)
        spi_buf[0] |= 0x1;
      // digits
      for (int j = 1; j < SPI_SMD_DIGIT_END; ++j)
        spi_buf[j] = (uint8_t)((double)(tube_animation[curr_tube].pwm_status[j] >> 1) / brightness_modifier) | 0x80;
      // dots
      for (int j = SPI_SMD_DIGIT_END; j < SPI_CMD_DOT_END; ++j)
        spi_buf[j] = (tube_animation[curr_tube].pwm_status[j] >> 1) | 0x80;
      // LEDs
      for (int j = SPI_CMD_DOT_END; j < SPI_CMD_SIZE; ++j)
        spi_buf[j] = ((uint8_t)(rgb_animation[curr_tube].pwm_status[j - SPI_CMD_DOT_END]) >> 1) | 0x80;
      spi_send(spi_buf, SPI_CMD_SIZE, curr_tube);
    }
    brightness_modifier = get_modifier();
    osDelay(17);
  }
}

void test_task_start(void const * argument)
{
  int8_t count = -20;
  for(;;)
  {
    count++;
    tube_print2_uint8_t(255 - count, &(tube_animation[5]), &(tube_animation[4]));
    tube_print2_uint8_t(count, &(tube_animation[3]), &(tube_animation[2]));
    osDelay(1000);
  }
}


void gps_temp_parse_task_start(void const * argument)
{
  int32_t unix_timestamp_temp = -1;
  int32_t microsec_temp = -1;
  for(;;)
  {
    if(linear_buf_line_available(&gps_lb) && (strstr((const char*)gps_lb.buf, "RMC") != NULL))
    {
      parse_gps((char*)gps_lb.buf, &gps_rmc, &gps_gga, &gps_gsa, &gps_gll, &gps_gst, &gps_gsv);
      minmea_gettime(&unix_timestamp_temp, &microsec_temp, &(gps_rmc.date), &(gps_rmc.time));
      printf("%s\n", gps_lb.buf);
      printf("%ld\n", unix_timestamp_temp);
      linear_buf_reset(&gps_lb);
    }
    ds18b20_start_conversion();
    osDelay(750);
    raw_temp = ds18b20_get_temp();
    tube_print2_uint8_t(raw_temp >> 4, &(tube_animation[1]), &(tube_animation[0]));
  }
}

