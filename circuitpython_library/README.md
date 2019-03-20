# exixe Raspberry Pi/Python library

This is a simple Python library for exixe modules intended to be used on Adafruit CircuitPython devices.

# Requirements
Before you use this library, you should familiarize yourself with CircuitPython by reading through the 
following guides on the Adafruit Learning System. They will give you a good understanding of how
CircuitPython works, and differs from normal Python. They will also help you set up an appropriate 
Dev environment including the libraries you'll need, and help you make your your CircuitPython 
compatible board is set up properly
    https://learn.adafruit.com/welcome-to-circuitpython
    https://learn.adafruit.com/circuitpython-essentials/circuitpython-essentials
    https://learn.adafruit.com/circuitpython-basics-i2c-and-spi/spi-devices

# Usage 
The code has some good documentation that I dont want to repeat but this will be a general overview on how to use the library. 
1.	Create SPI initialization
> spi = busio.SPI(board.SCK, board.MOSI) <br>

2.	Identify CS pin to control the individual exixe
> cs_pin = board.D4

3.	Create exixe object
> exixe_1 = Exixe(cs_pin,spi)

4.	Control object
> exixe_1.set_digit(5) <br>
exixe_1.set_led(127,0,0) # turn led to red
