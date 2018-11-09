/**
 * \file
 *
 * \brief PWM Basic driver implementation.
 *
 (c) 2018 Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms,you may use this software and
    any derivatives exclusively with Microchip products.It is your responsibility
    to comply with third party license terms applicable to your use of third party
    software (including open source software) that may accompany Microchip software.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 */

/**
 * \defgroup doc_driver_pwm_basic PWM Basic Driver
 * \ingroup doc_driver_pwm
 *
 * \section doc_driver_pwm_normal_rev Revision History
 * - v0.0.0.1 Initial Commit
 *
 *@{
 */
#include <pwm_basic.h>

/** Function pointer to callback function called by IRQ.
    NULL=default value: No callback function is to be used.
*/
pwm_irq_cb_t PWM_0_cb = NULL;

/**
 * \brief Initialize PWM
 * If module is configured to disabled state, the clock to the PWM is disabled
 * if this is supported by the device's clock system.
 *
 * \return Initialization status.
 */
int8_t PWM_0_init()
{

	/* Enable TC1 */
	PRR0 &= ~(1 << PRTIM1);

	TCCR1A = (0 << COM1A1) | (0 << COM1A0)   /* Normal port operation, OCA disconnected */
	         | (1 << COM1B1) | (0 << COM1B0) /* Clear OCB on up-counting, set OCB on down-counting */
	         | (1 << WGM11) | (1 << WGM10);  /* TC16 Mode 11 Phase Correct PWM */

	TCCR1B = (1 << WGM13) | (0 << WGM12)                /* TC16 Mode 11 Phase Correct PWM */
	         | 0 << ICNC1                               /* Input Capture Noise Canceler: disabled */
	         | 0 << ICES1                               /* Input Capture Edge Select: disabled */
	         | (0 << CS12) | (0 << CS11) | (1 << CS10); /* No prescaling */

	// ICR1 = 0x0; /* Input capture value: 0x0 */

	// OCR1A = 0x0; /* Counter top value: 0x0 */

	// OCR1B = 0x0; /* Output compare B: 0x0 */

	TIMSK1 = 0 << OCIE1B   /* Output Compare B Match Interrupt Enable: disabled */
	         | 0 << OCIE1A /* Output Compare A Match Interrupt Enable: disabled */
	         | 0 << ICIE1  /* Input Capture Interrupt Enable: disabled */
	         | 1 << TOIE1; /* Overflow Interrupt Enable: enabled */

	return 0;
}

/**
 * \brief Enable PWM_0
 * 1. If supported by the clock system, enables the clock to the PWM
 * 2. Enables the PWM module by setting the enable-bit in the PWM control register
 *
 * \return Nothing
 */
void PWM_0_enable()
{
}

/**
 * \brief Disable PWM_0
 * 1. Disables the PWM module by clearing the enable-bit in the PWM control register
 * 2. If supported by the clock system, disables the clock to the PWM
 *
 * \return Nothing
 */
void PWM_0_disable()
{
}

/**
 * \brief Enable PWM output on channel 1
 *
 * \return Nothing
 */
void PWM_0_enable_output_ch1()
{

	TCCR1A |= ((1 << COM1B1) | (0 << COM1B0));
}

/**
 * \brief Disable PWM output on channel 1
 *
 * \return Nothing
 */
void PWM_0_disable_output_ch1()
{

	TCCR1A &= ~((0 << COM1B1) | (0 << COM1B0));
}

/**
 * \brief Load COUNTER register in PWM_0
 *
 * \param[in] counter_value The value to load into COUNTER
 *
 * \return Nothing
 */
void PWM_0_load_counter(PWM_0_register_t counter_value)
{
	TCNT1 = counter_value;
}

/**
 * \brief Load TOP register in PWM_0.
 * The physical register may different names, depending on the hardware and module mode.
 *
 * \param[in] counter_value The value to load into TOP.
 *
 * \return Nothing
 */
void PWM_0_load_top(PWM_0_register_t top_value)
{
	OCR1A = top_value;
}

/**
 * \brief Load duty cycle register in for channel 1.
 * The physical register may have different names, depending on the hardware.
 * This is not the duty cycle as percentage of the whole period, but the actual
 * counter compare value.
 *
 * \param[in] counter_value The value to load into the duty cycle register.
 *
 * \return Nothing
 */
void PWM_0_load_duty_cycle_ch1(PWM_0_register_t duty_value)
{
	OCR1B = duty_value;
}

/**
 * \brief Register a callback function to be called at the end of the overflow ISR.
 *
 * \param[in] f Pointer to function to be called
 *
 * \return Nothing.
 */
void PWM_0_register_callback(pwm_irq_cb_t f)
{
	PWM_0_cb = f;
}

