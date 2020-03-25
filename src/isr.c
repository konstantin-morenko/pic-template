
#include <xc.h>

#include "defs.h"


void __interrupt () isr(void) {

  /* Checking IE & IF according to http://ww1.microchip.com/downloads/en/DeviceDoc/52053B.pdf#page=190 */
  if (TMR0IE && TMR0IF) {
    /* TMR0 Interruption Routine */
    TMR0IF = 0;
  }

#warning Interrupts is not set
  /* Revome this after configuring */

}
