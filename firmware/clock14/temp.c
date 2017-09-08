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
  ls_index = (ls_index + 1) % LS_ARR_SIZE;
  avg_arr[ls_index] = get_ls_reading();
  int32_t ls_value = 0;
  for (int i = 0; i < LS_ARR_SIZE; ++i)
    ls_value += avg_arr[i];
  ls_value = ls_value / LS_ARR_SIZE;
  double ret = 6 - (ls_value * 0.0083);
  // double ret = 8 - ((double)ls_value * 0.0117);
  if(ret < 1)
    ret = 1;
  if(ret > 6)
    ret = 6;
  return ret;
}
  // while(1)
  // {
  //   printf("hello world\n");
  //   HAL_IWDG_Refresh(iwdg_ptr);
  //   HAL_Delay(500);
  // }

    if(ls_value > 800 || ls_value < 0)
    return 1;
  // return 6 - (ls_value * 0.0083);
  // return 8 - ((double)ls_value * 0.0117);
  // return (1 / (0.00012 * ls_value + 0.08)) - 4.5;

void gps_temp_parse_task_start(void const * argument)
{
  uint8_t loop_count = 0;
  for(;;)
  {
    if(linear_buf_line_available(&gps_lb))
    {
      parse_gps((char*)gps_lb.buf, &gps_rmc, &gps_gga, &gps_gsa, &gps_gll, &gps_gst, &gps_gsv);
      // printf("%s\n", gps_lb.buf);
      linear_buf_reset(&gps_lb);
    }
    if(loop_count == 0)
      ds18b20_start_conversion();
    if(loop_count == 8)
    {
      raw_temp = ds18b20_get_temp() >> 4;
      if(display_mode == DISPLAY_MODE_TIME_TEMP)
        tube_print2(raw_temp, &(tube_animation[1]), &(tube_animation[0]), ANIMATION_CROSS_FADE);
    }
    loop_count = (loop_count + 1) % 10;
    osDelay(100);
  }
}



  else if(anime_struct->animation_type == ANIMATION_BREATHING)
  {
    double result = 1 - 0.6 * cos((PI/30) * (double)frame_counter);
    if(result > 1)
      result = 1;
    for (int i = 0; i < LED_CHANNEL_SIZE; ++i)
      anime_struct->pwm_status[i] = anime_struct->target_color[i] * result;
  }

        spi_buf[j] = ((uint8_t)(rgb_animation[curr_tube].pwm_status[j - SPI_CMD_DOT_END]) >> 1) | 0x80;
        spi_buf[j] = (uint8_t)((double)(tube_animation[curr_tube].pwm_status[j] >> 1) / brightness_modifier) | 0x80;

spi_buf[j] = (((uint8_t)(rgb_animation[curr_tube].pwm_status[j - SPI_CMD_DOT_END] / brightness_modifier)) >> 1) | 0x80;
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
  if(is_in_setup_mode)
    return;
  if(GPIO_Pin == GPS_TP_Pin)
  {
    if(gps_rmc.valid)
      HAL_GPIO_WritePin(USER_LED_GPIO_Port, USER_LED_Pin, GPIO_PIN_RESET);
    else
      HAL_GPIO_WritePin(USER_LED_GPIO_Port, USER_LED_Pin, GPIO_PIN_SET);
    if(gps_rmc.date.year >= 17 && rtc_gps_calib(&gps_rmc) == 0)
        current_time = get_time_rmc(&gps_rmc);
    current_time++;
    int32_t current_local = current_time + 86400 * utc_offset;
    printf("utc %d offset %d local %d\n", current_time, utc_offset, current_local);
    unix_ts_2_datetime(current_local, &year, &month, &day, &hour, &minute, &second);
    tube_print2(hour, &(tube_animation[5]), &(tube_animation[4]), ANIMATION_CROSS_FADE);
    tube_print2(minute, &(tube_animation[3]), &(tube_animation[2]), ANIMATION_CROSS_FADE);
    tube_print2(second, &(tube_animation[1]), &(tube_animation[0]), ANIMATION_CROSS_FADE);
  }
}


void set_utc_offset(int8_t value)
{
  eeprom_write(EEPROM_ADDR_UTC_OFFSET, value);
}

