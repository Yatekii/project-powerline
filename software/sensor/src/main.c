#include <asf.h>
#include <led.h>
#include <uart.h>
#include <adc_toolset.h>
#include <stdlib.h>
#include <helpers.h>

#define BTN PIN_PA16

// ID
// TODO: Change this to the unique SAMD09 serial number
const uint32_t id = 0xdeadbeef;

// Message displayed on boot
uint8_t boot_msg[] = "HW booted!\r\n";

// UART variables
struct buffer_data buffer;

// Constants for UART transmissions
const uint8_t zero = 0;
const uint8_t r = '\r';

// UART Commands
const char read_adc[3] = "rad";
const char send_good_data[3] = "sgd";
const char send_faulty_data[3] = "sfd";

// Variables for ADC moving average
const uint32_t adc_moving_average_samples = 64;
uint32_t adc_moving_average_n = 0;
uint16_t adc_result = 0;

// Periodically do:
// Toggle LEDs
// ADC read and Moving Average
void SysTick_Handler(void){
  toggle_led(LED_RED);
  toggle_led(LED_GREEN);
  read_adc_data(&adc_result);
  adc_moving_average_n = adc_moving_average_n + adc_result - adc_moving_average_n / adc_moving_average_samples;
}

int main(void){

  // Initialize hardware
  system_init();
  configure_adc();

  // Configure LEDs
  config_led(LED_RED);
  config_led(LED_GREEN);

  // Toggle GREEN LED so it has a different state than the RED LED
  // So they will blink alternating (MUCH WOW!)
  toggle_led(LED_GREEN);

  // Configure UART
  configure_usart();
  system_interrupt_enable_global();

  // Configure system tick to generate periodic interrupts
  SysTick_Config(system_gclk_gen_get_hz(GCLK_GENERATOR_0) / 8);

  // Say hello to the console
  //usart_write_buffer_wait(&usart_instance, boot_msg, sizeof(boot_msg));

  // Set buffer size to 0 since no data is in it at the start
  buffer.length = 0;

  // main loop
  while (1){
    // Try reading commands from the UART
    int res = read_bytes_to_buffer(&usart_instance, &buffer);
    if (res) {
      // If UART got data, echo it
      //usart_write_buffer_wait(&usart_instance, buffer.buffer + buffer.length - res, res);

      // If \r is caught, send it back and add \n.
      // Also clear the buffer up until \r and evealuate the command.
      if(*(buffer.buffer + buffer.length - 1) == '\r'){
        //usart_write_buffer_wait(&usart_instance, "\n", 1);

        // Check if message has the right size
        if(buffer.length - 1 >= 4 + 3 + 1){

          // Check if message is for me
          // If first byte is 1, the message was for the sensor with the serial number condained in the following 4 bytes
          // If first byte is 0, the message was for the master, concerning the sensor with the serial number condained in the following 4 bytes
          if(*buffer.buffer == (char)1 && strncmp(buffer.buffer + 1, (const char *)&id, 4)){

            // TODO: Add CRC32 to all UART packets
            // TODO: Adjust size of UART packages (serial number) when serial number gets adjusted to 16 bytes (4x the size)

            // check if read adc (rad) command was received
            // do stuff if it matches
            if(strncmp(buffer.buffer + 4 + 1, read_adc, 3)){

              uint16_t real_adc_value = adc_moving_average_n / adc_moving_average_samples;
              usart_write_buffer_wait(&usart_instance, &zero, 1);
              usart_write_buffer_wait(&usart_instance, (char *)&id, 4);
              usart_write_buffer_wait(&usart_instance, (char *)&real_adc_value, 2);
              usart_write_buffer_wait(&usart_instance, &r, 1);
            }

            // check if send good data (sgd) command was received
            // do stuff if it matches
            if(strncmp(buffer.buffer + 4 + 1, send_good_data, 3)){

              uint16_t real_adc_value = 60;
              usart_write_buffer_wait(&usart_instance, &zero, 1);
              usart_write_buffer_wait(&usart_instance, (char *)&id, 4);
              usart_write_buffer_wait(&usart_instance, (char *)&real_adc_value, 2);
              usart_write_buffer_wait(&usart_instance, &r, 1);
            }

            // check if send faulty data (sfd) command was received
            // do stuff if it matches
            if(strncmp(buffer.buffer + 4 + 1, send_faulty_data, 3)){
              uint16_t real_adc_value = 40;
              usart_write_buffer_wait(&usart_instance, &zero, 1);
              usart_write_buffer_wait(&usart_instance, (char *)&id, 4);
              usart_write_buffer_wait(&usart_instance, (char *)&real_adc_value, 2);
              usart_write_buffer_wait(&usart_instance, &r, 1);
            }

            // Reset buffer since data in it was worked
            buffer.length = 0;
          }
        }
      }
    }
  }
}
