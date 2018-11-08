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
#define ACTIVE_MODE 0x10

//Command Modes
const char START_COMMAND[] = "s00e";
const char ACTIVE_MODE_COMMAND[] = "s10e";
const char ACTIVE_RIGHT_COMMAND[] = "s12e";
const char ACTIVE_RIGHT_FORWARD_COMMAND[] = "s1Ae";
//#define ACTIVE_RIGHT_REVERSE "s16"
const char ACTIVE_LEFT_COMMAND[] = "s11e";
const char ACTIVE_LEFT_FORWARD_COMMAND[] = "s19e";
//#define ACTIVE_LEFT_REVERSE "s15e"
const char ACTIVE_FORWARD_COMMAND[] = "s18e";
const char ACTIVE_REVERSE_COMMAND[] = "s14e";
const char SLOW_STOP_COMMAND[] = "s02e";

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
	if(avgAdcValueForeFinger < foreFingerThreshold
	&& avgAdcValueMiddleFinger < middleFingerThreshold
	&& avgAdcValueRingFinger < ringFingerThreshold){
		return ACTIVE_FORWARD_COMMAND;
	}
	else if(avgAdcValueForeFinger < foreFingerThreshold
	&& avgAdcValueMiddleFinger < middleFingerThreshold){
		return ACTIVE_RIGHT_FORWARD_COMMAND;
	}
	else if(avgAdcValueMiddleFinger < middleFingerThreshold
	&& avgAdcValueRingFinger < ringFingerThreshold){
		return ACTIVE_LEFT_FORWARD_COMMAND;
	}
	else if(avgAdcValueForeFinger < foreFingerThreshold){
		return ACTIVE_RIGHT_COMMAND;
	}
	else if(avgAdcValueRingFinger < ringFingerThreshold){
		return ACTIVE_LEFT_COMMAND;
	}
	else if(avgAdcValueMiddleFinger < middleFingerThreshold){
		return ACTIVE_REVERSE_COMMAND;
	}
	else{
		return SLOW_STOP_COMMAND;
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
	DDRC |= 0x01;
	
	char command[] = "s00e"; 
	
	char printnum[] = "";
	
	uint16_t adcReadForeFinger = 0;
	uint16_t adcReadMiddleFinger = 0;
	uint16_t adcReadRingFinger = 0;
	
	uint16_t avgAdcReadForeFinger = 0;
	uint16_t avgAdcReadMiddleFinger = 0;
	uint16_t avgAdcReadRingFinger = 0;
	
	uint16_t foreFingerThreshold = 300;
	uint16_t middleFingerThreshold = 300;
	uint16_t ringFingerThreshold = 300;
	
	uint8_t countAvg = 0;
	
	USART0_Print("Starting...");
	PORTC |=(1<<0);
	
	while(1){
		//read ADC
		ADMUX = (0x01 << REFS0)   /* AREF, Internal Vref turned off */
			| (0 << ADLAR)    /* Left Adjust Result: disabled */
			| (0x06 << MUX0); /* ADC Single Ended Input pin 0 */
		ADCSRA |= (1 << ADSC); // Set ADC Conversion Start Bit
		while ((ADCSRA & (1 << ADSC)) ) { } // wait for ADC conversion to complete
		adcReadForeFinger = ADC;
		
		ADMUX = (0x01 << REFS0)   /* AREF, Internal Vref turned off */
			| (0 << ADLAR)    /* Left Adjust Result: disabled */
			| (0x07 << MUX0); /* ADC Single Ended Input pin 0 */
		ADCSRA |= (1 << ADSC); // Set ADC Conversion Start Bit
		while ((ADCSRA & (1 << ADSC)) ) { } // wait for ADC conversion to complete
		adcReadMiddleFinger = ADC;
		
		ADMUX = (0x01 << REFS0)   /* AREF, Internal Vref turned off */
			| (0 << ADLAR)    /* Left Adjust Result: disabled */
			| (0x05 << MUX0); /* ADC Single Ended Input pin 0 */
		ADCSRA |= (1 << ADSC); // Set ADC Conversion Start Bit
		while ((ADCSRA & (1 << ADSC)) ) { } // wait for ADC conversion to complete
		adcReadRingFinger = ADC;	
		
		//calculate averages
		if(countAvg < 20){
			avgAdcReadForeFinger += adcReadForeFinger;
			avgAdcReadMiddleFinger += adcReadMiddleFinger;
			avgAdcReadRingFinger += adcReadRingFinger;
			countAvg += 1;
		}
		else{ 	//sending blue tooth command
			avgAdcReadForeFinger = avgAdcReadForeFinger/20;
			//sprintf(printnum,"%u",avgAdcReadForeFinger); // Convert 10-bit ADC value (unsigned 16-bit integer) to a string
			//USART0_Print("ADC Fore = ");
			//USART0_Println(printnum); // Call function to write string to USART0
			
			avgAdcReadMiddleFinger = avgAdcReadMiddleFinger/20;
			//sprintf(printnum,"%u",avgAdcReadMiddleFinger); // Convert 10-bit ADC value (unsigned 16-bit integer) to a string
			//USART0_Print("ADC Middle = ");
			//USART0_Println(printnum); // Call function to write string to USART0
			
			avgAdcReadRingFinger = avgAdcReadRingFinger/20;
			//sprintf(printnum,"%u",avgAdcReadRingFinger); // Convert 10-bit ADC value (unsigned 16-bit integer) to a string
			//USART0_Print("ADC Ring = ");
			//USART0_Println(printnum); // Call function to write string to USART0
			
			//determine command
			memcpy(command,
				adcToCommand(
					avgAdcReadForeFinger,
					avgAdcReadMiddleFinger,
					avgAdcReadRingFinger,
					foreFingerThreshold,
					middleFingerThreshold,
					ringFingerThreshold),
				sizeof(command));
			//Write command to BT
			USART0_Println("--------------------------");
			USART0_Print(command);
			USART0_Println("--------------------------");
			//reset average calculators
			avgAdcReadForeFinger = 0;
			avgAdcReadMiddleFinger = 0;
			avgAdcReadRingFinger = 0;
			countAvg = 0;
		}
	}
	return 1;
}
