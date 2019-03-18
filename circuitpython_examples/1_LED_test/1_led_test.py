# exixe modules: https://github.com/dekuNukem/exixe
# python library docs: https://github.com/dekuNukem/exixe/tree/master/python_library
# Demo 1: LED Test
from exixe import Exixe 
import busio
import board
import time

spi = busio.SPI(board.SCK, board.MOSI)
cs_pin = board.D4

my_tube = Exixe(cs_pin, spi)

while True:
    my_tube.set_led(127, 0, 127)  # Purple
    time.sleep(1)
