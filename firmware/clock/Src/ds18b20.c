#include "stm32f0xx_hal.h"
#include "ds18b20.h"
#include "my_1wire.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "delay_us.h"
#include "cmsis_os.h"

#define SPAD_SIZE 9

uint8_t ds18b20_buf[SPAD_SIZE];

void ds18b20_start_conversion(void)
{
  taskENTER_CRITICAL();
  my_1wire_reset();
  my_1wire_write_byte(0xcc);
  my_1wire_write_byte(0x44);
  taskEXIT_CRITICAL();
}

int16_t ds18b20_get_temp(void)
{
  taskENTER_CRITICAL();
  my_1wire_reset();
  my_1wire_write_byte(0xcc);
  my_1wire_write_byte(0xbe);
  my_1wire_read_bytes(ds18b20_buf, SPAD_SIZE);
  taskEXIT_CRITICAL();
  return ds18b20_buf[0] | ds18b20_buf[1] << 8;
}

