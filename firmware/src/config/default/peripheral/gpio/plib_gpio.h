/*******************************************************************************
  GPIO PLIB

  Company:
    Microchip Technology Inc.

  File Name:
    plib_gpio.h

  Summary:
    GPIO PLIB Header File

  Description:
    This library provides an interface to control and interact with Parallel
    Input/Output controller (GPIO) module.

*******************************************************************************/

/*******************************************************************************
* Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/

#ifndef PLIB_GPIO_H
#define PLIB_GPIO_H

#include <device.h>
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Data types and constants
// *****************************************************************************
// *****************************************************************************


/*** Macros for OUT7 pin ***/
#define OUT7_Set()               (LATGSET = (1<<15))
#define OUT7_Clear()             (LATGCLR = (1<<15))
#define OUT7_Toggle()            (LATGINV= (1<<15))
#define OUT7_OutputEnable()      (TRISGCLR = (1<<15))
#define OUT7_InputEnable()       (TRISGSET = (1<<15))
#define OUT7_Get()               ((PORTG >> 15) & 0x1)
#define OUT7_PIN                  GPIO_PIN_RG15

/*** Macros for SSI_CLK0 pin ***/
#define SSI_CLK0_Set()               (LATESET = (1<<5))
#define SSI_CLK0_Clear()             (LATECLR = (1<<5))
#define SSI_CLK0_Toggle()            (LATEINV= (1<<5))
#define SSI_CLK0_OutputEnable()      (TRISECLR = (1<<5))
#define SSI_CLK0_InputEnable()       (TRISESET = (1<<5))
#define SSI_CLK0_Get()               ((PORTE >> 5) & 0x1)
#define SSI_CLK0_PIN                  GPIO_PIN_RE5

/*** Macros for SSI_DAT0 pin ***/
#define SSI_DAT0_Set()               (LATESET = (1<<6))
#define SSI_DAT0_Clear()             (LATECLR = (1<<6))
#define SSI_DAT0_Toggle()            (LATEINV= (1<<6))
#define SSI_DAT0_OutputEnable()      (TRISECLR = (1<<6))
#define SSI_DAT0_InputEnable()       (TRISESET = (1<<6))
#define SSI_DAT0_Get()               ((PORTE >> 6) & 0x1)
#define SSI_DAT0_PIN                  GPIO_PIN_RE6

/*** Macros for RST_ETH pin ***/
#define RST_ETH_Set()               (LATESET = (1<<7))
#define RST_ETH_Clear()             (LATECLR = (1<<7))
#define RST_ETH_Toggle()            (LATEINV= (1<<7))
#define RST_ETH_OutputEnable()      (TRISECLR = (1<<7))
#define RST_ETH_InputEnable()       (TRISESET = (1<<7))
#define RST_ETH_Get()               ((PORTE >> 7) & 0x1)
#define RST_ETH_PIN                  GPIO_PIN_RE7

/*** Macros for BRAKE1 pin ***/
#define BRAKE1_Set()               (LATCSET = (1<<1))
#define BRAKE1_Clear()             (LATCCLR = (1<<1))
#define BRAKE1_Toggle()            (LATCINV= (1<<1))
#define BRAKE1_OutputEnable()      (TRISCCLR = (1<<1))
#define BRAKE1_InputEnable()       (TRISCSET = (1<<1))
#define BRAKE1_Get()               ((PORTC >> 1) & 0x1)
#define BRAKE1_PIN                  GPIO_PIN_RC1

/*** Macros for BRAKE2 pin ***/
#define BRAKE2_Set()               (LATCSET = (1<<2))
#define BRAKE2_Clear()             (LATCCLR = (1<<2))
#define BRAKE2_Toggle()            (LATCINV= (1<<2))
#define BRAKE2_OutputEnable()      (TRISCCLR = (1<<2))
#define BRAKE2_InputEnable()       (TRISCSET = (1<<2))
#define BRAKE2_Get()               ((PORTC >> 2) & 0x1)
#define BRAKE2_PIN                  GPIO_PIN_RC2

/*** Macros for BRAKE3 pin ***/
#define BRAKE3_Set()               (LATCSET = (1<<3))
#define BRAKE3_Clear()             (LATCCLR = (1<<3))
#define BRAKE3_Toggle()            (LATCINV= (1<<3))
#define BRAKE3_OutputEnable()      (TRISCCLR = (1<<3))
#define BRAKE3_InputEnable()       (TRISCSET = (1<<3))
#define BRAKE3_Get()               ((PORTC >> 3) & 0x1)
#define BRAKE3_PIN                  GPIO_PIN_RC3

/*** Macros for SPI1_IN pin ***/
#define SPI1_IN_Get()               ((PORTC >> 4) & 0x1)
#define SPI1_IN_PIN                  GPIO_PIN_RC4

/*** Macros for U6TX pin ***/
#define U6TX_Get()               ((PORTG >> 6) & 0x1)
#define U6TX_PIN                  GPIO_PIN_RG6

/*** Macros for U3RX pin ***/
#define U3RX_Get()               ((PORTG >> 7) & 0x1)
#define U3RX_PIN                  GPIO_PIN_RG7

/*** Macros for U3TX pin ***/
#define U3TX_Get()               ((PORTG >> 8) & 0x1)
#define U3TX_PIN                  GPIO_PIN_RG8

/*** Macros for U6RX pin ***/
#define U6RX_Get()               ((PORTG >> 9) & 0x1)
#define U6RX_PIN                  GPIO_PIN_RG9

