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
	UART_1_Start();
	LCD_Char_1_Start();
    
    char the_char;
    int c_idx;
    

	char mystring[] = "Is it Rocky or Raki?\n";

	//initialization 
	LCD_Char_1_Position(0,0);
	c_idx = 0;
	

	//My forever loop out_str
	while(1)
	{
		UART_1_PutString(mystring);
        CyDelay(10);	
		the_char = UART_1_GetChar();
		if (the_char) 
		{
			if (c_idx == 0)
			{
				LCD_Char_1_ClearDisplay();
			}
			
			LCD_Char_1_PutChar(the_char); 
			++c_idx;
			if (c_idx == 16) 
			{ 
				LCD_Char_1_Position(0,0);
				c_idx = 0;
			}
		}
	}
}