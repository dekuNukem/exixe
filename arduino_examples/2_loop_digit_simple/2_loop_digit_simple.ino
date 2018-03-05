/*
  Demo for exixe modules
  https://github.com/dekuNukem/exixe
  
  exixe "Getting Started" guide
  https://github.com/dekuNukem/exixe/blob/master/getting_started.md

  Demo 2: loop digits
*/

#include "exixe.h"

// change this to the cs pin you're using
int cs_pin = 10;
unsigned char count;

exixe my_tube = exixe(cs_pin);

void setup()
{
  my_tube.clear();
  my_tube.set_led(127, 0, 127); // purple
}

void loop()
{
  count++;
  /*
	1st arg: Digit to show, 0 to 9
	2nd arg: Digit brightness, 0 to 127
	3rd arg: Overdrive, 0 disable 1 enable
  */
  my_tube.show_digit(count, 127, 0);
  delay(500);
}