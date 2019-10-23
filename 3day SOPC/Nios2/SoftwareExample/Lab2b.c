#include <stdio.h>
#include "system.h"
#include "altera_avalon_pio_regs.h"

#include <time.h>
#include <unistd.h>
#include <sys/alt_timestamp.h>


int main()
{ 

  int i;

  alt_u32 num_ticks = 0;
  alt_u32 time1, time2, timer_overhead;
	

  printf("Hello from Nios II!\n");
   
  // Initialize the registers in the LED_GREEN peripheral:
  IOWR_ALTERA_AVALON_PIO_DATA(LED_GREEN_BASE,0x00);
  

  while (1)
  {
  

   // Check Timer:   
      if (alt_timestamp_start() < 0) {
         printf("Timer init failed \n");
         exit(0);
      }

   // 1.  Determine the timer overhead involved to record time stamp:  ***
   //	  (Uncomment the following and edit...)
   /*
      time1 =  ???
      time2 =  ???
      timer_overhead = time2 - time1;
   */


   // 2.  Sample time1:  ***
   //	  (Uncomment the following and edit...)
   /*
      time1 =  ???
   */


   // Test Loop:
      for (i=1; i<5; i++) {
      
		switch (i)
		{
			case 4:
				IOWR_ALTERA_AVALON_PIO_DATA(LED_GREEN_BASE,0xC0);
				printf("LED Pattern 4\n");
				usleep(500000);
				break;
	
			case 3:
				IOWR_ALTERA_AVALON_PIO_DATA(LED_GREEN_BASE,0x30);
				printf("LED Pattern 3\n");
				usleep(500000);
				break;
	
			case 2:
				IOWR_ALTERA_AVALON_PIO_DATA(LED_GREEN_BASE,0x0C);
				printf("LED Pattern 2\n");
				usleep(500000);
				break;
	
			case 1:
				IOWR_ALTERA_AVALON_PIO_DATA(LED_GREEN_BASE,0x03);
				printf("LED Pattern 1\n");
				usleep(500000);
				break;
	
			case 0:
			  return 0;
				break;
	
			default:
			  printf("Looping:\n");
				break;
		  }

      }    // end for loop


     // 3.  Sample Time 2:  ***
     //	    (Uncomment the following and edit...)
     /*
        time2 =  ???
        num_ticks = time2 - time1 - timer_overhead;
     */


     // 4.  Print out the time it took to perform this loop: 
     //	  (Uncomment the following...)
     /*
        printf("CPU time(ms): %.*f\n", 2, ((float)num_ticks/(float)alt_timestamp_freq()) \
        				   * (float)1000); 
     */


  }    // end while loop
	
	


  return 0;
}





