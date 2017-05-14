#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "shared.h"
#include "my_tasks.h"
#include "main.h"
#include "my_usb.h"
#include "helpers.h"
#include "animations.h"

uint8_t spi_buf[SPI_CMD_SIZE];
uint32_t frame_counter;
digit_animation test_anime;
uint8_t brightness_modifier;
pwm_status exixe_pwm_status[TUBE_COUNT];

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
    osDelay(500);
    test_anime.start_digit = DIGIT_1;
    test_anime.end_digit = DIGIT_2;
    test_anime.animation_start = frame_counter;
    test_anime.animation_type = ANIMATION_CROSS_FADE;
    while(is_animation_underway(frame_counter, &test_anime))
      ;

    osDelay(500);
    test_anime.start_digit = DIGIT_2;
    test_anime.end_digit = DIGIT_3;
    test_anime.animation_start = frame_counter;
    test_anime.animation_type = ANIMATION_CROSS_FADE;
    while(is_animation_underway(frame_counter, &test_anime))
      ;

    osDelay(500);
    test_anime.start_digit = DIGIT_3;
    test_anime.end_digit = DIGIT_1;
    test_anime.animation_start = frame_counter;
    test_anime.animation_type = ANIMATION_CROSS_FADE;
    while(is_animation_underway(frame_counter, &test_anime))
      ;
  }
}
