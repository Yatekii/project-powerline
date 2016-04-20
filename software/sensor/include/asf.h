#ifndef ASF_H
#define ASF_H

/*
 * This file includes all API header files for the selected drivers from ASF.
*/

// From module: Common SAM0 compiler driver
#include <compiler.h>
#include <status_codes.h>

// From module: PORT - GPIO Pin Control
#include <port.h>

// From module: SYSTEM - Core System Driver
#include <system.h>

 // From module: Interrupt management - SAM implementation
#include <interrupt.h>

// From module: SYSTEM - Clock Management for SAMD09/D10
#include <clock.h>
#include <gclk.h>

// From module: SYSTEM - Interrupt Driver
#include <system_interrupt.h>
 
// From module: SYSTEM - Power Management for SAM D20/D21/R21/D09/D10/D11/DA0/DA1
#include <power.h>

// From module: SYSTEM - Reset Management for SAM D20/D21/R21/D09/D10/D11/DA0/DA1
#include <reset.h>

#endif // ASF_H