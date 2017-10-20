# exixe: Low-cost miniature Nixie tube driver modules

![Alt text](https://i.imgur.com/JjhNDUQ.jpg)

![Alt text](https://i.imgur.com/I1maqhw.jpg)

exixe is a miniature driver module for IN-12 and IN-14 Nixie tubes.

Instead of using obscure out-of-production driver chips, it uses a STM32 to handle digit display and dimming of all cathodes with hardware PWM. The module is controlled via standard SPI protocol, and has onboard RGB LED for backlight effects.

exixe is cheap, small and modular for easy integration. And because each tube has its own driver, there is no need for multiplexing, reducing the power consumption, simplifying the circuit design, increases perceived tube brightness, and prolongs the tube life.

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

tube needs...

over drive...


stm32f042k6t6, 32 pin, enough pin... timer pwm channels

## SPI command protocol

Clock polarity

exixe expects a fixed 16-byte command, which should be