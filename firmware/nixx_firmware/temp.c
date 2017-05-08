int fputc(int ch, FILE *f)
{
    HAL_UART_Transmit(&huart1, (unsigned char *)&ch, 1, 100);
    return ch;
}

// printf("hello\n");
    HAL_UART_Transmit(&huart1, "aaa\n", 4, 100);
    HAL_Delay(500);`

    HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_4);
    HAL_Delay(500);
    HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_4);
    HAL_Delay(500);

    HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_0);
    HAL_Delay(500);
    HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_0);
    HAL_Delay(500);

    HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_1);
    HAL_Delay(500);
    HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_1);
    HAL_Delay(500);

  for (int i = 0; i < 16; ++i)
    printf("%d %d\n", i, eeprom_read(i));
HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_0|GPIO_PIN_1);

printf("hello\n");
    HAL_Delay(1);
    count++;
    if(count > 1000)
      count = 0;
    htim14.Instance->CCR1 = count;
     HAL_Delay(5);
    count++;
    if(count > 127)
      count = 0;
    htim14.Instance->CCR1 = count;
    htim3.Instance->CCR3 = count;
    htim3.Instance->CCR4 = count;

void HAL_SPI_RxCpltCallback(SPI_HandleTypeDef *hspi)
{
    HAL_SPI_Receive_IT(&hspi1, spi_recv_buf, SPI_BUF_SIZE);
  printf("spi received:\n");
  for (int i = 0; i < SPI_BUF_SIZE; ++i)
    printf("%x\n", spi_recv_buf[i]);
  if(spi_recv_buf[0] != INCOMING_SPI_CMD_HEADER)
  {
    printf("invalid header\n");
    return;
  }
    set_pwm(spi_recv_buf);
}

void HAL_SPI_RxCpltCallback(SPI_HandleTypeDef *hspi)
{
  if(spi_recv_buf[0] != INCOMING_SPI_CMD_HEADER)
    return;
    set_pwm(spi_recv_buf);
    // HAL_SPI_TransmitReceive_IT(&hspi1, pwm_stats, spi_recv_buf, SPI_BUF_SIZE);
    HAL_SPI_Receive_IT(&hspi1, spi_recv_buf, SPI_BUF_SIZE);
}

if(HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_15) == GPIO_PIN_SET)
    {
        // HAL_SPI_TransmitReceive_IT(&hspi1, pwm_stats, spi_recv_buf, SPI_BUF_SIZE);
        HAL_SPI_Receive_IT(&hspi1, spi_recv_buf, SPI_BUF_SIZE);
    }

  uint8_t test[SPI_BUF_SIZE];
  for (int i = 0; i < SPI_BUF_SIZE; ++i)
    test[i] = i+4;
HAL_SPI_TransmitReceive_DMA(&hspi1, test, spi_recv_buf, SPI_BUF_SIZE);
HAL_SPI_Transmit_DMA(&hspi1, test, SPI_BUF_SIZE);
HAL_SPI_Receive_DMA(&hspi1, spi_recv_buf, SPI_BUF_SIZE);
while(HAL_SPI_GetState(&hspi1) != HAL_SPI_STATE_READY)
        ;
void HAL_SPI_TxRxCpltCallback(SPI_HandleTypeDef *hspi)
{
    printf("spi received:\n");
  for (int i = 0; i < SPI_BUF_SIZE; ++i)
    printf("%x\n", spi_recv_buf[i]);
}

if(HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_15) == GPIO_PIN_SET)
      HAL_SPI_Receive_DMA(&hspi1, spi_recv_buf, SPI_BUF_SIZE);