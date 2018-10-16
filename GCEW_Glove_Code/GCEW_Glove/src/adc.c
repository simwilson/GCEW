/**
 * \file
 *
 * \brief ADC related functionality implementation.
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
 * \defgroup doc_driver_adc_init ADC Init Driver
 * \ingroup doc_driver_adc
 *
 * \section doc_driver_adc_rev Revision History
 * - v0.0.0.1 Initial Commit
 *
 *@{
 */

#include <adc.h>

/**
 * \brief Initialize adc interface
 * \return Initialization status.
 */
int8_t ADC_init()
{

	/* Enable clock to write ADC registers */
	PRR0 &= ~(1 << PRADC);

	ADMUX = (0x01 << REFS0)   /* AVCC with external capacitor at AREF pin */
	        | (0 << ADLAR)    /* Left Adjust Result: disabled */
	        | (0x02 << MUX0); /* ADC Single Ended Input pin 2 (Pin PC2) */

	ADCSRA = (1 << ADEN)        /* ADC: enabled */
	         | (0 << ADATE)     /* Auto Trigger: disabled */
	         | (0 << ADIE)      /* ADC Interrupt: disabled */
	         | (0x06 << ADPS0); /* 64 */
	ADCSRB = (0x00 << ADTS0)    /* Free Running mode */
	         | (0 << ACME)      /* Analog Comparator Multiplexer: disabled */
	    ;

	DIDR0 = 1 << ADC2D    /* Disable digital input buffer for ADC2 */
	        | 1 << ADC3D  /* Disable digital input buffer for ADC3 */
	        | 1 << ADC4D; /* Disable digital input buffer for ADC4 */

	return 0;
}
