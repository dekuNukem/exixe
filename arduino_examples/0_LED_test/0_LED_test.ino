/*
  Demo for exixe modules
  https://github.com/dekuNukem/exixe
  
  exixe "Getting Started" guide
  https://github.com/dekuNukem/exixe/blob/master/getting_started.md

  Demo 0: Show a purple LED
*/

#include <SPI.h>
#define SPI_BUF_SIZE 16

uint8_t spi_buf[SPI_BUF_SIZE];
const int slaveSelectPin = 10;

void setup()
{
  pinMode(slaveSelectPin, OUTPUT);
  digitalWrite(slaveSelectPin, HIGH);

  SPI.begin();
  // 8MHz SCLK, MSB first, SPI mode 0
  SPI.beginTransaction(SPISettings(8000000, MSBFIRST, SPI_MODE0));

  spi_buf[0] = 0xaa; // first byte, header
  spi_buf[13] = 0x80 | 127; // red LED full brightness
  spi_buf[14] = 0x80 | 0; // green LED off
  spi_buf[15] = 0x80 | 127; // blue LED full brightness
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