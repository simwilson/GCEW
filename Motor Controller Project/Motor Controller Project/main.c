//MOTOR CONTROLLER PROJECT MAIN
//EE Design II

#include <atmel_start.h>
#include <pwm_basic_example.h>
#include <pwm_basic.h>

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
#define SLOW_STOP 0x02
#define ACTIVE_RIGHT 0x12
#define ACTIVE_RIGHT_FORWARD 0x1A
//#define ACTIVE_RIGHT_REVERSE 0x16
#define ACTIVE_LEFT 0x11
#define ACTIVE_LEFT_FORWARD 0x19
//#define ACTIVE_LEFT_REVERSE 0x15
#define ACTIVE_FORWARD 0x18
#define ACTIVE_REVERSE 0x14

//Command Modes
#define START_COMMAND [0,0]
#define SLOW_STOP_COMMAND [0,2]
#define ACTIVE_MODE_COMMAND [1,0]
#define ACTIVE_RIGHT_COMMAND [1,2]
#define ACTIVE_RIGHT_FORWARD_COMMAND [0x1,0xA]
//#define ACTIVE_RIGHT_REVERSE "s16"
#define ACTIVE_LEFT_COMMAND [1,1]
#define ACTIVE_LEFT_FORWARD_COMMAND [1,9]
//#define ACTIVE_LEFT_REVERSE "s15e"
#define ACTIVE_FORWARD_COMMAND [1,8]
#define ACTIVE_REVERSE_COMMAND [1,4]

//TODO determine values
#define STOPPED 0x00
#define HALF_SPEED 0x19 // = 25d which is 15.625% duty cycle when ICR1 = 160 
#define FULL_SPEED 0x32 // = 50d which is 31.25% duty cycle when ICR1 = 160

#define FORWARD 0
#define REVERSE 1

#define CLOSE_TO_GOAL_VALUE 0x03
#define NUMBER_OF_STEPS 30


//OUTPUT on PB2
volatile PWM_0_register_t PWM_0_duty = STOPPED;
volatile PWM_1_register_t PWM_1_duty = STOPPED;


