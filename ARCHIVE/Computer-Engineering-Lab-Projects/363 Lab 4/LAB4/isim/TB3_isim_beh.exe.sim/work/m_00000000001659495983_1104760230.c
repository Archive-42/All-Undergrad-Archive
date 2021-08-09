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
static const char *ng0 = "//lions.tcnj.edu/Public/HomeST/quintor2/LAB 4/LAB4/MUX3.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};

static void NetReassign_33_1(char *);
static void NetReassign_37_2(char *);


static void Always_29_0(char *t0)
{
    char t6[8];
    char t22[8];
    char t36[8];
    char t52[8];
    char t60[8];
    char t92[8];
    char t107[8];
    char t123[8];
    char t137[8];
    char t153[8];
    char t161[8];
    char t193[8];
    char t201[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    int t84;
    int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    char *t99;
    char *t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    char *t106;
    char *t108;
    char *t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    char *t122;
    char *t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    char *t130;
    char *t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    char *t135;
    char *t136;
    char *t138;
    char *t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    char *t152;
    char *t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    char *t160;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    char *t165;
    char *t166;
    char *t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    char *t175;
    char *t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    int t185;
    int t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    unsigned int t192;
    char *t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    char *t200;
    unsigned int t202;
    unsigned int t203;
    unsigned int t204;
    char *t205;
    char *t206;
    char *t207;
    unsigned int t208;
    unsigned int t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    char *t215;
    char *t216;
    unsigned int t217;
    unsigned int t218;
    unsigned int t219;
    int t220;
    unsigned int t221;
    unsigned int t222;
    unsigned int t223;
    int t224;
    unsigned int t225;
    unsigned int t226;
    unsigned int t227;
    unsigned int t228;
    char *t229;
    unsigned int t230;
    unsigned int t231;
    unsigned int t232;
    unsigned int t233;
    unsigned int t234;
    char *t235;
    char *t236;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 3824);
    *((int *)t2) = 1;
    t3 = (t0 + 3040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);

LAB5:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    memset(t22, 0, 8);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t23) != 0)
        goto LAB12;

LAB13:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB14;

LAB15:    memcpy(t60, t22, 8);

LAB16:    memset(t92, 0, 8);
    t93 = (t60 + 4);
    t94 = *((unsigned int *)t93);
    t95 = (~(t94));
    t96 = *((unsigned int *)t60);
    t97 = (t96 & t95);
    t98 = (t97 & 1U);
    if (t98 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t93) != 0)
        goto LAB30;

LAB31:    t100 = (t92 + 4);
    t101 = *((unsigned int *)t92);
    t102 = (!(t101));
    t103 = *((unsigned int *)t100);
    t104 = (t102 || t103);
    if (t104 > 0)
        goto LAB32;

LAB33:    memcpy(t201, t92, 8);

LAB34:    t229 = (t201 + 4);
    t230 = *((unsigned int *)t229);
    t231 = (~(t230));
    t232 = *((unsigned int *)t201);
    t233 = (t232 & t231);
    t234 = (t233 != 0);
    if (t234 > 0)
        goto LAB64;

LAB65:    xsi_set_current_line(36, ng0);

LAB68:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2088);
    xsi_set_assignedflag(t2);
    t3 = (t0 + 5352);
    *((int *)t3) = 1;
    NetReassign_37_2(t0);

LAB66:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t22) = 1;
    goto LAB13;

LAB12:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB13;

LAB14:    t34 = (t0 + 1688U);
    t35 = *((char **)t34);
    t34 = ((char*)((ng1)));
    memset(t36, 0, 8);
    t37 = (t35 + 4);
    t38 = (t34 + 4);
    t39 = *((unsigned int *)t35);
    t40 = *((unsigned int *)t34);
    t41 = (t39 ^ t40);
    t42 = *((unsigned int *)t37);
    t43 = *((unsigned int *)t38);
    t44 = (t42 ^ t43);
    t45 = (t41 | t44);
    t46 = *((unsigned int *)t37);
    t47 = *((unsigned int *)t38);
    t48 = (t46 | t47);
    t49 = (~(t48));
    t50 = (t45 & t49);
    if (t50 != 0)
        goto LAB20;

