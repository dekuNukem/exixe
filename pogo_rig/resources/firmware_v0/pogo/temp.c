void test()
{
  HAL_Delay(500);
  HAL_GPIO_TogglePin(GPIOA, HV_LED_Pin|USER_LED_Pin);
}

void display_dot(uint8_t dot, uint8_t brightness)
{
  uint8_t spi_buf[SPI_BUF_SIZE];
  memset(spi_buf, 0, SPI_BUF_SIZE); // clear the buffer
  spi_buf[0] = SPI_CMD_HEADER; // first byte, header

  if(dot % 2)
    spi_buf[11] = 0x80 | brightness;
  else
    spi_buf[12] = 0x80 | brightness;

  HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_RESET);
  HAL_SPI_Transmit(&hspi1, spi_buf, SPI_BUF_SIZE, 100);
  HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_SET);
}
void display_digit(uint8_t digit, uint8_t brightness)
{
  uint8_t spi_buf[SPI_BUF_SIZE];
  memset(spi_buf, 0x80, SPI_BUF_SIZE); // set the EN bit of each byte to 1
  spi_buf[0] = SPI_CMD_HEADER; // first byte, header
  spi_buf[13] = 0;  // LED red unchanged
  spi_buf[14] = 0;  // LED green unchanged
  spi_buf[15] = 0;  // LED blue unchanged
  digit = digit % 10; // digit is now between 0 and 9
  digit++; // digit is now between 1 and 10, we can use it as the index for the SPI buffer now
  spi_buf[digit] |= brightness; // set that digit to brightness

  if(digit % 2)
    spi_buf[11] = 0x80 | brightness;
  else
    spi_buf[12] = 0x80 | brightness;

  if(digit == 2 || digit == 3)
    spi_buf[0] = 0xab;
  HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_RESET);
  HAL_SPI_Transmit(&hspi1, spi_buf, SPI_BUF_SIZE, 100);
  HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_SET);
}
