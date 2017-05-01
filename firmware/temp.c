// void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
// {
//   	HAL_SPI_Receive(&hspi1, spi_buf, SPI_BUF_SIZE, 100);
//   	printf("spi received:\n");
//   	for (int i = 0; i < SPI_BUF_SIZE; ++i)
//   		printf("%x\n", spi_buf[i]);
//   	HAL_GPIO_TogglePin(USER_LED_GPIO_Port, USER_LED_Pin);
// }
void HAL_SPI_RxCpltCallback(SPI_HandleTypeDef *hspi)
{
	printf("spi received:\n");
  	for (int i = 0; i < SPI_BUF_SIZE; ++i)
  		printf("%x\n", spi_buf[i]);
  	HAL_GPIO_TogglePin(USER_LED_GPIO_Port, USER_LED_Pin);
}