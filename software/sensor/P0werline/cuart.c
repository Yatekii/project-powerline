#include <cuart.h>

// Read bytes from uart into buffer.
// If buffer exceeds it's max length of 80 characters it starts again at 0.
// This should never happen!
// Returns the number bytes read.
int read_bytes_to_buffer(struct io_descriptor *io, struct buffer_data* buffer){
  int n_read_bytes = io_read(io, buffer->buffer + buffer->length, 1);
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
