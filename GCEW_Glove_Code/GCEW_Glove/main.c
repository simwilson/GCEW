#include <atmel_start.h>
#include <stdio.h>
#include <string.h>
#include <util/delay.h>
#include <avr/sfr_defs.h>
#include <avr/interrupt.h>
#include <driver_init.h>
#include <compiler.h>


void registerSetup(void){ // Setup necessary registers for Timer 0, can store other register setup lines here as well
	
	PRR0 &= ~(_BV(PRTIM0)); // Clearing Power Reduction Timer 0 Bit to allow enable of Timer 0
	
	 //TIMSK0 |= (_BV(OCIE0A)); // Enable Timer 0 Compare Match A Interrupt
	
	TCCR0B |= (_BV(CS00));  // The three CS0 bits are used to set the Timer 0 Prescaler, in this case : 1024
	TCCR0B &= ~(_BV(CS01));
	TCCR0B |= (_BV(CS02));
	TCCR0B &= ~(_BV(WGM02));  // To enable CTC (Clear Timer on Compare Match : pg 140 in datasheet) Mode for Timer 0

	TCCR0A &= ~(_BV(WGM00));  // To enable CTC Mode for Timer 0
	TCCR0A |= (_BV(WGM01));   // To enable CTC Mode for Timer 0
	TCCR0A &= ~(_BV(COM0A0)); // To set normal port operation on OC0A Pin
	TCCR0A &= ~(_BV(COM0A1)); // To set normal port operation on OC0A Pin
	TCCR0A &= ~(_BV(COM0B0)); // To set normal port operation on OC0B Pin
	TCCR0A &= ~(_BV(COM0B1)); // To set normal port operation on OC0B Pin

	OCR0A = 255; // Timer 0 compare match #, choose a range between 0-255 to adjust interrupt frequency
}


void USART0_Print(const char* variable){ // Function to write a string to USART0
	
	for (int i=0; i<strlen(variable); i++) // Loops to print character array pointed to by received string
	{
		USART_0_write(variable[i]);
	}
}

void USART0_Println(const char* variable){ // Function to write a string to USART0, ends with a new line
	
	for (int i=0; i<strlen(variable); i++) // Loops to print character array pointed to by received string
	{
		USART_0_write(variable[i]);
	}
	USART_0_write(10); //  new line after finish printing string
}

volatile uint8_t incrementer = 0;



int main(void)
{	
	uint16_t adcRead = 0;
	char temp_string[50];

	/* Initializes MCU, drivers and middleware */
	atmel_start_init();
	registerSetup();
	DDRD |=0xE0;
	DDRB |=0x07;
	while (1) {
		_delay_ms(200);

		PORTB |=(1<<1);
		PORTD &= ~(1 << 5);
		//PAUSE 250 miliseconds
		_delay_ms(200);
		//turns C0 LOW
		PORTD |=(1<<5);
		
		PORTB &= ~(1 << 1);
		//PAUSE 250 miliseconds


		/*ADCSRA |= (1 << ADSC); // Set ADC Conversion Start Bit
		
		while ((ADCSRA & (1 << ADSC)) ) { } // wait for ADC conversion to complete

		adcRead=ADC;
		sprintf(temp_string,"%u",adcRead); // Convert 10-bit ADC value (unsigned 16-bit integer) to a string
		USART0_Print("ADC = ");
		USART0_Println(temp_string); // Call function to write string to USART0
		printf("incrementer = %d\n",incrementer); */
		}
	}

	/*
	if((TIMSK0 & (_BV(OCIE0A)))<1){ // Check if the Timer 0 Interrupt is disabled (bit set to '0')
	*/



ISR(PCINT2_vect) // Interrupt Routine for INT0 ( Pin PD2) Interrupt
{
		TIMSK0 |= (_BV(OCIE0A)); // Enable Timer 0 Interrupt
		
}


ISR(TIMER0_COMPA_vect) // Interrupt Routine for Timer 0 Compare Match A
{

	/* Timer 0 has a minimum frequency of (f_clock/(prescaler * (1+OCR0A)) which in this case = (8MHz/(1024*(1 + 255)) = 30.5Hz
	   this is too fast for a 'long press' of the pushbutton, so we allow the timer to interrupt 60 times (about 2 seconds) before polling the pushbutton pin to check if it is still
	   being pulled low   
	*/

	incrementer = incrementer + 1;
	if (incrementer > 60) 
	{
		if(PORTD_get_pin_level(PORTD2) < 1){ // If the pin is still being pulled low by the pushbutton
			printf("Long Press\n");
			TIMSK0 &= ~(_BV(OCIE0A)); // Disable Timer 0 interrupt
			incrementer = 0;
		}
		else{
			printf("Short Press\n");
			TIMSK0 &= ~(_BV(OCIE0A)); // Disable Timer 0 interrupt
			incrementer = 0;
		}
	}
	else{ }  // don't do anything if the incrementer hasn't reached its desired value
	
}