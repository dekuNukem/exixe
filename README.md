M8Q time calibration

ws2812 underlight

tempture sensor

8 tubes, in-14

MM DD HH mm

HH mm SS temp

3D printing?

guardian theme?

bluetooth

eeprom

light senser

stm32f042K 14 PWM channels!

SPI 3MHz MAX, 16 byte command

USB C connector

disable boot0 in option byte 
SWD cross talk in jumper wire

rg 470ohm
b 0ohm

htim14.Instance->CCR1 = pwm_value;
pwm_value must be smaller than counter period

3528 rgb led

http://www.mouser.co.uk/ProductDetail/Wurth-Electronics/150141M173100/?qs=sGAEpiMZZMuCm2JlHBGeflo8zLeA%2ffbJXCK04oeb2W5E0T0m7VNM2Q%3d%3d

48MHz sysclock
Prescaler 1920
period 127
194Hz

0		0xab
1		1
2		2
3		3
4		4
5		5
6		6
7		7
8		8
9		9
10		0
11		left dot
12		right dot
13		red
14		green
15		blue

up to 20MHZ

Thanks to this diode, when an EMC stress oc
curs, the level of the noise is clamped to V
DD
. 
As a consequence, channels implemented on FT I/O show a better noise immunity

ref-packages

find smt 8MHz and 32.768KHz crystals

remove tx rx header put backing transistors there

remove eeprom 
put pf0 pf1 tx rx on test points

change drc will change pad size

eixie reset after a short delay when invalid header
gps fix led

polygon rank higher will isolate lower

use driven shield, no ground or signal underneath

test reversed tx rx

test rtos

looks like reset is needed for correct SPI snyc

current state, 16 bytes,
new state, 16 bytes
compare difference between the two, then do fade animation
send animation SPI updates 60fps

animation is active if animation_frame_end is bigger than current frame counter

animation type
0: fade to black then fade into another digit
1: 2 digits crossfade

2 frame arrays, start digit brightness, end digit brightness