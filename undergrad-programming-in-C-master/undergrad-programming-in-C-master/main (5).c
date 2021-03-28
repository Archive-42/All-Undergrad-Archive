/* ========================================
 *
 * Copyright Bryan Guner, 2016
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.

 * ========================================*/
* /
#include <project.h>
#define NVIC_CPUID_BASE (0xE000ED00)
    uint32_t read_nvic_cpuid_base(volatile uint32_t *reg_ptr, volatile uint32_t *implementer, volatile uint32_t *variant, volatile uint32_t *partno);

int main()
{
  volatile uint32_t *reg_ptr;
  volatile uint32_t reg_val;
  volatile uint32_t implementer;
  volatile uint32_t variant;
  volatile uint32_t partno;

  CyGlobalIntEnable; /* Enable global interrupts. */

  reg_ptr = (uint32_t *)NVIC_CPUID_BASE;
  reg_val = read_nvic_cpuid_base(reg_ptr, &implementer, &variant, &partno);

  for (;;)
  {
    /* Place your application code here. */
  }
}

/* [] END OF FILE */
