#ifndef __MY_TASKS_H
#define __MY_TASKS_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"
#include "cmsis_os.h"
#include "main.h"
#include "shared.h"
#include "helpers.h"
 
void setup_task(void);
void animation_task_start(void const * argument);
void test_task_start(void const * argument);
void gps_temp_parse_task_start(void const * argument);

extern linear_buf gps_lb;
extern uint8_t gps_byte_buf[1];
extern uint32_t frame_counter;

#ifdef __cplusplus
}
#endif

#endif
