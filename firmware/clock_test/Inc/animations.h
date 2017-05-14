#ifndef __ANIMATIONS_H
#define __ANIMATIONS_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"
#include "cmsis_os.h"
#include "main.h"
#include "shared.h"
#include "helpers.h"

#define ANIMATION_NO_ANIMATION 0
#define ANIMATION_FADE_OVER 1
#define ANIMATION_CROSS_FADE 2 	

#define DIGIT_1 1
#define DIGIT_2 2
#define DIGIT_3 3
#define DIGIT_4 4
#define DIGIT_5 5
#define DIGIT_6 6
#define DIGIT_7 7
#define DIGIT_8 8
#define DIGIT_9 9
#define DIGIT_0 10
#define DIGIT_LEFT_DOT 11
#define DIGIT_RIGHT_DOT 12

void animation_handler(uint32_t frame_count, digit_animation* anime_struct, pwm_status* pwm_stuct);
uint8_t is_animation_underway(uint32_t frame_count, digit_animation* anime_struct);

#ifdef __cplusplus
}
#endif

#endif
