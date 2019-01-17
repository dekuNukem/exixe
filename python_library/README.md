# exixe Raspberry Pi/Python library

This is a simple Python library for exixe modules intended to be used on a Raspberry Pi.

# Requirements
In order to use this library, you must have python installed, SPI interface turned on the Raspberry Pi and spidev python library installed.
## Turning on SPI
Configuration
The SPI peripheral is not turned on by default. To enable it, do the following.
1.	Run sudo raspi-config.
2.	Use the down arrow to select 5 Interfacing Options
3.	Arrow down to P4 SPI.
4.	Select yes when it asks you to enable SPI,
5.	Also select yes if it asks about automatically loading the kernel module.
6.	Use the right arrow to select the <Finish> button.
7.	Select yes when it asks to reboot.
## Installing spidev 
From pip:
pip install spidev
From source:
sudo apt-get update sudo apt-get install python-dev 
git clone git://github.com/doceme/py-spidev
cd py-spidev
sudo python setup.py install
sudo python3 setup.py install
#Usage 
The code has some good documentation that I don’t want to repeat but this will be a general overview on how to use the library. 
1.	Create SPI initialization
spi = spidev.SpiDev()
spi.open(0,0)
spi.max_speed = 7800000
2.	Identify CS pin to control the individual exixe
3.	Create exixe object
exixe_1 = Exixe(cs_pin,spi)
4.	Control object
exixe_1.set_digit(5)
exixe_1.set_led(127,0,0) # turn led to red
