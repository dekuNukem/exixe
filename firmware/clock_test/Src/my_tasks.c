#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "shared.h"
#include "my_tasks.h"
#include "main.h"
#include "my_usb.h"
#include "helpers.h"

void setup_task(void)
{
  while(1)
  {
    HAL_GPIO_TogglePin(USER_LED_GPIO_Port, USER_LED_Pin);
    printf("hello\n");
    HAL_Delay(500);
  }
}
