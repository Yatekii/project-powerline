#include "atmel_start.h"
#include "atmel_start_pins.h"

int main(void)
{
	system_init();
  USART_0_PORT_init();
  USART_0_CLOCK_init();
  USART_0_init();
  USART_0_example();

	/* Replace with your application code */
	while(1) {

	}
}
