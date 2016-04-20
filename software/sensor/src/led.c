#include <led.h>

void config_led(int pin){
	struct port_config pin_conf;
	port_get_config_defaults(&pin_conf);

	pin_conf.direction  = PORT_PIN_DIR_OUTPUT;
	port_pin_set_config(pin, &pin_conf);
	port_pin_set_output_level(pin, LED_INACTIVE);
}

void set_led(int pin, int value){
	port_pin_set_output_level(pin, value);
}

void toggle_led(int pin){
	port_pin_toggle_output_level(pin);
}