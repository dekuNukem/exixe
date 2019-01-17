# exixe modules: https://github.com/dekuNukem/exixe
# python library docs: https://github.com/dekuNukem/exixe/tree/master/python_library
# Demo 3: Loop digits with crossfade animation
import exixe
import spidev
import time

spi = spidev.SpiDev()
spi.open(0, 0)
spi.max_speed_hz = 7800000
cs_pin = 16

my_tube = exixe.Exixe(cs_pin, spi)

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
