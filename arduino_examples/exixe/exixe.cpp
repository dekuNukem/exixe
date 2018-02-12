#include "exixe.h"
#include <SPI.h>

exixe::exixe(int my_cs)
{
  cs_pin = my_cs;
  memset(spi_buf, 0, EXIXE_SPI_BUF_SIZE);
  pinMode(cs_pin, OUTPUT);
  digitalWrite(cs_pin, HIGH);
  SPI.begin();
  SPI.beginTransaction(SPISettings(8000000, MSBFIRST, SPI_MODE0));
}

/*
1st arg: Digit to show, 0 to 9
2nd arg: Digit brightness, 0 to 127
3rd arg: Backlight red, 0 to 127
4th arg: Backlight green, 0 to 127
5th arg: Backlight blue, 0 to 127
6th arg: Overdrive, 0 disable 1 enable
*/
void exixe::show(unsigned char digit, unsigned char digit_brightness, unsigned char red, unsigned char green, unsigned char blue, unsigned char overdrive)
{
  unsigned char spi_header = 0xaa;
  if(overdrive)
    spi_header = 0xab;

  // cap brightness args to 127
  digit_brightness &= 0x7f;
  red &= 0x7f;
  green &= 0x7f;
  blue &= 0x7f;

  // set the EN bit of each byte to 1
  memset(spi_buf, 0x80, EXIXE_SPI_BUF_SIZE);
  
  spi_buf[0] = spi_header; // first byte, header
  spi_buf[13] |= red;
  spi_buf[14] |= green;
  spi_buf[15] |= blue;

  digit = digit % 10;
  if(digit == 0)
    digit = 10;
  spi_buf[digit] |= digit_brightness;

  digitalWrite(cs_pin, LOW);
  for (int i = 0; i < EXIXE_SPI_BUF_SIZE; ++i)
    SPI.transfer(spi_buf[i]);
  digitalWrite(cs_pin, HIGH);
}
