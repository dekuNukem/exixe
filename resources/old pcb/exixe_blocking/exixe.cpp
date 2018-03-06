#include "exixe.h"
#include <SPI.h>

/*
  SPI command details:
  https://github.com/dekuNukem/exixe/blob/master/technical_details.md

  Project repo:
  https://github.com/dekuNukem/exixe
*/

exixe::exixe(int my_cs)
{
  cs_pin = my_cs;
  memset(spi_buf, 0, EXIXE_SPI_BUF_SIZE);
  pinMode(cs_pin, OUTPUT);
  digitalWrite(cs_pin, HIGH);
  SPI.begin();
  SPI.beginTransaction(SPISettings(8000000, MSBFIRST, SPI_MODE0));
}

void exixe::spi_write()
{
  digitalWrite(cs_pin, LOW);
  for (int i = 0; i < EXIXE_SPI_BUF_SIZE; ++i)
    SPI.transfer(spi_buf[i]);
  digitalWrite(cs_pin, HIGH);
}

// cap digit between 1 and 10
unsigned char exixe::cap_digit(unsigned char digit)
{
  digit = digit % 10;
  if(digit == 0)
    digit = 10;
  return digit;
}

// Turn off all digits and LED
void exixe::clear()
{
  memset(spi_buf, 0x80, EXIXE_SPI_BUF_SIZE);
  spi_buf[0] = EXIXE_SPI_HEADER;
  spi_write();
}

unsigned char exixe::cap_float(float temp)
{
  if(temp > 127)
    temp = 127;
  if(temp < 0)
    temp = 0;
  return (unsigned char)temp;
}

void exixe::show_digit(unsigned char digit, unsigned char brightness, unsigned char overdrive)
{
  // cap brightness to 127
  brightness &= 0x7f;
  digit = cap_digit(digit);

  memset(spi_buf, 0, EXIXE_SPI_BUF_SIZE); // clear SPI buffer
  memset(spi_buf, 0x80, EXIXE_SPI_BUF_SIZE - 5); // set EN bit to 1 for all digits
  spi_buf[0] = overdrive ? EXIXE_SPI_HEADER_OD : EXIXE_SPI_HEADER; // first byte, header
  spi_buf[digit] = 0x80 | brightness; // set digit brightness

  spi_write();
}

void exixe::set_led(unsigned char red, unsigned char green, unsigned char blue)
{
  // cap brightness to 127
  red &= 0x7f;
  green &= 0x7f;
  blue &= 0x7f;

  memset(spi_buf, 0, EXIXE_SPI_BUF_SIZE);// clear SPI buffer
  spi_buf[0] = EXIXE_SPI_HEADER;
  spi_buf[13] = 0x80 | red; // set LED colors
  spi_buf[14] = 0x80 | green;
  spi_buf[15] = 0x80 | blue;

  spi_write();
}

void exixe::set_dots(unsigned char left_brightness, unsigned char right_brightness)
{
  // cap brightness to 127
  left_brightness &= 0x7f;
  right_brightness &= 0x7f;

  memset(spi_buf, 0, EXIXE_SPI_BUF_SIZE);
  spi_buf[0] = EXIXE_SPI_HEADER;
  spi_buf[11] = 0x80 | left_brightness;
  spi_buf[12] = 0x80 | right_brightness;

  spi_write();
}

void exixe::crossfade(unsigned char source_digit, unsigned char destination_digit, unsigned int duration_frames, unsigned char brightness, unsigned char overdrive)
{
  brightness &= 0x7f;
  float step = (float)brightness / (float)duration_frames;
  
  source_digit = cap_digit(source_digit);
  destination_digit = cap_digit(destination_digit);

  memset(spi_buf, 0, EXIXE_SPI_BUF_SIZE);
  memset(spi_buf, 0x80, EXIXE_SPI_BUF_SIZE - 5);
  spi_buf[0] = overdrive ? EXIXE_SPI_HEADER_OD : EXIXE_SPI_HEADER;

  for (int i = 0; i < duration_frames; ++i)
  {
    unsigned char temp = cap_float(step * (float)i);
    spi_buf[source_digit] = 0x80 | (brightness - temp);
    spi_buf[destination_digit] = 0x80 | temp;
    spi_write();
    delay(16);
  }
}