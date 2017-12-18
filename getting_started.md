## Getting started

Since I have already sold a few exixe modules, here is a short introduction on how to get started with exixe modules:

### Wiring it up

You should first wire it up and test to see if the board is working before soldering on the nixie tubes.

First take a look at the pinout above, connect the GND to GND, and 3.3V power to 3V3. If you turn it on at this stage the LED should be faintly on, and nothing else should happen.

Then let's connect the SPI lines. Connect MO to MOSI line, SCK to SCK line, and CS to CS line. MISO is not used so you can leave it off. Leave HV pin unconnected for now as well. If you are unfamiliar with SPI, or need a refresher, [sparkfun's introduction](https://learn.sparkfun.com/tutorials/serial-peripheral-interface-spi) is really helpful, and [the wikipedia page has more details](https://en.wikipedia.org/wiki/Serial_Peripheral_Interface_Bus).
