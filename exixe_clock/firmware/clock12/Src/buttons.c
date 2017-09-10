#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "buttons.h"

void button_init(my_button* butt, GPIO_PinState ps)
{
	butt->state = BUTTON_STATE_RELEASED;
	butt->last_action = HAL_GetTick();
}

uint8_t button_update(my_button* butt, GPIO_PinState ps)
{
	uint8_t ret = BUTTON_NO_PRESS;
	int32_t now = HAL_GetTick();

	if(ps == BUTTON_STATE_PRESSED && butt->state == BUTTON_STATE_RELEASED)
		butt->last_action = now;
	else if(ps == BUTTON_STATE_RELEASED && butt->state == BUTTON_STATE_PRESSED)
	{
		ret = BUTTON_SHORT_PRESS;
		if(now - butt->last_action > LONG_PRESS_THRESHOLD_MS)
			ret = BUTTON_LONG_PRESS;
		butt->last_action = now;
	}
	butt->state = ps;
	return ret;
}
