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
