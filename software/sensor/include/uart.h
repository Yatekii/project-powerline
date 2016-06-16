#ifndef UART_H
#define UART_H

#include <asf.h>
#include <usart.h>

struct usart_module usart_instance;

struct buffer_data{
  char buffer[80];
  uint8_t length;
};

void configure_usart(void);
int read_bytes_to_buffer(struct usart_module *const usart_module, struct buffer_data* buffer);

#endif //UART_H
