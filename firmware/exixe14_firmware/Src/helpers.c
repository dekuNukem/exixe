#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "helpers.h"
#include "shared.h"

uint8_t spi_recv_buf[SPI_BUF_SIZE];

void set_pwm(uint8_t pwm_arr[SPI_BUF_SIZE])
{
  // if the most significant bit is 1, change the pwm duty cycle
  
  
  if(pwm_arr[15] & 0x80)
    htim3.Instance->CCR3 = 127 - (pwm_arr[15] & 0x7f); // B
  if(pwm_arr[14] & 0x80)
    htim14.Instance->CCR1 = 127 - (pwm_arr[14] & 0x7f); // G
  if(pwm_arr[13] & 0x80)
    htim3.Instance->CCR4 = 127 - (pwm_arr[13] & 0x7f); // R
  if(pwm_arr[12] & 0x80)
    htim16.Instance->CCR1 = pwm_arr[12] & 0x7f; // right dot
  if(pwm_arr[11] & 0x80)
    htim3.Instance->CCR1 = pwm_arr[11] & 0x7f; // left dot
  if(pwm_arr[10] & 0x80)
    htim2.Instance->CCR2 = pwm_arr[10] & 0x7f; // 0
  if(pwm_arr[9] & 0x80)
    htim2.Instance->CCR3 = pwm_arr[9] & 0x7f; // 9
  if(pwm_arr[8] & 0x80)
    htim2.Instance->CCR4 = pwm_arr[8] & 0x7f; // 8
  if(pwm_arr[7] & 0x80)
    htim17.Instance->CCR1 = pwm_arr[7] & 0x7f; // 7
  if(pwm_arr[6] & 0x80)
    htim2.Instance->CCR1 = pwm_arr[6] & 0x7f; // 6
  if(pwm_arr[5] & 0x80)
    htim1.Instance->CCR3 = pwm_arr[5] & 0x7f; // 5
  if(pwm_arr[4] & 0x80)
    htim3.Instance->CCR2 = pwm_arr[4] & 0x7f; // 4
  if(pwm_arr[3] & 0x80)
    htim1.Instance->CCR1 = pwm_arr[3] & 0x7f; // 3
  if(pwm_arr[2] & 0x80)
    htim1.Instance->CCR2 = pwm_arr[2] & 0x7f; // 2
  if(pwm_arr[1] & 0x80)
    htim1.Instance->CCR4 = pwm_arr[1] & 0x7f; // 1
}

void timer_init(void)
{
  uint8_t pwm_stats[SPI_BUF_SIZE];
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

  HAL_TIM_Base_Start(&htim17);
  HAL_TIM_PWM_Init(&htim17);
  HAL_TIMEx_PWMN_Start(&htim17, TIM_CHANNEL_1);
}

