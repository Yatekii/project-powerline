#ifndef UART_H
#define UART_H

#include <asf.h>
#include <usart.h>

struct usart_module usart_instance;

#define MAX_RX_BUFFER_LENGTH   5
volatile uint8_t rx_buffer[MAX_RX_BUFFER_LENGTH];

void configure_usart(void);
void configure_usart_callbacks(void);
void usart_read_callback(struct usart_module *const usart_module);
void usart_write_callback(struct usart_module *const usart_module);

#endif //UART_H