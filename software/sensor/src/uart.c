#include <led.h>
#include <uart.h>
#include <adc_toolset.h>
#include <helpers.h>

uint16_t result = 0;
uint8_t buffer[20] = "42";

void configure_usart(void)
{
    struct usart_config config_usart;
    usart_get_config_defaults(&config_usart);
    config_usart.baudrate    = 9600;
    config_usart.mux_setting = SERCOM_USART_CTRLA_TXPO(0) | SERCOM_USART_CTRLA_RXPO(0);
    config_usart.pinmux_pad0 = PINMUX_PA04D_SERCOM0_PAD0;
    config_usart.pinmux_pad1 = PINMUX_PA05D_SERCOM0_PAD1;
    config_usart.transfer_mode = USART_TRANSFER_ASYNCHRONOUSLY;

    while (usart_init(&usart_instance,
            SERCOM0, &config_usart) != STATUS_OK) {
    }

    usart_enable(&usart_instance);
}
void configure_usart_callbacks(void)
{
    usart_register_callback(&usart_instance,
            &usart_write_callback, USART_CALLBACK_BUFFER_TRANSMITTED);
    usart_register_callback(&usart_instance,
            &usart_read_callback, USART_CALLBACK_BUFFER_RECEIVED);
    //usart_enable_callback(&usart_instance, USART_CALLBACK_BUFFER_TRANSMITTED);
    usart_enable_callback(&usart_instance, USART_CALLBACK_BUFFER_RECEIVED);
}

void usart_read_callback(struct usart_module *const usart_module)
{
    /*usart_write_buffer_job(&usart_instance,
            (uint8_t *)rx_buffer, MAX_RX_BUFFER_LENGTH);*/
    toggle_led(LED_GREEN);
}

void usart_write_callback(struct usart_module *const usart_module)
{
  read_adc_data(&result);
  itoa(result, buffer);
  int len = strlen(buffer) + 1;
  buffer[len + 1] = '\r';
  buffer[len + 2] = '\n';
  usart_write_buffer_job(&usart_instance, buffer, len + 3);
  //toggle_led(LED_RED);
}

// Read bytes from uart into buffer.
// If buffer exceeds it's max length of 80 characters it starts again at 0.
// This should never happen!
// Returns the number bytes read.
int read_bytes_to_buffer(struct usart_module *const usart_module, struct buffer_data* buffer){
  int n_read_bytes = usart_read_buffer_job(usart_module, buffer->buffer + buffer->length, 1);
  if (n_read_bytes > 0) {
    if (buffer->length >= 80) {
      buffer->length = 0;
    }
    buffer->length += n_read_bytes;
  }
  return n_read_bytes;
}

// Clear the buffer up until length characters
// Copies the remaining characters inside the buffer at the start.
// This is basically a bad, slow and lazy way of doing a ringbuffer
int clear_buffer(struct buffer_data* buffer, char* cleared_data, int length){
  int l = (length < buffer->length ? length : buffer->length);
  for(int n = 0; n < l; n++){
    *(cleared_data + n) = *(buffer->buffer + n);
    *(buffer->buffer + n) = *(buffer->buffer + l + n);
  }
  buffer->length -= l;
  return l;
}

// Compares strings s1 and s2 up until n characters
// returns 1 if equal, returns 0 otherwise
int strncmp(const char* s1, const char* s2, int n){
    int i = 0;
    char c = 0;
    while((i < n) && (*s1 == *s2)){
      s1++;
      s2++;
      i++;
    }
    return i == n;
}
