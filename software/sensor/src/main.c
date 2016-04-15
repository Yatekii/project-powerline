#include <asf.h>
#include <led.h>
#include <uart.h>

#define BTN PIN_PA16

int leds_active = 0;
uint8_t string[] = "Hello World!\r\n";

void SysTick_Handler(void){
	if(leds_active){
		toggle_led(LED_RED);
		toggle_led(LED_GREEN);
	}
	usart_write_buffer_job(&usart_instance, string, sizeof(string));
}

void main(void){
	system_init();

	struct port_config pin_conf;
	port_get_config_defaults(&pin_conf);

	pin_conf.direction  = PORT_PIN_DIR_INPUT;
	port_pin_set_config(BTN, &pin_conf);

	config_led(LED_RED);
	config_led(LED_GREEN);
	set_led(LED_GREEN, LED_STATE_ACTIVE);

	configure_usart();
    configure_usart_callbacks();

    system_interrupt_enable_global();

	/*Configure system tick to generate periodic interrupts */
	SysTick_Config(system_gclk_gen_get_hz(GCLK_GENERATOR_0) / 8);

	usart_write_buffer_job(&usart_instance, string, sizeof(string));

	while (1){
	/*	if(port_pin_get_input_level(BTN) == 0 && leds_active){
			leds_active = 0;
		}
		else if(port_pin_get_input_level(BTN) == 1 && leds_active == 0){
			leds_active = 1;
			set_led(LED_GREEN, LED_STATE_ACTIVE);
		}
	*/
	}
}