/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/
#include <project.h>

int main()
{
    CyGlobalIntEnable; /* Enable global interrupts. */
    LCD_Char_1_Start() ;
    
    
     LCD_Char_1_ClearDisplay();
     LCD_Char_1_Position( 0, 0) ;
         LCD_Char_1_PrintString("Welcome to the  ") ; //title change
         LCD_Char_1_Position( 1, 0) ;
         LCD_Char_1_PrintString("Program!         ") ;//title change
           
       
        CyDelay(5000);
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
        
        
        
        
         LCD_Char_1_Position( 0, 0) ;
        LCD_Char_1_PrintString("Press a switch  ") ;
         LCD_Char_1_Position( 1, 0) ;
         LCD_Char_1_PrintString("to continue!    ") ;
           
        
        
        for(;;)
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
            
            
        }
        
      
        
        
        

   

/*for(;;)
    {
       
    }*/
}

/* [] END OF FILE */
