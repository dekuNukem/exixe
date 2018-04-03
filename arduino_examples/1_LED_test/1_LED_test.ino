/*
  exixe modules:
  https://github.com/dekuNukem/exixe

  library docs:
  https://github.com/dekuNukem/exixe/tree/master/arduino_library

  Demo 1: LED test
*/

#include "exixe.h"

// change this to the cs pin you're using
int cs_pin = 10;
exixe my_tube = exixe(cs_pin);

void setup()
{
  my_tube.spi_init();
}

void loop()
{
  my_tube.set_led(127, 0, 127); // purple
  delay(500);
}