ISR(TIMER1_OVF_vect)
{
	static volatile uint8_t callback_count = 0;

	// Clear the interrupt flag
	TIFR1 = TOV1;

	// callback function - called every 0 passes
	if ((++callback_count >= PWM_0_INTERRUPT_CB_RATE) && (PWM_0_INTERRUPT_CB_RATE != 0)) {
		if (PWM_0_cb != NULL) {
			PWM_0_cb();
		}
	}
}

/** Function pointer to callback function called by IRQ.
    NULL=default value: No callback function is to be used.
*/
pwm_irq_cb_t PWM_1_cb = NULL;

/**
 * \brief Initialize PWM
 * If module is configured to disabled state, the clock to the PWM is disabled
 * if this is supported by the device's clock system.
 *
 * \return Initialization status.
 */
int8_t PWM_1_init()
{

	/* Enable TC3 */
	PRR1 &= ~(1 << PRTIM3);

	TCCR3A = (0 << COM3A1) | (0 << COM3A0)   /* Normal port operation, OCA disconnected */
	         | (1 << COM3B1) | (0 << COM3B0) /* Clear OCB on up-counting, set OCB on down-counting */
	         | (1 << WGM31) | (1 << WGM30);  /* TC16 Mode 11 Phase Correct PWM */

	TCCR3B = (1 << WGM33) | (0 << WGM32)                /* TC16 Mode 11 Phase Correct PWM */
	         | 0 << ICNC3                               /* Input Capture Noise Canceler: disabled */
	         | 0 << ICES3                               /* Input Capture Edge Select: disabled */
	         | (0 << CS32) | (0 << CS31) | (1 << CS30); /* No prescaling */

	// ICR3 = 0x0; /* Input capture value: 0x0 */

	// OCR3A = 0x0; /* Counter top value: 0x0 */

	// OCR3B = 0x0; /* Output compare B: 0x0 */

	TIMSK3 = 0 << OCIE3B   /* Output Compare B Match Interrupt Enable: disabled */
	         | 0 << OCIE3A /* Output Compare A Match Interrupt Enable: disabled */
	         | 0 << ICIE3  /* Input Capture Interrupt Enable: disabled */
	         | 1 << TOIE3; /* Overflow Interrupt Enable: enabled */

	return 0;
}

/**
 * \brief Enable PWM_1
 * 1. If supported by the clock system, enables the clock to the PWM
 * 2. Enables the PWM module by setting the enable-bit in the PWM control register
 *
 * \return Nothing
 */
void PWM_1_enable()
{
}

/**
 * \brief Disable PWM_1
 * 1. Disables the PWM module by clearing the enable-bit in the PWM control register
 * 2. If supported by the clock system, disables the clock to the PWM
 *
 * \return Nothing
 */
void PWM_1_disable()
{
}

/**
 * \brief Enable PWM output on channel 1
 *
 * \return Nothing
 */
void PWM_1_enable_output_ch1()
{

	TCCR3A |= ((1 << COM3B1) | (0 << COM3B0));
}

/**
 * \brief Disable PWM output on channel 1
 *
 * \return Nothing
 */
void PWM_1_disable_output_ch1()
{

	TCCR3A &= ~((0 << COM3B1) | (0 << COM3B0));
}

/**
 * \brief Load COUNTER register in PWM_1
 *
 * \param[in] counter_value The value to load into COUNTER
 *
 * \return Nothing
 */
void PWM_1_load_counter(PWM_1_register_t counter_value)
{
	TCNT3 = counter_value;
}

/**
 * \brief Load TOP register in PWM_1.
 * The physical register may different names, depending on the hardware and module mode.
 *
 * \param[in] counter_value The value to load into TOP.
 *
 * \return Nothing
 */
void PWM_1_load_top(PWM_1_register_t top_value)
{
	OCR3A = top_value;
}

/**
 * \brief Load duty cycle register in for channel 1.
 * The physical register may have different names, depending on the hardware.
 * This is not the duty cycle as percentage of the whole period, but the actual
 * counter compare value.
 *
 * \param[in] counter_value The value to load into the duty cycle register.
 *
 * \return Nothing
 */
void PWM_1_load_duty_cycle_ch1(PWM_1_register_t duty_value)
{
	OCR3B = duty_value;
}

/**
 * \brief Register a callback function to be called at the end of the overflow ISR.
 *
 * \param[in] f Pointer to function to be called
 *
 * \return Nothing.
 */
void PWM_1_register_callback(pwm_irq_cb_t f)
{
	PWM_1_cb = f;
}

ISR(TIMER3_OVF_vect)
{
	static volatile uint8_t callback_count = 0;

	// Clear the interrupt flag
	TIFR3 = TOV3;

	// callback function - called every 0 passes
	if ((++callback_count >= PWM_1_INTERRUPT_CB_RATE) && (PWM_1_INTERRUPT_CB_RATE != 0)) {
		if (PWM_1_cb != NULL) {
			PWM_1_cb();
		}
	}
}
