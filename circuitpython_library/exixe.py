"""
Modified from the RPi Python Library, this version is compatible with Adafruit CircuitPython
"""
import time
import busio # should replace SPIdev
import digitalio # Replaces GPIO
import board # Adafruit Circuitpython Board library

EXIXE_SPI_BUF_SIZE = 16
EXIXE_SPI_HEADER = 0xAA
EXIXE_SPI_HEADER_OD = 0xab
EXIXE_ANIMATION_FRAME_DURATION_MS = 33
EXIXE_ANIMATION_IN_PROGRESS = 1
EXIXE_ANIMATION_FINISHED = 0
MAX_BRIGHTNESS = 127

millis = lambda: int(round(time.monotonic() * 1000))


def cap_digit(digit):
    """
    This function will ensure that entered digit doesnt go above 9 to represent all single digits.
    Also due to Exixe SPI technical details the 10th slot in the bytes array controls the 0 digit.
    Here is where we will convert the 0 digit to 10 to represent this correctly.
    More info here: https://github.com/dekuNukem/exixe/blob/master/technical_details.md
    """
    digit = digit % 10
    if digit == 0:
        digit = 10
    return digit


def cap_brightness(brightness):
    """
    This function will ensure any entered brightness will not go above the MAX_BRIGHTNESS
    """
    if brightness > MAX_BRIGHTNESS:
        brightness = MAX_BRIGHTNESS
    if brightness < 0:
        brightness = 0
    return brightness


class Exixe:
    def __init__(self, cs_pin, spi, overdrive=False, initial_val=-1):
        """
        This class is used to control an individual Exixe module's digit, and led along with providing a way to simulate
        a crossfade animation
        :param cs_pin: This is the control pin for the specific exixe. 1 per exixe module
        :param spi: spi object from the spiDev module. Only 1 spi object needs to be created for multiple exixe modules
        Example below:
        spi = spidev.SpiDev()
        spi.open(0, 0)
        spi.max_speed_hz = 7800000
        :param overdrive: (Optional) Used to enable current overdrive to make the tube brighter
        :param initial_val: (Optional) initial digit to set
        """
        self.cs_pin = cs_pin
        self.spi = spi
        self.spi_buf = [0] * EXIXE_SPI_BUF_SIZE

        self.animation_in_progress = False
        # Digits will be stored in values 0-9 and when needed to update SPI buffer use the cap_digit to ensure correct
        # location/index is used.
        self.animation_src_digit = 0
        self.animation_dest_digit = 0
        self.animation_start_frame = 0
        self.animation_duration = 0
        self.animation_brightness = 0
        self.animation_step = 0

        self.red = 0
        self.green = 0
        self.blue = 0

        self.overdrive = overdrive

        self.cs = digitalio.DigitalInOut(self.cs_pin)
        self.cs.direction = digitalio.Direction.OUTPUT
        self.cs.value = True
        if initial_val >= 0:
            self.set_digit(initial_val)

    def set_digit(self, digit, brightness=MAX_BRIGHTNESS):
        """
        This method will set the single digit specified and will leave the LED unaffected
        """
        brightness = cap_brightness(brightness)
        self.animation_src_digit = digit
        self.clear_digit()
        self.set_en_bit_to_1()
        # Set first byte of header according to overdrive flag
        self.spi_buf[0] = EXIXE_SPI_HEADER_OD if self.overdrive else EXIXE_SPI_HEADER
        self.spi_buf[cap_digit(digit)] = 0x80 | brightness

        self.spi_write()

    def set_en_bit_to_1(self):
        """
        set EN Bit to 1 for all digits. This will ensure that we will control all the digits when sending the SPI signal
        """
        for i in range(0, EXIXE_SPI_BUF_SIZE - 5):
            self.spi_buf[i] = 0x80

    def set_led(self, red, green, blue):
        """
        This method will update the LED without changing the digits
        """
        red = cap_brightness(red)
        green = cap_brightness(green)
        blue = cap_brightness(blue)
        self.red = red
        self.green = green
        self.blue = blue
        self.spi_buf[13] = 0
        self.spi_buf[14] = 0
        self.spi_buf[15] = 0

        self.spi_buf[0] = EXIXE_SPI_HEADER_OD if self.overdrive else EXIXE_SPI_HEADER
        self.spi_buf[13] = 0x80 | red
        self.spi_buf[14] = 0x80 | green
        self.spi_buf[15] = 0x80 | blue

        self.spi_write()

    def set_dots(self, left_brightness, right_brightness):
        """
        This method will update the left and right dots if the Nixie tube supports this.
        This does not change digits or LED
        """
        left_brightness = cap_brightness(left_brightness)
        right_brightness = cap_brightness(right_brightness)

        self.clear_digit()
        self.spi_buf[0] = EXIXE_SPI_HEADER_OD if self.overdrive else EXIXE_SPI_HEADER
        self.spi_buf[11] = 0x80 | left_brightness
        self.spi_buf[12] = 0x80 | right_brightness

        self.spi_write()

    def crossfade_init(self, digit, duration_frames, brightness=MAX_BRIGHTNESS):
        """
        This method is used to initialize the crossfade, it will set the destination digit along with the number of
        frames that is desired for the animation. This should only be called 1 time for set up, where as the
        crossfade_run method should be called within a loop to do the updates of the animation.
        """
        self.animation_dest_digit = digit
        self.animation_start_frame = millis() / EXIXE_ANIMATION_FRAME_DURATION_MS
        self.animation_duration = duration_frames
        self.animation_brightness = cap_brightness(brightness)
        self.animation_step = self.animation_brightness / self.animation_duration
        self.animation_in_progress = True

    def crossfade_run(self):
        """
        This method will update the 2 digits for animation. Where the source digit will go down in brightness and the
        destination digit will go up in brightness until source is zero and destination is at desired brightness.
        :return: The status if the crossfade animation has been completed or still running.
        """
        current_frame = (millis() / EXIXE_ANIMATION_FRAME_DURATION_MS) - self.animation_start_frame

        if current_frame > self.animation_duration:
            self.animation_src_digit = self.animation_dest_digit
            self.animation_in_progress = False
            self.set_digit(self.animation_src_digit, self.animation_brightness)
            return EXIXE_ANIMATION_FINISHED
        self.clear_digit()
        self.set_en_bit_to_1()
        self.spi_buf[0] = EXIXE_SPI_HEADER_OD if self.overdrive else EXIXE_SPI_HEADER

        temp = int(cap_brightness(self.animation_step * current_frame))
        self.spi_buf[cap_digit(self.animation_src_digit)] = 0x80 | (self.animation_brightness - temp)
        self.spi_buf[cap_digit(self.animation_dest_digit)] = 0x80 | temp
        self.spi_write()
        self.animation_in_progress = True
        return EXIXE_ANIMATION_IN_PROGRESS

    def clear(self):
        """
        This method will clear all of the SPI buffer with zero's
        """
        self.spi_buf = [0] * EXIXE_SPI_BUF_SIZE

    def clear_digit(self):
        """
        This method will clear only the slots related to the digits
        """
        for i in range(0, EXIXE_SPI_BUF_SIZE - 5):
            self.spi_buf[i] = 0

    def spi_write(self):
        """
        This method will enable the CS pin and then send the SPI Buffer to the exixe driver. This method is not intended
        to be called by it self but directly from the set_led, set_digit, and set_dots
        """
        while not self.spi.try_lock():
            pass
        try:
            self.cs.value = False
            self.spi.write(bytes(self.spi_buf))
            self.cs.value = True
        finally:
            self.spi.unlock()