/*** Macros for BUZZER pin ***/
#define BUZZER_Set()               (LATASET = (1<<0))
#define BUZZER_Clear()             (LATACLR = (1<<0))
#define BUZZER_Toggle()            (LATAINV= (1<<0))
#define BUZZER_OutputEnable()      (TRISACLR = (1<<0))
#define BUZZER_InputEnable()       (TRISASET = (1<<0))
#define BUZZER_Get()               ((PORTA >> 0) & 0x1)
#define BUZZER_PIN                  GPIO_PIN_RA0

/*** Macros for INTR1 pin ***/
#define INTR1_Set()               (LATESET = (1<<8))
#define INTR1_Clear()             (LATECLR = (1<<8))
#define INTR1_Toggle()            (LATEINV= (1<<8))
#define INTR1_OutputEnable()      (TRISECLR = (1<<8))
#define INTR1_InputEnable()       (TRISESET = (1<<8))
#define INTR1_Get()               ((PORTE >> 8) & 0x1)
#define INTR1_PIN                  GPIO_PIN_RE8

/*** Macros for SSI_DAT1 pin ***/
#define SSI_DAT1_Set()               (LATESET = (1<<9))
#define SSI_DAT1_Clear()             (LATECLR = (1<<9))
#define SSI_DAT1_Toggle()            (LATEINV= (1<<9))
#define SSI_DAT1_OutputEnable()      (TRISECLR = (1<<9))
#define SSI_DAT1_InputEnable()       (TRISESET = (1<<9))
#define SSI_DAT1_Get()               ((PORTE >> 9) & 0x1)
#define SSI_DAT1_PIN                  GPIO_PIN_RE9

/*** Macros for SSI_CLK1 pin ***/
#define SSI_CLK1_Set()               (LATBSET = (1<<5))
#define SSI_CLK1_Clear()             (LATBCLR = (1<<5))
#define SSI_CLK1_Toggle()            (LATBINV= (1<<5))
#define SSI_CLK1_OutputEnable()      (TRISBCLR = (1<<5))
#define SSI_CLK1_InputEnable()       (TRISBSET = (1<<5))
#define SSI_CLK1_Get()               ((PORTB >> 5) & 0x1)
#define SSI_CLK1_PIN                  GPIO_PIN_RB5

/*** Macros for LED_STATUS pin ***/
#define LED_STATUS_Set()               (LATBSET = (1<<4))
#define LED_STATUS_Clear()             (LATBCLR = (1<<4))
#define LED_STATUS_Toggle()            (LATBINV= (1<<4))
#define LED_STATUS_OutputEnable()      (TRISBCLR = (1<<4))
#define LED_STATUS_InputEnable()       (TRISBSET = (1<<4))
#define LED_STATUS_Get()               ((PORTB >> 4) & 0x1)
#define LED_STATUS_PIN                  GPIO_PIN_RB4

/*** Macros for SPR2_AN3 pin ***/
#define SPR2_AN3_Get()               ((PORTB >> 3) & 0x1)
#define SPR2_AN3_PIN                  GPIO_PIN_RB3

/*** Macros for SPR1_AN2 pin ***/
#define SPR1_AN2_Get()               ((PORTB >> 2) & 0x1)
#define SPR1_AN2_PIN                  GPIO_PIN_RB2

/*** Macros for SCAN5 pin ***/
#define SCAN5_Set()               (LATBSET = (1<<6))
#define SCAN5_Clear()             (LATBCLR = (1<<6))
#define SCAN5_Toggle()            (LATBINV= (1<<6))
#define SCAN5_OutputEnable()      (TRISBCLR = (1<<6))
#define SCAN5_InputEnable()       (TRISBSET = (1<<6))
#define SCAN5_Get()               ((PORTB >> 6) & 0x1)
#define SCAN5_PIN                  GPIO_PIN_RB6

/*** Macros for SPR6 pin ***/
#define SPR6_Set()               (LATBSET = (1<<7))
#define SPR6_Clear()             (LATBCLR = (1<<7))
#define SPR6_Toggle()            (LATBINV= (1<<7))
#define SPR6_OutputEnable()      (TRISBCLR = (1<<7))
#define SPR6_InputEnable()       (TRISBSET = (1<<7))
#define SPR6_Get()               ((PORTB >> 7) & 0x1)
#define SPR6_PIN                  GPIO_PIN_RB7

/*** Macros for R_W pin ***/
#define R_W_Set()               (LATBSET = (1<<8))
#define R_W_Clear()             (LATBCLR = (1<<8))
#define R_W_Toggle()            (LATBINV= (1<<8))
#define R_W_OutputEnable()      (TRISBCLR = (1<<8))
#define R_W_InputEnable()       (TRISBSET = (1<<8))
#define R_W_Get()               ((PORTB >> 8) & 0x1)
#define R_W_PIN                  GPIO_PIN_RB8

/*** Macros for EN_DIS1 pin ***/
#define EN_DIS1_Set()               (LATBSET = (1<<9))
#define EN_DIS1_Clear()             (LATBCLR = (1<<9))
#define EN_DIS1_Toggle()            (LATBINV= (1<<9))
#define EN_DIS1_OutputEnable()      (TRISBCLR = (1<<9))
#define EN_DIS1_InputEnable()       (TRISBSET = (1<<9))
#define EN_DIS1_Get()               ((PORTB >> 9) & 0x1)
#define EN_DIS1_PIN                  GPIO_PIN_RB9

