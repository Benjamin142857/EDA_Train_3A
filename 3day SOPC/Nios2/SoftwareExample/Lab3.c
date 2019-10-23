#include <stdio.h>
#include <unistd.h>
#include "system.h"
#include "altera_avalon_pio_regs.h"
#include <sys/alt_irq.h>

#define DEBOUNCE_DELAY 200000



/********************************************************************************
*    ISR Function Definition:									  *
*													  *
*********************************************************************************/
//  3.  Complete ISR definition after completing steps 1 and 2 in main loop below:

static void button_isr(            ???              )
{

// 4.  Cast "context" to correct type
//      Should be declared as type volatile

    ???   ???   button_val_ptr = (??? ???) context;


   // Debounce the Buttons:
   usleep(DEBOUNCE_DELAY);


// 5. Set the value of the "context" pointer to the value contained in EDGE_CAP.
   *button_val_ptr =              ???     ;


// 6. Then reset that register to 0
// ???

   IOWR_ALTERA_AVALON_PIO_IRQ_MASK(BUTTON_PIO_BASE, 0xf);
}



/********************************************************************************
*    Main Program:									        *
*													  *
*********************************************************************************/
int main()
{ 
  
  // 1.  Declare a button variable using the Class example as a reference:
  //         ???           ;
  
  /* Initialize the button's value to 0 */
  
  button_val = 0;
   
  printf("Hello from Nios II!\n");
  printf("This is Lab3.c for the Nios II Software Development class\n\n");
  
  
  // Initialize the registers in the LED_GREEN peripheral:
  IOWR_ALTERA_AVALON_PIO_DATA(LED_GREEN_BASE,0x00);
  

  // Initialize the button pio. (SW0-SW3) */
  // Enable all 4 button interrupts.
  IOWR_ALTERA_AVALON_PIO_IRQ_MASK(BUTTON_PIO_BASE, 0xf);
  // Reset the edge capture register.
  IOWR_ALTERA_AVALON_PIO_EDGE_CAP(BUTTON_PIO_BASE, 0x0);


  // 2.  Register the interrupt handler. 
  //          ???           ;


  //  Print the message to STDOUT... 
  printf("Please LED pattern using SW0 to SW3 on dev kit:\n");  

  
  while (1)
  {
      if (button_val != 0)
      {
        switch (button_val)
        {
        
          case 0x1:
            IOWR_ALTERA_AVALON_PIO_DATA(LED_GREEN_BASE,0x03);
            printf("LED pattern 1\n");
            button_val = 0;
            break;
        
          case 0x2:
            IOWR_ALTERA_AVALON_PIO_DATA(LED_GREEN_BASE,0x0C);
            printf("LED pattern 2\n");
            button_val = 0;
            break;
        
          case 0x4:
            IOWR_ALTERA_AVALON_PIO_DATA(LED_GREEN_BASE,0x30);
            printf("LED pattern 3\n");
            button_val = 0;
            break;
        
          case 0x8:
            IOWR_ALTERA_AVALON_PIO_DATA(LED_GREEN_BASE,0xC0);
            printf("LED pattern 4\n");
            button_val = 0;
            break;
        }
      }
  }
  
  return 0;
  
}
