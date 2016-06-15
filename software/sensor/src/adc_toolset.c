#include <adc_toolset.h>
#include <adc.h>
#include <uart.h>
#include <asf.h>

extern uint8_t* string;

struct adc_module adc_instance;

void configure_adc(void)
{
  struct port_config pin_conf;

  port_get_config_defaults(&pin_conf);
  pin_conf.powersave = 0;
  pin_conf.direction = PORT_PIN_DIR_INPUT;
  pin_conf.input_pull = PORT_PIN_PULL_DOWN;
  port_pin_set_config(PIN_PA02, &pin_conf);

  struct adc_config config_adc;
  adc_get_config_defaults(&config_adc);
  adc_init(&adc_instance, ADC, &config_adc);
  adc_enable(&adc_instance);
}

int read_adc_data(uint16_t* result){
  adc_start_conversion(&adc_instance);
  do {
    // Wait for conversion to be done and read out result
  } while (adc_read(&adc_instance, result) == STATUS_BUSY);
  return 0;
}
