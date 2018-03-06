/*
  exixe modules:
  https://github.com/dekuNukem/exixe

  library docs:
  https://github.com/dekuNukem/exixe/tree/master/arduino_library

  Demo 5: Loop digits on two tubes with crossfade animation
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

  my_tube1.crossfade_init(count, 15, 127, 0);
  my_tube2.crossfade_init(10-count, 15, 127, 0);

  /*
      again, crossfade_run() is non-blocking, that means
    you can run other tasks in the loop.
      just make sure to call it at least every 33ms
    and check its return value to see if it's finished.
  */
  while(1)
  {
    unsigned char result1 = my_tube1.crossfade_run();
    unsigned char result2 = my_tube2.crossfade_run();
    // exit when both animations are finished 
    if(result1 == EXIXE_ANIMATION_FINISHED && result2 == EXIXE_ANIMATION_FINISHED)
      break;
  }

  delay(250);
}