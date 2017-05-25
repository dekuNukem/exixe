#ifndef __HELPERS_H
#define __HELPERS_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"

#define TUBE_COUNT 6
#define SPI_CMD_SIZE 16

typedef struct
{
  int32_t last_recv;
  int32_t curr_index;
  int32_t buf_size;
  uint8_t* buf;
} linear_buf;

typedef struct
{
	uint8_t	start_digit;
	uint8_t end_digit;
	uint32_t animation_start;
	uint8_t animation_type;
} digit_animation;

typedef struct
{
	uint8_t value[SPI_CMD_SIZE];
} pwm_status;

int32_t linear_buf_init(linear_buf *lb, int32_t size);
void linear_buf_reset(linear_buf *lb);
int32_t linear_buf_idle(linear_buf *lb, int32_t timeout);
int32_t linear_buf_line_available(linear_buf *lb);
int32_t linear_buf_add(linear_buf *lb, uint8_t c);
int32_t linear_buf_add_str(linear_buf *lb, uint8_t *s, uint32_t len);
int32_t get_ls_reading(void);

#ifdef __cplusplus
}
#endif

#endif


