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


    spi_buf[0] = SPI_CMD_UPDATE | 0x0;


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