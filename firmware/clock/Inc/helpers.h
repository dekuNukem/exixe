#ifndef __HELPERS_H
#define __HELPERS_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"

#define SPI_CMD_SIZE 16
#define SPI_SMD_DIGIT_END 11
#define SPI_CMD_DOT_END 13
#define TUBE_COUNT 6
#define GPS_BUF_SIZE 256

#define SPI_CMD_UPDATE 0xaa

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
int32_t get_ls_reading(void);
double get_modifier(void);

#ifdef __cplusplus
}
#endif

#endif


