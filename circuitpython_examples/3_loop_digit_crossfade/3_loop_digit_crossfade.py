# exixe modules: https://github.com/dekuNukem/exixe
# python library docs: https://github.com/dekuNukem/exixe/tree/master/python_library
# Demo 3: Loop digits with crossfade animation
from exixe import Exixe 
import busio
import board
import time

spi = busio.SPI(board.SCK, board.MOSI)
cs_pin = board.D4

my_tube = Exixe(cs_pin, spi)

count = 0
# my_tube.crossfade_run is a non-blocking call which can allow a main loop to handle more tasks
# Ideally there will be a 33ms delay but this needs to take in account all other tasks within the loop
while True:
    my_tube.set_led(127, 64, 0)  # Orange

    # Initialize the crossfade with next digit and how many frames desired.
    my_tube.crossfade_init(count, 30)
    while my_tube.animation_in_progress:
        my_tube.crossfade_run()
        # 30 frames at a 33ms delay will ~1 second
        time.sleep(0.033)

    count = (count + 1) % 10
