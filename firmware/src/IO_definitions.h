/* 
 * File:   IO_definitions.h
 * Author: UT
 *
 * Created on January 29, 2026, 2:36 PM
 */

#ifndef IO_DEFINITIONS_H
#define	IO_DEFINITIONS_H

#include "config/default/peripheral/gpio/plib_gpio.h"


#ifdef	__cplusplus
extern "C" {
#endif
//Brakes
#define   AZ_BRK_RELEASE        BRK_IMG |= 0x01; \
                                BRAKE1_Set();
#define   AZ_BRK_APPLY          BRK_IMG &= 0xFE; \
                                BRAKE1_Clear();
    
#define     LIFT_BRK_RELEASE    BRK_IMG |= 0x02; \
                                BRAKE2_Set();
#define     LIFT_BRK_APPLY      BRK_IMG &= 0xFD; \
                                BRAKE2_Clear();
    
#define     DOOR_BRK_RELEASE    BRK_IMG |= 0x04; \
                                BRAKE3_Set();
#define     DOOR_BRK_APPLY      BRK_IMG &= 0xFB; \
                                BRAKE3_Clear();
    
//INPUT definitions    
#define MANALOFT_EMG_MASK    0x0001
#define MANALOFT_EMG_STOP    (Combined_Inps & MANALOFT_EMG_MASK)

#define SCU_EMG_MASK    0x0002    
#define SCU_EMG_STOP    (Combined_Inps & SCU_EMG_MASK)    

#define UP_LIMIT_MASK   0x0004    
#define UP_LIMIT        (Combined_Inps & UP_LIMIT_MASK)    
    
#define DN_LIMIT_MASK   0x0008
#define DN_LIMIT        (Combined_Inps & DN_LIMIT_MASK)
    
#define COVER_OPN_LMT_MASK  0x0010
#define COVER_OPN_LIMIT  (Combined_Inps & COVER_OPN_LMT_MASK)
    
#define COVER_CLS_LMT_MASK  0x0020
#define COVER_CLS_LIMIT  (Combined_Inps & COVER_CLS_LMT_MASK)    

#define AZ_AMP_OP       0x0040
#define AZ_AMPL_OP      (Combined_Inps & AZ_AMP_OP)    
    
#define LIFT_AMPL_MASK    0x0080
#define LIFT_AMPL_OP    (Combined_Inps & LIFT_AMPL_MASK)
    
#define COVER_AMPL_MASK 0x0100    
#define COVER_AMPL_OP    (Combined_Inps & COVER_AMPL_MASK)        
    
#define PEN_EMG_MASK    0x0200    
#define PEN_EMG_STOP    (Combined_Inps & PEN_EMG_MASK)
    
#define COVER_OPN_PB_MASK  0x0400    
#define COVER_OPN_PB     (Combined_Inps & COVER_OPN_PB_MASK)
    
#define COVER_CLS_PB_MASK  0x0800
#define COVER_CLS_PB     (Combined_Inps & COVER_CLS_PB_MASK)    
    
#define UP_PB_MASK      0x1000
#define UP_PB           (Combined_Inps & UP_PB_MASK)  
    
#define DN_PB_MASK      0x2000    
#define DN_PB           (Combined_Inps & DN_PB_MASK)
    
#define PARK_PB_MASK    0x4000    
#define PARK_PB         (Combined_Inps & PARK_PB_MASK)
    
#define MAINTAIN_PB_MASK 0x8000    
#define MAINTAIN_PB     (Combined_Inps & MAINTAIN_PB_MASK)    
    

//On RL Lines
#define MODE_AUTO_MASK   0x10000     
#define MODE_SW_AUTO    (Combined_Inps & MODE_AUTO_MASK)
    
#define MODE_MAN_MASK   0x20000    
#define MODE_SW_MAN     (Combined_Inps & MODE_MAN_MASK)
    
#define MODE_MAINTAIN_MASK 0x40000
#define MODE_SW_MAINTAIN (Combined_Inps & MODE_MAINTAIN_MASK)
    
#define AZ_STOW_MASK    0x80000    
#define AZ_STOW_LOCK    (Combined_Inps & AZ_STOW_MASK)    
    
#define LIFT_STOW_MASK  0x100000
#define LIFT_STOW_LOCK  (Combined_Inps & LIFT_STOW_MASK)
    
#define MAINTAIN_LMT_MASK 0x200000
#define MAINTAIN_LIMIT  (Combined_Inps & MAINTAIN_LMT_MASK)

#define LVL_INTERLOCK_MASK 0x400000
#define LVL_INTERLOCK   (Combined_Inps & LVL_INTERLOCK_MASK)    

#define AZ_PROX_MASK    0x800000    
#define AZ_PROXIMITY_SW (Combined_Inps & AZ_PROX_MASK)        

//OUTPUT Definitions OP1..OP7
#define COVER_OPEN_LED_ON   (OUT_IMG | 0x01)
#define COVER_OPEN_LED_OFF  (OUT_IMG & 0xFE)    
#define COVER_CLOSE_LED_ON   (OUT_IMG | 0x02)
#define COVER_CLOSE_LED_OFF  (OUT_IMG & 0xFD)    
#define UP_LED_ON           (OUT_IMG | 0x04)
#define UP_LED_OFF         (OUT_IMG & 0xFB)    
#define DN_LED_ON           (OUT_IMG | 0x08)
#define DN_LED_OFF         (OUT_IMG & 0xF7)    
#define PARK_LED_ON        (OUT_IMG | 0x10)
#define PARK_LED_OFF       (OUT_IMG & 0xEF)
#define MAINTAIN_LED_ON    (OUT_IMG | 0x20)
#define MAINTAIN_LED_OFF   (OUT_IMG & 0xDF)
#define ERROR_LED_ON        (OUT_IMG | 0x40)
#define ERROR_LED_OFF       (OUT_IMG & 0xBF)
    
    
    
#ifdef	__cplusplus
}
#endif

#endif	/* IO_DEFINITIONS_H */

