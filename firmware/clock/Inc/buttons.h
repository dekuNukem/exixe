#ifndef __BUTTONS_H
#define __BUTTONS_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"
#include "helpers.h"
#include "shared.h"

typedef struct
{
  uint8_t state;
  uint8_t last_action;
} my_button;

#ifdef __cplusplus
}
#endif

#endif


