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
static const char *ng0 = "%d - %d";
static const char *ng1 = "//lions.tcnj.edu/Public/HomeST/quintor2/LAB 4/LAB4/Main.v";
static int ng2[] = {4, 0, 0, 0};
static int ng3[] = {0, 0, 0, 0};
static int ng5[] = {0, 0};

void Monitor_62_2(char *);
static void NetReassign_52_3(char *);
static void NetReassign_53_4(char *);
void Monitor_62_2(char *);


static void Monitor_62_2_Func(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 5928);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t0 + 5768);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    xsi_vlogfile_write(1, 0, 3, ng0, 3, t0, (char)118, t3, 64, (char)118, t6, 64);

LAB1:    return;
}

static void Initial_51_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(51, ng1);

LAB2:    xsi_set_current_line(52, ng1);
    t1 = (t0 + 5928);
    xsi_set_assignedflag(t1);
    t2 = (t0 + 12100);
    *((int *)t2) = 1;
    NetReassign_52_3(t0);
    xsi_set_current_line(53, ng1);
    t1 = (t0 + 5768);
    xsi_set_assignedflag(t1);
    t2 = (t0 + 12104);
    *((int *)t2) = 1;
    NetReassign_53_4(t0);

LAB1:    return;
}

static void Always_61_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 7256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng1);
    t2 = (t0 + 8568);
    *((int *)t2) = 1;
    t3 = (t0 + 7288);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(61, ng1);

LAB5:    xsi_set_current_line(62, ng1);
    Monitor_62_2(t0);
    xsi_set_current_line(63, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 6088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    goto LAB2;

}

static void NetReassign_52_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 7504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng1);
    t3 = 0;
    t2 = ((char*)((ng3)));
    t4 = (t0 + 12100);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 5928);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 64, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_53_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 7752U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng1);
    t3 = 0;
    t2 = ((char*)((ng3)));
    t4 = (t0 + 12104);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 5768);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 64, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

void Monitor_62_2(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 7808);
    t2 = (t0 + 8584);
    xsi_vlogfile_monitor((void *)Monitor_62_2_Func, t1, t2);

LAB1:    return;
}

static void implSig1_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 8248U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng5)));
    t3 = (t0 + 8664);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8);
    xsi_driver_vfirst_trans(t3, 0, 31);

LAB1:    return;
}


extern void work_m_00000000002532918424_2973510161_init()
{
	static char *pe[] = {(void *)Initial_51_0,(void *)Always_61_1,(void *)NetReassign_52_3,(void *)NetReassign_53_4,(void *)Monitor_62_2,(void *)implSig1_execute};
	xsi_register_didat("work_m_00000000002532918424_2973510161", "isim/TB3_isim_beh.exe.sim/work/m_00000000002532918424_2973510161.didat");
	xsi_register_executes(pe);
}
