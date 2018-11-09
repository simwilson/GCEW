//MOTOR CONTROLLER PROJECT MAIN
//EE Design II

#include <atmel_start.h>
#include <pwm_basic_example.h>
#include <pwm_basic.h>

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
#define HALF_SPEED 0x77
#define FULL_SPEED 0xFF

#define FORWARD 0
#define REVERSE 1

#define CLOSE_TO_GOAL_VALUE 0x05
#define NUMBER_OF_STEPS 100


//OUTPUT on PB2
volatile PWM_0_register_t PWM_0_duty = STOPPED;
volatile PWM_1_register_t PWM_1_duty = STOPPED;

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	//==========================================
	// DO NOT DELETE
	atmel_start_init();
	//==========================================
	
	//TODO determine if we are using ch0 or ch1
		
	// Enable pin output
	PWM_0_enable_output_ch1();
	PWM_1_enable_output_ch1();

	// Set channel 0 duty cycle value register value to specified value
	PWM_0_load_duty_cycle_ch1(STOPPED);
	PWM_1_load_duty_cycle_ch1(STOPPED);

	// Set counter register value
	PWM_0_load_counter(0);
	PWM_1_load_counter(0);
	
	int MOTOR_CONTROLLER_STATE = START;
	
	uint8_t rx[16];
	uint16_t CURR_MOTOR_SPEED_LEFT = STOPPED;
	uint16_t CURR_MOTOR_SPEED_RIGHT = STOPPED;
	uint16_t GOAL_MOTOR_SPEED_LEFT = STOPPED;
	uint16_t GOAL_MOTOR_SPEED_RIGHT = STOPPED;
	uint8_t CURR_DIRECTION = FORWARD;
	uint8_t GOAL_DIRECTION = FORWARD;
	
	while (1){
		//TODO check to make sure BT is connected
		//TODO only read if available
		for (uint8_t i = 0; i < 4; i++) {
			rx[i] = USART_0_read(); // Blocks until character is available
		}
		//verify first and last character
		if(rx[0] == 's' && rx[3] == 'e'){
			if(rx[1] == '0'){
				if(rx[2] == '0'){
					MOTOR_CONTROLLER_STATE = START;
				}
				else if(rx[2] == '2'){
					MOTOR_CONTROLLER_STATE = SLOW_STOP;
				}
			}
			else if(rx[1] == '1'){
				if(rx[2] == '2'){
					MOTOR_CONTROLLER_STATE = ACTIVE_RIGHT;
				}
				else if(rx[2] == 'A'){
					MOTOR_CONTROLLER_STATE = ACTIVE_RIGHT_FORWARD;
				}
				else if(rx[2] == '1'){
					MOTOR_CONTROLLER_STATE = ACTIVE_LEFT;
				}
				else if(rx[2] == '9'){
					MOTOR_CONTROLLER_STATE = ACTIVE_LEFT_FORWARD;
				}
				else if(rx[2] == '8'){
					MOTOR_CONTROLLER_STATE = ACTIVE_FORWARD;
				}
				else if(rx[2] == '4'){
					MOTOR_CONTROLLER_STATE = ACTIVE_REVERSE;
				}
			}
			else{ //ERROR
				continue; //exit loop to read next command
			}
		}
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
			CURR_MOTOR_SPEED_LEFT += (GOAL_MOTOR_SPEED_LEFT - CURR_MOTOR_SPEED_LEFT)/NUMBER_OF_STEPS;
			if(abs(GOAL_MOTOR_SPEED_LEFT - CURR_MOTOR_SPEED_LEFT) <= CLOSE_TO_GOAL_VALUE){
				CURR_MOTOR_SPEED_LEFT = GOAL_MOTOR_SPEED_LEFT;
			}
			//ramp right to GOAL_MOTOR_SPEED_RIGHT
			CURR_MOTOR_SPEED_RIGHT += (GOAL_MOTOR_SPEED_RIGHT - CURR_MOTOR_SPEED_RIGHT)/NUMBER_OF_STEPS;
			if(abs(GOAL_MOTOR_SPEED_RIGHT - CURR_MOTOR_SPEED_RIGHT) <= CLOSE_TO_GOAL_VALUE){
				CURR_MOTOR_SPEED_RIGHT = GOAL_MOTOR_SPEED_RIGHT;
			}
		}
		else{
			//ramp speed to zero
			//ramp left to STOPPED
			CURR_MOTOR_SPEED_LEFT += (STOPPED - CURR_MOTOR_SPEED_LEFT)/NUMBER_OF_STEPS;
			if(abs(STOPPED - CURR_MOTOR_SPEED_LEFT) <= CLOSE_TO_GOAL_VALUE){
				CURR_MOTOR_SPEED_LEFT = STOPPED;
			}
			//ramp right to STOPPED
			CURR_MOTOR_SPEED_RIGHT += (STOPPED - CURR_MOTOR_SPEED_RIGHT)/NUMBER_OF_STEPS;
			if(abs(STOPPED - CURR_MOTOR_SPEED_RIGHT) <= CLOSE_TO_GOAL_VALUE){
				CURR_MOTOR_SPEED_RIGHT = STOPPED;
			}
			//flip current direction
			if(CURR_MOTOR_SPEED_LEFT == STOPPED && CURR_MOTOR_SPEED_RIGHT == STOPPED){
				if(CURR_DIRECTION == REVERSE){
					CURR_DIRECTION = FORWARD;
				}
				else{
					CURR_DIRECTION = REVERSE;
				}
			}
		}
		PWM_0_duty = CURR_MOTOR_SPEED_LEFT;
		PWM_1_duty = CURR_MOTOR_SPEED_RIGHT;
		PWM_0_load_duty_cycle_ch1(PWM_0_duty);
		PWM_1_load_duty_cycle_ch1(PWM_1_duty);
	}
	return 1;
}
