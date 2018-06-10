/*
  exixe modules:
  https://github.com/dekuNukem/exixe

  library docs:
  https://github.com/dekuNukem/exixe/tree/master/arduino_library

  Demo 5: Loop digits on two tubes with crossfade animation
*/

#define RAINBOW_COLORS 6

#include "exixe.h"

// change those to the cs pins you're using
int cs1 = 10;
int cs2 = 9;
unsigned char count;

unsigned char cl_red[RAINBOW_COLORS] = {148, 0, 0, 255, 255, 255};
unsigned char cl_green[RAINBOW_COLORS] = {0, 0, 255, 255, 127, 0};
unsigned char cl_blue[RAINBOW_COLORS] = {211, 255, 0, 0, 0, 0};


exixe my_tube1 = exixe(cs1);
exixe my_tube2 = exixe(cs2);

void setup()
{
  // ONLY CALL THIS ONCE
  my_tube1.spi_init();

  my_tube1.clear();
  my_tube2.clear();
  randomSeed(analogRead(0));
}

void loop()
{
  count = (count + 1) % 10; // keep count between 0 to 9
  unsigned char cc1 = random(RAINBOW_COLORS);
  unsigned char cc2 = random(RAINBOW_COLORS);

  my_tube1.crossfade_init(count, 15, 127, 0, cl_red[cc1]/2, cl_green[cc1]/2, cl_blue[cc1]/2);
  my_tube2.crossfade_init(10-count, 15, 127, 0, cl_red[cc2]/2, cl_green[cc2]/2, cl_blue[cc2]/2);

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

  delay(500);
}