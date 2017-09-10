# exixe: Low-cost miniature driver module for Nixie tubes

![Alt text](https://i.imgur.com/JjhNDUQ.jpg)

![Alt text](https://i.imgur.com/I1maqhw.jpg)

exixe is a driver module for IN-12 and IN-14 Nixie tubes, I developed them while building my own Nixie clock. 

## Features

Compared to the traditional approach, exixe board offers significant advantages:

#### Small and modular
* 2x4 cm (0.79x1.57 inches)
* Breadboard friendly
* Easy integration

#### Low-cost
* $3 in components
* No need for obscure vintage driver chips

#### SPI interface
* High speed, up to 24MHz SCLK
* Available on virtually all embedded systems including Arduino and Raspberry Pi
* Simple 16-byte command packet

#### Advanced control
* Powered by ARM Cortex uC
* Hardware PWM on all cathodes for smooth dimming and animations
* Overdrive feature for poisoned cathodes

#### RGB backlight
* ...well because RGB

#### No multiplexing
* Brighter display
* Longer tube life


## Technical details

tube needs...

over drive...


stm32f042k6t6, 32 pin, enough pin... timer pwm channels

## SPI command protocol

Clock polarity

exixe expects a fixed 16-byte command, which should be