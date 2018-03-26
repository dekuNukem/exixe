/*
  exixe modules:
  https://github.com/dekuNukem/exixe

  library docs:
  https://github.com/dekuNukem/exixe/tree/master/arduino_library

  Demo 4: Loop digits on two tubes
*/


#include "exixe.h"

// change those to the cs pins you're using
int cs1 = 10;
int cs2 = 9;
unsigned char count;

exixe my_tube1 = exixe(cs1);
exixe my_tube2 = exixe(cs2);

void setup()
{
  my_tube1.clear();
  my_tube2.clear();
  my_tube1.set_led(127, 0, 127); // purple;
  my_tube2.set_led(127, 127, 0); // yellow;
}

void loop()
{
  count = (count + 1) % 10; // keep count between 0 to 9
  my_tube1.show_digit(count, 127, 0);
  my_tube2.show_digit(10 - count, 127, 0);
  delay(500);
}