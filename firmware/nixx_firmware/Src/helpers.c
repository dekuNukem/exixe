#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "helpers.h"
#include "shared.h"

uint8_t spi_recv_buf[SPI_BUF_SIZE];
uint8_t pwm_stats[SPI_BUF_SIZE];

void set_pwm(uint8_t pwm_arr[SPI_BUF_SIZE])
{
  pwm_stats[0] = OUTGOING_SPI_CMD_HEADER;
  // if the most significant bit is 1, change the pwm duty cycle
  // 127 fully off, 0 fully on
  if(pwm_arr[1] & 0x80)
  {
    htim3.Instance->CCR4 = 127 - (pwm_arr[1] & 0x7f); // R
    pwm_stats[1] = pwm_arr[1];
  }
  if(pwm_arr[2] & 0x80)
  {
    htim14.Instance->CCR1 = 127 - (pwm_arr[2] & 0x7f); // G
    pwm_stats[2] = pwm_arr[2];
  }
  if(pwm_arr[3] & 0x80)
  {
    htim3.Instance->CCR3 = 127 - (pwm_arr[3] & 0x7f); // B
    pwm_stats[3] = pwm_arr[3];
  }
  if(pwm_arr[4] & 0x80)
  {
    htim1.Instance->CCR4 = pwm_arr[4] & 0x7f; // 0
    pwm_stats[4] = pwm_arr[4];
  }
  if(pwm_arr[5] & 0x80)
  {
    htim2.Instance->CCR2 = pwm_arr[5] & 0x7f; // 1
    pwm_stats[5] = pwm_arr[5];
  }
  if(pwm_arr[6] & 0x80)
  {
    htim2.Instance->CCR3 = pwm_arr[6] & 0x7f; // 2
    pwm_stats[6] = pwm_arr[6];
  }
  if(pwm_arr[7] & 0x80)
  {
    htim2.Instance->CCR4 = pwm_arr[7] & 0x7f; // 3
    pwm_stats[7] = pwm_arr[7];
  }
  if(pwm_arr[8] & 0x80)
  {
    htim3.Instance->CCR2 = pwm_arr[8] & 0x7f; // 4
    pwm_stats[8] = pwm_arr[8];
  }
  if(pwm_arr[9] & 0x80)
  {
    htim2.Instance->CCR1 = pwm_arr[9] & 0x7f; // 5
    pwm_stats[9] = pwm_arr[9];
  }
  if(pwm_arr[10] & 0x80)
  {
    htim1.Instance->CCR3 = pwm_arr[10] & 0x7f; // 6
    pwm_stats[10] = pwm_arr[10];
  }
  if(pwm_arr[11] & 0x80)
  {
    htim3.Instance->CCR1 = pwm_arr[11] & 0x7f; // 7
    pwm_stats[11] = pwm_arr[11];
  }
  if(pwm_arr[12] & 0x80)
  {
    htim1.Instance->CCR1 = pwm_arr[12] & 0x7f; // 8
    pwm_stats[12] = pwm_arr[12];
  }
  if(pwm_arr[13] & 0x80)
  {
    htim1.Instance->CCR2 = pwm_arr[13] & 0x7f; // 9
    pwm_stats[13] = pwm_arr[13];
  }
  if(pwm_arr[14] & 0x80)
  {
    pwm_stats[14] = pwm_arr[13] & 0x7f; // left dot
    pwm_stats[14] > 125 ? pwm_stats[14] = 125 : pwm_stats[14];
  }
  if(pwm_arr[15] & 0x80)
  {
    htim16.Instance->CCR1 = pwm_arr[15] & 0x7f; // right dot
    pwm_stats[15] = pwm_arr[15];
  }
}

void timer_init(void)
{
  memset(pwm_stats, 0x80, SPI_BUF_SIZE);
  set_pwm(pwm_stats);

  HAL_TIM_Base_Start(&htim1);
  HAL_TIM_PWM_Init(&htim1);
  HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_1);
  HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_2);
  HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_3);
  HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_4);

  HAL_TIM_Base_Start(&htim2);
  HAL_TIM_PWM_Init(&htim2);
  HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_1);
  HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_2);
  HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_3);
  HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_4);

  HAL_TIM_Base_Start(&htim3);
  HAL_TIM_PWM_Init(&htim3);
  HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_1);
  HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_2);
  HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_3);
  HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_4);

  HAL_TIM_Base_Start(&htim14);
  HAL_TIM_PWM_Init(&htim14);
  HAL_TIM_PWM_Start(&htim14, TIM_CHANNEL_1);

  HAL_TIM_Base_Start(&htim16);
  HAL_TIM_PWM_Init(&htim16);
  HAL_TIM_PWM_Start(&htim16, TIM_CHANNEL_1);
}