void test_task_start(void const * argument)
{
  uint8_t result;
  for(;;)
  {
    result = button_update(&up_button, HAL_GPIO_ReadPin(UP_BUTTON_GPIO_Port, UP_BUTTON_Pin));
    if(result != BUTTON_NO_PRESS)
    {
      display_mode = (display_mode + 1) % DISPLAY_MODE_SIZE;
      eeprom_write(EEPROM_ADDR_DISPLAY_MODE, display_mode);
      printf("display_mode: %d\n", display_mode);
    }

    if(is_in_setup_mode)
    {
      tube_print2(42, &(tube_animation[3]), &(tube_animation[2]), ANIMATION_BREATHING);
    }
    osDelay(50);
  }
}

void test_task_start(void const * argument)
{
  uint8_t result;
  for(;;)
  {
    result = button_update(&up_button, HAL_GPIO_ReadPin(UP_BUTTON_GPIO_Port, UP_BUTTON_Pin));
    if(result != BUTTON_NO_PRESS)
      printf("button: %d\n", result);
    osDelay(16);
  }
}

void button_update(my_button* butt, GPIO_PinState ps)
{
  int32_t now = HAL_GetTick();
  if(ps == BUTTON_STATE_PRESSED && butt->state == BUTTON_STATE_RELEASED)
  {
    printf("press %d\n", now);
    butt->last_action = now;
  }
  else if(ps == BUTTON_STATE_RELEASED && butt->state == BUTTON_STATE_PRESSED)
  {
    printf("release %d, %d\n", now, now - butt->last_action);
    butt->last_action = now;
  }
  butt->state = ps;
}


  if(butt->state != ps)
    printf("different!\n");
#define BUTTON_STATE_PRESSED GPIO_PIN_RESET
#define BUTTON_STATE_NOT_PRESSED GPIO_PIN_SET

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
  if(GPIO_Pin == GPS_TP_Pin)
  {
    if(gps_rmc.valid && (rtc_gps_calib(&gps_rmc) == 0))
    {
      HAL_GPIO_WritePin(USER_LED_GPIO_Port, USER_LED_Pin, GPIO_PIN_RESET);
      current_time = get_time_rmc(&gps_rmc);
    }
    else
    {
      HAL_GPIO_WritePin(USER_LED_GPIO_Port, USER_LED_Pin, GPIO_PIN_SET);
    }
    current_time++;
    unix_ts_2_datetime(current_time, &year, &month, &day, &hour, &minute, &second);
    tube_print2_uint8_t(hour, &(tube_animation[5]), &(tube_animation[4]));
    tube_print2_uint8_t(minute, &(tube_animation[3]), &(tube_animation[2]));
    tube_print2_uint8_t(second, &(tube_animation[1]), &(tube_animation[0]));
  }
}


#define STM32F0_UUID ((uint32_t *)0x1FFFF7AC)

  for (int i = 0; i < 3; ++i)
    printf("%x\n", STM32F0_UUID[i]);

uint8_t sdfsdf[LED_CHANNEL_SIZE] = {255, 0, 255};
  led_start_animation(&(rgb_animation[3]), sdfsdf, ANIMATION_CROSS_FADE);

