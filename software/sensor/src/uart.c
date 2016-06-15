#include <led.h>
#include <uart.h>
#include <adc_toolset.h>
#include <helpers.h>

void configure_usart(void)
{
  struct usart_config config_usart;
  usart_get_config_defaults(&config_usart);
  config_usart.baudrate    = 9600;
  config_usart.mux_setting = SERCOM_USART_CTRLA_TXPO(0) | SERCOM_USART_CTRLA_RXPO(1);
  config_usart.pinmux_pad0 = PINMUX_PA04D_SERCOM0_PAD0;
  config_usart.pinmux_pad1 = PINMUX_PA05D_SERCOM0_PAD1;
  config_usart.transfer_mode = USART_TRANSFER_ASYNCHRONOUSLY;

  while (usart_init(&usart_instance, SERCOM0, &config_usart) != STATUS_OK) {
  }

  usart_enable(&usart_instance);
}

// Read bytes from uart into buffer.
// If buffer exceeds it's max length of 80 characters it starts again at 0.
// This should never happen!
// Returns the number bytes read.
int read_bytes_to_buffer(struct usart_module *const usart_module, struct buffer_data* buffer){
  if (usart_read_buffer_wait(usart_module, buffer->buffer + buffer->length, 1) == STATUS_OK) {
    buffer->length++;
    if (buffer->length >= 80) {
      buffer->length = 0;
    }
    return 1;
  }
  return 0;
}
