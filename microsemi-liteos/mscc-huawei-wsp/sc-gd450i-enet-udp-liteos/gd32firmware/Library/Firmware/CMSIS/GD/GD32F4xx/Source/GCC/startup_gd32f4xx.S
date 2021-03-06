    .syntax unified
    .cpu cortex-m4
    .thumb

/* #define  UNIT_TEST_FILL_MEMORY   only uncommented if carring out unit test */

/*==============================================================================
 * Vector table
 */
    .global     g_pfnVectors
    .section    .isr_vector,"ax",%progbits    /* added "x" so appears in .lst file even though not executable code- to help in debug process */
    .type       g_pfnVectors, %object
    .size       g_pfnVectors, .-g_pfnVectors

g_pfnVectors:
         .word     _estack
        .word     Reset_Handler
        .word     NMI_Handler
        .word     HardFault_Handler
        .word     MemManage_Handler
        .word     BusFault_Handler
        .word     UsageFault_Handler
        .word     0
        .word     0
        .word     0
        .word     0
        .word     SVC_Handler
        .word     DebugMon_Handler
        .word     0
        .word     PendSV_Handler
        .word     SysTick_Handler

               /* external interrupts handler */
        .word     WWDGT_IRQHandler
        .word     LVD_IRQHandler
        .word     TAMPER_STAMP_IRQHandler
        .word     RTC_WKUP_IRQHandler
        .word     FMC_IRQHandler
        .word     RCU_CTC_IRQHandler
        .word     EXTI0_IRQHandler
        .word     EXTI1_IRQHandler
        .word     EXTI2_IRQHandler
        .word     EXTI3_IRQHandler
        .word     EXTI4_IRQHandler
        .word     DMA0_Channel0_IRQHandler
        .word     DMA0_Channel1_IRQHandler
        .word     DMA0_Channel2_IRQHandler
        .word     DMA0_Channel3_IRQHandler
        .word     DMA0_Channel4_IRQHandler
        .word     DMA0_Channel5_IRQHandler
        .word     DMA0_Channel6_IRQHandler
        .word     ADC_IRQHandler
        .word     CAN0_TX_IRQHandler
        .word     CAN0_RX0_IRQHandler
        .word     CAN0_RX1_IRQHandler
        .word     CAN0_EWMC_IRQHandler
        .word     EXTI5_9_IRQHandler
        .word     TIMER0_BRK_TIMER8_IRQHandler
        .word     TIMER0_UP_TIMER9_IRQHandler
        .word     TIMER0_TRG_CMT_TIMER10_IRQHandler
        .word     TIMER0_CC_IRQHandler
        .word     TIMER1_IRQHandler
        .word     TIMER2_IRQHandler
        .word     TIMER3_IRQHandler
        .word     I2C0_EV_IRQHandler
        .word     I2C0_ER_IRQHandler
        .word     I2C1_EV_IRQHandler
        .word     I2C1_ER_IRQHandler
        .word     SPI0_IRQHandler
        .word     SPI1_IRQHandler
        .word     USART0_IRQHandler
        .word     USART1_IRQHandler
        .word     USART2_IRQHandler
        .word     EXTI10_15_IRQHandler
        .word     RTC_Alarm_IRQHandler
        .word     USBFS_WKUP_IRQHandler
        .word     TIMER7_BRK_TIMER11_IRQHandler
        .word     TIMER7_UP_TIMER12_IRQHandler
        .word     TIMER7_TRG_CMT_TIMER13_IRQHandler
        .word     TIMER7_CC_IRQHandler
        .word     DMA0_Channel7_IRQHandler
        .word     EXMC_IRQHandler
        .word     SDIO_IRQHandler
        .word     TIMER4_IRQHandler
        .word     SPI2_IRQHandler
        .word     UART3_IRQHandler
        .word     UART4_IRQHandler
        .word     TIMER5_DAC_IRQHandler
        .word     TIMER6_IRQHandler
        .word     DMA1_Channel0_IRQHandler
        .word     DMA1_Channel1_IRQHandler
        .word     DMA1_Channel2_IRQHandler
        .word     DMA1_Channel3_IRQHandler
        .word     DMA1_Channel4_IRQHandler
        .word     ENET_IRQHandler
        .word     ENET_WKUP_IRQHandler
        .word     CAN1_TX_IRQHandler
        .word     CAN1_RX0_IRQHandler
        .word     CAN1_RX1_IRQHandler
        .word     CAN1_EWMC_IRQHandler
        .word     USBFS_IRQHandler
        .word     DMA1_Channel5_IRQHandler
        .word     DMA1_Channel6_IRQHandler
        .word     DMA1_Channel7_IRQHandler
        .word     USART5_IRQHandler
        .word     I2C2_EV_IRQHandler
        .word     I2C2_ER_IRQHandler
        .word     USBHS_EP1_Out_IRQHandler
        .word     USBHS_EP1_In_IRQHandler
        .word     USBHS_WKUP_IRQHandler
        .word     USBHS_IRQHandler
        .word     DCI_IRQHandler
        .word     0
        .word     TRNG_IRQHandler
        .word     FPU_IRQHandler
        .word     UART6_IRQHandler
        .word     UART7_IRQHandler
        .word     SPI3_IRQHandler
        .word     SPI4_IRQHandler
        .word     SPI5_IRQHandler
        .word     TLI_IRQHandler
        .word     TLI_ER_IRQHandler
        .word     IPA_IRQHandler


/*==============================================================================
 * Reset_Handler
 */
    .global Reset_Handler
    .section    .boot_code,"ax",%progbits
    .type   Reset_Handler, %function
