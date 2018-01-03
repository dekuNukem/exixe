#ifndef __HELPERS_H
#define __HELPERS_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"

#define SPI_BUF_SIZE 16
#define SPI_CMD_HEADER 0xaa

void hv_on(void);
void hv_off(void);
void dut_reset(void);
void test(void);
void set_led(uint8_t red, uint8_t green, uint8_t blue);
void display_digit(uint8_t digit, uint8_t brightness);
void display_dot(uint8_t dot, uint8_t brightness);

#ifdef __cplusplus
}
#endif

#endif


