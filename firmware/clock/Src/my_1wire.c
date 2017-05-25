#include "stm32f0xx_hal.h"
#include "my_1wire.h"
#include "delay_us.h"

uint8_t my_1wire_reset(void)
{
    uint8_t result;
    HAL_GPIO_WritePin(OWIRE_DATA_GPIO_Port, OWIRE_DATA_Pin, GPIO_PIN_RESET);
    delay_us(485);
    HAL_GPIO_WritePin(OWIRE_DATA_GPIO_Port, OWIRE_DATA_Pin, GPIO_PIN_SET);
    delay_us(70);
    result = HAL_GPIO_ReadPin(OWIRE_DATA_GPIO_Port, OWIRE_DATA_Pin);
    delay_us(410);
    if(result == GPIO_PIN_RESET)
      return HAL_OK;
    return HAL_ERROR;
}

void my_1wire_write_bit(uint8_t v)
{
  if(v & 1)
  {
    HAL_GPIO_WritePin(OWIRE_DATA_GPIO_Port, OWIRE_DATA_Pin, GPIO_PIN_RESET);
    delay_us(10);
    HAL_GPIO_WritePin(OWIRE_DATA_GPIO_Port, OWIRE_DATA_Pin, GPIO_PIN_SET);
    delay_us(55);
  }
  else
  {
    HAL_GPIO_WritePin(OWIRE_DATA_GPIO_Port, OWIRE_DATA_Pin, GPIO_PIN_RESET);
    delay_us(65);
    HAL_GPIO_WritePin(OWIRE_DATA_GPIO_Port, OWIRE_DATA_Pin, GPIO_PIN_SET);
    delay_us(5);
  }
}

void my_1wire_write_byte(uint8_t v)
{
  for(uint8_t mask = 0x01; mask; mask <<= 1)
    my_1wire_write_bit((mask & v)?1:0);
}

uint8_t my_1wire_read_bit(void)
{
  uint8_t ret;
  HAL_GPIO_WritePin(OWIRE_DATA_GPIO_Port, OWIRE_DATA_Pin, GPIO_PIN_RESET);
  delay_us(3);
  HAL_GPIO_WritePin(OWIRE_DATA_GPIO_Port, OWIRE_DATA_Pin, GPIO_PIN_SET);
  delay_us(10);
  ret = HAL_GPIO_ReadPin(OWIRE_DATA_GPIO_Port, OWIRE_DATA_Pin);
  delay_us(47);
  return ret;
}

uint8_t my_1wire_read_byte(void)
{
  uint8_t ret = 0;
  for(uint8_t mask = 0x01; mask; mask <<= 1)
    if(my_1wire_read_bit())
      ret |= mask;
  return ret;
}

void my_1wire_read_bytes(uint8_t* arr, uint8_t size)
{
  for (int i = 0; i < size; ++i)
    arr[i] = my_1wire_read_byte();
}