void animation_task_start(void const * argument)
{
  for(;;)
  {
    frame_counter++;

    for (int i = 0; i < TUBE_COUNT; ++i)
    {
      animation_handler(&(tube_animation[i]));
      led_animation_handler(&(rgb_animation[i]));
    }

    for (int curr_tube = 0; curr_tube < TUBE_COUNT; ++curr_tube)
    {
      spi_buf[0] = SPI_CMD_UPDATE;
      if(tube_animation[curr_tube].end_digit == DIGIT_2 || tube_animation[curr_tube].end_digit == DIGIT_3)
        spi_buf[0] |= 0x1;
      // digits
      for (int j = 1; j < SPI_SMD_DIGIT_END; ++j)
        spi_buf[j] = (uint8_t)((double)(tube_animation[curr_tube].pwm_status[j] >> 1) / brightness_modifier) | 0x80;
      // dots
      for (int j = SPI_SMD_DIGIT_END; j < SPI_CMD_DOT_END; ++j)
        spi_buf[j] = (tube_animation[curr_tube].pwm_status[j] >> 1) | 0x80;
      // LEDs
      for (int j = SPI_CMD_DOT_END; j < SPI_CMD_SIZE; ++j)
        spi_buf[j] = ((uint8_t)(rgb_animation[curr_tube].pwm_status[j - SPI_CMD_DOT_END]) >> 1) | 0x80;
      spi_send(spi_buf, SPI_CMD_SIZE, curr_tube);
    }
    brightness_modifier = get_modifier();
    osDelay(17);
  }
}

    void test_task_start(void const * argument)
{
  int8_t count = -20;
  for(;;)
  {
    count++;
    tube_print2_uint8_t(255 - count, &(tube_animation[5]), &(tube_animation[4]));
    tube_print2_uint8_t(count, &(tube_animation[3]), &(tube_animation[2]));
    osDelay(1000);
  }
}

    void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
  if(GPIO_Pin == GPS_TP_Pin)
  {
    if(gps_rmc.valid && (rtc_gps_calib(&gps_rmc) == 0))
      current_time = get_time_rmc(&gps_rmc);
    current_time++;
    printf("current_time: %d\n", current_time);
    unix_ts_2_datetime(current_time, &year, &month, &day, &hour, &minute, &second);
    printf("%d %d %d\n", year, month, day);
    printf("%d %d %d\n", hour, minute, second);
  }
}


    printf("%02d %02d %02d\n", my_tm.tm_year, my_tm.tm_mon, my_tm.tm_mday);
  printf("%02d %02d %02d\n", my_tm.tm_hour, my_tm.tm_min, my_tm.tm_sec);

  while(1)
  {
    HAL_GPIO_TogglePin(OWIRE_DATA_GPIO_Port, OWIRE_DATA_Pin);
    printf("wtf\n");
    HAL_Delay(100);
  }

disable GGA:
{0xB5, 0x62, 0x06, 0x01, 0x03, 0x00, 0xF0, 0x00, 0x00, 0xFA, 0x0F}

disable SBAS:
{0xB5, 0x62, 0x06, 0x16, 0x08, 0x00, 0x00, 0x03, 0x03, 0x00, 0x51, 0xA2, 0x06, 0x00, 0x23, 0xE7}

stationary:
{0xB5, 0x62, 0x06, 0x24, 0x24, 0x00, 0xFF, 0xFF, 0x02, 0x03, 0x00, 0x00, 0x00, 0x00, 0x10, 0x27, 0x00, 0x00, 0x05, 0x00, 0xFA, 0x00, 0xFA, 0x00, 0x64, 0x00, 0x2C, 0x01, 0x00, 0x3C, 0x00, 0x00, 0x00, 0x00, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0xA0}

full power:
{0xB5, 0x62, 0x06, 0x86, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x94, 0x5A}

50Hz pulse:
{0xB5, 0x62, 0x06, 0x31, 0x20, 0x00, 0x00, 0x01, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x6F, 0x00, 0x00, 0x00, 0x5D, 0xB6}


1Hz pulse:
{0xB5, 0x62, 0x06, 0x31, 0x20, 0x00, 0x00, 0x01, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x6F, 0x00, 0x00, 0x00, 0xFB, 0x4A}

printf("%s\n", gps_lb.buf);

    spi_buf[0] = SPI_CMD_UPDATE | 0x0;
  while(1)
  {
    HAL_GPIO_TogglePin(USER_LED_GPIO_Port, USER_LED_Pin);
    // HAL_GPIO_TogglePin(OWIRE_DATA_GPIO_Port, OWIRE_DATA_Pin);
    my_1wire_reset();
    HAL_Delay(100);
  }

  while(1)
  {
    ds18b20_start_conversion();
    HAL_Delay(750);
    printf("raw_temp: %d\n", ds18b20_get_temp());
    HAL_Delay(100);
  }  
void gps_temp_parse_task_start(void const * argument)
{
  uint8_t loop_count = 0;
  for(;;)
  {
    if(linear_buf_line_available(&gps_lb))
    {
      parse_gps((char*)gps_lb.buf, &gps_rmc, &gps_gga, &gps_gsa, &gps_gll, &gps_gst, &gps_gsv);
      linear_buf_reset(&gps_lb);
    }
    if(loop_count == 0)
      ds18b20_start_conversion();
    if(loop_count == 8)
    {
      raw_temp = ds18b20_get_temp();
      printf("raw_temp: %d\n", raw_temp);
    }
    loop_count = (loop_count + 1) % 10;
    osDelay(750);
  }
}

