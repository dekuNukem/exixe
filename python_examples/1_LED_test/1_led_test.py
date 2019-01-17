# exixe modules: https://github.com/dekuNukem/exixe
# python library docs: https://github.com/dekuNukem/exixe/tree/master/python_library
# Demo 1: LED Test
import exixe
import spidev
import time

spi = spidev.SpiDev()
spi.open(0, 0)
spi.max_speed_hz = 7800000
cs_pin = 22

my_tube = exixe.Exixe(cs_pin, spi)

while True:
    my_tube.set_led(127, 0, 127)  # Purple
    time.sleep(1)
