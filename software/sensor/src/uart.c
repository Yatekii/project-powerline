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
    usart_enable_callback(&usart_instance, USART_CALLBACK_BUFFER_TRANSMITTED);
    usart_enable_callback(&usart_instance, USART_CALLBACK_BUFFER_RECEIVED);
}

void usart_read_callback(struct usart_module *const usart_module)
{
    usart_write_buffer_job(&usart_instance,
            (uint8_t *)rx_buffer, MAX_RX_BUFFER_LENGTH);
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