LAB17:    if (t48 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t36) = 1;

LAB20:    memset(t52, 0, 8);
    t53 = (t36 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t36);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t53) != 0)
        goto LAB23;

LAB24:    t61 = *((unsigned int *)t22);
    t62 = *((unsigned int *)t52);
    t63 = (t61 & t62);
    *((unsigned int *)t60) = t63;
    t64 = (t22 + 4);
    t65 = (t52 + 4);
    t66 = (t60 + 4);
    t67 = *((unsigned int *)t64);
    t68 = *((unsigned int *)t65);
    t69 = (t67 | t68);
    *((unsigned int *)t66) = t69;
    t70 = *((unsigned int *)t66);
    t71 = (t70 != 0);
    if (t71 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB16;

LAB19:    t51 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t52) = 1;
    goto LAB24;

LAB23:    t59 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB24;

LAB25:    t72 = *((unsigned int *)t60);
    t73 = *((unsigned int *)t66);
    *((unsigned int *)t60) = (t72 | t73);
    t74 = (t22 + 4);
    t75 = (t52 + 4);
    t76 = *((unsigned int *)t22);
    t77 = (~(t76));
    t78 = *((unsigned int *)t74);
    t79 = (~(t78));
    t80 = *((unsigned int *)t52);
    t81 = (~(t80));
    t82 = *((unsigned int *)t75);
    t83 = (~(t82));
    t84 = (t77 & t79);
    t85 = (t81 & t83);
    t86 = (~(t84));
    t87 = (~(t85));
    t88 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t88 & t86);
    t89 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t89 & t87);
    t90 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t90 & t86);
    t91 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t91 & t87);
    goto LAB27;

LAB28:    *((unsigned int *)t92) = 1;
    goto LAB31;

LAB30:    t99 = (t92 + 4);
    *((unsigned int *)t92) = 1;
    *((unsigned int *)t99) = 1;
    goto LAB31;

LAB32:    t105 = (t0 + 1368U);
    t106 = *((char **)t105);
    t105 = ((char*)((ng1)));
    memset(t107, 0, 8);
    t108 = (t106 + 4);
    t109 = (t105 + 4);
    t110 = *((unsigned int *)t106);
    t111 = *((unsigned int *)t105);
    t112 = (t110 ^ t111);
    t113 = *((unsigned int *)t108);
    t114 = *((unsigned int *)t109);
    t115 = (t113 ^ t114);
    t116 = (t112 | t115);
    t117 = *((unsigned int *)t108);
    t118 = *((unsigned int *)t109);
    t119 = (t117 | t118);
    t120 = (~(t119));
    t121 = (t116 & t120);
    if (t121 != 0)
        goto LAB38;

LAB35:    if (t119 != 0)
        goto LAB37;

LAB36:    *((unsigned int *)t107) = 1;

LAB38:    memset(t123, 0, 8);
    t124 = (t107 + 4);
    t125 = *((unsigned int *)t124);
    t126 = (~(t125));
    t127 = *((unsigned int *)t107);
    t128 = (t127 & t126);
    t129 = (t128 & 1U);
    if (t129 != 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t124) != 0)
        goto LAB41;

LAB42:    t131 = (t123 + 4);
    t132 = *((unsigned int *)t123);
    t133 = *((unsigned int *)t131);
    t134 = (t132 || t133);
    if (t134 > 0)
        goto LAB43;

LAB44:    memcpy(t161, t123, 8);

LAB45:    memset(t193, 0, 8);
    t194 = (t161 + 4);
    t195 = *((unsigned int *)t194);
    t196 = (~(t195));
    t197 = *((unsigned int *)t161);
    t198 = (t197 & t196);
    t199 = (t198 & 1U);
    if (t199 != 0)
        goto LAB57;

