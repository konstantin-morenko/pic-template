
#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

#include "defs.h"


/* All standard definitions in /opt/microchip/xc8/v2.10/pic/include/pic16f628a.h */


inline void set_tmr0_int(void);


void main(void) {
  /* ==================== INIT ==================== */

  /* set_tmr0_int(); */
#warning Initialization is not set
  /* Revome this after configuring */

  /* ==================== PROGRAM ==================== */
  while(1) {

#warning Main program is not set
    /* Revome this after configuring */

  }
}


inline void set_tmr0_int(void) {
  ei();				/* Enabling all interruptions */
  INTCONbits.T0IE = 1;
  OPTION_REGbits.T0CS = 0;
  return;
}