void gps_temp_parse_task_start(void const * argument)
{
  int32_t unix_timestamp_temp = -1;
  int32_t microsec_temp = -1;
  for(;;)
  {
    if(linear_buf_line_available(&gps_lb) && \
      (strstr((const char*)gps_lb.buf, "RMC") != NULL) && \
      (parse_gps((char*)gps_lb.buf, &gps_rmc, &gps_gga, &gps_gsa, &gps_gll, &gps_gst, &gps_gsv) == 0) && \
      (gps_rmc.valid))
    {
      minmea_gettime(&unix_timestamp_temp, &microsec_temp, &(gps_rmc.date), &(gps_rmc.time));
      printf("%s\n", gps_lb.buf);
      printf("%ld\n", unix_timestamp_temp);
      rtc_gps_calib(&gps_rmc);
      linear_buf_reset(&gps_lb);
    }
    ds18b20_start_conversion();
    osDelay(750);
    raw_temp = ds18b20_get_temp();
    tube_print2_uint8_t(raw_temp >> 4, &(tube_animation[1]), &(tube_animation[0]));
  }
}


void unix_ts_2_datetime(time_t ts)
{
  struct tm *my_tm;
  my_tm = gmtime(&ts);
  printf("%02d %02d %02d\n", my_tm->tm_hour, my_tm->tm_min, my_tm->tm_sec);
}
void led_animation_handler(led_animation* anime_struct)
{
  uint32_t current_frame = frame_counter - anime_struct->animation_start;
  if(anime_struct->animation_type == ANIMATION_NO_ANIMATION)
    return;
  else if(anime_struct->animation_type == ANIMATION_CROSS_FADE)
  {
    if(current_frame <= 30)
      for (int i = 0; i < LED_CHANNEL_SIZE; ++i)
        anime_struct->pwm_status[i] += anime_struct->step[i];
  }
}

void led_animation_handler(led_animation* anime_struct)
{
  for (int i = 0; i < LED_CHANNEL_SIZE; ++i)
    if(anime_struct->pwm_status[i] < 250)
      anime_struct->pwm_status[i] += 1;
}

for (int j = SPI_CMD_DOT_END; j < SPI_CMD_SIZE; ++j)
        spi_buf[j] = (uint8_t)(rgb_animation[curr_tube].pwm_status[j - SPI_CMD_DOT_END]) | 0x80;

    double temp = 4 - ((double)get_ls_reading() * 0.005);
    printf("%f\n", temp);
    // printf("%d\n", (int32_t)(get_modifier() * 255));
typedef struct
{
  uint8_t start_color[LED_CHANNEL_SIZE];
  uint8_t end_color[LED_CHANNEL_SIZE];
  uint32_t animation_start;
  uint8_t animation_type;
  uint8_t pwm_status[LED_CHANNEL_SIZE];
  uint8_t step;
} led_animation;

void tube_print2_uint8_t(uint8_t value, digit_animation* msa, digit_animation* lsa)
{
  start_animation(lsa, value % 10, ANIMATION_CROSS_FADE);
  start_animation(msa, (value / 10) % 10, ANIMATION_CROSS_FADE);
}

void tube_print2(int8_t value, digit_animation* msa, digit_animation* lsa)
{
  msa->pwm_status[DIGIT_LEFT_DOT] = 0;
  if(value < 0)
  {
    msa->pwm_status[DIGIT_LEFT_DOT] = 255;
    value *= -1;
  }
  start_animation(lsa, value % 10, ANIMATION_CROSS_FADE);
  start_animation(msa, (value / 10) % 10, ANIMATION_CROSS_FADE);
}

