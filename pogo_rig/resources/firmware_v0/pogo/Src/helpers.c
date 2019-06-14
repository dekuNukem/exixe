#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "helpers.h"
#include "shared.h"
#include "main.h"

uint8_t count;

void hv_on(void)
{
  HAL_GPIO_WritePin(GPIOA, HV_LED_Pin, GPIO_PIN_SET);
  HAL_GPIO_WritePin(GPIOA, HV_EN_Pin, GPIO_PIN_SET);
}

void hv_off(void)
{
  HAL_GPIO_WritePin(GPIOA, HV_LED_Pin, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(GPIOA, HV_EN_Pin, GPIO_PIN_RESET);
}

void dut_reset(void)
{
  HAL_Delay(10);
  HAL_GPIO_WritePin(GPIOA, EXIXE_RST_Pin, GPIO_PIN_RESET);
  HAL_Delay(10);
  HAL_GPIO_WritePin(GPIOA, EXIXE_RST_Pin, GPIO_PIN_SET);
  HAL_Delay(50);
}

void set_led(uint8_t red, uint8_t green, uint8_t blue)
{
  uint8_t spi_buf[SPI_BUF_SIZE];
  memset(spi_buf, 0, SPI_BUF_SIZE); // clear the buffer
  spi_buf[0] = SPI_CMD_HEADER; // first byte, header
  spi_buf[13] = 0x80 | red;
  spi_buf[14] = 0x80 | green;
  spi_buf[15] = 0x80 | blue;
  HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_RESET);
  HAL_SPI_Transmit(&hspi1, spi_buf, SPI_BUF_SIZE, 100);
  HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_SET);
}

void display_digit(uint8_t digit, uint8_t brightness, uint8_t overdrive)
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
  if(overdrive)
    spi_buf[0] = 0xab;
  HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_RESET);
  HAL_SPI_Transmit(&hspi1, spi_buf, SPI_BUF_SIZE, 100);
  HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_SET);
}

void set_dot(uint8_t left, uint8_t right)
{
  uint8_t spi_buf[SPI_BUF_SIZE];
  memset(spi_buf, 0x0, SPI_BUF_SIZE); // set the EN bit of each byte to 1
  spi_buf[0] = SPI_CMD_HEADER; // first byte, header
  spi_buf[11] = 0x80 | left;
  spi_buf[12] = 0x80 | right;
  HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_RESET);
  HAL_SPI_Transmit(&hspi1, spi_buf, SPI_BUF_SIZE, 100);
  HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_SET);
}

void test(void)
{
  count++;
  if(count % 3 == 0)
    set_led(127, 0, 0);
  else if (count % 3 == 1)
    set_led(0, 127, 0);
  else if (count % 3 == 2)
    set_led(0, 0, 127);

  uint8_t overdrive = 0;
  if(count == 2 || count == 3)
  	overdrive = 1;

  display_digit(count, 120, overdrive);

  if(count % 2)
    set_dot(127, 0);
  else
    set_dot(0, 127);

  HAL_Delay(300);
}
