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
static const char *ng0 = "//lions.tcnj.edu/Public/HomeST/quintor2/363/Lab2/Lab2/S4_TEST.v";
static int ng1[] = {0, 0, 0, 0};
static int ng2[] = {0, 0};
static int ng3[] = {2048, 0};
static int ng4[] = {1, 0};



static void Initial_43_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(43, ng0);

LAB2:    xsi_set_current_line(45, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1608);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 64);
    xsi_set_current_line(46, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1768);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 64);

LAB1:    return;
}

static void Always_49_1(char *t0)
{
    char t6[8];
    char t17[32];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t29;
    char *t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t36;
    char *t37;
    unsigned int t38;
    char *t39;
    unsigned int t40;
    char *t41;
    unsigned int t42;
    char *t43;
    char *t44;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3416);
    *((int *)t2) = 1;
    t3 = (t0 + 3128);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(50, ng0);

LAB5:    xsi_set_current_line(51, ng0);
    xsi_set_current_line(51, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);

LAB6:    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB7;

LAB8:    goto LAB2;

LAB7:    xsi_set_current_line(52, ng0);
    t13 = (t0 + 2904);
    xsi_process_wait(t13, 1000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(52, ng0);
    t14 = (t0 + 1928);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t17, t16, 8);
    t18 = (t17 + 8);
    memset(t18, 0, 24);
    t21 = *((unsigned int *)t16);
    t22 = (t21 & 2147483648U);
    t19 = t22;
    t23 = (t16 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (t24 & 2147483648U);
    t20 = t25;
    t26 = (t22 != 0);
    if (t26 == 1)
        goto LAB10;

LAB11:    t34 = (t25 != 0);
    if (t34 == 1)
        goto LAB12;

LAB13:    t43 = (t0 + 1768);
    xsi_vlogvar_assign_value(t43, t17, 0, 0, 64);
    t44 = (t0 + 1608);
    xsi_vlogvar_assign_value(t44, t17, 64, 0, 64);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1928);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB6;

LAB10:    t27 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t27 | 0U);
    t28 = (t17 + 8);
    t29 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t29 | 4294967295U);
    t30 = (t17 + 16);
    t31 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t31 | 4294967295U);
    t32 = (t17 + 24);
    t33 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t33 | 4294967295U);
    goto LAB11;

LAB12:    t35 = (t17 + 4);
    t36 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t36 | 0U);
    t37 = (t17 + 12);
    t38 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t38 | 4294967295U);
    t39 = (t17 + 20);
    t40 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t40 | 4294967295U);
    t41 = (t17 + 28);
    t42 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t42 | 4294967295U);
    goto LAB13;

}


extern void work_m_00000000003209786516_1033673889_init()
{
	static char *pe[] = {(void *)Initial_43_0,(void *)Always_49_1};
	xsi_register_didat("work_m_00000000003209786516_1033673889", "isim/S4_TEST_isim_beh.exe.sim/work/m_00000000003209786516_1033673889.didat");
	xsi_register_executes(pe);
}
