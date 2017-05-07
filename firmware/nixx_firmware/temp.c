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
    htim14.Instance->CCR1 = count;
    count+=10;