void tube_print2(int8_t value, digit_animation* msa, digit_animation* lsa)
{
  lsa->pwm_status[DIGIT_LEFT_DOT] = 255;
  lsa->pwm_status[DIGIT_RIGHT_DOT] = 255;
  start_animation(lsa, value % 10, ANIMATION_CROSS_FADE);
  start_animation(msa, (value / 10) % 10, ANIMATION_CROSS_FADE);
}
/*
type 0:
no animation

type 1:
first digit fade to black, then next digit fade in
duration: 30 frames
frame 0 to 15 fade out
frame 16 to 30 fade in

type 2:
crossfade
duration: 30 frames
from frame 0 to 30 the first digit linearlly decrease while the 
second digit linearlly increase
*/
void animation_handler(digit_animation* anime_struct)
{
  uint32_t current_frame = frame_counter - anime_struct->animation_start;
  if(anime_struct->animation_type == ANIMATION_NO_ANIMATION)
    return;
  if(anime_struct->start_digit == anime_struct->end_digit)
    return;
  else if(anime_struct->animation_type == ANIMATION_FADE_OVER)
  {
    if(current_frame <= 15)
      anime_struct->pwm_status[anime_struct->start_digit] = 255 - 17 * current_frame;
    else if(current_frame <= 30)
      anime_struct->pwm_status[anime_struct->end_digit] = 255 + 17 * current_frame;
  }

  if(anime_struct->animation_type == ANIMATION_CROSS_FADE)
  {
    if(current_frame <= 30)
    {
      anime_struct->pwm_status[anime_struct->start_digit] = 255 - 8.5 * current_frame;
      anime_struct->pwm_status[anime_struct->end_digit] = 255 + 8.5 * current_frame;
    }
  }
}


void test_task_start(void const * argument)
{
  int8_t count = 10;
  for(;;)
  {
    count--;
    tube_print2(count, &(tube_animation[1]), &(tube_animation[0]));
    osDelay(500);
  }
}

void dot_on(digit_animation* anime_struct, uint8_t left, uint8_t right)
{
  if(left)
    anime_struct->left_dot_status = 1;
}

void test_task_start(void const * argument)
{
  uint8_t count = 0;
  for(;;)
  {
    count++;
    start_animation(&(tube_animation[0]), count, ANIMATION_CROSS_FADE);
    start_animation(&(tube_animation[1]), count, ANIMATION_CROSS_FADE);
    osDelay(600);
  }
}
    
printf("temp: %d\n", raw_temp >> 4);


    if(frame_counter % 120 > 60)
    {
      spi_buf[0] = SPI_CMD_UPDATE;
      HAL_GPIO_WritePin(USER_LED_GPIO_Port, USER_LED_Pin, GPIO_PIN_SET);
    }
    else
    {
      spi_buf[0] = SPI_CMD_UPDATE | 1;
      HAL_GPIO_WritePin(USER_LED_GPIO_Port, USER_LED_Pin, GPIO_PIN_RESET);
    }
  dest_digit > 10 ? dest_digit = 0 : dest_digit;
uint8_t is_animation_underway(digit_animation* anime_struct)
{
  if(anime_struct->animation_type == ANIMATION_NO_ANIMATION)
    return 0;
  if(anime_struct->start_digit == anime_struct->end_digit)
    return 0;
  return frame_counter - anime_struct->animation_start <= 30;
}



void HAL_SPI_RxCpltCallback(SPI_HandleTypeDef *hspi)
{
  if(spi_recv_buf[0] == SPI_CMD_UPDATE)
    set_pwm(spi_recv_buf);
  else if(spi_recv_buf[0] == SPI_CMD_BAKE_ON)
    HAL_GPIO_WritePin(BAKE_GPIO_Port, BAKE_Pin, GPIO_PIN_SET);
  else if(spi_recv_buf[0] == SPI_CMD_BAKE_OFF)
    HAL_GPIO_WritePin(BAKE_GPIO_Port, BAKE_Pin, GPIO_PIN_RESET);
  else
    goto spi_err;
  HAL_SPI_Receive_DMA(&hspi1, spi_recv_buf, SPI_BUF_SIZE);
  return;
  spi_err:
  HAL_Delay(10);
  HAL_NVIC_SystemReset();
}
void HAL_SPI_RxCpltCallback(SPI_HandleTypeDef *hspi)
{
  if(spi_recv_buf[0] & 0xfe != SPI_CMD_UPDATE)
    HAL_NVIC_SystemReset();
  set_pwm(spi_recv_buf);
  // if(spi_recv_buf[0] & 0x1)
  //  HAL_GPIO_WritePin(BAKE_GPIO_Port, BAKE_Pin, GPIO_PIN_SET);
  // else
  //  HAL_GPIO_WritePin(BAKE_GPIO_Port, BAKE_Pin, GPIO_PIN_SET);
    HAL_SPI_Receive_DMA(&hspi1, spi_recv_buf, SPI_BUF_SIZE);
}
void HAL_SPI_RxCpltCallback(SPI_HandleTypeDef *hspi)
{
  if(spi_recv_buf[0] != INCOMING_SPI_CMD_HEADER)
  {
    HAL_Delay(10);
    HAL_NVIC_SystemReset();
  }
  set_pwm(spi_recv_buf);
  HAL_SPI_Receive_DMA(&hspi1, spi_recv_buf, SPI_BUF_SIZE);
}


  for (int i = 0; i < 16; ++i)
    eeprom_write(i, 255 - i);

  for (int i = 0; i < 16; ++i)
    printf("%d: %d\n", i, eeprom_read(i));


 result = my_1wire_read_byte();
  printf("read: 0x%x\n", result);
  for (int i = 0; i < DS_BUF_SIZE; ++i)
    printf("%d: 0x%x\n", i, ds18b20_buf[i]);

