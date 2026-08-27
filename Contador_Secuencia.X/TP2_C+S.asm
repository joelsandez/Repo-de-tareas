
; PIC16F887 Configuration Bit Settings

; Assembly source line config statements

#include "p16f887.inc"

; CONFIG1
; __config 0x3FFF
 __CONFIG _CONFIG1, _FOSC_EXTRC_CLKOUT & _WDTE_ON & _PWRTE_OFF & _MCLRE_ON & _CP_OFF & _CPD_OFF & _BOREN_ON & _IESO_ON & _FCMEN_ON & _LVP_ON
; CONFIG2
; __config 0x3FFF
 __CONFIG _CONFIG2, _BOR4V_BOR40V & _WRT_OFF

ORG 0x00 
GOTO INICIO
 
 
ORG 0x04
INICIO
    CALL CLEAR_VAR;
    CALL SET_VAR;
    CALL TIMER;
    GOTO PORT_REFRESH;
    
    
    
CLEAR_VAR
    BCF STATUS,6
    BCF STATUS,5
    CLRW
    CLRF PORTD
    CLRF PORTE
    RETURN

SET_VAR
    BSF STATUS,5
    CLRF TRISD
    BSF TRISE, 0
    RETURN
    
    
TIMER
    
    
    
PORT_REFRESH
    
    
END





