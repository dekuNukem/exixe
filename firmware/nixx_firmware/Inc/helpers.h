#ifndef __HELPERS_H
#define __HELPERS_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"

#define SetBit(number,bit) (number|=(1<<bit) )		
#define ClearBit(number,bit) (number&=(~(1<<bit)))

typedef struct
{
  int32_t last_recv;
  int32_t curr_index;
  int32_t buf_size;
  uint8_t* buf;
} linear_buf;

int32_t linear_buf_init(linear_buf *lb, int32_t size);
void linear_buf_reset(linear_buf *lb);
int32_t linear_buf_idle(linear_buf *lb, int32_t timeout);
int32_t linear_buf_line_available(linear_buf *lb);
int32_t linear_buf_add(linear_buf *lb, uint8_t c);
int32_t linear_buf_add_str(linear_buf *lb, uint8_t *s, uint32_t len);
uint16_t b_to_uint16t(uint8_t msb, uint8_t lsb);
void uint16_t_to_2b(uint16_t value, uint8_t* msb, uint8_t* lsb);

#ifdef __cplusplus
}
#endif

#endif


