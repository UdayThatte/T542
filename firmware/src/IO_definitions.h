/* 
 * File:   IO_definitions.h
 * Author: UT
 *
 * Created on January 29, 2026, 2:36 PM
 */

#ifndef IO_DEFINITIONS_H
#define	IO_DEFINITIONS_H

#ifdef	__cplusplus
extern "C" {
#endif

    
//INPUT definitions    
#define EXT_EMG_STOP    (INP_IMG & 0x0001)
#define SCU_EMG_STOP    (INP_IMG & 0x0002)    
#define UP_LIMIT        (INP_IMG & 0x0004)    
#define DN_LIMIT        (INP_IMG & 0x0008)
#define COVER_OPN_LIMIT  (INP_IMG & 0x0010)
#define COVER_CLS_LIMIT  (INP_IMG & 0x0020)    
#define AZ_AMPL_OP      (INP_IMG & 0x0040)    
#define LIFT_AMPL_OP    (INP_IMG & 0x0080)
#define COVER_AMPL_OP    (INP_IMG & 0x0100)        
#define PEN_EMG_STOP    (INP_IMG & 0x0200)
#define COVER_OPN_PB     (INP_IMG & 0x0400)
#define COVER_CLS_PB     (INP_IMG & 0x0800)    
#define UP_PB           (INP_IMG & 0x1000)  
#define DN_PB           (INP_IMG & 0x2000)
#define PARK_PB         (INP_IMG & 0x4000)
#define MAINTAIN_PB     (INP_IMG & 0x8000)    
//On RL Lines
#define MODE_SW_AUTO    (INP_IMG1 & 0x01)
#define MODE_SW_MAN     (INP_IMG1 & 0x02)
#define MODE_SW_MAINTAIN (INP_IMG1 & 0x04)
#define AZ_STOW_LOCK    (INP_IMG1 & 0x08)    
#define LIFT_STOW_LOCK  (INP_IMG1 & 0x10)
#define MAINTAIN_LIMIT  (INP_IMG1 & 0x20)
#define LVL_INTERLOCK   (INP_IMG1 & 0x40)    
#define AZ_PROXIMITY_SW (INP_IMG1 & 0x80)        

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

