#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include "helpers.h"
#include "shared.h"

#define LEAPOCH (946684800LL + 86400*(31+29))
#define DAYS_PER_400Y (365*400 + 97)
#define DAYS_PER_100Y (365*100 + 24)
#define DAYS_PER_4Y   (365*4   + 1)
#define LS_ARR_SIZE 32

RTC_TimeTypeDef time_to_update;
RTC_DateTypeDef date_to_update;
RTC_TimeTypeDef rtc_current_time;
RTC_DateTypeDef rtc_current_date;

uint8_t ls_index;
int32_t avg_arr[LS_ARR_SIZE];

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

uint8_t rtc_gps_calib(struct minmea_sentence_rmc *gps_rmc)
{
  static int32_t next_rtc_calib = 0;
  if(HAL_GetTick() < 5000 || HAL_GetTick() < next_rtc_calib)
    return 1;
  time_to_update.Hours = gps_rmc->time.hours;
  time_to_update.Minutes = gps_rmc->time.minutes;
  time_to_update.Seconds = gps_rmc->time.seconds;
  date_to_update.Month = gps_rmc->date.month;
  date_to_update.Date = gps_rmc->date.day;
  date_to_update.Year = gps_rmc->date.year;
  HAL_RTC_SetTime(rtc_ptr, &time_to_update, RTC_FORMAT_BIN);
  HAL_RTC_SetDate(rtc_ptr, &date_to_update, RTC_FORMAT_BIN);
  next_rtc_calib = HAL_GetTick() + RTC_CALIB_FREQ_MS;
  printf("RTC calibrated, next: %ld\n", next_rtc_calib);
  return 0;
}

int32_t get_time_rtc(void)
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
  return mktime(&unix_t) + 2;
}

int32_t get_time_rmc(struct minmea_sentence_rmc *gps_rmc)
{
  int32_t unix_timestamp_temp = -1;
  int32_t microsec_temp = -1;
  minmea_gettime(&unix_timestamp_temp, &microsec_temp, &(gps_rmc->date), &(gps_rmc->time));
  return unix_timestamp_temp;
}

int32_t __secs_to_tm(int32_t t, struct tm *tm)
{
  int32_t days, secs;
  int32_t remdays, remsecs, remyears;
  int32_t qc_cycles, c_cycles, q_cycles;
  int32_t years, months;
  int32_t wday, yday, leap;
  static const char days_in_month[] = {31,30,31,30,31,31,30,31,30,31,31,29};

  secs = t - LEAPOCH;
  days = secs / 86400;
  remsecs = secs % 86400;
  if (remsecs < 0) {
    remsecs += 86400;
    days--;
  }

  wday = (3+days)%7;
  if (wday < 0) wday += 7;

  qc_cycles = days / DAYS_PER_400Y;
  remdays = days % DAYS_PER_400Y;
  if (remdays < 0) {
    remdays += DAYS_PER_400Y;
    qc_cycles--;
  }

  c_cycles = remdays / DAYS_PER_100Y;
  if (c_cycles == 4) c_cycles--;
  remdays -= c_cycles * DAYS_PER_100Y;

  q_cycles = remdays / DAYS_PER_4Y;
  if (q_cycles == 25) q_cycles--;
  remdays -= q_cycles * DAYS_PER_4Y;

  remyears = remdays / 365;
  if (remyears == 4) remyears--;
  remdays -= remyears * 365;

  leap = !remyears && (q_cycles || !c_cycles);
  yday = remdays + 31 + 28 + leap;
  if (yday >= 365+leap) yday -= 365+leap;

  years = remyears + 4*q_cycles + 100*c_cycles + 400*qc_cycles;

  for (months=0; days_in_month[months] <= remdays; months++)
    remdays -= days_in_month[months];

  tm->tm_year = years + 100;
  tm->tm_mon = months + 2;
  if (tm->tm_mon >= 12) {
    tm->tm_mon -=12;
    tm->tm_year++;
  }
  tm->tm_mday = remdays + 1;
  tm->tm_wday = wday;
  tm->tm_yday = yday;

  tm->tm_hour = remsecs / 3600;
  tm->tm_min = remsecs / 60 % 60;
  tm->tm_sec = remsecs % 60;

  return 0;
}

void unix_ts_2_datetime(int32_t ts, uint8_t* year, uint8_t* month, uint8_t* day, uint8_t* hour, uint8_t* minute, uint8_t* second)
{
  struct tm my_tm;
  __secs_to_tm(ts, &my_tm);
  *year = my_tm.tm_year % 100;
  *month = (my_tm.tm_mon % 255) + 1;
  *day = my_tm.tm_mday % 255;
  *hour = my_tm.tm_hour % 255;
  *minute = my_tm.tm_min % 255;
  *second = my_tm.tm_sec % 255;
}


