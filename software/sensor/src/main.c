#include <asf.h>
#include <led.h>

void SysTick_Handler(void){
	toggle_led(LED_RED);
	toggle_led(LED_GREEN);
}

void main(void){
	system_init();

	config_led(LED_RED);
	config_led(LED_GREEN);
	set_led(LED_GREEN, LED_STATE_ACTIVE);

	/*Configure system tick to generate periodic interrupts */
	SysTick_Config(system_gclk_gen_get_hz(GCLK_GENERATOR_0) / 8);

	while (1){
	}
}