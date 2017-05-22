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