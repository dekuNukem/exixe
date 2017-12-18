#include <SPI.h>
#define SPI_BUF_SIZE 16

uint8_t spi_buf[SPI_BUF_SIZE];
const int slaveSelectPin = 10;
uint8_t count;

void print_digit(uint8_t digit)
{
  // set the enable bit to 1
  memset(spi_buf, 0x80, SPI_BUF_SIZE);
  spi_buf[0] = 0xaa; // first byte, header
  // LED orange color
  spi_buf[13] |= 127;
  spi_buf[14] |= 28;
  spi_buf[15] |= 0;

  digit = digit % 10; // digit is now between 0 and 9
  digit++; // digit is now between 1 and 10, we can use it as the index for the SPI buffer now
  spi_buf[digit] |= 127; // that digit fully on
}

void setup()
{
  pinMode(slaveSelectPin, OUTPUT);
  digitalWrite(slaveSelectPin, HIGH);
  SPI.begin();
  // 8MHz SCLK, MSB first, SPI mode 0
  SPI.beginTransaction(SPISettings(8000000, MSBFIRST, SPI_MODE0));
}

void loop()
{
  count++;
  print_digit(count);

  digitalWrite(slaveSelectPin, LOW);
  for (int i = 0; i < SPI_BUF_SIZE; ++i)
    SPI.transfer(spi_buf[i]);
  digitalWrite(slaveSelectPin, HIGH);

  delay(500);
}