/*** Macros for EN_DIS_BUF pin ***/
#define EN_DIS_BUF_Set()               (LATBSET = (1<<10))
#define EN_DIS_BUF_Clear()             (LATBCLR = (1<<10))
#define EN_DIS_BUF_Toggle()            (LATBINV= (1<<10))
#define EN_DIS_BUF_OutputEnable()      (TRISBCLR = (1<<10))
#define EN_DIS_BUF_InputEnable()       (TRISBSET = (1<<10))
#define EN_DIS_BUF_Get()               ((PORTB >> 10) & 0x1)
#define EN_DIS_BUF_PIN                  GPIO_PIN_RB10

/*** Macros for EN_RL_BUF pin ***/
#define EN_RL_BUF_Set()               (LATBSET = (1<<11))
#define EN_RL_BUF_Clear()             (LATBCLR = (1<<11))
#define EN_RL_BUF_Toggle()            (LATBINV= (1<<11))
#define EN_RL_BUF_OutputEnable()      (TRISBCLR = (1<<11))
#define EN_RL_BUF_InputEnable()       (TRISBSET = (1<<11))
#define EN_RL_BUF_Get()               ((PORTB >> 11) & 0x1)
#define EN_RL_BUF_PIN                  GPIO_PIN_RB11

/*** Macros for OUT2 pin ***/
#define OUT2_Set()               (LATASET = (1<<1))
#define OUT2_Clear()             (LATACLR = (1<<1))
#define OUT2_Toggle()            (LATAINV= (1<<1))
#define OUT2_OutputEnable()      (TRISACLR = (1<<1))
#define OUT2_InputEnable()       (TRISASET = (1<<1))
#define OUT2_Get()               ((PORTA >> 1) & 0x1)
#define OUT2_PIN                  GPIO_PIN_RA1

/*** Macros for U5TX pin ***/
#define U5TX_Get()               ((PORTF >> 13) & 0x1)
#define U5TX_PIN                  GPIO_PIN_RF13

/*** Macros for U5RX pin ***/
#define U5RX_Get()               ((PORTF >> 12) & 0x1)
#define U5RX_PIN                  GPIO_PIN_RF12

/*** Macros for SRV_OK pin ***/
#define SRV_OK_Set()               (LATBSET = (1<<12))
#define SRV_OK_Clear()             (LATBCLR = (1<<12))
#define SRV_OK_Toggle()            (LATBINV= (1<<12))
#define SRV_OK_OutputEnable()      (TRISBCLR = (1<<12))
#define SRV_OK_InputEnable()       (TRISBSET = (1<<12))
#define SRV_OK_Get()               ((PORTB >> 12) & 0x1)
#define SRV_OK_PIN                  GPIO_PIN_RB12

/*** Macros for EN_IN_LO pin ***/
#define EN_IN_LO_Set()               (LATBSET = (1<<13))
#define EN_IN_LO_Clear()             (LATBCLR = (1<<13))
#define EN_IN_LO_Toggle()            (LATBINV= (1<<13))
#define EN_IN_LO_OutputEnable()      (TRISBCLR = (1<<13))
#define EN_IN_LO_InputEnable()       (TRISBSET = (1<<13))
#define EN_IN_LO_Get()               ((PORTB >> 13) & 0x1)
#define EN_IN_LO_PIN                  GPIO_PIN_RB13

/*** Macros for EN_IN_HI pin ***/
#define EN_IN_HI_Set()               (LATBSET = (1<<14))
#define EN_IN_HI_Clear()             (LATBCLR = (1<<14))
#define EN_IN_HI_Toggle()            (LATBINV= (1<<14))
#define EN_IN_HI_OutputEnable()      (TRISBCLR = (1<<14))
#define EN_IN_HI_InputEnable()       (TRISBSET = (1<<14))
#define EN_IN_HI_Get()               ((PORTB >> 14) & 0x1)
#define EN_IN_HI_PIN                  GPIO_PIN_RB14

/*** Macros for SPR5 pin ***/
#define SPR5_Set()               (LATBSET = (1<<15))
#define SPR5_Clear()             (LATBCLR = (1<<15))
#define SPR5_Toggle()            (LATBINV= (1<<15))
#define SPR5_OutputEnable()      (TRISBCLR = (1<<15))
#define SPR5_InputEnable()       (TRISBSET = (1<<15))
#define SPR5_Get()               ((PORTB >> 15) & 0x1)
#define SPR5_PIN                  GPIO_PIN_RB15

/*** Macros for U4RX pin ***/
#define U4RX_Get()               ((PORTD >> 14) & 0x1)
#define U4RX_PIN                  GPIO_PIN_RD14

/*** Macros for U4TX pin ***/
#define U4TX_Get()               ((PORTD >> 15) & 0x1)
#define U4TX_PIN                  GPIO_PIN_RD15

/*** Macros for U2RX pin ***/
#define U2RX_Get()               ((PORTF >> 4) & 0x1)
#define U2RX_PIN                  GPIO_PIN_RF4

/*** Macros for U2TX pin ***/
#define U2TX_Get()               ((PORTF >> 5) & 0x1)
#define U2TX_PIN                  GPIO_PIN_RF5

/*** Macros for SPI_CS0 pin ***/
#define SPI_CS0_Set()               (LATFSET = (1<<3))
#define SPI_CS0_Clear()             (LATFCLR = (1<<3))
#define SPI_CS0_Toggle()            (LATFINV= (1<<3))
#define SPI_CS0_OutputEnable()      (TRISFCLR = (1<<3))
#define SPI_CS0_InputEnable()       (TRISFSET = (1<<3))
#define SPI_CS0_Get()               ((PORTF >> 3) & 0x1)
#define SPI_CS0_PIN                  GPIO_PIN_RF3

