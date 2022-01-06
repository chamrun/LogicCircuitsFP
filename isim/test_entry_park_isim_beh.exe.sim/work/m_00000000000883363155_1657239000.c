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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif



static void Gate_26_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 1848U);
    t4 = *((char **)t2);
    t2 = (t0 + 2008U);
    t5 = *((char **)t2);
    t2 = (t0 + 2168U);
    t6 = *((char **)t2);
    t2 = (t0 + 4736);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    xsi_vlog_OrGate(t10, 4, t3, t4, t5, t6);
    t11 = (t0 + 4736);
    xsi_driver_vfirst_trans(t11, 0, 0);
    t12 = (t0 + 4624);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Gate_27_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 4056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    t2 = (t0 + 2008U);
    t5 = *((char **)t2);
    t2 = (t0 + 2168U);
    t6 = *((char **)t2);
    t2 = (t0 + 4800);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    xsi_vlog_OrGate(t10, 4, t3, t4, t5, t6);
    t11 = (t0 + 4800);
    xsi_driver_vfirst_trans(t11, 0, 0);
    t12 = (t0 + 4640);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Gate_28_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 4304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    t2 = (t0 + 1848U);
    t5 = *((char **)t2);
    t2 = (t0 + 2168U);
    t6 = *((char **)t2);
    t2 = (t0 + 4864);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    xsi_vlog_OrGate(t10, 4, t3, t4, t5, t6);
    t11 = (t0 + 4864);
    xsi_driver_vfirst_trans(t11, 0, 0);
    t12 = (t0 + 4656);
    *((int *)t12) = 1;

LAB1:    return;
}


extern void work_m_00000000000883363155_1657239000_init()
{
	static char *pe[] = {(void *)Gate_26_0,(void *)Gate_27_1,(void *)Gate_28_2};
	xsi_register_didat("work_m_00000000000883363155_1657239000", "isim/test_entry_park_isim_beh.exe.sim/work/m_00000000000883363155_1657239000.didat");
	xsi_register_executes(pe);
}
