/*
 * Code generated from Atmel Start.
 *
 * This file will be overwritten when reconfiguring your Atmel Start project.
 * Please copy examples or other code you want to keep to a separate file
 * to avoid losing it when reconfiguring.
 */
#ifndef ATMEL_START_H_INCLUDED
#define ATMEL_START_H_INCLUDED

#include "atmel_start_pins.h"

#ifdef __cplusplus
		extern "C" {
#endif

#include <hal_usart_async.h>
#include <hal_adc_async.h>

	extern struct usart_async_descriptor USART_0;
	extern struct adc_async_descriptor ADC_0;

	void USART_0_PORT_init(void);
	void USART_0_CLOCK_init(void);
	void USART_0_init(void);
	void USART_0_example(void);

#define CONF_DMAC_MAX_USED_DESC ( /*SERCOM0*/ 0 + /*ADC*/ 0 + /*GCLK*/ 0 + \
	        /*DMAC*/ 0 + /*SYSCTRL*/ 0 + /*PM*/ 0 )

#define CONF_DMAC_MAX_USED_CH ( /*SERCOM0*/ 0 + /*ADC*/ 0 + /*GCLK*/ 0 + \
	        /*DMAC*/ 0 + /*SYSCTRL*/ 0 + /*PM*/ 0 )

	/**
	 * \brief Perform system initialization, initialize pins and clocks for
	 * peripherals
	 */
	void system_init(void);

#ifdef __cplusplus
		}
#endif
#endif // ATMEL_START_H_INCLUDED