/*** Macros for U1RX pin ***/
#define U1RX_Get()               ((PORTF >> 2) & 0x1)
#define U1RX_PIN                  GPIO_PIN_RF2

/*** Macros for U1TX pin ***/
#define U1TX_Get()               ((PORTF >> 8) & 0x1)
#define U1TX_PIN                  GPIO_PIN_RF8

/*** Macros for SPR_IN1 pin ***/
#define SPR_IN1_Set()               (LATGSET = (1<<3))
#define SPR_IN1_Clear()             (LATGCLR = (1<<3))
#define SPR_IN1_Toggle()            (LATGINV= (1<<3))
#define SPR_IN1_OutputEnable()      (TRISGCLR = (1<<3))
#define SPR_IN1_InputEnable()       (TRISGSET = (1<<3))
#define SPR_IN1_Get()               ((PORTG >> 3) & 0x1)
#define SPR_IN1_PIN                  GPIO_PIN_RG3

/*** Macros for SPR_IN0 pin ***/
#define SPR_IN0_Set()               (LATGSET = (1<<2))
#define SPR_IN0_Clear()             (LATGCLR = (1<<2))
#define SPR_IN0_Toggle()            (LATGINV= (1<<2))
#define SPR_IN0_OutputEnable()      (TRISGCLR = (1<<2))
#define SPR_IN0_InputEnable()       (TRISGSET = (1<<2))
#define SPR_IN0_Get()               ((PORTG >> 2) & 0x1)
#define SPR_IN0_PIN                  GPIO_PIN_RG2

/*** Macros for SCAN1 pin ***/
#define SCAN1_Set()               (LATASET = (1<<4))
#define SCAN1_Clear()             (LATACLR = (1<<4))
#define SCAN1_Toggle()            (LATAINV= (1<<4))
#define SCAN1_OutputEnable()      (TRISACLR = (1<<4))
#define SCAN1_InputEnable()       (TRISASET = (1<<4))
#define SCAN1_Get()               ((PORTA >> 4) & 0x1)
#define SCAN1_PIN                  GPIO_PIN_RA4

/*** Macros for SCAN2 pin ***/
#define SCAN2_Set()               (LATASET = (1<<5))
#define SCAN2_Clear()             (LATACLR = (1<<5))
#define SCAN2_Toggle()            (LATAINV= (1<<5))
#define SCAN2_OutputEnable()      (TRISACLR = (1<<5))
#define SCAN2_InputEnable()       (TRISASET = (1<<5))
#define SCAN2_Get()               ((PORTA >> 5) & 0x1)
#define SCAN2_PIN                  GPIO_PIN_RA5

/*** Macros for X8_I pin ***/
#define X8_I_Get()               ((PORTC >> 12) & 0x1)
#define X8_I_PIN                  GPIO_PIN_RC12

/*** Macros for X8_O pin ***/
#define X8_O_Get()               ((PORTC >> 15) & 0x1)
#define X8_O_PIN                  GPIO_PIN_RC15

/*** Macros for OUT3 pin ***/
#define OUT3_Set()               (LATASET = (1<<14))
#define OUT3_Clear()             (LATACLR = (1<<14))
#define OUT3_Toggle()            (LATAINV= (1<<14))
#define OUT3_OutputEnable()      (TRISACLR = (1<<14))
#define OUT3_InputEnable()       (TRISASET = (1<<14))
#define OUT3_Get()               ((PORTA >> 14) & 0x1)
#define OUT3_PIN                  GPIO_PIN_RA14

/*** Macros for SPR4 pin ***/
#define SPR4_Set()               (LATASET = (1<<15))
#define SPR4_Clear()             (LATACLR = (1<<15))
#define SPR4_Toggle()            (LATAINV= (1<<15))
#define SPR4_OutputEnable()      (TRISACLR = (1<<15))
#define SPR4_InputEnable()       (TRISASET = (1<<15))
#define SPR4_Get()               ((PORTA >> 15) & 0x1)
#define SPR4_PIN                  GPIO_PIN_RA15

/*** Macros for DB7 pin ***/
#define DB7_Set()               (LATDSET = (1<<8))
#define DB7_Clear()             (LATDCLR = (1<<8))
#define DB7_Toggle()            (LATDINV= (1<<8))
#define DB7_OutputEnable()      (TRISDCLR = (1<<8))
#define DB7_InputEnable()       (TRISDSET = (1<<8))
#define DB7_Get()               ((PORTD >> 8) & 0x1)
#define DB7_PIN                  GPIO_PIN_RD8

/*** Macros for SPI_CS2 pin ***/
#define SPI_CS2_Set()               (LATDSET = (1<<9))
#define SPI_CS2_Clear()             (LATDCLR = (1<<9))
#define SPI_CS2_Toggle()            (LATDINV= (1<<9))
#define SPI_CS2_OutputEnable()      (TRISDCLR = (1<<9))
#define SPI_CS2_InputEnable()       (TRISDSET = (1<<9))
#define SPI_CS2_Get()               ((PORTD >> 9) & 0x1)
#define SPI_CS2_PIN                  GPIO_PIN_RD9

/*** Macros for SPI1_CLK pin ***/
#define SPI1_CLK_Get()               ((PORTD >> 10) & 0x1)
#define SPI1_CLK_PIN                  GPIO_PIN_RD10

