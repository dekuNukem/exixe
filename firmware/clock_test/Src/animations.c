#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "shared.h"
#include "my_tasks.h"
#include "main.h"
#include "helpers.h"
#include "animations.h"

/*
type 0:
no animation

type 1:
first digit fade to black, then next digit fade in
duration: 30 frames
frame 0 to 15 fade out
frame 16 to 30 fade in

type 2:
crossfade
duration: 30 frames
from frame 0 to 30 the first digit linearlly decrease while the 
second digit linearlly increase
*/
void animation_handler(uint32_t frame_count, digit_animation* anime_struct, pwm_status* pwm_stuct)
{
  uint32_t current_frame = frame_count - anime_struct->animation_start;
  if(anime_struct->animation_type == ANIMATION_NO_ANIMATION)
    return;
  else if(anime_struct->animation_type == ANIMATION_FADE_OVER)
  {
    if(current_frame <= 15)
      pwm_stuct->value[anime_struct->start_digit] = 255 - 17 * current_frame;
    else if(current_frame <= 30)
      pwm_stuct->value[anime_struct->end_digit] = 255 + 17 * current_frame;
  }

  if(anime_struct->animation_type == ANIMATION_CROSS_FADE)
  {
    if(current_frame <= 30)
    {
      pwm_stuct->value[anime_struct->start_digit] = 255 - 8.5 * current_frame;
      pwm_stuct->value[anime_struct->end_digit] = 255 + 8.5 * current_frame;
    }
  }
}

uint8_t is_animation_underway(uint32_t frame_count, digit_animation* anime_struct)
{
  if(anime_struct->animation_type == ANIMATION_NO_ANIMATION)
    return 0;
  return frame_count - anime_struct->animation_start <= 30;
}

