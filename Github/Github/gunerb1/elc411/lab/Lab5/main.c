//
//  main.c
//  design 5

//
//  Created by Bryan Guner on 11/17/16.
//  Copyright © 2016 Bryan Guner. All rights reserved.
//

#include <stdio.h>
//I actually wrote this code!!!

int main(int argc, const char * argv[]) {
    
    int phase=0;
    int dir=1;
    int count=0;
    int i=0;
    int count1=0;
    
    
    int * reverse_phase_sequence={9,8,12,8,6,2,3,1};
    int * phase_sequence={1,3,2,6,8,12,8,9};
    
    for(;;)
    {
        for(count1=0;count1<2048;count++)
        {
            
            
            for(i=0;i<8;i++)
            {
                
                
                if (dir==-1)
                {
                    
                    phase_sequence[i];
                    //goes into pin1 write
                    // delay 10
                }
                else
                {
                    
                    reverse_phase_sequence[i];
                    //goes into pin1 write
                    // delay 10
                }
            }
            
            //delay 500
            
            dir=-dir;
        }
    }
    
}






