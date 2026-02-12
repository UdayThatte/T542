/* 
 * File:   App_Protocol.h
 * Author: UT
 *
 * Created on January 29, 2026, 4:54 PM
 */

#ifndef APP_PROTOCOL_H
#define	APP_PROTOCOL_H

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <strings.h>
#include "definitions.h"                // SYS function prototypes

#ifdef	__cplusplus
extern "C" {
#endif
    
//Bit definitions for FC Byte in feedback response 
//for FC_byte_in_feedback
#define CMD_CHKSMOK_MASK 0x01 //1 chksm OK
#define CMD_RCVD_MASK  0x02 //1 valid cmd rcvd
#define Readiness_MASK 0x04 //
#define Man_Aloft_Sw_MASK    0x08
#define SCU_EMG_STOP_MASK 0x10 //bit 4
#define PNDNT_EMG_STOP_MASK 0x20 //bit 5
    
#define Fb_MODE_AUTO_MASK 0xC0  // bit 7,6
#define Fb_MODE_MANUAL_MASK 0x80 //
#define Fb_MODE_MAINTAIN_MASK 0x40 //    
#define Fb_MODE_ERROR_MASK 0x00 //        
//    
//Bit definitions for StatusByte1 in Feedback string
#define AZ_ENCODER_OK   0x01
#define AZ_AMPL_OK      0x02
#define COVER_AMPL_OK   0x04    
#define LIFT_AMPL_OK    0x08
#define AZ_STOW_OK      0x10
#define LIFT_STOW_OK    0x20    
#define IN_MAINTAIN_MODE 0x40
#define LVL_INTERLOCK_OK 0x80   
//Bit definitions for StatusByte1 in Feedback string
#define DOOR_STAT_MASK 0x0f    
#define DOOR_OPN_FLG   0x01
#define DOOR_CLS_FLG   0x02
#define DOOR_OPENING_FLG 0x04
#define DOOR_CLOSING_FLG 0x08
    
#define ANTENNA_STAT_MASK 0xf0    
#define ANTENNA_UP_FLG   0x10
#define ANTENNA_DN_FLG   0x20    
#define ANTENNA_LIFTING_FLG  0x40    
#define ANTENNA_RETRACTING_FLG  0x80        
    
    
//prepare 10 bytes string for this particular aplication
void Prepare_fb_string();


#ifdef	__cplusplus
}
#endif

#endif	/* APP_PROTOCOL_H */

