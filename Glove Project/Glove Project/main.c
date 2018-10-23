#include <atmel_start.h>
#include <stdio.h>
#include <string.h>
#include <usart_basic_example.h>
#include <usart_basic.h>
#include <atomic.h>
#include <util/delay.h>
#include <avr/sfr_defs.h>
#include <avr/interrupt.h>
#include <driver_init.h>
#include <compiler.h>

//Modes
#define START 0x00
#define CALIBRATION 0x01
#define ACTIVE_MODE 0x10

#define BUTTON_NOT_PRESSED 0
#define BUTTON_SHORT_PRESS 1
#define BUTTON_LONG_PRESS 2

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

volatile uint8_t incrementer = 0;
int GLOVE_STATE = START;
int buttonFlag = 0;

char * adcToCommand(uint16_t adcValue){
	//convert ADC values to state command
	return "s00e"
}

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	//==========================================
	// DO NOT DELETE
	atmel_start_init();
	// DO NOT DELETE
	//==========================================
	
	char[4] command = "s00e"; 
	uint16_t adcRead = 0;
	
	while (1){
		//readADC
		ADCSRA |= (1 << ADSC); // Set ADC Conversion Start Bit
		while ((ADCSRA & (1 << ADSC)) ) { } // wait for ADC conversion to complete
		adcRead=ADC;
		switch (GLOVE_STATE){
			case START:
				//send command to stop motors
				if(buttonFlag == BUTTON_SHORT_PRESS){
					GLOVE_STATE = ACTIVE_MODE;
					buttonFlag = BUTTON_NOT_PRESSED;
				}
				else if(buttonFlag == BUTTON_LONG_PRESS){
					GLOVE_STATE = CALIBRATION;
					buttonFlag = BUTTON_NOT_PRESSED;
				}
				else{
					//send START mode command
					command = "s00e";
					USART0_Print(command);
				}
				break;
			case CALIBRATION:
				//send command to stop motors
				command = "s01e";
				USART0_Print(command);
				//run calibration routine
				break;
			case ACTIVE_MODE:
				if(buttonFlag == BUTTON_SHORT_PRESS){
					GLOVE_STATE = START;
					buttonFlag = BUTTON_NOT_PRESSED;
				}
				else{
					//sending bluetooth command
					command = adcToCommand(adcRead);
					USART0_Print(command);	
				}
				break;
		}
	}
	return 1;
}


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
			buttonFlag = BUTTON_LONG_PRESS;
			TIMSK0 &= ~(_BV(OCIE0A)); // Disable Timer 0 interrupt
			incrementer = 0;
		}
		else{
			printf("Short Press\n");
			buttonFlag = BUTTON_SHORT_PRESS;
			TIMSK0 &= ~(_BV(OCIE0A)); // Disable Timer 0 interrupt
			incrementer = 0;
		}
	}
	else{ }  // don't do anything if the incrementer hasn't reached its desired value
	
}