Reset_Handler:
                ldr   sp, =_estack       /* set stack pointer */
                LDR     R0, =SystemInit
                BLX     R0
                LDR     R0, =main
                BX      R0

/*==============================================================================
 * NMI_Handler
 */
    .weak   NMI_Handler
    .type   NMI_Handler, %function
NMI_Handler:
    B .

/*==============================================================================
 * HardFault_Handler
 */
    .weak   HardFault_Handler
    .type   HardFault_Handler, %function
HardFault_Handler:
    B .

/*==============================================================================
 * MemManage_Handler
 */
    .weak   MemManage_Handler
    .type   MemManage_Handler, %function
MemManage_Handler:
    B .

/*==============================================================================
 * BusFault_Handler
 */
    .weak   BusFault_Handler
    .type   BusFault_Handler, %function
BusFault_Handler:
    B .

/*==============================================================================
 * UsageFault_Handler
 */
    .weak   UsageFault_Handler
    .type   UsageFault_Handler, %function
UsageFault_Handler:
    B .

/*==============================================================================
 * SVC_Handler
 */
    .weak   SVC_Handler
    .type   SVC_Handler, %function
SVC_Handler:
    B .

/*==============================================================================
 * DebugMon_Handler
 */
    .weak   DebugMon_Handler
    .type   DebugMon_Handler, %function
DebugMon_Handler:
    B .

/*==============================================================================
 * PendSV_Handler
 */
    .weak   PendSV_Handler
    .type   PendSV_Handler, %function
PendSV_Handler:
    B .

/*==============================================================================
 * SysTick_Handler
 */
    .weak   SysTick_Handler
    .type   SysTick_Handler, %function
SysTick_Handler:
    B .

Default_Handler:
WWDGT_IRQHandler:
LVD_IRQHandler:
TAMPER_STAMP_IRQHandler:
RTC_WKUP_IRQHandler:
FMC_IRQHandler:
RCU_CTC_IRQHandler:
EXTI0_IRQHandler:
EXTI1_IRQHandler:
EXTI2_IRQHandler:
EXTI3_IRQHandler:
EXTI4_IRQHandler:
DMA0_Channel0_IRQHandler:
DMA0_Channel1_IRQHandler:
DMA0_Channel2_IRQHandler:
DMA0_Channel3_IRQHandler:
DMA0_Channel4_IRQHandler:
DMA0_Channel5_IRQHandler:
DMA0_Channel6_IRQHandler:
ADC_IRQHandler:
CAN0_TX_IRQHandler:
CAN0_RX0_IRQHandler:
CAN0_RX1_IRQHandler:
CAN0_EWMC_IRQHandler:
EXTI5_9_IRQHandler:
TIMER0_BRK_TIMER8_IRQHandler:
TIMER0_UP_TIMER9_IRQHandler:
TIMER0_TRG_CMT_TIMER10_IRQHandler:
TIMER0_CC_IRQHandler:
TIMER1_IRQHandler:
TIMER2_IRQHandler:
TIMER3_IRQHandler:
I2C0_EV_IRQHandler:
I2C0_ER_IRQHandler:
I2C1_EV_IRQHandler:
I2C1_ER_IRQHandler:
SPI0_IRQHandler:
SPI1_IRQHandler:
USART0_IRQHandler:
USART1_IRQHandler:
USART2_IRQHandler:
EXTI10_15_IRQHandler:
RTC_Alarm_IRQHandler:
USBFS_WKUP_IRQHandler:
TIMER7_BRK_TIMER11_IRQHandler:
TIMER7_UP_TIMER12_IRQHandler:
TIMER7_TRG_CMT_TIMER13_IRQHandler:
TIMER7_CC_IRQHandler:
DMA0_Channel7_IRQHandler:
EXMC_IRQHandler:
SDIO_IRQHandler:
TIMER4_IRQHandler:
SPI2_IRQHandler:
UART3_IRQHandler:
UART4_IRQHandler:
TIMER5_DAC_IRQHandler:
TIMER6_IRQHandler:
DMA1_Channel0_IRQHandler:
DMA1_Channel1_IRQHandler:
DMA1_Channel2_IRQHandler:
DMA1_Channel3_IRQHandler:
DMA1_Channel4_IRQHandler:
CAN1_TX_IRQHandler:
CAN1_RX0_IRQHandler:
CAN1_RX1_IRQHandler:
CAN1_EWMC_IRQHandler:
USBFS_IRQHandler:
DMA1_Channel5_IRQHandler:
DMA1_Channel6_IRQHandler:
DMA1_Channel7_IRQHandler:
USART5_IRQHandler:
I2C2_EV_IRQHandler:
I2C2_ER_IRQHandler:
USBHS_EP1_Out_IRQHandler:
USBHS_EP1_In_IRQHandler:
USBHS_WKUP_IRQHandler:
USBHS_IRQHandler:
DCI_IRQHandler:
TRNG_IRQHandler:
FPU_IRQHandler:
UART6_IRQHandler:
UART7_IRQHandler:
SPI3_IRQHandler:
SPI4_IRQHandler:
SPI5_IRQHandler:
TLI_IRQHandler:
TLI_ER_IRQHandler:
IPA_IRQHandler:
        B       .


/*==============================================================================
 * ENET_IRQHandler
 */
    .weak   ENET_IRQHandler
    .type   ENET_IRQHandler, %function
ENET_IRQHandler:
    B .
    

/*==============================================================================
 * ENET_WKUP_IRQHandler
 */
    .weak   ENET_WKUP_IRQHandler
    .type   ENET_WKUP_IRQHandler, %function
ENET_WKUP_IRQHandler:
    B .    
