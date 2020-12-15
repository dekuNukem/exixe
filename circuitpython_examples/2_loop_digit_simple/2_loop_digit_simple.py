# exixe modules: https://github.com/dekuNukem/exixe
# python library docs: https://github.com/dekuNukem/exixe/tree/master/python_library
# Demo 2: loop digits test
from exixe import Exixe 
import busio
import board
import time

spi = busio.SPI(board.SCK, board.MOSI)
cs_pin = board.D4

my_tube = Exixe(cs_pin, spi)

# Update led to be purple & count from 0 -> 9 and reset back to 0 at 10
count = 0
while True:
    my_tube.set_led(127, 0, 127)  # Purple
    my_tube.set_digit(count)

    count = (count + 1) % 10
    time.sleep(1)
