       IDENTIFICATION DIVISION.

       PROGRAM-ID. PCSIDE.
       AUTHOR. j1_eb.

       ENVIRONMENT DIVISION.

       CONFIGURATION SECTION.

       INPUT-OUTPUT SECTION.

       DATA DIVISION.

       FILE SECTION.

       WORKING-STORAGE SECTION.
       01  PC-STRING    PIC X(10).
       01  NUM-INIT     PIC X(10) value "0123456789".
       01  NUM-ARRAY    PIC X(10).
       01  wk-i         pic 99.
       01  wk-j         pic 99.
       01  wk-c         pic x.
       77  system-time  pic 9(8).
       LINKAGE SECTION.
       01  pc-param.
           05  pc-func     pic x(5).
           05  pc-digit    pic 99.
           05  chk-string  pic x(10).
           05  hit-cnt     pic 99.
           05  blow-cnt    pic 99.

       PROCEDURE DIVISION using pc-param.
       MAIN.
           evaluate pc-func
              when "INIT"
                   perform INIT-RTN
              when "CHECK"
                   perform CHECK-RTN
           end-evaluate.
           goback.
       INIT-RTN.
           move NUM-INIT to NUM-ARRAY.
           accept  system-time from time
           compute wk-i = function random(System-time) * 10
           
           perform 5 times
              compute wk-i = function random() * 10
              compute wk-j = function random() * 10
              move NUM-ARRAY(wk-i + 1 : 1) to wk-c 
              move NUM-ARRAY(wk-j + 1 : 1) to NUM-ARRAY(wk-i + 1 : 1) 
              move wk-c to NUM-ARRAY(wk-j + 1 : 1)
           end-perform.
           move NUM-ARRAY(1:pc-digit) to PC-STRING.
           .   
       CHECK-RTN.
           move 0 to hit-cnt.
           move 0 to blow-cnt.
           perform varying wk-i from 1 by 1 until wk-i > pc-digit 
              perform varying wk-j from 1 by 1 until wk-j > pc-digit 
                if chk-string(Wk-i:1) = pc-string(wk-j:1)
                   add 1 to blow-cnt
                end-if
              end-perform
           end-perform.
           
           perform varying wk-i from 1 by 1 until wk-i > pc-digit 
             if chk-string(Wk-i:1) = pc-string(wk-i:1)
                add 1 to hit-cnt
             end-if
           end-perform.
           compute blow-cnt = blow-cnt - hit-cnt.
           
             
           
                
       
       
