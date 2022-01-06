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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000000993332644_1030325945_init();
    work_m_00000000000883363155_1657239000_init();
    work_m_00000000002336792015_3159811912_init();
    work_m_00000000003660371617_2492333471_init();
    work_m_00000000001550130788_2555212643_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001550130788_2555212643");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
