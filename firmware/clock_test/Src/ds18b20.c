#include "stm32f0xx_hal.h"
#include "ds18b20.h"
#include "my_1wire.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "delay_us.h"
#define ROM_SIZE 8
#define DS_BUF_SIZE 16

uint8_t rom_id[ROM_SIZE];
uint8_t ds18b20_buf[DS_BUF_SIZE];

uint8_t ds18b20_init(void)
{
  my_1wire_reset();
  my_1wire_write_byte(0x33);
  my_1wire_read_bytes(rom_id, ROM_SIZE);

  my_1wire_write_byte(0x44);
  while(my_1wire_read_byte() != 0xff)
    ;

  my_1wire_write_byte(0x55);
  for(int i = 0; i < ROM_SIZE; ++i)
    my_1wire_write_byte(rom_id[i]);

  my_1wire_write_byte(0xbe);
  memset(ds18b20_buf, 0, DS_BUF_SIZE);
  my_1wire_read_bytes(ds18b20_buf, DS_BUF_SIZE);
	
  for(int i = 0; i < DS_BUF_SIZE; ++i)
    printf("%d: 0x%x\n", i, ds18b20_buf[i]);

	return HAL_OK;
}

