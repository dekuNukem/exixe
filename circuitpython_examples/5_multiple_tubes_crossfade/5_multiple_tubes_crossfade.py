# exixe modules: https://github.com/dekuNukem/exixe
# python library docs: https://github.com/dekuNukem/exixe/tree/master/python_library
# Demo 5: Loop digits on two tubes with crossfade animation
from exixe import Exixe 
import busio
import board
import time

spi = busio.SPI(board.SCK, board.MOSI)

# Update these to the cs pins you're using
cs_pin_1 = board.D4
cs_pin_2 = board.D6

my_tube_1 = Exixe(cs_pin_1, spi)
my_tube_2 = Exixe(cs_pin_2, spi)

count = 0
# my_tube.crossfade_run is a non-blocking call which can allow a main loop to handle more tasks
# Ideally there will be a 33ms delay but this needs to take in account all other tasks within the loop
while True:
    my_tube_1.set_led(127, 64, 0)  # Orange
    my_tube_2.set_led(127, 0, 127)  # Purple

    # Initialize the crossfade with next digit and how many frames desired.
    my_tube_1.crossfade_init(count, 30)
    my_tube_2.crossfade_init(10 - count, 30)
    while my_tube_1.animation_in_progress and my_tube_2.animation_in_progress:
        my_tube_1.crossfade_run()
        my_tube_2.crossfade_run()
        # 30 frames at a 33ms delay will ~1 second
        time.sleep(0.033)

    count = (count + 1) % 10