/*** Macros for SPI_CS1 pin ***/
#define SPI_CS1_Set()               (LATDSET = (1<<11))
#define SPI_CS1_Clear()             (LATDCLR = (1<<11))
#define SPI_CS1_Toggle()            (LATDINV= (1<<11))
#define SPI_CS1_OutputEnable()      (TRISDCLR = (1<<11))
#define SPI_CS1_InputEnable()       (TRISDSET = (1<<11))
#define SPI_CS1_Get()               ((PORTD >> 11) & 0x1)
#define SPI_CS1_PIN                  GPIO_PIN_RD11

/*** Macros for SPI1_OUT pin ***/
#define SPI1_OUT_Get()               ((PORTD >> 0) & 0x1)
#define SPI1_OUT_PIN                  GPIO_PIN_RD0

/*** Macros for RS_DIS pin ***/
#define RS_DIS_Set()               (LATCSET = (1<<13))
#define RS_DIS_Clear()             (LATCCLR = (1<<13))
#define RS_DIS_Toggle()            (LATCINV= (1<<13))
#define RS_DIS_OutputEnable()      (TRISCCLR = (1<<13))
#define RS_DIS_InputEnable()       (TRISCSET = (1<<13))
#define RS_DIS_Get()               ((PORTC >> 13) & 0x1)
#define RS_DIS_PIN                  GPIO_PIN_RC13

/*** Macros for EN_DIS pin ***/
#define EN_DIS_Set()               (LATCSET = (1<<14))
#define EN_DIS_Clear()             (LATCCLR = (1<<14))
#define EN_DIS_Toggle()            (LATCINV= (1<<14))
#define EN_DIS_OutputEnable()      (TRISCCLR = (1<<14))
#define EN_DIS_InputEnable()       (TRISCSET = (1<<14))
#define EN_DIS_Get()               ((PORTC >> 14) & 0x1)
#define EN_DIS_PIN                  GPIO_PIN_RC14

/*** Macros for DB0 pin ***/
#define DB0_Set()               (LATDSET = (1<<1))
#define DB0_Clear()             (LATDCLR = (1<<1))
#define DB0_Toggle()            (LATDINV= (1<<1))
#define DB0_OutputEnable()      (TRISDCLR = (1<<1))
#define DB0_InputEnable()       (TRISDSET = (1<<1))
#define DB0_Get()               ((PORTD >> 1) & 0x1)
#define DB0_PIN                  GPIO_PIN_RD1

/*** Macros for DB1 pin ***/
#define DB1_Set()               (LATDSET = (1<<2))
#define DB1_Clear()             (LATDCLR = (1<<2))
#define DB1_Toggle()            (LATDINV= (1<<2))
#define DB1_OutputEnable()      (TRISDCLR = (1<<2))
#define DB1_InputEnable()       (TRISDSET = (1<<2))
#define DB1_Get()               ((PORTD >> 2) & 0x1)
#define DB1_PIN                  GPIO_PIN_RD2

/*** Macros for DB2 pin ***/
#define DB2_Set()               (LATDSET = (1<<3))
#define DB2_Clear()             (LATDCLR = (1<<3))
#define DB2_Toggle()            (LATDINV= (1<<3))
#define DB2_OutputEnable()      (TRISDCLR = (1<<3))
#define DB2_InputEnable()       (TRISDSET = (1<<3))
#define DB2_Get()               ((PORTD >> 3) & 0x1)
#define DB2_PIN                  GPIO_PIN_RD3

/*** Macros for SSI_CLK2 pin ***/
#define SSI_CLK2_Set()               (LATDSET = (1<<12))
#define SSI_CLK2_Clear()             (LATDCLR = (1<<12))
#define SSI_CLK2_Toggle()            (LATDINV= (1<<12))
#define SSI_CLK2_OutputEnable()      (TRISDCLR = (1<<12))
#define SSI_CLK2_InputEnable()       (TRISDSET = (1<<12))
#define SSI_CLK2_Get()               ((PORTD >> 12) & 0x1)
#define SSI_CLK2_PIN                  GPIO_PIN_RD12

/*** Macros for SSI_DAT2 pin ***/
#define SSI_DAT2_Set()               (LATDSET = (1<<13))
#define SSI_DAT2_Clear()             (LATDCLR = (1<<13))
#define SSI_DAT2_Toggle()            (LATDINV= (1<<13))
#define SSI_DAT2_OutputEnable()      (TRISDCLR = (1<<13))
#define SSI_DAT2_InputEnable()       (TRISDSET = (1<<13))
#define SSI_DAT2_Get()               ((PORTD >> 13) & 0x1)
#define SSI_DAT2_PIN                  GPIO_PIN_RD13

/*** Macros for DB3 pin ***/
#define DB3_Set()               (LATDSET = (1<<4))
#define DB3_Clear()             (LATDCLR = (1<<4))
#define DB3_Toggle()            (LATDINV= (1<<4))
#define DB3_OutputEnable()      (TRISDCLR = (1<<4))
#define DB3_InputEnable()       (TRISDSET = (1<<4))
#define DB3_Get()               ((PORTD >> 4) & 0x1)
#define DB3_PIN                  GPIO_PIN_RD4

/*** Macros for DB4 pin ***/
#define DB4_Set()               (LATDSET = (1<<5))
#define DB4_Clear()             (LATDCLR = (1<<5))
#define DB4_Toggle()            (LATDINV= (1<<5))
#define DB4_OutputEnable()      (TRISDCLR = (1<<5))
#define DB4_InputEnable()       (TRISDSET = (1<<5))
#define DB4_Get()               ((PORTD >> 5) & 0x1)
#define DB4_PIN                  GPIO_PIN_RD5

