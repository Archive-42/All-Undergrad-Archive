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

    .syntax unified
    .text


    .global read_nvic_cpuid_base
    .func read_nvic_cpuid_base, read_nvic_cpuid_base
    .thumb_func

read_nvic_cpuid_base:
LDR r4,[r0] //reg_val=*reg_ptr

 
LSR r5, r4, #24
AND r6, r5, #0xFF
STR r6, [r1]

 
LSR r7, r4, #20
AND r8,r7,#0xF
STR r8, [r2]

LSR r9, r4, #4
LDR r12, =0xFFF //FFF is to big to fit in immediate value field
AND r10, r9, r12
STR r10, [r3]


 

BX LR //Return from subroutine 


  
    .endfunc


    .end


/* [] END OF FILE */
