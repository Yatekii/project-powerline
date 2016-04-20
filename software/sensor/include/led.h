#ifndef LED_H
#define LED_H

#include <asf.h>

#define LED_RED PIN_PA14
#define LED_GREEN PIN_PA15

#define LED_INACTIVE 1
#define LED_ACTIVE 0

void config_led(int pin);
void set_led(int pin, int value);
void toggle_led(int pin);

#endif // LED_H