/*** Macros for DB5 pin ***/
#define DB5_Set()               (LATDSET = (1<<6))
#define DB5_Clear()             (LATDCLR = (1<<6))
#define DB5_Toggle()            (LATDINV= (1<<6))
#define DB5_OutputEnable()      (TRISDCLR = (1<<6))
#define DB5_InputEnable()       (TRISDSET = (1<<6))
#define DB5_Get()               ((PORTD >> 6) & 0x1)
#define DB5_PIN                  GPIO_PIN_RD6

/*** Macros for DB6 pin ***/
#define DB6_Set()               (LATDSET = (1<<7))
#define DB6_Clear()             (LATDCLR = (1<<7))
#define DB6_Toggle()            (LATDINV= (1<<7))
#define DB6_OutputEnable()      (TRISDCLR = (1<<7))
#define DB6_InputEnable()       (TRISDSET = (1<<7))
#define DB6_Get()               ((PORTD >> 7) & 0x1)
#define DB6_PIN                  GPIO_PIN_RD7

/*** Macros for CAN1_RX pin ***/
#define CAN1_RX_Get()               ((PORTF >> 0) & 0x1)
#define CAN1_RX_PIN                  GPIO_PIN_RF0

/*** Macros for CAN1_TX pin ***/
#define CAN1_TX_Get()               ((PORTF >> 1) & 0x1)
#define CAN1_TX_PIN                  GPIO_PIN_RF1

/*** Macros for OUT1 pin ***/
#define OUT1_Set()               (LATGSET = (1<<1))
#define OUT1_Clear()             (LATGCLR = (1<<1))
#define OUT1_Toggle()            (LATGINV= (1<<1))
#define OUT1_OutputEnable()      (TRISGCLR = (1<<1))
#define OUT1_InputEnable()       (TRISGSET = (1<<1))
#define OUT1_Get()               ((PORTG >> 1) & 0x1)
#define OUT1_PIN                  GPIO_PIN_RG1

/*** Macros for OUT0 pin ***/
#define OUT0_Set()               (LATGSET = (1<<0))
#define OUT0_Clear()             (LATGCLR = (1<<0))
#define OUT0_Toggle()            (LATGINV= (1<<0))
#define OUT0_OutputEnable()      (TRISGCLR = (1<<0))
#define OUT0_InputEnable()       (TRISGSET = (1<<0))
#define OUT0_Get()               ((PORTG >> 0) & 0x1)
#define OUT0_PIN                  GPIO_PIN_RG0

/*** Macros for SCAN3 pin ***/
#define SCAN3_Set()               (LATASET = (1<<6))
#define SCAN3_Clear()             (LATACLR = (1<<6))
#define SCAN3_Toggle()            (LATAINV= (1<<6))
#define SCAN3_OutputEnable()      (TRISACLR = (1<<6))
#define SCAN3_InputEnable()       (TRISASET = (1<<6))
#define SCAN3_Get()               ((PORTA >> 6) & 0x1)
#define SCAN3_PIN                  GPIO_PIN_RA6

/*** Macros for SCAN4 pin ***/
#define SCAN4_Set()               (LATASET = (1<<7))
#define SCAN4_Clear()             (LATACLR = (1<<7))
#define SCAN4_Toggle()            (LATAINV= (1<<7))
#define SCAN4_OutputEnable()      (TRISACLR = (1<<7))
#define SCAN4_InputEnable()       (TRISASET = (1<<7))
#define SCAN4_Get()               ((PORTA >> 7) & 0x1)
#define SCAN4_PIN                  GPIO_PIN_RA7

/*** Macros for L0 pin ***/
#define L0_Set()               (LATESET = (1<<0))
#define L0_Clear()             (LATECLR = (1<<0))
#define L0_Toggle()            (LATEINV= (1<<0))
#define L0_OutputEnable()      (TRISECLR = (1<<0))
#define L0_InputEnable()       (TRISESET = (1<<0))
#define L0_Get()               ((PORTE >> 0) & 0x1)
#define L0_PIN                  GPIO_PIN_RE0

/*** Macros for L1 pin ***/
#define L1_Set()               (LATESET = (1<<1))
#define L1_Clear()             (LATECLR = (1<<1))
#define L1_Toggle()            (LATEINV= (1<<1))
#define L1_OutputEnable()      (TRISECLR = (1<<1))
#define L1_InputEnable()       (TRISESET = (1<<1))
#define L1_Get()               ((PORTE >> 1) & 0x1)
#define L1_PIN                  GPIO_PIN_RE1

/*** Macros for OUT6 pin ***/
#define OUT6_Set()               (LATGSET = (1<<14))
#define OUT6_Clear()             (LATGCLR = (1<<14))
#define OUT6_Toggle()            (LATGINV= (1<<14))
#define OUT6_OutputEnable()      (TRISGCLR = (1<<14))
#define OUT6_InputEnable()       (TRISGSET = (1<<14))
#define OUT6_Get()               ((PORTG >> 14) & 0x1)
#define OUT6_PIN                  GPIO_PIN_RG14

/*** Macros for OUT4 pin ***/
#define OUT4_Set()               (LATGSET = (1<<12))
#define OUT4_Clear()             (LATGCLR = (1<<12))
#define OUT4_Toggle()            (LATGINV= (1<<12))
#define OUT4_OutputEnable()      (TRISGCLR = (1<<12))
#define OUT4_InputEnable()       (TRISGSET = (1<<12))
#define OUT4_Get()               ((PORTG >> 12) & 0x1)
#define OUT4_PIN                  GPIO_PIN_RG12

