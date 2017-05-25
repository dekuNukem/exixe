#include "stm32f0xx_hal.h"
#include "ds18b20.h"
#include "my_1wire.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "delay_us.h"
#define SPAD_SIZE 9

uint8_t ds18b20_buf[SPAD_SIZE];

uint8_t ds18b20_init(void)
{
  my_1wire_reset();
  my_1wire_write_byte(0xcc);
  my_1wire_write_byte(0x44);
  while(my_1wire_read_byte() == 0)
    ;

  my_1wire_reset();
  my_1wire_write_byte(0xcc);
  my_1wire_write_byte(0xbe);
  memset(ds18b20_buf, 0, SPAD_SIZE);
  my_1wire_read_bytes(ds18b20_buf, SPAD_SIZE);
	
  for(int i = 0; i < SPAD_SIZE; ++i)
    printf("%d: 0x%x\n", i, ds18b20_buf[i]);

	return HAL_OK;
}