uint8_t ds18b20_init(void)
{
  my_1wire_reset();
  my_1wire_write_byte(0x33);
  my_1wire_read_bytes(rom_id, ROM_SIZE);

  my_1wire_write_byte(0x44);
  while(my_1wire_read_byte() != 0xff)
    ;

  my_1wire_write_byte(0x55);
  for(int i = 0; i < ROM_SIZE; ++i)
    my_1wire_write_byte(rom_id[i]);

  my_1wire_write_byte(0xbe);
  memset(ds18b20_buf, 0, DS_BUF_SIZE);
  my_1wire_read_bytes(ds18b20_buf, DS_BUF_SIZE);
  
  for(int i = 0; i < DS_BUF_SIZE; ++i)
    printf("%d: 0x%x\n", i, ds18b20_buf[i]);

  return HAL_OK;
}


printf("mask %d: %d\n", i, (v >> i) & 0x1);
my_1wire_write_bit((mask & v)?1:0);
void test_task_start(void const * argument)
{
  for(;;)
  {
    osDelay(2000);
    test_anime.start_digit = DIGIT_0;
    test_anime.end_digit = DIGIT_1;
    test_anime.animation_start = frame_counter;
    test_anime.animation_type = ANIMATION_CROSS_FADE;
    while(is_animation_underway(frame_counter, &test_anime))
      ;

    test_anime.start_digit = DIGIT_1;
    test_anime.end_digit = DIGIT_2;
    test_anime.animation_start = frame_counter;
    test_anime.animation_type = ANIMATION_CROSS_FADE;
    while(is_animation_underway(frame_counter, &test_anime))
      ;

    test_anime.start_digit = DIGIT_2;
    test_anime.end_digit = DIGIT_0;
    test_anime.animation_start = frame_counter;
    test_anime.animation_type = ANIMATION_CROSS_FADE;
    while(is_animation_underway(frame_counter, &test_anime))
      ;

    HAL_GPIO_TogglePin(USER_LED_GPIO_Port, USER_LED_Pin);
  }
}


void test_task_start(void const * argument)
{
  for(;;)
  {
    while(!is_animation_finished(frame_counter, &test_anime))
      ;
    test_anime.start_digit = 1;
    test_anime.end_digit = 3;
    test_anime.animation_start = frame_counter;
    test_anime.animation_type = 2;
    while(!is_animation_finished(frame_counter, &test_anime))
      ;
    test_anime.start_digit = 3;
    test_anime.end_digit = 1;
    test_anime.animation_start = frame_counter;
    test_anime.animation_type = 2;
    osDelay(100);
  }
}
    // osDelay(500);
    test_anime.start_digit = DIGIT_RIGHT_DOT;
    test_anime.end_digit = DIGIT_2;
    test_anime.animation_start = frame_counter;
    test_anime.animation_type = ANIMATION_CROSS_FADE;
    while(is_animation_underway(frame_counter, &test_anime))
      ;

    // osDelay(500);
    test_anime.start_digit = DIGIT_2;
    test_anime.end_digit = DIGIT_3;
    test_anime.animation_start = frame_counter;
    test_anime.animation_type = ANIMATION_CROSS_FADE;
    while(is_animation_underway(frame_counter, &test_anime))
      ;

    // osDelay(500);
    test_anime.start_digit = DIGIT_3;
    test_anime.end_digit = DIGIT_4;
    test_anime.animation_start = frame_counter;
    test_anime.animation_type = ANIMATION_CROSS_FADE;
    while(is_animation_underway(frame_counter, &test_anime))
      ;

    // osDelay(500);
    test_anime.start_digit = DIGIT_4;
    test_anime.end_digit = DIGIT_5;
    test_anime.animation_start = frame_counter;
    test_anime.animation_type = ANIMATION_CROSS_FADE;
    while(is_animation_underway(frame_counter, &test_anime))
      ;

    // osDelay(500);
    test_anime.start_digit = DIGIT_5;
    test_anime.end_digit = DIGIT_6;
    test_anime.animation_start = frame_counter;
    test_anime.animation_type = ANIMATION_CROSS_FADE;
    while(is_animation_underway(frame_counter, &test_anime))
      ;

    // osDelay(500);
    test_anime.start_digit = DIGIT_6;
    test_anime.end_digit = DIGIT_RIGHT_DOT;
    test_anime.animation_start = frame_counter;
    test_anime.animation_type = ANIMATION_CROSS_FADE;
    while(is_animation_underway(frame_counter, &test_anime))
      ;