/*** Macros for OUT5 pin ***/
#define OUT5_Set()               (LATGSET = (1<<13))
#define OUT5_Clear()             (LATGCLR = (1<<13))
#define OUT5_Toggle()            (LATGINV= (1<<13))
#define OUT5_OutputEnable()      (TRISGCLR = (1<<13))
#define OUT5_InputEnable()       (TRISGSET = (1<<13))
#define OUT5_Get()               ((PORTG >> 13) & 0x1)
#define OUT5_PIN                  GPIO_PIN_RG13

/*** Macros for L2 pin ***/
#define L2_Set()               (LATESET = (1<<2))
#define L2_Clear()             (LATECLR = (1<<2))
#define L2_Toggle()            (LATEINV= (1<<2))
#define L2_OutputEnable()      (TRISECLR = (1<<2))
#define L2_InputEnable()       (TRISESET = (1<<2))
#define L2_Get()               ((PORTE >> 2) & 0x1)
#define L2_PIN                  GPIO_PIN_RE2

/*** Macros for L3 pin ***/
#define L3_Set()               (LATESET = (1<<3))
#define L3_Clear()             (LATECLR = (1<<3))
#define L3_Toggle()            (LATEINV= (1<<3))
#define L3_OutputEnable()      (TRISECLR = (1<<3))
#define L3_InputEnable()       (TRISESET = (1<<3))
#define L3_Get()               ((PORTE >> 3) & 0x1)
#define L3_PIN                  GPIO_PIN_RE3

/*** Macros for TP1 pin ***/
#define TP1_Set()               (LATESET = (1<<4))
#define TP1_Clear()             (LATECLR = (1<<4))
#define TP1_Toggle()            (LATEINV= (1<<4))
#define TP1_OutputEnable()      (TRISECLR = (1<<4))
#define TP1_InputEnable()       (TRISESET = (1<<4))
#define TP1_Get()               ((PORTE >> 4) & 0x1)
#define TP1_PIN                  GPIO_PIN_RE4


// *****************************************************************************
/* GPIO Port

  Summary:
    Identifies the available GPIO Ports.

  Description:
    This enumeration identifies the available GPIO Ports.

  Remarks:
    The caller should not rely on the specific numbers assigned to any of
    these values as they may change from one processor to the next.

    Not all ports are available on all devices.  Refer to the specific
    device data sheet to determine which ports are supported.
*/

typedef enum
{
    GPIO_PORT_A = 0,
    GPIO_PORT_B = 1,
    GPIO_PORT_C = 2,
    GPIO_PORT_D = 3,
    GPIO_PORT_E = 4,
    GPIO_PORT_F = 5,
    GPIO_PORT_G = 6,
} GPIO_PORT;

// *****************************************************************************
/* GPIO Port Pins

  Summary:
    Identifies the available GPIO port pins.

  Description:
    This enumeration identifies the available GPIO port pins.

  Remarks:
    The caller should not rely on the specific numbers assigned to any of
    these values as they may change from one processor to the next.

    Not all pins are available on all devices.  Refer to the specific
    device data sheet to determine which pins are supported.
*/

typedef enum
{
    GPIO_PIN_RA0 = 0,
    GPIO_PIN_RA1 = 1,
    GPIO_PIN_RA2 = 2,
    GPIO_PIN_RA3 = 3,
    GPIO_PIN_RA4 = 4,
    GPIO_PIN_RA5 = 5,
    GPIO_PIN_RA6 = 6,
    GPIO_PIN_RA7 = 7,
    GPIO_PIN_RA9 = 9,
    GPIO_PIN_RA10 = 10,
    GPIO_PIN_RA14 = 14,
    GPIO_PIN_RA15 = 15,
    GPIO_PIN_RB0 = 16,
    GPIO_PIN_RB1 = 17,
    GPIO_PIN_RB2 = 18,
    GPIO_PIN_RB3 = 19,
    GPIO_PIN_RB4 = 20,
    GPIO_PIN_RB5 = 21,
    GPIO_PIN_RB6 = 22,
    GPIO_PIN_RB7 = 23,
    GPIO_PIN_RB8 = 24,
    GPIO_PIN_RB9 = 25,
    GPIO_PIN_RB10 = 26,
    GPIO_PIN_RB11 = 27,
    GPIO_PIN_RB12 = 28,
    GPIO_PIN_RB13 = 29,
    GPIO_PIN_RB14 = 30,
    GPIO_PIN_RB15 = 31,
    GPIO_PIN_RC1 = 33,
    GPIO_PIN_RC2 = 34,
    GPIO_PIN_RC3 = 35,
    GPIO_PIN_RC4 = 36,
    GPIO_PIN_RC12 = 44,
    GPIO_PIN_RC13 = 45,
    GPIO_PIN_RC14 = 46,
    GPIO_PIN_RC15 = 47,
    GPIO_PIN_RD0 = 48,
    GPIO_PIN_RD1 = 49,
    GPIO_PIN_RD2 = 50,
    GPIO_PIN_RD3 = 51,
    GPIO_PIN_RD4 = 52,
    GPIO_PIN_RD5 = 53,
    GPIO_PIN_RD6 = 54,
    GPIO_PIN_RD7 = 55,
    GPIO_PIN_RD8 = 56,
    GPIO_PIN_RD9 = 57,
    GPIO_PIN_RD10 = 58,
    GPIO_PIN_RD11 = 59,
    GPIO_PIN_RD12 = 60,
    GPIO_PIN_RD13 = 61,
    GPIO_PIN_RD14 = 62,
    GPIO_PIN_RD15 = 63,
    GPIO_PIN_RE0 = 64,
    GPIO_PIN_RE1 = 65,
    GPIO_PIN_RE2 = 66,
    GPIO_PIN_RE3 = 67,
    GPIO_PIN_RE4 = 68,
    GPIO_PIN_RE5 = 69,
    GPIO_PIN_RE6 = 70,
    GPIO_PIN_RE7 = 71,
    GPIO_PIN_RE8 = 72,
    GPIO_PIN_RE9 = 73,
    GPIO_PIN_RF0 = 80,
    GPIO_PIN_RF1 = 81,
    GPIO_PIN_RF2 = 82,
    GPIO_PIN_RF3 = 83,
    GPIO_PIN_RF4 = 84,
    GPIO_PIN_RF5 = 85,
    GPIO_PIN_RF8 = 88,
    GPIO_PIN_RF12 = 92,
    GPIO_PIN_RF13 = 93,
    GPIO_PIN_RG0 = 96,
    GPIO_PIN_RG1 = 97,
    GPIO_PIN_RG2 = 98,
    GPIO_PIN_RG3 = 99,
    GPIO_PIN_RG6 = 102,
    GPIO_PIN_RG7 = 103,
    GPIO_PIN_RG8 = 104,
    GPIO_PIN_RG9 = 105,
    GPIO_PIN_RG12 = 108,
    GPIO_PIN_RG13 = 109,
    GPIO_PIN_RG14 = 110,
    GPIO_PIN_RG15 = 111,

    /* This element should not be used in any of the GPIO APIs.
       It will be used by other modules or application to denote that none of the GPIO Pin is used */
    GPIO_PIN_NONE = -1

} GPIO_PIN;

