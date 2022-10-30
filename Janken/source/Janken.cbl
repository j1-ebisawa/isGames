      *begin {iscobol}compiler-directives
      *end {iscobol}compiler-directives
      *begin {iscobol}prog-comment
      *Janken.cbl
      *Janken.cbl is generated from C:\Github\isGames\Janken\screen\Janken.isp
      *end {iscobol}prog-comment
       identification division.
      *begin {iscobol}progid
       program-id. Janken.
       author. j1_eb.
       remarks.
      *end {iscobol}progid
       environment division.
       configuration section.
       special-names.
      *begin {iscobol}activex-def
      *end {iscobol}activex-def
      *begin {iscobol}alphabet
      *end {iscobol}alphabet
      *begin {iscobol}decimal-point
      *end {iscobol}decimal-point
       repository.
      *begin {iscobol}repository
      *end {iscobol}repository
       input-output section.
       file-control.
      *begin {iscobol}file-control
      *end {iscobol}file-control
       data division.
       file section.
      *begin {iscobol}file-section
      *end {iscobol}file-section
       working-storage section.
      *begin {iscobol}is-def
       copy "isgui.def".
       copy "iscobol.def".
       copy "iscrt.def".
       copy "isfonts.def".
       copy "isresize.def".
       copy "ismsg.def".
      *end {iscobol}is-def
      *begin {iscobol}copy-working
       77 key-status is special-names crt status pic 9(4) value 0.
          88 exit-pushed value 27.
          88 message-received value 95.
          88 event-occurred value 96.
          88 screen-no-input-field value 97.
          88 screen-time-out value 99.
       77 quit-mode-flag pic s9(5) comp-4 value 0.
       77 window-handle handle of window.
       77 Arial-15v0 handle of font.
       77 Arial-18v0 handle of font.
       01 pcHand pic 9(01).
       01 myHand pic 9(01).
       01 winLose-tbl.
          05 winLose-def pic x(09) value "123312231".
          05 filler redefines winLose-def.
             10 filler occurs 3.
                15 winLose occurs 3 pic 9(01).
       01 draws pic 9(02).
       01 myWins pic 9(02).
       01 pcWins pic 9(02).
       01 result-msg-tbl.
          05 result-msg-def pic x(12) value "DrowWin Lose".
          05 filler redefines result-msg-def.
             10 result-msg occurs 3 pic x(4).
       01 result-v pic 9(01).
       01 msg-val pic x(30).
       01 icons-tbl.
          05 icons-def.
             10 GOO-handle handle of bitmap.
             10 CHOKI-handle handle of bitmap.
             10 PAA-handle handle of bitmap.
          05 filler redefines icons-def.
             10 icons occurs 3 handle of bitmap.
       01 my-percent pic 9(03).
       01 pc-percent pic 9(03).
       77 gu-png0 pic s9(9) comp-4.
       77 gu-png1 pic s9(9) comp-4.
      *end {iscobol}copy-working
      *begin {iscobol}external-definitions
      *end {iscobol}external-definitions
      *begin {iscobol}copy-local
      *end {iscobol}copy-local
      *begin {iscobol}copy-thread-local
      *end {iscobol}copy-local
       linkage section.
      *begin {iscobol}copy-linkage
      *end {iscobol}copy-linkage
       screen section.
      *begin {iscobol}copy-screen
       01 screen-1
       .
          03 screen-1-la-1 Label
             line 4.9
             column 26.2
             size 27.6 cells 
             lines 4.8 cells 
             font Arial-18v0
             id 1
             title "Janken Game"
             .
          03 screen-1-bi-1 Bitmap
             line 21.0
             column 9.9
             size 183 pixels 
             lines 182 pixels 
             id 2
             bitmap-handle gu-png0
             bitmap-number 1
             .
          03 screen-1-bi-2 Bitmap
             line 20.3
             column 37.8
             size 183 pixels 
             lines 182 pixels 
             id 3
             bitmap-handle gu-png1
             bitmap-number 1
             .
          03 screen-1-rb-1 Radio-Button
             exception-value 201
             line 21.3
             column 62.2
             size 9.0 cells 
             lines 3.3 cells 
             id 5
             title "GOO"
             group 1
             group-value "0"
             value "0"
             .
          03 screen-1-rb-2 Radio-Button
             exception-value 202
             line 28.1
             column 62.2
             size 9.0 cells 
             lines 3.3 cells 
             id 6
             title "CHOKI"
             group 1
             group-value "0"
             value "0"
             .
          03 screen-1-rb-3 Radio-Button
             exception-value 203
             line 34.4
             column 62.2
             size 9.0 cells 
             lines 3.3 cells 
             id 7
             title "PAA"
             group 1
             group-value "0"
             value "0"
             .
          03 screen-1-la-2 Label
             line 11.9
             column 2.5
             size 8.1 cells 
             lines 4.1 cells 
             id 9
             title "PCWins"
             .
          03 screen-1-la-3 Label
             line 11.9
             column 34.3
             size 8.1 cells 
             lines 4.1 cells 
             id 10
             title "yourWins"
             .
          03 screen-1-ef-2 Entry-Field
             line 11.9
             column 43.9
             size 8.1 cells 
             lines 4.1 cells 
             id 11
             3-d
             value myWins
             .
          03 screen-1-la-4 Label
             line 11.9
             column 62.1
             size 8.1 cells 
             lines 4.1 cells 
             id 12
             title "Draws"
             .
          03 screen-1-ef-3 Entry-Field
             line 11.9
             column 73.0
             size 8.1 cells 
             lines 4.1 cells 
             id 13
             3-d
             value draws
             .
          03 screen-1-ef-1 Entry-Field
             line 11.9
             column 12.4
             size 8.1 cells 
             lines 4.1 cells 
             id 8
             3-d
             value pcWins
             .
          03 screen-1-ef-4 Entry-Field
             line 53.6
             column 7.9
             size 31.6 cells 
             lines 3.7 cells 
             id 14
             3-d
             value msg-val
             .
          03 screen-1-pb-1 Push-Button
             exception-value 101
             line 53.0
             column 47.9
             size 7.7 cells 
             lines 4.9 cells 
             id 15
             title "Start"
             .
          03 screen-1-pb-2 Push-Button
             exception-value 102
             line 53.0
             column 61.9
             size 7.7 cells 
             lines 4.9 cells 
             id 16
             title "Reset"
             .
          03 screen-1-pb-3 Push-Button
             exception-value 27
             line 53.0
             column 75.2
             size 7.7 cells 
             lines 4.9 cells 
             id 17
             self-act
             title "Quit"
             .
          03 screen-1-fr-1 Frame
             line 44.5
             column 8.2
             size 17.8 cells 
             lines 3.4 cells 
             id 19
             fill-color rgb x#ff0000
             fill-percent 0
             .
          03 screen-1-fr-2 Frame
             line 44.5
             column 37.8
             size 17.8 cells 
             lines 3.4 cells 
             id 20
             fill-color rgb x#0080ff
             fill-percent 0
             .
      *end {iscobol}copy-screen
      *begin {iscobol}procedure-using
       procedure division.
      *end {iscobol}procedure-using
      *begin {iscobol}declarative
      *end {iscobol}declarative
       main-logic.
      *begin {iscobol}entry-bef-prog
      *end {iscobol}entry-bef-prog
      *begin {iscobol}initial-routines
           perform is-initial-routine
      *end {iscobol}initial-routines
      *begin {iscobol}run-main-screen
           perform is-screen-1-routine
      *end {iscobol}run-main-screen
      *begin {iscobol}exit-routines
           perform is-exit-rtn.
      *end {iscobol}exit-routines
      *begin {iscobol}copy-procedure
       copy "ismsg.cpy".
       is-initial-routine.
           accept system-information from system-info.
           accept terminal-abilities from terminal-info.
           perform is-load-fonts.
           perform is-load-bitmaps.
       is-load-fonts.
           initialize wfont-data arial-18v0.
           move 18 to wfont-size.
           move "Arial" to wfont-name.
           set wfont-bold to false.
           set wfont-italic to false.
           set wfont-underline to false.
           set wfont-strikeout to false.
           set wfont-fixed-pitch to false.
           call "w$font" using wfont-get-font arial-18v0 wfont-data.
       is-load-bitmaps.
           call "w$bitmap" using wbitmap-load "../img/gu.png" giving 
           gu-png0.
           move gu-png0 to gu-png1.
       is-exit-rtn.
           perform is-destroy-fonts.
           perform is-destroy-bitmaps.
           exit program.
           stop run.
       is-destroy-fonts.
           destroy arial-18v0.
       is-destroy-bitmaps.
           call "w$bitmap" using wbitmap-destroy gu-png0.
           call "w$bitmap" using wbitmap-destroy gu-png1.
       is-screen-1-routine.
           perform is-screen-1-scrn
           perform is-screen-1-proc.
       is-screen-1-scrn.
           perform is-screen-1-create
           perform is-screen-1-init-data.
       is-screen-1-create.
           perform screen-1-bef-create.
           display standard window background-low
              screen line 41
              screen column 91
              size 90.5
              lines 63.3
              cell width 10
              cell height 10
              label-offset 20
              color 257
              modeless
              title-bar
              no wrap
              title "Screen"
              handle window-handle
           .
           display screen-1.
       is-screen-1-init-data.
           perform screen-1-aft-init-data.
       is-screen-1-proc.
           perform until exit-pushed
              accept screen-1 on exception 
                 perform is-screen-1-evaluate-func
              end-accept
           perform screen-1-aft-end-acc
           end-perform.
           destroy window-handle.
           initialize key-status.
       is-screen-1-evaluate-func.
           evaluate true
           when exit-pushed
              perform is-screen-1-exit
           when event-occurred
              if event-type = msg-close
                 perform is-screen-1-exit
              end-if
           end-evaluate.
           move 1 to accept-control.
       is-screen-1-exit.
           set exit-pushed to true.
      *start event editor code
       screen-1-bef-create.
           move 0 to pcWins myWins draws. 
           move 0 to pc-percent my-percent .
           move 1 to pcHand myHand.
           move "Let's start Janken Game" to msg-val
           CALL "W$BITMAP" USING WBITMAP-LOAD   "../img/gu.png"
                           GIVING goo-Handle
           CALL "W$BITMAP" USING WBITMAP-LOAD   "../img/ch.png"
                           GIVING choki-Handle
           CALL "W$BITMAP" USING WBITMAP-LOAD   "../img/pa.png"
                           GIVING paa-Handle
            
           .
 
       screen-1-aft-init-data.
           .
 
       screen-1-aft-end-acc.
             
            evaluate key-status
              when  101     *>START
                  perform START-RTN
              when  102   *>Reset
                  perform RESET-RTN
              when  201   *>GOO
                  move 1 to myHand
                  modify screen-1-bi-1 bitmap-handle = goo-handle
                  perform COUNT-RTN
              when  202   *>CHOKI
                  move 2 to myHand
                  modify screen-1-bi-1 bitmap-handle = choki-handle
                  perform COUNT-RTN                  
              when 203    *>PAA
                  move 3 to myHand
                  modify screen-1-bi-1 bitmap-handle = paa-handle
                  perform COUNT-RTN
            end-evaluate
            if pcWins > 9 OR myWins > 9
               move "Game End!" to msg-val
               modify screen-1-ef-4 value msg-val color red
               if pcWins >9
                  modify screen-1-ef-1 color 417
               else
                  modify screen-1-ef-2 color 321
               end-if   
               
            end-if.
           .
            
       START-RTN.
           move "start with GOO" to msg-val
           modify screen-1-ef-4 value msg-val 
           
       .
       
       RESET-RTN.
           move 0 to pcWins myWins draws. 
           move 1 to pcHand myHand.
           move "Let's start Janken Game" to msg-val
           modify screen-1-ef-1 value pcWins 
           modify screen-1-ef-2 value myWins
           modify screen-1-ef-3 value draws 
           
           compute pc-percent = pcWins * 10
           compute my-percent = myWins * 10
           modify screen-1-fr-1 fill-percent pc-percent 
           modify screen-1-fr-2 fill-percent my-percent
           
           modify screen-1-bi-1 bitmap-handle = icons(pcHand)
           modify screen-1-bi-2 bitmap-handle = icons(myHand)
           modify screen-1-ef-4 value msg-val color black
       
          
       .
       
       COUNT-RTN.
       
           compute pcHand = function random() * 3 + 1
           evaluate winLose(myHand, pcHand)
              when 1 
                  add 1 to draws
              when 2
                  add 1 to myWins
              when 3
                  add 1 to pcWins
           end-evaluate.
           
           move winLose(myHand, pcHand) to result-v
           move result-msg(result-v) to msg-val
           
           modify screen-1-ef-4 value msg-val 
           modify screen-1-ef-1 value pcWins 
           modify screen-1-ef-2 value myWins
           modify screen-1-ef-3 value draws 
           
           compute pc-percent = pcWins * 10
           compute my-percent = myWins * 10
           modify screen-1-fr-1 fill-percent pc-percent 
           modify screen-1-fr-2 fill-percent my-percent
           
           modify screen-1-bi-1 bitmap-handle = icons(pcHand)
           modify screen-1-bi-2 bitmap-handle = icons(myHand)
       
           .   

      *end event editor code
      *end {iscobol}copy-procedure
       report-composer section.
      *begin {iscobol}external-copyfiles
      *end {iscobol}external-copyfiles