void USART0_Print(const char* variable){ // Function to write a string to USART0
	
	for (int i=0; i<strlen(variable); i++) // Loops to print character array pointed to by received string
	{
		USART_0_write(variable[i]);
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
	PORTC |= 0x01;
	
	char rxnum[] = "";
	uint8_t rxraw;

	while(USART_0_is_rx_ready()){
		
		if(USART_0_is_rx_ready()){
			USART0_Print("Starting...");
				rxraw = USART_0_read();
				sprintf(rxnum,"%u",rxraw);
				USART0_Print(rxnum);
		
			USART0_Print(" End");
			USART_0_write(10);
		}
		
		
		
		//if(rxnum[0] == '8' && rxnum[1] == '0'){
		//	PORTC &= 0xF0;
		//}
	}
	//TODO determine if we are using ch0 or ch1
		
	// Enable pin output
	//PWM_0_enable_output_ch1();
	//PWM_1_enable_output_ch1();

	// Set channel 0 duty cycle value register value to specified value
	//PWM_0_load_duty_cycle_ch1(STOPPED);
	//PWM_1_load_duty_cycle_ch1(STOPPED);

	// Set counter register value
	//PWM_0_load_counter(0);
	//PWM_1_load_counter(0);
	
	int MOTOR_CONTROLLER_STATE = START;
	char printnum[] = "";
	uint8_t rx[16];
	uint16_t CURR_MOTOR_SPEED_LEFT = STOPPED;
	uint16_t CURR_MOTOR_SPEED_RIGHT = STOPPED;
	uint16_t GOAL_MOTOR_SPEED_LEFT = STOPPED;
	uint16_t GOAL_MOTOR_SPEED_RIGHT = STOPPED;
	uint8_t CURR_DIRECTION = FORWARD;
	uint8_t GOAL_DIRECTION = FORWARD;
	
	DDRB |= 0x07;// Set pins PB0 - PB2 as Outputs, for Timer 1 and
	DDRD |= 0x74; // Set pin PD2 as Output , for Timer 3
	DDRE |= 0x01;
	
	PORTD |= 0x50;
	PORTD &= ~(1 << 5);
	PORTE = 0x01;
	
	PRR0 &= ~(1 << PRTIM1); // Enable Timer 1
	PRR1 &= ~(1 << PRTIM3); // Enable Timer 3
	
	/* Timer 1 Setup Registers */
	TCCR1A = (1 << COM1A1) | (0 << COM1A0)   /* Clear OC1A on Compare Match when up-counting.*/
	| (0 << COM1B1) | (0 << COM1B0) /* OC1B disconnected / Normal Port Operation.*/
	| (1 << WGM11) | (0 << WGM10);  /* TC16 Mode 10 Phase Correct PWM , ICR1 = Top */
	TCCR1B = (1 << WGM13) | (0 << WGM12)                /* TC16 Mode 10 Phase Correct PWM , ICR1 = Top */
	| 0 << ICNC1                               /* Input Capture Noise Canceler: disabled */
	| 0 << ICES1                               /* Input Capture Edge Select: disabled */
	| (0 << CS12) | (0 << CS11) | (1 << CS10); /* Prescaler of 1 */
	
	/* Timer 3 Setup Registers */
	TCCR3A = (0 << COM3A1) | (0 << COM3A0)   /* OC3A disconnected / Normal Port Operation.*/
	| (1 << COM3B1) | (0 << COM3B0) /* Clear OC3B on Compare Match when up-counting.*/
	| (1 << WGM31) | (0 << WGM30);  /* TC16 Mode 10 Phase Correct PWM , ICR3 = Top */
	TCCR3B = (1 << WGM33) | (0 << WGM32)                /* TC16 Mode 10 Phase Correct PWM , ICR3 = Top */
	| 0 << ICNC3                               /* Input Capture Noise Canceler: disabled */
	| 0 << ICES3                               /* Input Capture Edge Select: disabled */
	| (0 << CS32) | (0 << CS31) | (1 << CS30); /* Prescaler of 1 */
	
	ICR1=0xA0; // Timer 1 PWM Frequency = CLK / 2 * Prescaler * ICR1 = 8000000 / 2*1*160 = 25KHz
	ICR3=0xA0; // Timer 3 PWM Frequency = CLK / 2 * Prescaler * ICR1 = 8000000 / 2*1*160 = 25KHz
	
	OCR1A = 0x00; // Duty Cycle = OCR1A / ICR1
	OCR3B = 0x00; // Duty Cycle = OCR3B / ICR3
	
	
	while (1){
		//TODO check to make sure BT is connected
		//TODO only read if available
		if(USART_0_is_rx_ready()){
			if(USART_0_read()==115){ // 115 = s
				
				for(uint8_t i = 1; i < 4; i++) {
					rx[i] = USART_0_read();
					//sprintf(rx[i],"%u",); // Blocks until character is available
				}
				//verify first and last character
				if(rx[3] == 101){  // 101 = e
					
					if(rx[1] == 48){  // 48 = 0
						if(rx[2] == 48){  // 48 = 0
							MOTOR_CONTROLLER_STATE = START;
							
						}
						else if(rx[2] == 50){ // 50 = 2
							MOTOR_CONTROLLER_STATE = SLOW_STOP;
							USART_0_write(35); // Print # if made it
						}
					}
					else if(rx[1] == 49){  // 49 = 1
						if(rx[2] == 50){  // 50 = 2
							MOTOR_CONTROLLER_STATE = ACTIVE_RIGHT;
							
						}
						else if(rx[2] == 65){  // 65 = A
							MOTOR_CONTROLLER_STATE = ACTIVE_RIGHT_FORWARD;
							//PORTC |=(1<<0);
						}
						else if(rx[2] == 49){  // 49 = 1
							MOTOR_CONTROLLER_STATE = ACTIVE_LEFT;
						}
						else if(rx[2] == 57){  // 57 = 9
							MOTOR_CONTROLLER_STATE = ACTIVE_LEFT_FORWARD;
						}
						else if(rx[2] == 56){  // 56 = 8
							MOTOR_CONTROLLER_STATE = ACTIVE_FORWARD;
						}
						else if(rx[2] == 52){  // 52 = 4
							MOTOR_CONTROLLER_STATE = ACTIVE_REVERSE;
						}
					}
					else{ //ERROR
						continue; //exit loop to read next command
					}
				}
			} // End of if(USART_0_read()==115)
			
			
		} // End of if(USART_0_is_rx_ready())
	// }  // End of while loop
		switch (MOTOR_CONTROLLER_STATE){
			case START:
			case SLOW_STOP:
				//slow down to stop
				GOAL_DIRECTION = FORWARD;
				GOAL_MOTOR_SPEED_LEFT = STOPPED;
				GOAL_MOTOR_SPEED_RIGHT = STOPPED;
				break;
			case ACTIVE_RIGHT:
				//left motor much faster than right
				//left motor
				GOAL_DIRECTION = FORWARD;
				GOAL_MOTOR_SPEED_LEFT = FULL_SPEED;
				GOAL_MOTOR_SPEED_RIGHT = STOPPED;
				break;
			case ACTIVE_RIGHT_FORWARD:
				//left motor faster than right
				GOAL_DIRECTION = FORWARD;
				GOAL_MOTOR_SPEED_LEFT = FULL_SPEED;
				GOAL_MOTOR_SPEED_RIGHT = HALF_SPEED;
				break;
			case ACTIVE_FORWARD:
				//motors equal speed
				GOAL_DIRECTION = FORWARD;
				GOAL_MOTOR_SPEED_LEFT = FULL_SPEED;
				GOAL_MOTOR_SPEED_RIGHT = FULL_SPEED;
				break;
			case ACTIVE_LEFT_FORWARD:
				//right motor faster than left
				GOAL_DIRECTION = FORWARD;
				GOAL_MOTOR_SPEED_LEFT = HALF_SPEED;
				GOAL_MOTOR_SPEED_RIGHT = FULL_SPEED;
				break;
			case ACTIVE_LEFT:
				//right motor much faster than right
				GOAL_DIRECTION = FORWARD;
				GOAL_MOTOR_SPEED_LEFT = STOPPED;
				GOAL_MOTOR_SPEED_RIGHT = FULL_SPEED;
				break;
			case ACTIVE_REVERSE:
				//motors equal speed, negative direction
				GOAL_DIRECTION = REVERSE;
				GOAL_MOTOR_SPEED_LEFT = FULL_SPEED;
				GOAL_MOTOR_SPEED_RIGHT = FULL_SPEED;
				break;
		}
		//Ramp left and right motor speeds 
		if(CURR_DIRECTION == GOAL_DIRECTION){
			//ramp left to GOAL_MOTOR_SPEED_LEFT
			//CURR_MOTOR_SPEED_LEFT += (GOAL_MOTOR_SPEED_LEFT - CURR_MOTOR_SPEED_LEFT)/NUMBER_OF_STEPS;
			
			/* Left Side Motor */
			if(GOAL_MOTOR_SPEED_LEFT > CURR_MOTOR_SPEED_LEFT){
				CURR_MOTOR_SPEED_LEFT += (FULL_SPEED)/NUMBER_OF_STEPS;
			}
			else if (GOAL_MOTOR_SPEED_LEFT < CURR_MOTOR_SPEED_LEFT ){
				CURR_MOTOR_SPEED_LEFT -= (FULL_SPEED)/NUMBER_OF_STEPS;
			}
			else if (abs(GOAL_MOTOR_SPEED_LEFT - CURR_MOTOR_SPEED_LEFT) < CLOSE_TO_GOAL_VALUE ){
				CURR_MOTOR_SPEED_LEFT = GOAL_MOTOR_SPEED_LEFT;
			} else{
				
			}
			
			/* Right Side Motor */
			if(GOAL_MOTOR_SPEED_RIGHT > CURR_MOTOR_SPEED_RIGHT){
				CURR_MOTOR_SPEED_RIGHT += (FULL_SPEED)/NUMBER_OF_STEPS;
			}
			else if (GOAL_MOTOR_SPEED_RIGHT < CURR_MOTOR_SPEED_RIGHT ){
				CURR_MOTOR_SPEED_RIGHT -= (FULL_SPEED)/NUMBER_OF_STEPS;
			}
			else if (abs(GOAL_MOTOR_SPEED_RIGHT - CURR_MOTOR_SPEED_RIGHT) < CLOSE_TO_GOAL_VALUE ){
				CURR_MOTOR_SPEED_RIGHT = GOAL_MOTOR_SPEED_RIGHT;
			}
			/*if(abs(GOAL_MOTOR_SPEED_LEFT - CURR_MOTOR_SPEED_LEFT) <= CLOSE_TO_GOAL_VALUE){
				CURR_MOTOR_SPEED_LEFT = GOAL_MOTOR_SPEED_LEFT;
			} */
			//ramp right to GOAL_MOTOR_SPEED_RIGHT
			//CURR_MOTOR_SPEED_RIGHT += (GOAL_MOTOR_SPEED_RIGHT - CURR_MOTOR_SPEED_RIGHT)/NUMBER_OF_STEPS;
			/*if(abs(GOAL_MOTOR_SPEED_RIGHT - CURR_MOTOR_SPEED_RIGHT) <= CLOSE_TO_GOAL_VALUE){
				CURR_MOTOR_SPEED_RIGHT = GOAL_MOTOR_SPEED_RIGHT;
			} */
		}
		else{
			//ramp speed to zero
			//ramp left to STOPPED
			//CURR_MOTOR_SPEED_LEFT += (STOPPED - CURR_MOTOR_SPEED_LEFT)/NUMBER_OF_STEPS;
			/*if(abs(STOPPED - CURR_MOTOR_SPEED_LEFT) <= CLOSE_TO_GOAL_VALUE){
				CURR_MOTOR_SPEED_LEFT = STOPPED;
			}*/
			//ramp right to STOPPED
			//CURR_MOTOR_SPEED_RIGHT += (STOPPED - CURR_MOTOR_SPEED_RIGHT)/NUMBER_OF_STEPS;
			/*if(abs(STOPPED - CURR_MOTOR_SPEED_RIGHT) <= CLOSE_TO_GOAL_VALUE){
				CURR_MOTOR_SPEED_RIGHT = STOPPED;
			}*/
			//flip current direction
			/*if(CURR_MOTOR_SPEED_LEFT == STOPPED && CURR_MOTOR_SPEED_RIGHT == STOPPED){
				if(CURR_DIRECTION == REVERSE){
					CURR_DIRECTION = FORWARD;
				}
				else{
					CURR_DIRECTION = REVERSE;
				}
			}*/
		}
		
		OCR1A = CURR_MOTOR_SPEED_LEFT;
		OCR3B = CURR_MOTOR_SPEED_RIGHT;
		_delay_ms(20);
	} 
		//PWM_0_duty = CURR_MOTOR_SPEED_LEFT;
		//PWM_1_duty = CURR_MOTOR_SPEED_RIGHT;
	//	sprintf(printnum,"%u",PWM_0_duty);
		//USART0_Print("PWM_0_duty= ");
		//USART0_Print(printnum);
		//USART_0_write(10);
		//sprintf(printnum,"%u",PWM_1_duty);
		//USART0_Print("PWM_1_duty= ");
		//USART0_Print(printnum);
		//USART_0_write(10);
		PWM_0_load_duty_cycle_ch1(PWM_0_duty);
		PWM_1_load_duty_cycle_ch1(PWM_1_duty);
	//}
	return 1;
}
