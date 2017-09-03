#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include "shared.h"
#include "my_tasks.h"
#include "main.h"
#include "helpers.h"
#include "animations.h"

#define PI (3.1415926)

void led_animation_init(led_animation* anime_struct)
{
  for (int i = 0; i < LED_CHANNEL_SIZE; ++i)
  {
    anime_struct->pwm_status[i] = 0;
    anime_struct->step[i] = 0;
    anime_struct->target_color[i] = 0;
  }
  anime_struct->animation_start = 0;
  anime_struct->animation_type = ANIMATION_NO_ANIMATION;
}

void led_start_animation(led_animation* anime_struct, uint8_t dest_color[LED_CHANNEL_SIZE], uint8_t anime_type)
{
  for (int i = 0; i < LED_CHANNEL_SIZE; ++i)
    anime_struct->step[i] = (dest_color[i] - anime_struct->pwm_status[i]) / 30.0;
  memcpy(anime_struct->target_color, dest_color, LED_CHANNEL_SIZE);
  anime_struct->animation_start = frame_counter;
  anime_struct->animation_type = anime_type;
}

void led_animation_handler(led_animation* anime_struct)
{
  uint32_t current_frame = frame_counter - anime_struct->animation_start;
  if(anime_struct->animation_type == ANIMATION_NO_ANIMATION)
    return;
  else if(anime_struct->animation_type == ANIMATION_FULLY_ON)
  {
    for (int i = 0; i < LED_CHANNEL_SIZE; ++i)
      anime_struct->pwm_status[i] = anime_struct->target_color[i];
  }
  else if(anime_struct->animation_type == ANIMATION_CROSS_FADE)
  {
    if(current_frame <= 30)
      for (int i = 0; i < LED_CHANNEL_SIZE; ++i)
      {
        anime_struct->pwm_status[i] += anime_struct->step[i];
        if(anime_struct->pwm_status[i] > 255)
          anime_struct->pwm_status[i] = 255;
        if(anime_struct->pwm_status[i] < 0)
          anime_struct->pwm_status[i] = 0;
      }
    else
    {
      for (int i = 0; i < LED_CHANNEL_SIZE; ++i)
        anime_struct->pwm_status[i] = anime_struct->target_color[i];
    }
  }
  else if(anime_struct->animation_type == ANIMATION_BREATHING)
  {
    double modifier = 1;
    if(current_frame <= 30)
      modifier = 1.1 + 0.6 * cos((PI/15) * (double)current_frame);
    if(modifier > 1)
      modifier = 1;
    for (int i = 0; i < LED_CHANNEL_SIZE; ++i)
      anime_struct->pwm_status[i] = anime_struct->target_color[i] * modifier;
  }
}

void animation_init(digit_animation* anime_struct)
{
  anime_struct->start_digit = DIGIT_NONE;
  anime_struct->end_digit = DIGIT_NONE;
  anime_struct->animation_start = 0;
  anime_struct->animation_type = ANIMATION_NO_ANIMATION;
  anime_struct->left_dot_status = 0;
  anime_struct->right_dot_status = 0;
  memset(anime_struct->pwm_status, 0, PWM_STATUS_SIZE);
}

void start_animation(digit_animation* anime_struct, uint8_t dest_digit, uint8_t anime_type)
{
  dest_digit %= 10;
  dest_digit == 0 ? dest_digit = DIGIT_0 : dest_digit;
  anime_struct->start_digit = anime_struct->end_digit;
  anime_struct->end_digit = dest_digit;
  anime_struct->animation_start = frame_counter;
  anime_struct->animation_type = anime_type;
}

void tube_print2(int8_t value, digit_animation* msa, digit_animation* lsa, uint8_t type)
{
  msa->pwm_status[DIGIT_RIGHT_DOT] = 0;
  if(value < 0)
  {
    msa->pwm_status[DIGIT_RIGHT_DOT] = 255;
    value *= -1;
  }
  start_animation(lsa, value % 10, type);
  start_animation(msa, (value / 10) % 10, type);
}

void animation_handler(digit_animation* anime_struct)
{
  uint32_t current_frame = frame_counter - anime_struct->animation_start;

  if(anime_struct->animation_type == ANIMATION_NO_ANIMATION)
    return;
  else if(anime_struct->animation_type == ANIMATION_FULLY_ON)
  {
    anime_struct->pwm_status[anime_struct->start_digit] = 0;
    anime_struct->pwm_status[anime_struct->end_digit] = 255;
  }
  else if(anime_struct->animation_type == ANIMATION_BREATHING)
  {
    double result = 255 * sin(0.10 * (double)frame_counter) + 300;
    if(result > 255)
      result = 255;
    anime_struct->pwm_status[anime_struct->start_digit] = 0;
    anime_struct->pwm_status[anime_struct->end_digit] = (uint8_t)result;
  }
  else if(anime_struct->animation_type == ANIMATION_CROSS_FADE)
  {
    if(anime_struct->start_digit == anime_struct->end_digit)
      return;
    if(current_frame <= 30)
    {
      anime_struct->pwm_status[anime_struct->start_digit] = 255 - 8.5 * current_frame;
      anime_struct->pwm_status[anime_struct->end_digit] = 255 + 8.5 * current_frame;
    }
  }
}

