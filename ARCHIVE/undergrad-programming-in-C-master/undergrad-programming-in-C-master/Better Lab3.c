/* ========================================
 *
 * Copyright Bryan Guner, 2016
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.

 * ========================================*/
* /
#include <project.h>

    int main()
{
  CyGlobalIntEnable;  // Enable global interrupts
  LCD_Char_1_Start(); // Initialize display

  Pin_3_Write(1); // initially light LED 1
  Pin_4_Write(1); // initially light LED 2

  // Display opening message
  LCD_Char_1_ClearDisplay();
  LCD_Char_1_Position(0, 0);
  LCD_Char_1_PrintString("Welcome to the  ");
  LCD_Char_1_Position(1, 0);
  LCD_Char_1_PrintString("Program!         ");

  // Wait 2 seconds
  CyDelay(2000);

  // Update message
  LCD_Char_1_Position(0, 0);
  LCD_Char_1_PrintString("Press a switch  ");
  LCD_Char_1_Position(1, 0);
  LCD_Char_1_PrintString("to continue!    ");

  for (;;)
  {
    while (Pin_1_Read() == 1 && Pin_2_Read() == 1)
    {
    } // Loop while no button down

    if (Pin_1_Read() == 0) // Right button down
    {
      Pin_4_Write(~Pin_4_Read()); // Toggle right LED

      // Update message (training spaces cause display clear)
      LCD_Char_1_Position(0, 0);
      LCD_Char_1_PrintString("Right LED       ");
      LCD_Char_1_Position(1, 0);
      LCD_Char_1_PrintString("                 ");
    }
    else //if left button is pushed toggle left LED
    {
      Pin_3_Write(~Pin_3_Read()); // Toggle left LED

      // Update message (training spaces cause display clear)
      LCD_Char_1_Position(0, 0);
      LCD_Char_1_PrintString("Left LED        ");
      LCD_Char_1_Position(1, 0);
      LCD_Char_1_PrintString("                 ");
    }
    CyDelay(100); // Wait 100 ms for debounce

    while (Pin_1_Read() == 0 || Pin_2_Read() == 0)
    {
    }             // Loop while either button down
    CyDelay(100); // Wait 100 ms for debounce
  }
}
