#include "los_bsp_key.h"

#ifdef GD32F4XX
//#include "gd32f4xx.h"
#include "gd32f450i_eval.h"
#endif

void LOS_EvbKeyInit(void)
{
#ifdef GD32F4XX	
	/* configure User key */
  gd_eval_key_init(KEY_TAMPER, KEY_MODE_EXTI);  
	
	gd_eval_led_init(LED2);
#endif

	return ;
}

#ifdef GD32F4XX
/*!
    \brief      this function handles external lines 10 to 15 interrupt request
    \param[in]  none
    \param[out] none
    \retval     none
*/
#if 0
void EXTI10_15_IRQHandler(void)
{
    if(RESET != exti_interrupt_flag_get(EXTI_13)){
        gd_eval_led_toggle(LED2);
    }
    exti_interrupt_flag_clear(EXTI_13);
}
#endif
#endif


