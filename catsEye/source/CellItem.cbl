       IDENTIFICATION DIVISION.

       CLASS-ID. CellItem AS "CellItem".
       AUTHOR. user.

       ENVIRONMENT DIVISION.

       CONFIGURATION SECTION.

       REPOSITORY.
            class JObject    as "java.lang.Object"
       .

       IDENTIFICATION DIVISION.
       OBJECT.
       WORKING-STORAGE SECTION.
       01  row-pos     pic 99.
       01  col-pos     pic 99.
       PROCEDURE DIVISION.
       
       IDENTIFICATION DIVISION.
       METHOD-ID. newCEllItem as "new".
       DATA DIVISION.
       LINKAGE SECTION.
       01  lk-row         pic 99.
       01  lk-col         pic 99.
       PROCEDURE DIVISION using lk-row lk-col.
       begin-here.
           *>display "lk-row=" lk-row " lk-col=" lk-col.
           move lk-row  to row-pos.
           move lk-col  to col-pos.          
           goback.
       END METHOD.
       
       IDENTIFICATION DIVISION.
       METHOD-ID. getRow as "getRow".
       DATA DIVISION.
       LINKAGE SECTION.
       01  lk-row         pic 99.
       PROCEDURE DIVISION using lk-row.
       begin-here.
           move row-pos to lk-row.
           goback.
       END METHOD.

       IDENTIFICATION DIVISION.
       METHOD-ID. getCol as "getCol".
       DATA DIVISION.
       LINKAGE SECTION.
       01  lk-col         pic 99.
       PROCEDURE DIVISION using lk-col.
       begin-here.
           move col-pos to lk-col.
           goback.
       END METHOD.
       END OBJECT.
