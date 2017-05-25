#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "shared.h"
#include "helpers.h"
#include "gps_config.h"

const uint8_t disable_gll[] = {0xB5, 0x62, 0x06, 0x01, 0x03, 0x00, 0xF0, 0x01, 0x00, 0xFB, 0x11};
const uint8_t disable_gsa[] = {0xB5, 0x62, 0x06, 0x01, 0x03, 0x00, 0xF0, 0x02, 0x00, 0xFC, 0x13};
const uint8_t disable_gsv[] = {0xB5, 0x62, 0x06, 0x01, 0x03, 0x00, 0xF0, 0x03, 0x00, 0xFD, 0x15};
const uint8_t disable_vtg[] = {0xB5, 0x62, 0x06, 0x01, 0x03, 0x00, 0xF0, 0x05, 0x00, 0xFF, 0x19};

void gps_say(const uint8_t* buf, int32_t len)
{
	HAL_UART_Transmit(gps_uart_ptr, (uint8_t*)buf, len, 200);
	HAL_Delay(50);
}

void gps_reset(void)
{
	HAL_GPIO_WritePin(GPS_RESET_GPIO_Port, GPS_RESET_Pin, GPIO_PIN_RESET);
	HAL_Delay(1);
	HAL_GPIO_WritePin(GPS_RESET_GPIO_Port, GPS_RESET_Pin, GPIO_PIN_SET);
	HAL_Delay(200);
}

void gps_init(void)
{
	gps_reset();
	gps_say(disable_gll, sizeof(disable_gll));
	gps_say(disable_gsa, sizeof(disable_gsa));
	gps_say(disable_gsv, sizeof(disable_gsv));
	gps_say(disable_vtg, sizeof(disable_vtg));
}
