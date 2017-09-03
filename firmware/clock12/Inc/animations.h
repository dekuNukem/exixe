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

#define PWM_STATUS_SIZE (SPI_CMD_SIZE + 1)
#define LED_CHANNEL_SIZE 3

#define ANIMATION_NO_ANIMATION 0
#define ANIMATION_CROSS_FADE 1
#define ANIMATION_FULLY_ON 2
#define ANIMATION_BREATHING 3

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
#define DIGIT_RIGHT_DOT 11
#define DIGIT_LEFT_DOT 12
#define DIGIT_NONE 16

typedef struct
{
	uint8_t	start_digit;
	uint8_t end_digit;
	uint32_t animation_start;
	uint8_t animation_type;
	uint8_t pwm_status[PWM_STATUS_SIZE];
	uint8_t left_dot_status;
	uint8_t right_dot_status;
} digit_animation;

typedef struct
{
	uint32_t animation_start;
	uint8_t animation_type;
	uint8_t target_color[LED_CHANNEL_SIZE];
	double pwm_status[LED_CHANNEL_SIZE];
	double step[LED_CHANNEL_SIZE];
} led_animation;


void led_animation_init(led_animation* anime_struct);
void led_start_animation(led_animation* anime_struct, uint8_t dest_color[LED_CHANNEL_SIZE], uint8_t anime_type);
void led_animation_handler(led_animation* anime_struct);

void animation_init(digit_animation* anime_struct);
void start_animation(digit_animation* anime_struct, uint8_t dest_digit, uint8_t anime_type);
void tube_print2(int8_t value, digit_animation* msa, digit_animation* lsa, uint8_t type);
void animation_handler(digit_animation* anime_struct);

#ifdef __cplusplus
}
#endif

#endif
