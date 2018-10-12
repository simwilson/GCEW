#include <atmel_start.h>
#include <avr/io.h>
#include <avr/sfr_defs.h>
#include <util/delay.h>
#include <stdio.h>
#include <string.h>
#include <usart_basic_example.h>
#include <usart_basic.h>
#include <atomic.h>


int main(void)
{
	/* Initializes MCU, drivers and Middleware */
	atmel_start_init();
	
	_delay_ms(1000);
	
	uint8_t x=0;
	uint8_t y=0;
	uint16_t flex_read = 0;
	float flex_voltage = 0;
	char test_string[] = "Testing"; 
	char temp_string[60];
	char *temp_serial_int = (char*) malloc(6); // creating /initialize a pointer to string that can holder 5 characters + nul terminator
	sprintf(temp_serial_int,"%u",x); // convert unsigned 16 bit int to a string and save it in memory location of serial_temp pointer
	ADMUX |= (0<<MUX0) | (1<<MUX1) | (0<<MUX2) | (0<<MUX3); // Sets ADC MUX to Analog Channel 2 as input
	PRR0 &= ~(0 << PRADC); // Clearing Power Reduction Register Bit, when Set it shuts down the ADC

	while (1) {
		_delay_ms(500);
	
		for (int i=0; i<strlen(temp_serial_int); i++) // Loops to print character array pointed to by serial_temp
		{
			USART_0_write(temp_serial_int[i]);
		}

		USART_0_write(10); // Prints new line
		//*temp_serial_int=0;
		
		
		ADCSRA |= (1 << ADSC); // Set ADC Conversion Start Bit
		
		while ((ADCSRA & (1 << ADSC)) ) // wait for ADC conversion to complete
		{
		}
		
		x=ADCL;
		y=ADCH;
		flex_read=(y << 8) | (x & 0xff);
		flex_voltage = (flex_read*3.3)/1024; // Convert 10-Bit ADC value to equivalent voltage

		sprintf(temp_string,"%d",flex_read); // Convert 10-bit ADC value (integer) to a string
		for (int i=0; i<strlen(temp_string); i++) // Loops to print character array pointed to by serial_temp
		{
			USART_0_write(temp_string[i]);
		}
		USART_0_write(10); // Prints new Line

		printf("Voltage Input = %0.4f",flex_voltage); // Prints the measured voltage on Analog Channel 2
		USART_0_write(10); // Prints new Line

		for (int i=0; i<strlen(test_string); i++) // Loops to print "Testing" array
		{
			USART_0_write(test_string[i]);
		}
		USART_0_write(10); // Prints new Line

		
	}
}


/*

*/