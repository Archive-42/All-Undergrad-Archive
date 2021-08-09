//
//  main.c
//  Lab1 Prep
//
//  Created by Bryan Guner on 9/8/16.
//  Copyright © 2016 Bryan Guner. All rights reserved.
//

#include <stdio.h>
uint32_t implementer, variant, partno, revision, reg_val;int main(int argc, const char * argv[]) {
    
#define NVIC_CPUID_BASE_ADDR ( 0xe000ed00)
    
uint32_t volatile * my_reg_ptr;
    
my_reg_ptr = ( uint32_t *) NVIC_CPUID_BASE_ADDR;
 
reg_val = *my_reg_ptr;
    
    implementer = (reg_val >> 24) & 0xFF;
    
    variant = (reg_val >> 20) & 0x7F;
    
    partno = (reg_val >> 4) & 0xFF;
    
    revision = (reg_val >> 0) & 0x7F;
    
#define CYREG_PRT6_DR 0x40005160u
}