LAB58:    if (*((unsigned int *)t194) != 0)
        goto LAB59;

LAB60:    t202 = *((unsigned int *)t92);
    t203 = *((unsigned int *)t193);
    t204 = (t202 | t203);
    *((unsigned int *)t201) = t204;
    t205 = (t92 + 4);
    t206 = (t193 + 4);
    t207 = (t201 + 4);
    t208 = *((unsigned int *)t205);
    t209 = *((unsigned int *)t206);
    t210 = (t208 | t209);
    *((unsigned int *)t207) = t210;
    t211 = *((unsigned int *)t207);
    t212 = (t211 != 0);
    if (t212 == 1)
        goto LAB61;

LAB62:
LAB63:    goto LAB34;

LAB37:    t122 = (t107 + 4);
    *((unsigned int *)t107) = 1;
    *((unsigned int *)t122) = 1;
    goto LAB38;

LAB39:    *((unsigned int *)t123) = 1;
    goto LAB42;

LAB41:    t130 = (t123 + 4);
    *((unsigned int *)t123) = 1;
    *((unsigned int *)t130) = 1;
    goto LAB42;

LAB43:    t135 = (t0 + 1688U);
    t136 = *((char **)t135);
    t135 = ((char*)((ng2)));
    memset(t137, 0, 8);
    t138 = (t136 + 4);
    t139 = (t135 + 4);
    t140 = *((unsigned int *)t136);
    t141 = *((unsigned int *)t135);
    t142 = (t140 ^ t141);
    t143 = *((unsigned int *)t138);
    t144 = *((unsigned int *)t139);
    t145 = (t143 ^ t144);
    t146 = (t142 | t145);
    t147 = *((unsigned int *)t138);
    t148 = *((unsigned int *)t139);
    t149 = (t147 | t148);
    t150 = (~(t149));
    t151 = (t146 & t150);
    if (t151 != 0)
        goto LAB49;

LAB46:    if (t149 != 0)
        goto LAB48;

LAB47:    *((unsigned int *)t137) = 1;

LAB49:    memset(t153, 0, 8);
    t154 = (t137 + 4);
    t155 = *((unsigned int *)t154);
    t156 = (~(t155));
    t157 = *((unsigned int *)t137);
    t158 = (t157 & t156);
    t159 = (t158 & 1U);
    if (t159 != 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t154) != 0)
        goto LAB52;

LAB53:    t162 = *((unsigned int *)t123);
    t163 = *((unsigned int *)t153);
    t164 = (t162 & t163);
    *((unsigned int *)t161) = t164;
    t165 = (t123 + 4);
    t166 = (t153 + 4);
    t167 = (t161 + 4);
    t168 = *((unsigned int *)t165);
    t169 = *((unsigned int *)t166);
    t170 = (t168 | t169);
    *((unsigned int *)t167) = t170;
    t171 = *((unsigned int *)t167);
    t172 = (t171 != 0);
    if (t172 == 1)
        goto LAB54;

LAB55:
LAB56:    goto LAB45;

LAB48:    t152 = (t137 + 4);
    *((unsigned int *)t137) = 1;
    *((unsigned int *)t152) = 1;
    goto LAB49;

LAB50:    *((unsigned int *)t153) = 1;
    goto LAB53;

LAB52:    t160 = (t153 + 4);
    *((unsigned int *)t153) = 1;
    *((unsigned int *)t160) = 1;
    goto LAB53;

