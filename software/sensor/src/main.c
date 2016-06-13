#include <asf.h>
#include <led.h>
#include <uart.h>
#include <adc_toolset.h>
#include <stdlib.h>

#define BTN PIN_PA16

// Message displayed on boot
uint8_t boot_msg[] = "HW booted!\r\n";

// UART buffer variables
char cmd[20] = {0};
const char read_adc[8] = "read adc";
struct buffer_data buffer;

// Toggle LEDs
// TODO: add adc read and moving avg
void SysTick_Handler(void){
  toggle_led(LED_RED);
  toggle_led(LED_GREEN);
  // TODO: add adc read and moving avg
}

struct port_config pin_conf;

int main(void){

  // Initialize hardware
	system_init();
  configure_adc();

  // Configure button
	port_get_config_defaults(&pin_conf);
	pin_conf.direction  = PORT_PIN_DIR_INPUT;
	port_pin_set_config(BTN, &pin_conf);

  // Configure NaN pin
  //pin_conf.direction  = PORT_PIN_DIR_INPUT;
  //pin_conf.powersave = 0;
  //pin_conf.input_pull = PORT_PIN_PULL_NONE;
  //port_pin_set_config(PIN_PA05, &pin_conf);

  // Configure LEDs
	config_led(LED_RED);
	config_led(LED_GREEN);

  // Configure UART
	configure_usart();
  configure_usart_callbacks();
  system_interrupt_enable_global();

	// Configure system tick to generate periodic interrupts
	SysTick_Config(system_gclk_gen_get_hz(GCLK_GENERATOR_0) / 8);

  // Say hello to the console
	usart_write_buffer_job(&usart_instance, boot_msg, sizeof(boot_msg));

  // Buffer for UART reading
  uint16_t adc_value = 0;
  buffer.length = 0;

  // main loop
	while (1){
    // Try reading commands from the UART
    int res = read_bytes_to_buffer(&usart_instance, &buffer);
    if (res) {
      // If UART got data, echo it
      usart_write_buffer_job(&usart_instance, buffer.buffer + buffer.length - res, res);

      // Analyze data
      for(int i = 0; i < res; i++){
        // If \r is caught, send it back and add \n.
        // Also clear the buffer up until \r and evealuate the command.
        if(*(buffer.buffer + buffer.length - res + i) == '\r'){
          usart_write_buffer_job(&usart_instance, "\n", 1);

          // extract the command sent
          // res2 is length of extracted command + 1 (because \r is also there)
          int res2 = clear_buffer(&buffer, cmd, buffer.length - res + i + 1);

          // check if read adc command was received
          // do stuff if it matches
          if(strncmp(cmd, read_adc, res2 - 1)){
            usart_write_buffer_job(&usart_instance, "38V\r\n", 7);
          }
        }
      }
    }
	}
}
