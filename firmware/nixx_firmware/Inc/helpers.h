#ifndef __HELPERS_H
#define __HELPERS_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"

#define SPI_BUF_SIZE 16
#define INCOMING_SPI_CMD_HEADER 0xab
#define OUTGOING_SPI_CMD_HEADER 0xcd

extern uint8_t spi_recv_buf[SPI_BUF_SIZE];
extern uint8_t pwm_stats[SPI_BUF_SIZE];

void set_pwm(uint8_t pwm_arr[SPI_BUF_SIZE]);
void timer_init(void);

#ifdef __cplusplus
}
#endif

#endif


