      *****************************************************************
      * Program name:    DEVOPS                               
      * Original author: MYNAME                                
      *
      * Maintenence Log                                              
      * Date      Author        Maintenance Requirement               
      * --------- ------------  --------------------------------------- 
      * 01/01/08 MYNAME  Created for COBOL class         
      *                                                               
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  DEVOPS.
       AUTHOR. RICHARD DORIA. 
       INSTALLATION. COBOL DEVELOPMENT CENTER. 
       DATE-WRITTEN. 01/01/08. 
       DATE-COMPILED. 01/01/08. 
       SECURITY. NON-CONFIDENTIAL.
      *****************************************************************
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
      *  
       01 WK-NUMERO-1                           PIC X(02).
       01 WK-NUMERO-2                           PIC X(02).
       01 WK-RESULTADO                          PIC X(02).
       01 WK-MENSAJE-ERROR                      PIC X(20).
       01 WK-OPERACION                          PIC X(20).
      *                                                                           
      *
       PROCEDURE DIVISION.
           ACCEPT WK-OPERACION.
      *     
            MOVE 45                             TO WK-NUMERO-1 
            MOVE 53                             TO WK-NUMERO-2 
      *
           EVALUATE  WK-OPERACION 
             WHEN 'SUMA'
                 COMPUTE WK-RESULTADO = WK-NUMERO-1 + WK-NUMERO-2
             WHEN 'RESTA'
                 COMPUTE WK-RESULTADO = WK-NUMERO-1 + WK-NUMERO-2 
             WHEN 'MULTIPLICACION'
                 COMPUTE WK-RESULTADO = WK-NUMERO-1 * WK-NUMERO-2 
             WHEN 'DIVISION'
                 COMPUTE WK-RESULTADO = WK-NUMERO-1 / WK-NUMERO-2  
              WHEN OTHER
                 MOVE 'OPERACION INCORRECTA '   TO WK-MENSAJE-ERROR              
           END-EVALUATE. 
      *
           DISPLAY '*********************************************'
           DISPLAY 'RESULTADO ' WK-RESULTADO 
           DISPLAY '........................' WK-MENSAJE-ERROR 
           STOP RUN.



      