/*
  Demo for exixe modules
  https://github.com/dekuNukem/exixe
  
  exixe "Getting Started" guide
  https://github.com/dekuNukem/exixe/blob/master/getting_started.md

  Demo 1: Show digit 4 with orange backlight
*/

#include <SPI.h>
#define SPI_BUF_SIZE 16

uint8_t spi_buf[SPI_BUF_SIZE];
// change this to the cs pin you're using
const int slaveSelectPin = 10;

void setup()
{
  pinMode(slaveSelectPin, OUTPUT);
  digitalWrite(slaveSelectPin, HIGH);

  SPI.begin();
  // 8MHz SCLK, MSB first, SPI mode 0
  SPI.beginTransaction(SPISettings(8000000, MSBFIRST, SPI_MODE0));

  spi_buf[0] = 0xaa; // first byte, header
  spi_buf[4] = 0x80 | 127; // digit 4 full brightness
  spi_buf[13] = 0x80 | 127; // red LED full brightness
  spi_buf[14] = 0x80 | 28; // green LED brightness 28
  spi_buf[15] = 0x80 | 0; // blue LED fully off
}

void loop()
{
  // cs low
  digitalWrite(slaveSelectPin, LOW);
  // send 16 byte command
  for (int i = 0; i < SPI_BUF_SIZE; ++i)
    SPI.transfer(spi_buf[i]);
  // cs high
  digitalWrite(slaveSelectPin, HIGH);

  delay(200);
}