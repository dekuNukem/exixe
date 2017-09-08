#ifndef __BUTTONS_H
#define __BUTTONS_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"
#include "helpers.h"
#include "shared.h"

#define LONG_PRESS_THRESHOLD_MS 1000

#define BUTTON_STATE_PRESSED GPIO_PIN_RESET
#define BUTTON_STATE_RELEASED GPIO_PIN_SET

#define BUTTON_NO_PRESS 0
#define BUTTON_SHORT_PRESS 1
#define BUTTON_LONG_PRESS 2

// maybe use another var as long press result, gets reset when comsumed, this way it can return early at long press

typedef struct
{
  uint8_t state;
  int32_t last_action;
} my_button;

void button_init(my_button* butt, GPIO_PinState ps);
uint8_t button_update(my_button* butt, GPIO_PinState ps);

#ifdef __cplusplus
}
#endif

#endif


