#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include "helpers.h"
#include "shared.h"

RTC_TimeTypeDef time_to_update;
RTC_DateTypeDef date_to_update;
RTC_TimeTypeDef rtc_current_time;
RTC_DateTypeDef rtc_current_date;

int32_t linear_buf_init(linear_buf *lb, int32_t size)
{
  lb->buf_size = size;
  lb->buf = malloc(size);
  while(lb->buf == NULL)
  {
    printf("out of memory\n");
    HAL_GPIO_TogglePin(USER_LED_GPIO_Port, USER_LED_Pin);
    HAL_Delay(250);
  }
  lb->last_recv = 0;
  linear_buf_reset(lb);
  return 0;
}

void linear_buf_reset(linear_buf *lb)
{
  lb->curr_index = 0;
  memset(lb->buf, 0, lb->buf_size);
}

int32_t linear_buf_add(linear_buf *lb, uint8_t c)
{
  lb->buf[lb->curr_index] = c;
  if(lb->curr_index < lb->buf_size)
    lb->curr_index++;
  lb->buf[lb->buf_size-1] = 0;
  lb->last_recv = HAL_GetTick();
  return 0;
}

int32_t linear_buf_add_str(linear_buf *lb, uint8_t *s, uint32_t len)
{
  for(uint32_t i = 0; i < len; i++)
    linear_buf_add(lb, s[i]);
  return 0;
}

int32_t linear_buf_line_available(linear_buf *lb)
{
  if(lb->curr_index >= lb->buf_size)
  {
    linear_buf_reset(lb);
    return 0;
  }
  if(lb->buf[lb->curr_index - 1] == '\n')
    return 1;
  return 0;
}

int32_t linear_buf_idle(linear_buf *lb, int32_t timeout)
{
  if(lb->curr_index >= lb->buf_size)
  {
    linear_buf_reset(lb);
    return 0;
  }
  if(lb->curr_index > 0 && HAL_GetTick() - lb->last_recv > timeout)
    return 1;
  return 0;
}

int32_t get_ls_reading(void)
{
  int32_t result = -1;
  HAL_ADC_Start(adc_ptr);
  if(HAL_ADC_PollForConversion(adc_ptr, 100) == HAL_OK)
    result = HAL_ADC_GetValue(adc_ptr);
  HAL_ADC_Stop(adc_ptr);
  return result;
}

double get_modifier(void)
{
  int32_t ls_value = get_ls_reading();
  if(ls_value > 600 || ls_value < 0)
    return 1;
  return 6 - (ls_value * 0.0083);
}

void rtc_gps_calib(struct minmea_sentence_rmc *gps_rmc)
{
  static int32_t next_rtc_calib = 0;
  if(HAL_GetTick() < next_rtc_calib)
    return;
  time_to_update.Hours = gps_rmc->time.hours;
  time_to_update.Minutes = gps_rmc->time.minutes;
  time_to_update.Seconds = gps_rmc->time.seconds;
  date_to_update.Month = gps_rmc->date.month;
  date_to_update.Date = gps_rmc->date.day;
  date_to_update.Year = gps_rmc->date.year;
  HAL_RTC_SetTime(rtc_ptr, &time_to_update, RTC_FORMAT_BIN);
  HAL_RTC_SetDate(rtc_ptr, &date_to_update, RTC_FORMAT_BIN);
  next_rtc_calib = HAL_GetTick() + 600000;
  printf("RTC calibrated, next: %ld\n", next_rtc_calib);
}

int32_t get_time(void)
{
  HAL_RTC_GetTime(rtc_ptr, &rtc_current_time, RTC_FORMAT_BIN);
  HAL_RTC_GetDate(rtc_ptr, &rtc_current_date, RTC_FORMAT_BIN);
  struct tm unix_t;
  unix_t.tm_year = 100 + rtc_current_date.Year;
  unix_t.tm_mon = rtc_current_date.Month - 1;
  unix_t.tm_mday = rtc_current_date.Date;
  unix_t.tm_hour = rtc_current_time.Hours;
  unix_t.tm_min = rtc_current_time.Minutes;
  unix_t.tm_sec = rtc_current_time.Seconds;
  unix_t.tm_isdst = 0; 
  return mktime(&unix_t);
}

