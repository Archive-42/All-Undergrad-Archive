/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xa0883be4 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//lions.tcnj.edu/Public/HomeST/quintor2/LAB 4/LAB4/signextend.v";
static int ng1[] = {31, 0};
static int ng2[] = {0, 0};
static int ng3[] = {32, 0};
static int ng4[] = {63, 0};



static void Always_25_0(char *t0)
{
    char t4[8];
    char t15[8];
    char t16[8];
    char t17[8];
    char t40[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    int t25;
    char *t26;
    unsigned int t27;
    int t28;
    int t29;
    char *t30;
    unsigned int t31;
    int t32;
    int t33;
    unsigned int t34;
    int t35;
    unsigned int t36;
    unsigned int t37;
    int t38;
    int t39;

LAB0:    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 2688);
    *((int *)t2) = 1;
    t3 = (t0 + 2400);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(26, ng0);

LAB5:    xsi_set_current_line(27, ng0);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 4294967295U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 4294967295U);
    t14 = (t0 + 1448);
    t18 = (t0 + 1448);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = ((char*)((ng1)));
    t22 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t15, t16, t17, ((int*)(t20)), 2, t21, 32, 1, t22, 32, 1);
    t23 = (t15 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (!(t24));
    t26 = (t16 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (!(t27));
    t29 = (t25 && t28);
    t30 = (t17 + 4);
    t31 = *((unsigned int *)t30);
    t32 = (!(t31));
    t33 = (t29 && t32);
    if (t33 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(28, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1048U);
    t5 = *((char **)t3);
    memset(t15, 0, 8);
    t3 = (t15 + 4);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 31);
    t10 = (t9 & 1);
    *((unsigned int *)t15) = t10;
    t11 = *((unsigned int *)t6);
    t12 = (t11 >> 31);
    t13 = (t12 & 1);
    *((unsigned int *)t3) = t13;
    xsi_vlog_mul_concat(t4, 32, 1, t2, 1U, t15, 1);
    t7 = (t0 + 1448);
    t14 = (t0 + 1448);
    t18 = (t14 + 72U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng4)));
    t21 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t16, t17, t40, ((int*)(t19)), 2, t20, 32, 1, t21, 32, 1);
    t22 = (t16 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (!(t24));
    t23 = (t17 + 4);
    t27 = *((unsigned int *)t23);
    t28 = (!(t27));
    t29 = (t25 && t28);
    t26 = (t40 + 4);
    t31 = *((unsigned int *)t26);
    t32 = (!(t31));
    t33 = (t29 && t32);
    if (t33 == 1)
        goto LAB8;

LAB9:    goto LAB2;

LAB6:    t34 = *((unsigned int *)t17);
    t35 = (t34 + 0);
    t36 = *((unsigned int *)t15);
    t37 = *((unsigned int *)t16);
    t38 = (t36 - t37);
    t39 = (t38 + 1);
    xsi_vlogvar_assign_value(t14, t4, t35, *((unsigned int *)t16), t39);
    goto LAB7;

LAB8:    t34 = *((unsigned int *)t40);
    t35 = (t34 + 0);
    t36 = *((unsigned int *)t16);
    t37 = *((unsigned int *)t17);
    t38 = (t36 - t37);
    t39 = (t38 + 1);
    xsi_vlogvar_assign_value(t7, t4, t35, *((unsigned int *)t17), t39);
    goto LAB9;

}


extern void work_m_00000000001167090789_1900080952_init()
{
	static char *pe[] = {(void *)Always_25_0};
	xsi_register_didat("work_m_00000000001167090789_1900080952", "isim/TB3_isim_beh.exe.sim/work/m_00000000001167090789_1900080952.didat");
	xsi_register_executes(pe);
}
