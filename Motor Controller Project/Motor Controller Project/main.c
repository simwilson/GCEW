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
#define ACTIVE_RIGHT [1,2]
#define ACTIVE_RIGHT_FORWARD [1,A]
//#define ACTIVE_RIGHT_REVERSE "s16"
#define ACTIVE_LEFT [1,1]
#define ACTIVE_LEFT_FORWARD [1,9]
//#define ACTIVE_LEFT_REVERSE "s15e"
#define ACTIVE_FORWARD [1,8]
#define ACTIVE_REVERSE [1,4]

//TODO determine values
#define STOPPED 0x00
#define HALF_SPEED 0x77
#define THREE_QUARTER_SPEED 0xBB
#define FULL_SPEED 0xFF
#define REV_FULL_SPEED 0x00

//Function for handling change in state
void handleChangeInState(int prev, int curr){
	if(prev == curr || prev == START){
		return;
	}
	else if(curr == SLOW_STOP){
		//slow down motors
	}
}

//OUTPUT on PB2
volatile PWM_0_register_t PWM_0_duty = 0x00;

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	//==========================================
	// DO NOT DELETE
	atmel_start_init();
	//==========================================
	// Enable pin output
	PWM_0_enable_output_ch1();
	PWM_1_enable_output_ch0();

	// Set channel 0 duty cycle value register value to specified value
	PWM_0_load_duty_cycle_ch1(STOPPED);
	PWM_1_load_duty_cycle_ch0(STOPPED);

	// Set counter register value
	PWM_0_load_counter(0);
	PWM_1_load_counter(0);
	
	int MOTOR_CONTROLLER_STATE = START;
	int PREV_MOTOR_CONTROLLER_STATE = START;
	
	uint8_t rx[16];
	
	while (1){
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
				else if(rx[2] == '2'){
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
			else{
				//ERROR
			}
		}
		handleChangeInState(PREV_MOTOR_CONTROLLER_STATE, MOTOR_CONTROLLER_STATE);
		switch (MOTOR_CONTROLLER_STATE){
			case START:
				//stopped motors
				PWM_0_load_duty_cycle_ch1(STOPPED);
				PWM_1_load_duty_cycle_ch0(STOPPED);
			break;
			case SLOW_STOP:
				//slow down to stop
				//end in start mode
				PWM_0_load_duty_cycle_ch1(STOPPED);
				PWM_1_load_duty_cycle_ch0(STOPPED);
				MOTOR_CONTROLLER_STATE = START;
			break;
			case ACTIVE_RIGHT:
				//left motor much faster than right
				PWM_0_load_duty_cycle_ch1(FULL_SPEED);
				PWM_1_load_duty_cycle_ch0(HALF_SPEED);
			break;
			case ACTIVE_RIGHT_FORWARD:
				//left motor faster than right
				PWM_0_load_duty_cycle_ch1(THREE_QUARTER_SPEED);
				PWM_1_load_duty_cycle_ch0(HALF_SPEED);
			break;
			case ACTIVE_LEFT:
				//right motor much faster than right
				PWM_0_load_duty_cycle_ch1(HALF_SPEED);
				PWM_1_load_duty_cycle_ch0(FULL_SPEED);
			break;
			case ACTIVE_LEFT_FORWARD:
				//right motor faster than right
				PWM_0_load_duty_cycle_ch1(HALF_SPEED);
				PWM_1_load_duty_cycle_ch0(THREE_QUARTER_SPEED);
			break;
			case ACTIVE_FORWARD:
			//motors equal speed
				PWM_0_load_duty_cycle_ch1(FULL_SPEED);
				PWM_1_load_duty_cycle_ch0(FULL_SPEED);
			break;
			case ACTIVE_REVERSE
				//motors equal speed, negative direction
				PWM_0_load_duty_cycle_ch1(REV_FULL_SPEED);
				PWM_1_load_duty_cycle_ch0(REV_FULL_SPEED);
			break;
		}
		PREV_MOTOR_CONTROLLER_STATE = MOTOR_CONTROLLER_STATE;
	}
	return 1;
}