void test_task_start(void const * argument)
{
  for(;;)
  {
    if(HAL_GPIO_ReadPin(USER_BUTTON_GPIO_Port, USER_BUTTON_Pin) == GPIO_PIN_RESET)
    {
      test_anime.animation_start = frame_counter;
    }
    osDelay(500);
  }
}


void animation_task_start(void const * argument)
{
  for(;;)
  {
    for (int i = 0; i < 16; ++i)
      spi_buf[i] = 0;
    spi_buf[0] = 0xab;

    frame_counter++;
    if(frame_counter <= test_anime.animation_start + 255)
    {
      spi_buf[7] = (frame_counter % 128) | 0x80;
    }
    spi_send(spi_buf, 16);
    osDelay(16);
  }
}
typedef struct
{
  uint8_t red;
  uint8_t green;
  uint8_t blue;
  uint8_t zero;
  uint8_t one;
  uint8_t two;
  uint8_t three;
  uint8_t four;
  uint8_t five;
  uint8_t six;
  uint8_t seven;
  uint8_t eight;
  uint8_t nine;
  uint8_t left_dot;
  uint8_t right_dot;
} pwm_status;



void setup_task(void)
{
  uint8_t count = 0;
  while(1)
  {
    HAL_GPIO_TogglePin(USER_LED_GPIO_Port, USER_LED_Pin);
    printf("hello\n");
    HAL_Delay(500);
  }
}
#define spi_cs_low() do { HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_RESET); } while (0)
#define spi_cs_high() do { HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_SET); } while (0)
void setup_task(void)
{
  uint8_t count = 0;
  while(1)
  {
    count++;
    if(count > 127)
      count = 0;
    for (int i = 1; i < 16; ++i)
      spi_buf[i] = 0;

    spi_buf[0] = 0xab;
    spi_buf[3] = count | 0x80;
    spi_buf[5] = count | 0x80;
    HAL_GPIO_TogglePin(USER_LED_GPIO_Port, USER_LED_Pin);
    spi_send(spi_buf, 16);
    HAL_Delay(5);
  }
}


void setup_task(void)
{
  HAL_GPIO_WritePin(USER_LED_GPIO_Port, USER_LED_Pin, GPIO_PIN_RESET);
  HAL_Delay(100);
  HAL_GPIO_WritePin(USER_LED_GPIO_Port, USER_LED_Pin, GPIO_PIN_SET);
  uint8_t count = 0;
  while(1)
  {
    count++;
    for (int i = 0; i < 16; ++i)
      spi_buf[i] = 0;
    spi_buf[0] = 0xab;
    spi_buf[1] = count | 0x80;
    spi_buf[7] = count | 0x80;
    spi_send(spi_buf, 16);
    HAL_Delay(5);
  }
}

typedef struct
{
  uint8_t exixe_1_digit;
  uint32_t exixe_1_animation_frame_start;
  uint32_t exixe_1_animation_frame_end;
} animation_state;

void animation_task_start(void const * argument)
{
  for(;;)
  {
    frame_counter++;
    for (int i = 0; i < 16; ++i)
      spi_buf[i] = 0;
    spi_buf[0] = 0xab;
    spi_buf[1] = frame_counter | 0x80;
    spi_buf[7] = frame_counter | 0x80;
    spi_send(spi_buf, 16);
    osDelay(16);
  }
}

typedef struct
{
  uint8_t start_digit;
  uint8_t end_digit;
  uint32_t frame_end;
} digit_animation;