#ifndef exixe_h
#define exixe_h

#define EXIXE_SPI_BUF_SIZE (16)
#define EXIXE_SPI_HEADER (0xaa)
#define EXIXE_SPI_HEADER_OD (0xab)

class exixe
{
  public:
    exixe(int);
    void show_digit(unsigned char digit, unsigned char brightness, unsigned char overdrive);
    void set_led(unsigned char red, unsigned char green, unsigned char blue);
    void set_dots(unsigned char left_brightness, unsigned char right_brightness);
    void crossfade(unsigned char source_digit, unsigned char destination_digit, unsigned int duration_frames, unsigned char brightness, unsigned char overdrive);
    void clear();
  private:
    unsigned char cs_pin;
    unsigned char spi_buf[EXIXE_SPI_BUF_SIZE];
    void spi_write();
    unsigned char cap_digit(unsigned char digit);
    unsigned char cap_float(float temp);
};

#endif

