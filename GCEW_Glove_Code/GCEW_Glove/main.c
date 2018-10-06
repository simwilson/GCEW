#include <atmel_start.h>
#include <util/delay.h>
#include <stdio.h>
#include <string.h>
#include <usart_basic_example.h>
#include <usart_basic.h>
#include <atomic.h>

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();
	
	/* Replace with your application code */
	while (1) {
	_delay_ms(500);
	printf("Testing");
	USART_0_write(10); // Prints new line
	}
}