LAB54:    t173 = *((unsigned int *)t161);
    t174 = *((unsigned int *)t167);
    *((unsigned int *)t161) = (t173 | t174);
    t175 = (t123 + 4);
    t176 = (t153 + 4);
    t177 = *((unsigned int *)t123);
    t178 = (~(t177));
    t179 = *((unsigned int *)t175);
    t180 = (~(t179));
    t181 = *((unsigned int *)t153);
    t182 = (~(t181));
    t183 = *((unsigned int *)t176);
    t184 = (~(t183));
    t185 = (t178 & t180);
    t186 = (t182 & t184);
    t187 = (~(t185));
    t188 = (~(t186));
    t189 = *((unsigned int *)t167);
    *((unsigned int *)t167) = (t189 & t187);
    t190 = *((unsigned int *)t167);
    *((unsigned int *)t167) = (t190 & t188);
    t191 = *((unsigned int *)t161);
    *((unsigned int *)t161) = (t191 & t187);
    t192 = *((unsigned int *)t161);
    *((unsigned int *)t161) = (t192 & t188);
    goto LAB56;

LAB57:    *((unsigned int *)t193) = 1;
    goto LAB60;

LAB59:    t200 = (t193 + 4);
    *((unsigned int *)t193) = 1;
    *((unsigned int *)t200) = 1;
    goto LAB60;

LAB61:    t213 = *((unsigned int *)t201);
    t214 = *((unsigned int *)t207);
    *((unsigned int *)t201) = (t213 | t214);
    t215 = (t92 + 4);
    t216 = (t193 + 4);
    t217 = *((unsigned int *)t215);
    t218 = (~(t217));
    t219 = *((unsigned int *)t92);
    t220 = (t219 & t218);
    t221 = *((unsigned int *)t216);
    t222 = (~(t221));
    t223 = *((unsigned int *)t193);
    t224 = (t223 & t222);
    t225 = (~(t220));
    t226 = (~(t224));
    t227 = *((unsigned int *)t207);
    *((unsigned int *)t207) = (t227 & t225);
    t228 = *((unsigned int *)t207);
    *((unsigned int *)t207) = (t228 & t226);
    goto LAB63;

LAB64:    xsi_set_current_line(32, ng0);

LAB67:    xsi_set_current_line(33, ng0);
    t235 = (t0 + 2088);
    xsi_set_assignedflag(t235);
    t236 = (t0 + 5348);
    *((int *)t236) = 1;
    NetReassign_33_1(t0);
    goto LAB66;

}

static void NetReassign_33_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t3 = 0;
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    t2 = (t0 + 5348);
    if (*((int *)t2) > 0)
        goto LAB4;

LAB5:    if (t3 > 0)
        goto LAB6;

LAB7:    t7 = (t0 + 3840);
    *((int *)t7) = 0;

LAB8:
LAB1:    return;
LAB4:    t5 = (t0 + 2088);
    xsi_vlogvar_assignassignvalue(t5, t4, 0, 0, 0, 64, ((int*)(t2)));
    t3 = 1;
    goto LAB5;

LAB6:    t6 = (t0 + 3840);
    *((int *)t6) = 1;
    goto LAB8;

}

static void NetReassign_37_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 3504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t3 = 0;
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 5352);
    if (*((int *)t2) > 0)
        goto LAB4;

LAB5:    if (t3 > 0)
        goto LAB6;

LAB7:    t7 = (t0 + 3856);
    *((int *)t7) = 0;

LAB8:
LAB1:    return;
LAB4:    t5 = (t0 + 2088);
    xsi_vlogvar_assignassignvalue(t5, t4, 0, 0, 0, 64, ((int*)(t2)));
    t3 = 1;
    goto LAB5;

LAB6:    t6 = (t0 + 3856);
    *((int *)t6) = 1;
    goto LAB8;

}


extern void work_m_00000000001659495983_1104760230_init()
{
	static char *pe[] = {(void *)Always_29_0,(void *)NetReassign_33_1,(void *)NetReassign_37_2};
	xsi_register_didat("work_m_00000000001659495983_1104760230", "isim/TB3_isim_beh.exe.sim/work/m_00000000001659495983_1104760230.didat");
	xsi_register_executes(pe);
}
