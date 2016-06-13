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
void configure_usart_callbacks(void);
void usart_read_callback(struct usart_module *const usart_module);
void usart_write_callback(struct usart_module *const usart_module);

int read_bytes_to_buffer(struct usart_module *const usart_module, struct buffer_data* buffer);
int clear_buffer(struct buffer_data* buffer, char* cleared_data, int length);
int strncmp(const char* s1, const char* s2, int n);

#endif //UART_H
