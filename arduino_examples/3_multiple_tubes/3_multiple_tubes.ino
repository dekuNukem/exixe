/*
  Demo for exixe modules
  https://github.com/dekuNukem/exixe
  
  exixe "Getting Started" guide
  https://github.com/dekuNukem/exixe/blob/master/getting_started.md

  Demo 2: Loop digits on two tubes, using the exixe library
*/


#include "exixe.h"

int cs1 = 10;
int cs2 = 9;
unsigned char count;

exixe my_tube1 = exixe(cs1);
exixe my_tube2 = exixe(cs2);

void setup()
{
  ;
}

void loop()
{
  count = (count + 1) % 10; // keep count between 0 to 9
  my_tube1.show(count, 127, 127, 0, 127, 0);
  my_tube2.show(10 - count, 127, 0, 127, 0, 0);
  delay(500);
}