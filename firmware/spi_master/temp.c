 spi_buf[0] = 0xab;
  uint8_t count = 0;
  while (1)
  {
  /* USER CODE END WHILE */

  /* USER CODE BEGIN 3 */
    if(HAL_GPIO_ReadPin(USER_BUTTON_GPIO_Port, USER_BUTTON_Pin) == GPIO_PIN_RESET)
    {
      count += 16;
      if(count > 127)
        count = 0;

      for (int i = 1; i < 16; ++i)
        spi_buf[i] = count | 0x80;

      HAL_GPIO_TogglePin(USER_LED_GPIO_Port, USER_LED_Pin);
      spi_send(spi_buf, 16);
      HAL_Delay(250);
    }
  }

