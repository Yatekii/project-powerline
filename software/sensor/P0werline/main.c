#include "cuart.h"
#include "atmel_start_pins.h"
#include <stdio.h>

char str_buf[20] = "Hello World\r\n";
char cmd[20] = {0};
char read_adc[8] = "read adc";

int main(void)
{

	system_init();
  USART_0_PORT_init();
  USART_0_CLOCK_init();
  USART_0_init();
  USART_setup();

	/* Replace with your application code */
  struct io_descriptor *io;
  struct buffer_data buffer;
  uint16_t adc_value = 0;
  buffer.length = 0;

	usart_async_get_io_descriptor(&USART_0, &io);
	usart_async_enable(&USART_0);

	adc_async_enable(&ADC_0);

	io_write(io, str_buf, 14);
  gpio_set_pin_level(LED_RED, false);
  int bytes_to_read = 4;
  while(1){
    int res = read_bytes_to_buffer(io, &buffer);
    if (res) {
      io_write(io, buffer.buffer + buffer.length - res, res);
      for(int i = 0; i < res; i++){

        // If \r is caught, send it back and add \n.
        // Also clear the buffer up until \r and evealuate the command.
        if(*(buffer.buffer + buffer.length - res + i) == '\r'){
          io_write(io, "\n", 1);

          // extract the command sent
          // res2 is length of extracted command + 1 (because \r is also there)
          int res2 = clear_buffer(&buffer, cmd, buffer.length - res + i + 1);

          // compare strings
          // do stuff if it matches
          if(strncmp(cmd, read_adc, res2 - 1)){
            io_write(io, "38V\r\n", 7);
            gpio_set_pin_level(LED_GREEN, false);
          }
        }
      }
      //snprintf(str_buf, 12, "yolo %d\r\n", buffer.length);
      //io_write(io, (uint8_t*)str_buf, 10);
      //adc_async_start_conversion(&ADC_0);
      //while(!adc_async_is_conversion_complete(&ADC_0));
      //while(!adc_async_read(&ADC_0, (uint8_t*)(&adc_value), 1));

      //snprintf(str_buf, 20, "adc_value: %hd\r\n", adc_value);
      //io_write(io, (uint8_t*)str_buf, 20);
    }
  }

  gpio_set_pin_level(LED_GREEN, false);
}
