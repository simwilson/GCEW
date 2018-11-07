//GLOVE PROJECT MAIN
//Senior Design II

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

//Command Modes
#define START_COMMAND "s00e"
#define CALIBRATION_COMMAND "s01e"
#define ACTIVE_MODE_COMMAND "s10e"
#define ACTIVE_RIGHT "s12e"
#define ACTIVE_RIGHT_FORWARD "s1Ae"
//#define ACTIVE_RIGHT_REVERSE "s16"
#define ACTIVE_LEFT "s11e"
#define ACTIVE_LEFT_FORWARD "s19e"
//#define ACTIVE_LEFT_REVERSE "s15e"
#define ACTIVE_FORWARD "s18e"
#define ACTIVE_REVERSE "s14e"
#define SLOW_STOP "s02e"

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

char * adcToCommand(
	uint16_t avgAdcValueForeFinger, 
	uint16_t avgAdcValueMiddleFinger, 
	uint16_t avgAdcValueRingFinger,
	uint16_t foreFingerThreshold,
	uint16_t middleFingerThreshold,
	uint16_t ringFingerThreshold
){
	//convert ADC values to state command
	if(avgAdcValueForeFinger > foreFingerThreshold
	&& avgAdcValueMiddleFinger > middleFingerThreshold
	&& avgAdcValueRingFinger > ringFingerThreshold){
		return ACTIVE_FORWARD;
	}
	else if(avgAdcValueForeFinger > foreFingerThreshold
	&& avgAdcValueMiddleFinger > middleFingerThreshold){
		return ACTIVE_RIGHT_FORWARD;
	}
	else if(avgAdcValueMiddleFinger > middleFingerThreshold
	&& avgAdcValueRingFinger > ringFingerThreshold){
		return ACTIVE_LEFT_FORWARD;
	}
	else if(avgAdcValueForeFinger > foreFingerThreshold){
		return ACTIVE_RIGHT;
	}
	else if(avgAdcValueRingFinger > ringFingerThreshold){
		return ACTIVE_LEFT;
	}
	else if(avgAdcValueMiddleFinger > middleFingerThreshold){
		return ACTIVE_REVERSE;
	}
	else{
		return SLOW_STOP;
	}
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
	uint16_t adcReadForeFinger = 0;
	uint16_t adcReadMiddleFinger = 0;
	uint16_t adcReadRingFinger = 0;
	
	uint16_t avgAdcReadForeFinger = 0;
	uint16_t avgAdcReadMiddleFinger = 0;
	uint16_t avgAdcReadRingFinger = 0;
	
	uint16_t foreFingerThreshold = 100;
	uint16_t middleFingerThreshold = 100;
	uint16_t ringFingerThreshold = 100;
	
	uint16_t foreFingerAvg = 100;
	uint16_t middleFingerAvg = 100;
	uint16_t ringFingerAvg = 100;
	
	uint8_t calCountAvg = 0;
	uint8_t countAvg = 0;
	
	while (1){
		//readADC
		ADCSRA |= (1 << ADSC); // Set ADC Conversion Start Bit
		while ((ADCSRA & (1 << ADSC)) ) { } // wait for ADC conversion to complete
		adcReadForeFinger=ADC;
		//adcReadMiddleFinger=ADC;
		//adcReadRingFinger=ADC;
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
					command = START_COMMAND;
					USART0_Print(command);
				}
				break;
			case CALIBRATION:
				if(buttonFlag == BUTTON_SHORT_PRESS || BUTTON_LONG_PRESS){
					GLOVE_STATE = START;
					buttonFlag = BUTTON_NOT_PRESSED;
					calCountAvg = 0;
				}
				//send command to stop motors
				command = SLOW_STOP;
				USART0_Print(command);
				//run calibration routine
				if(calCountAvg == 0){
					avgAdcReadForeFinger = 0;
					avgAdcReadMiddleFinger = 0;
					avgAdcReadRingFinger = 0;
				}
				if(calCountAvg < 20){
					avgAdcReadForeFinger += adcReadForeFinger;
					avgAdcReadMiddleFinger += adcReadMiddleFinger;
					avgAdcReadRingFinger += adcReadRingFinger;
				}
				else{
					foreFingerThreshold = avgAdcReadForeFinger/20;
					middleFingerThreshold = avgAdcReadMiddleFinger/20;
					ringFingerThreshold = avgAdcReadRingFinger/20;
					avgAdcReadForeFinger = 0;
					avgAdcReadMiddleFinger = 0;
					avgAdcReadRingFinger = 0;
					calCountAvg = 0;
				}
				break;
			case ACTIVE_MODE:
				if(buttonFlag == BUTTON_SHORT_PRESS || BUTTON_LONG_PRESS){
					GLOVE_STATE = START;
					buttonFlag = BUTTON_NOT_PRESSED;
					countAvg = 0;
				}
				else{
					//sending bluetooth command
					if(countAvg == 0){
						avgAdcReadForeFinger = 0;
						avgAdcReadMiddleFinger = 0;
						avgAdcReadRingFinger = 0;
					}
					if(countAvg < 20){
						avgAdcReadForeFinger += adcReadForeFinger;
						avgAdcReadMiddleFinger += adcReadMiddleFinger;
						avgAdcReadRingFinger += adcReadRingFinger;
					}
					else{
						foreFingerAvg = avgAdcReadForeFinger/20;
						middleFingerAvg = avgAdcReadMiddleFinger/20;
						ringFingerAvg = avgAdcReadRingFinger/20;
						//determine command
						command = adcToCommand(
									foreFingerAvg,
									middleFingerAvg,
									ringFingerAvg,
									foreFingerThreshold,
									middleFingerThreshold,
									ringFingerThreshold);
						//Write command to BT
						USART0_Print(command);	
						//reset average calculators						
						avgAdcReadForeFinger = 0;
						avgAdcReadMiddleFinger = 0;
						avgAdcReadRingFinger = 0;
						countAvg = 0;
					}	
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