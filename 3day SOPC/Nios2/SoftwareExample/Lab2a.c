#include <stdio.h>
#include <unistd.h>
#include "system.h"
#include "altera_avalon_pio_regs.h"

#define NONE_PRESSED 0xF  // Value read from button PIO when no buttons pressed
#define DEBOUNCE 30000  // Time in microseconds to wait for switch debounce

int main()
{ 
  alt_u8 buttons;
  alt_u8 button_val = 0xf;

  int  print_cnt;  // Print Counter (prevents infinite printf loop)
  
  printf("Hello from Nios II!\n");
  printf("This is the Lab2_Part1.c routine for the Nios II Software Development class\n\n");
  
  
  // Initialize the registers in the LED_GREEN peripheral:
  IOWR_ALTERA_AVALON_PIO_DATA(LED_GREEN_BASE,0x00);


  printf("Please enter LED pattern by pressing SW0 to SW3 on dev kit:\n");  

  
  while (1)
  {
      // Change the following code to perform the functions described in comments below:
      print_cnt = 0;
      

      // 1.  Sample SW Button from Dev Board:  ***
      // ???
      


      // Run De-Bouncing Algorithm:
      if (buttons != NONE_PRESSED)  {       // if button pressed
        usleep (DEBOUNCE);
        while (buttons != NONE_PRESSED)  {  // wait for button release
          button_val = buttons;   // strobe state of SW switch


      // 2.  Sample "buttons" again to update with new value  ***
      // ???
  
        }
        print_cnt = 1;
      }
     


      switch (button_val)
      {

      // 3.  Change four instances of IOWR macro fns in case statement
  	//     below to write to the data register in the LED_GREEN peripheral.
  	//     (ie.  change "// ???" comments below)

	//     Note:  Data Register Values for different LED Positions:
	//     -----  Position 1 = 0x03
	//            Position 2 = 0x0C
	//            Position 3 = 0x30
	//            Position 4 = 0xC0
        
        case 14:
          // ???
          if (print_cnt == 1)
            printf("LED Pattern 1\n");
        break;
        
        case 13:
          // ???
          if (print_cnt == 1)
            printf("LED Pattern 2\n");
        break;
        
        case 11:
          // ???
          if (print_cnt == 1)
            printf("LED Pattern 3\n");
        break;
        
        case 7:
          // ???
          if (print_cnt == 1)
            printf("LED Pattern 4\n");
        break;
    
    }    
  }
  
  return 0;
  
}
