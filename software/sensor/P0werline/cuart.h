#ifndef CUART_H
#define CUART_H

#include <atmel_start.h>
#include <hal_usart_async.h>

struct buffer_data{
  char buffer[80];
  uint8_t length;
};

int read_bytes_to_buffer(struct io_descriptor *io, struct buffer_data* buffer);
int clear_buffer(struct buffer_data* buffer, char* cleared_data, int length);
int strncmp(const char* s1, const char* s2, int n);

#endif
