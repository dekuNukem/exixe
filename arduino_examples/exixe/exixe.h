#ifndef exixe_h
#define exixe_h

#define EXIXE_SPI_BUF_SIZE 16

class exixe
{
  public:
    exixe(int);
    void show(unsigned char digit, unsigned char digit_brightness, unsigned char red, unsigned char green, unsigned char blue, unsigned char overdrive);

  private:
    unsigned char cs_pin;
    unsigned char spi_buf[EXIXE_SPI_BUF_SIZE];
};

#endif

