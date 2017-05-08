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


/*
pwm_stats
index	parameter
0		0xcd
1		red
2		green
3		blue
4		0
5		1
6		2
7		3
8		4
9		5
10		6
11		7
12		8
13		9
14		left dot
15		right dot
*/
#ifdef __cplusplus
}
#endif

#endif


