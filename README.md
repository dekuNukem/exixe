# exixe: Low-cost miniature Nixie tube driver modules

![Alt text](https://i.imgur.com/JjhNDUQ.jpg)

![Alt text](https://i.imgur.com/I1maqhw.jpg)

exixe is a miniature driver module for IN-12 and IN-14 Nixie tubes.

Instead of using obscure out-of-production driver chips, it uses a STM32 to handle digit display and dimming of all cathodes with hardware PWM. The module is controlled via standard SPI protocol, and has onboard RGB LED for backlight effects.

exixe is cheap, small and modular for easy integration. And because each tube has its own driver, there is no need for multiplexing, thus reducing the power consumption, simplifying the circuit design, increases perceived tube brightness, and prolongs the tube life.

## Features

Compared to the traditional approach, exixe modules offers significant advantages:

#### Small and modular
* 2x4 cm (0.79x1.57 inches)
* Breadboard friendly
* Easy integration

#### Low-cost
* $3 in components
* No need for expensive obscure vintage driver chips

#### SPI interface
* High speed, up to 24MHz SCLK
* Available on virtually all embedded systems including Arduino and Raspberry Pi
* Simple 16-byte command packet

#### Advanced control
* Powered by ARM Cortex uC
* Hardware PWM on all cathodes for smooth dimming and animations
* Overdrive feature for poisoned cathodes

#### RGB backlight
* Because RGB

#### No multiplexing
* Brighter display
* Longer tube life
* Simpler design
* Less power consumption

## Technical details

At the heart of the module is a STM32F042K6T6 microcontroller, which is connected to the cathodes of the Nixie tube through high-voltage transistors to turn them on or off. Thanks to the abundance of timers, every single cathode gets their own hardware PWM, which is much more consistent and smooth than software toggling.

The PWM frequency is 200Hz by default, it works well and can be changed by adjusting timer predivider values.

The microcontroller acts as a SPI slave and reads 16-byte commands from the master devices. Details of which can be found on the next section.

Please note that you still need a high-voltage supply around 180V for Nixie tubes to start glowing. You can design one yourself for your project, or use a pre-made module that takes 5V and outputs 180V.

tube needs...

over drive...

only one digit should light up at a given time along with one dot

both have same pinout

## SPI command protocol

Clock polarity

exixe expects a fixed 16-byte command, which should be