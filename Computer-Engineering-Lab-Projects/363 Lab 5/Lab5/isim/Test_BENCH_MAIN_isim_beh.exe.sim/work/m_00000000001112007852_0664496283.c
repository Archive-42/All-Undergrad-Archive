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
static const char *ng0 = "//lions.tcnj.edu/Public/HomeST/quintor2/363 Lab 5/Lab5/MAIN.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};

static void NetReassign_63_1(char *);
static void NetReassign_64_2(char *);
static void NetReassign_65_3(char *);
static void NetReassign_66_4(char *);
static void NetReassign_67_5(char *);
static void NetReassign_68_6(char *);


static void Initial_61_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(61, ng0);

LAB2:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 7688);
    xsi_set_assignedflag(t1);
    t2 = (t0 + 14192);
    *((int *)t2) = 1;
    NetReassign_63_1(t0);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 7528);
    xsi_set_assignedflag(t1);
    t2 = (t0 + 14196);
    *((int *)t2) = 1;
    NetReassign_64_2(t0);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 8008);
    xsi_set_assignedflag(t1);
    t2 = (t0 + 14200);
    *((int *)t2) = 1;
    NetReassign_65_3(t0);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 8168);
    xsi_set_assignedflag(t1);
    t2 = (t0 + 14204);
    *((int *)t2) = 1;
    NetReassign_66_4(t0);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 7848);
    xsi_set_assignedflag(t1);
    t2 = (t0 + 14208);
    *((int *)t2) = 1;
    NetReassign_67_5(t0);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 8008);
    xsi_set_assignedflag(t1);
    t2 = (t0 + 14212);
    *((int *)t2) = 1;
    NetReassign_68_6(t0);

LAB1:    return;
}

static void NetReassign_63_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 9336U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(63, ng0);
    t3 = 0;
    t2 = ((char*)((ng1)));
    t4 = (t0 + 14192);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 7688);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 12, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_64_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 9584U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t3 = 0;
    t2 = ((char*)((ng1)));
    t4 = (t0 + 14196);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 7528);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 16, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_65_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 9832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t3 = 0;
    t2 = ((char*)((ng2)));
    t4 = (t0 + 14200);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 8008);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_66_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 10080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t3 = 0;
    t2 = ((char*)((ng2)));
    t4 = (t0 + 14204);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 8168);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_67_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 10328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t3 = 0;
    t2 = ((char*)((ng2)));
    t4 = (t0 + 14208);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 7848);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 12, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}

static void NetReassign_68_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 10576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(68, ng0);
    t3 = 0;
    t2 = ((char*)((ng2)));
    t4 = (t0 + 14212);
    if (*((int *)t4) > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    t5 = (t0 + 8008);
    xsi_vlogvar_assignassignvalue(t5, t2, 0, 0, 0, 1, ((int*)(t4)));
    t3 = 1;
    goto LAB5;

}


extern void work_m_00000000001112007852_0664496283_init()
{
	static char *pe[] = {(void *)Initial_61_0,(void *)NetReassign_63_1,(void *)NetReassign_64_2,(void *)NetReassign_65_3,(void *)NetReassign_66_4,(void *)NetReassign_67_5,(void *)NetReassign_68_6};
	xsi_register_didat("work_m_00000000001112007852_0664496283", "isim/Test_BENCH_MAIN_isim_beh.exe.sim/work/m_00000000001112007852_0664496283.didat");
	xsi_register_executes(pe);
}
