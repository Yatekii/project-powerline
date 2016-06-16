#ifndef ADC_TOOLSET_H
#define ADC_TOOLSET_H

#include <asf.h>

void configure_adc(void);
int read_adc_data(uint16_t* result);

#endif
