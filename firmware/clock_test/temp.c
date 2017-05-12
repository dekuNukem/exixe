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
