/* ========================================
 *
 * Copyright Bryan Guner, 2016
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.

 * ========================================*/
* /
#include "defines.h"

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>

#include <avr/io.h>

#include <util/delay.h>

#include "hd44780.h"
#include "lcd.h"

    /*
 * Setup the LCD controller.  First, call the hardware initialization
 * function, then adjust the display attributes we want.
 */
    void
    lcd_init(void)
{

  hd44780_init();

  /*
   * Clear the display.
   */
  hd44780_outcmd(HD44780_CLR);
  hd44780_wait_ready();

  /*
   * Entry mode: auto-increment address counter, no display shift in
   * effect.
   */
  hd44780_outcmd(HD44780_ENTMODE(1, 0));
  hd44780_wait_ready();

  /*
   * Enable display, activate non-blinking cursor.
   */
  hd44780_outcmd(HD44780_DISPCTL(1, 1, 0));
  hd44780_wait_ready();
}

/*
 * Send character c to the LCD display.  After a '\n' has been seen,
 * the next character will first clear the display.
 */
int lcd_putchar(char c, FILE *unused)
{
  static bool nl_seen;

  if (nl_seen && c != '\n')
  {
    /*
       * First character after newline, clear display and home cursor.
       */
    hd44780_wait_ready();
    hd44780_outcmd(HD44780_CLR);
    hd44780_wait_ready();
    hd44780_outcmd(HD44780_HOME);
    hd44780_wait_ready();
    hd44780_outcmd(HD44780_DDADDR(0));

    nl_seen = false;
  }
  if (c == '\n')
  {
    nl_seen = true;
  }
  else
  {
    hd44780_wait_ready();
    hd44780_outdata(c);
  }

  return 0;
}
