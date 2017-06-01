#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "buttons.h"

void button_update(my_button* butt, GPIO_PinState ps)
{
	if(butt->state != ps)
		printf("different!\n");
	butt->state = ps;
}