typedef enum
{
  CN0_PIN = 1 << 0,
  CN1_PIN = 1 << 1,
  CN2_PIN = 1 << 2,
  CN3_PIN = 1 << 3,
  CN4_PIN = 1 << 4,
  CN5_PIN = 1 << 5,
  CN6_PIN = 1 << 6,
  CN7_PIN = 1 << 7,
  CN8_PIN = 1 << 8,
  CN9_PIN = 1 << 9,
  CN10_PIN = 1 << 10,
  CN11_PIN = 1 << 11,
  CN12_PIN = 1 << 12,
  CN13_PIN = 1 << 13,
  CN14_PIN = 1 << 14,
  CN15_PIN = 1 << 15,
  CN16_PIN = 1 << 16,
  CN17_PIN = 1 << 17,
  CN18_PIN = 1 << 18,
  CN19_PIN = 1 << 19,
  CN20_PIN = 1 << 20,
  CN21_PIN = 1 << 21,
}CN_PIN;


void GPIO_Initialize(void);

// *****************************************************************************
// *****************************************************************************
// Section: GPIO Functions which operates on multiple pins of a port
// *****************************************************************************
// *****************************************************************************

uint32_t GPIO_PortRead(GPIO_PORT port);

void GPIO_PortWrite(GPIO_PORT port, uint32_t mask, uint32_t value);

uint32_t GPIO_PortLatchRead ( GPIO_PORT port );

void GPIO_PortSet(GPIO_PORT port, uint32_t mask);

void GPIO_PortClear(GPIO_PORT port, uint32_t mask);

void GPIO_PortToggle(GPIO_PORT port, uint32_t mask);

void GPIO_PortInputEnable(GPIO_PORT port, uint32_t mask);

void GPIO_PortOutputEnable(GPIO_PORT port, uint32_t mask);

// *****************************************************************************
// *****************************************************************************
// Section: GPIO Functions which operates on one pin at a time
// *****************************************************************************
// *****************************************************************************

static inline void GPIO_PinWrite(GPIO_PIN pin, bool value)
{
    GPIO_PortWrite((GPIO_PORT)(pin>>4), (uint32_t)(0x1) << (pin & 0xF), (uint32_t)(value) << (pin & 0xF));
}

static inline bool GPIO_PinRead(GPIO_PIN pin)
{
    return (bool)(((GPIO_PortRead((GPIO_PORT)(pin>>4))) >> (pin & 0xF)) & 0x1);
}

static inline bool GPIO_PinLatchRead(GPIO_PIN pin)
{
    return (bool)((GPIO_PortLatchRead((GPIO_PORT)(pin>>4)) >> (pin & 0xF)) & 0x1);
}

static inline void GPIO_PinToggle(GPIO_PIN pin)
{
    GPIO_PortToggle((GPIO_PORT)(pin>>4), 0x1 << (pin & 0xF));
}

static inline void GPIO_PinSet(GPIO_PIN pin)
{
    GPIO_PortSet((GPIO_PORT)(pin>>4), 0x1 << (pin & 0xF));
}

static inline void GPIO_PinClear(GPIO_PIN pin)
{
    GPIO_PortClear((GPIO_PORT)(pin>>4), 0x1 << (pin & 0xF));
}

static inline void GPIO_PinInputEnable(GPIO_PIN pin)
{
    GPIO_PortInputEnable((GPIO_PORT)(pin>>4), 0x1 << (pin & 0xF));
}

static inline void GPIO_PinOutputEnable(GPIO_PIN pin)
{
    GPIO_PortOutputEnable((GPIO_PORT)(pin>>4), 0x1 << (pin & 0xF));
}


// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif
// DOM-IGNORE-END
#endif // PLIB_GPIO_H
