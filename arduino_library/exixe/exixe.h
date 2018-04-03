#ifndef exixe_h
#define exixe_h

#include "Arduino.h"

#define EXIXE_SPI_BUF_SIZE (16)
#define EXIXE_SPI_HEADER (0xaa)
#define EXIXE_SPI_HEADER_OD (0xab)
#define EXIXE_ANIMATION_FRAME_DURATION_MS (33)
#define EXIXE_ANIMATION_IN_PROGRESS (1)
#define EXIXE_ANIMATION_FINISHED (0)

class exixe
{
  public:
    exixe(int my_cs);
    void spi_init();
    void show_digit(unsigned char digit, unsigned char brightness, unsigned char overdrive);
    void set_led(unsigned char red, unsigned char green, unsigned char blue);
    void set_dots(unsigned char left_brightness, unsigned char right_brightness);
    void crossfade_init(unsigned char digit, unsigned int duration_frames, unsigned char brightness, unsigned char overdrive);
    unsigned char crossfade_run();
    void clear();
  private:
    unsigned char cs_pin;
    unsigned char spi_buf[EXIXE_SPI_BUF_SIZE];
    unsigned char cap_digit(unsigned char digit);
    unsigned char cap_float(float temp);
    void spi_write();

    //------- crossfade animation variables -------
    unsigned char animation_src_digit;
    unsigned char animation_dest_digit;
    unsigned long animation_start_frame;
    unsigned long animation_duration;
    unsigned char animation_brightness;
    unsigned char animation_overdrive;
    float animation_step;
};

#endif

