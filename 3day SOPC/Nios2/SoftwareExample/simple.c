#include <stdio.h>
#include <unistd.h>
#include "altera_avalon_pio_regs.h"
#include "system.h"  

#define NONE_PRESSED 0xF  // Value read from button PIO when no buttons pressed
#define DEBOUNCE 30000  // Time in microseconds to wait for switch debounce

int main(void)
{
	int buttons;  // Use to hold button pressed value
	int led = 0x01;  // Use to write to led

	printf("Simple\n");   // print a message to show that program is running

	IOWR_ALTERA_AVALON_PIO_DATA(LED_GREEN_BASE,led); // write initial value to pio
 
	while (1)
	{
		buttons = IORD_ALTERA_AVALON_PIO_DATA(BUTTON_PIO_BASE); // read buttons via pio

		if (buttons != NONE_PRESSED)  // if button pressed
		{
			if (led >= 0x80)  // if pattern is 00000001 on board (leds in reverse order)
				led = 0x01;  // reset pattern
			else
				led = led << 1;  // shift right on board (led0 is far left)

			IOWR_ALTERA_AVALON_PIO_DATA(LED_GREEN_BASE,led);  // write new value to pio

			/* Switch debounce routine
			   Wait for small delay after intial press for debouncing
			   Wait for release of key
			   Wait for small delay after release for debouncing */

			usleep (DEBOUNCE);
			while (buttons != NONE_PRESSED)  // wait for button release
				buttons = IORD_ALTERA_AVALON_PIO_DATA(BUTTON_PIO_BASE);   // update
			usleep (DEBOUNCE);
		}

	}


}  // end

