#ifndef __HELPERS_H
#define __HELPERS_H

#ifdef __cplusplus
 extern "C" {
#endif 

#include "stm32f0xx_hal.h"
#include "minmea.h"

#define SPI_CMD_SIZE 16
#define SPI_SMD_DIGIT_END 11
#define SPI_CMD_DOT_END 13
#define TUBE_COUNT 6
#define GPS_BUF_SIZE 128
#define SPI_CMD_UPDATE 0xaa
#define SETUP_NO_SETUP 0
#define SETUP_UTC_OFFSET 1
#define SETUP_12H24H 2
#define RTC_CALIB_FREQ_MS 30000

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
uint8_t rtc_gps_calib(struct minmea_sentence_rmc *gps_rmc);
int32_t get_time_rtc(void);
int32_t get_time_rmc(struct minmea_sentence_rmc *gps_rmc);
void unix_ts_2_datetime(int32_t ts, uint8_t* year, uint8_t* month, uint8_t* day, uint8_t* hour, uint8_t* minute, uint8_t* second);

#ifdef __cplusplus
}
#endif

#endif


