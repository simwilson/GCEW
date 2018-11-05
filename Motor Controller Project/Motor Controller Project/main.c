//MOTOR CONTROLLER PROJECT MAIN
//EE Design II

#include <atmel_start.h>
#include <pwm_basic_example.h>
#include <pwm_basic.h>

//Modes
#define START 0x00
#define CALIBRATION 0x01
#define ACTIVE_MODE 0x10
#define ACTIVE_RIGHT 0x12
#define ACTIVE_RIGHT_FORWARD 0x1A
//#define ACTIVE_RIGHT_REVERSE 0x16
#define ACTIVE_LEFT 0x11
#define ACTIVE_LEFT_FORWARD 0x19
//#define ACTIVE_LEFT_REVERSE 0x15
#define ACTIVE_FORWARD 0x18
#define ACTIVE_REVERSE 0x14

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

//Function for handling change in state
void handleChangeInState(int prev, int curr){
	if(prev == curr || prev == START){
		return;
	}
	else if()
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

	// Set channel 0 duty cycle value register value to specified value
	PWM_0_load_duty_cycle_ch1(PWM_0_duty);

	// Set counter register value
	PWM_0_load_counter(0);
	
	int MOTOR_CONTROLLER_STATE = START;
	int PREV_MOTOR_CONTROLLER_STATE = START;
	
	while (1){
		//handlechangeinstate(PREV_MOTOR_CONTROLLER_STATE, MOTOR_CONTROLLER_STATE);
		switch (MOTOR_CONTROLLER_STATE){
			case START:
			//check for button presses
			break;
			case CALIBRATION:
			//run calibration routine
			break;
			case ACTIVE_MODE:
			//stopped motors
			break;
			case ACTIVE_RIGHT:
			//left motor much faster than right
			break;
			case ACTIVE_RIGHT_FORWARD:
			//left motor faster than right
			break;
			case ACTIVE_LEFT:
			//right motor much faster than right
			break;
			case ACTIVE_LEFT_FORWARD:
			//right motor faster than right
			break;
			case ACTIVE_FORWARD:
			//motors equal speed
			break;
			case ACTIVE_REVERSE
			//motors equal speed, negative direction
			break;
		}
		PREV_MOTOR_CONTROLLER_STATE = MOTOR_CONTROLLER_STATE;
	}
	return 1;
}
