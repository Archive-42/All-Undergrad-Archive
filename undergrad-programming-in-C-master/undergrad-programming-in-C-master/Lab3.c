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
  CyGlobalIntEnable; /* Enable global interrupts. */
  LCD_Char_1_Start();

  Pin_3_Write(1); //initially lightin LED 1
  Pin_4_Write(1); //initially lighting LED 2

  LCD_Char_1_ClearDisplay();
  LCD_Char_1_Position(0, 0);
  LCD_Char_1_PrintString("Welcome to the  "); //title change
  LCD_Char_1_Position(1, 0);
  LCD_Char_1_PrintString("Program!         "); //title change

  CyDelay(2000);

  /* LCD_Char_1_Position( 0, 0) ;
                                                        LCD_Char_1_PrintString("I/O console     ") ;
                                                        LCD_Char_1_Position( 1, 0) ;
                                                        LCD_Char_1_PrintString("Program         ") ;
                                                           
                                                        CyDelay(5000);
                                                        
                                                        
                                                        LCD_Char_1_Position( 0, 0) ;
                                                        LCD_Char_1_PrintString("Microcontroller ") ;
                                                        LCD_Char_1_Position( 1, 0) ;
                                                        LCD_Char_1_PrintString("Programmer      ") ;
                                                           
                                                        CyDelay(5000);*/

  LCD_Char_1_Position(0, 0);
  LCD_Char_1_PrintString("Press a switch  ");
  LCD_Char_1_Position(1, 0);
  LCD_Char_1_PrintString("to continue!    ");

  for (;;)
  {
    for (; Pin_1_Read() == 1 && Pin_2_Read() == 1;)
    {
    } // Loop while no push

    if (Pin_1_Read() == 0) // if right button is pushed toggle right LED
    {
      Pin_4_Write(~Pin_4_Read());
      CyDelay(100);
      LCD_Char_1_Position(0, 0);
      LCD_Char_1_PrintString("Right LED       ");
      LCD_Char_1_Position(1, 0);
      LCD_Char_1_PrintString("                 ");
    }

    else //if left button is pushed toggle left LED
    {
      Pin_3_Write(~Pin_3_Read());
      CyDelay(100); //Debouncing button down
      LCD_Char_1_Position(0, 0);
      LCD_Char_1_PrintString("Left LED        ");
      LCD_Char_1_Position(1, 0);
      LCD_Char_1_PrintString("                 ");
    }
    for (; Pin_1_Read() == 0 || Pin_2_Read() == 0;)
    {
    }             // Loop while push (either)
    CyDelay(100); //Debouncing button down
  }
}

/* for(;;)
                                                        {
                                                            if(Pin_1_Read()==0){
                                                             LCD_Char_1_ClearDisplay();
                                                                LCD_Char_1_Position( 0, 0) ;
                                                        LCD_Char_1_PrintString("Program         ") ;
                                                         LCD_Char_1_Position( 1, 0) ;
                                                         LCD_Char_1_PrintString("completion      ") ;
                                                        
                                                         CyDelay(5000);
                                                        
                                                            
                                                        
                                                         LCD_Char_1_Position( 0, 0) ;
                                                        LCD_Char_1_PrintString("Succeeded       ") ;
                                                         LCD_Char_1_Position( 1, 0) ;
                                                         LCD_Char_1_PrintString("                ") ;
                                                                break;}
                                                            
                                                            
                                                        }*/

/*for(;;)
                                                                {
                                                                   
                                                                }*/

/* [] END OF FILE */
