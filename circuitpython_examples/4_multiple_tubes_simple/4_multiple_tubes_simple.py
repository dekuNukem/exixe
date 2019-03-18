# exixe modules: https://github.com/dekuNukem/exixe
# python library docs: https://github.com/dekuNukem/exixe/tree/master/python_library
# Demo 4: Loop digits on two tubes
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

# Update LED's, have 1 tube count up, the other tube count down
count = 0
while True:
    my_tube_1.set_led(127, 0, 127)  # Purple
    my_tube_2.set_led(127, 127, 0)  # Yellow
    my_tube_1.set_digit(count)
    my_tube_2.set_digit(10 - count)

    count = (count + 1) % 10
    time.sleep(1)
