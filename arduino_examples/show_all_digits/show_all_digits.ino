#include <SPI.h>
#define SPI_BUF_SIZE 16

uint8_t count;
uint8_t slaveSelectPin = 10;

// brightness between 0 to 127, 0 off 127 fully on
void display_digit(uint8_t digit, uint8_t brightness, uint8_t cs_pin)
{
  uint8_t spi_buf[SPI_BUF_SIZE];
  memset(spi_buf, 0x80, SPI_BUF_SIZE); // set the EN bit of each byte to 1
  spi_buf[0] = 0xaa; // first byte, header
  spi_buf[13] = 0;  // LED red unchanged
  spi_buf[14] = 0;  // LED green unchanged
  spi_buf[15] = 0;  // LED blue unchanged
  digit = digit % 10; // digit is now between 0 and 9
  digit++; // digit is now between 1 and 10, we can use it as the index for the SPI buffer now
  spi_buf[digit] |= brightness; // set that digit to brightness
  digitalWrite(cs_pin, LOW);
  for (int i = 0; i < SPI_BUF_SIZE; ++i)
    SPI.transfer(spi_buf[i]);
  digitalWrite(cs_pin, HIGH);
}

// color between 0 to 127, 0 off 127 fully on
void set_led(uint8_t red, uint8_t green, uint8_t blue, uint8_t cs_pin)
{
  uint8_t spi_buf[SPI_BUF_SIZE];
  memset(spi_buf, 0, SPI_BUF_SIZE); // clear the buffer
  spi_buf[0] = 0xaa; // first byte, header
  spi_buf[13] = 0x80 | red;
  spi_buf[14] = 0x80 | green;
  spi_buf[15] = 0x80 | blue;
  digitalWrite(cs_pin, LOW);
  for (int i = 0; i < SPI_BUF_SIZE; ++i)
    SPI.transfer(spi_buf[i]);
  digitalWrite(cs_pin, HIGH);
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
  set_led(127, 0, 127, slaveSelectPin); // should be purple
  display_digit(count, 127, slaveSelectPin);
  delay(500);
}