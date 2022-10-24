      *begin {iscobol}compiler-directives
      *end {iscobol}compiler-directives
      *begin {iscobol}prog-comment
      *StarPilot.cbl
      *StarPilot.cbl is generated from C:\Github\isGames\starPilot\screen\StarPilot.isp
      *end {iscobol}prog-comment
       identification division.
      *begin {iscobol}progid
       program-id. StarPilot.
       author. user.
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
           copy "code-f.sl".
       data division.
       file section.
      *begin {iscobol}file-section
      *end {iscobol}file-section
           copy "code-f.fd".
       working-storage section.
      *begin {iscobol}is-def
       copy "isgui.def".
       copy "iscobol.def".
       copy "iscrt.def".
       copy "isfonts.def".
       copy "isresize.def".
       copy "ismsg.def".
      *end {iscobol}is-def
       COPY "isopensave.def".
      *begin {iscobol}copy-working
       77 key-status is special-names crt status pic 9(4) value 0.
          88 exit-pushed value 27.
          88 message-received value 95.
          88 event-occurred value 96.
          88 screen-no-input-field value 97.
          88 screen-time-out value 99.
       77 quit-mode-flag pic s9(5) comp-4 value 0.
       77 window-handle handle of window.
       77 star-jpg pic s9(9) comp-4.
       01 wrk-x pic 99v99 value 30.
       01 wrk-y pic 99v99 value 14.5.
       01 wrk-len pic 9(4) value 20.
       77 Arial-0v0 handle of font.
       01 buffer pic x(8000).
       01 max-line pic 9(03) value 0.
       01 code-list.
          05 w-rec-lineno pic 9(03).
          05 w-rec-statement pic x(20).
          05 w-rec-p1 pic x(10).
          05 w-rec-p2 pic x(08).
          05 w-rec-p3 pic x(10).
       01 w-cursor-x pic 9(03).
       01 w-cursor-y pic 9(03).
       01 row-idx pic 9(03).
       01 opensave-status pic s9.
       77 Arial-0v00 handle of font.
       01 code-f-nm pic x(100).
       01 code-f-status pic x(02).
       01 wk-fname pic x(100).
       01 repeat-times pic 9(03).
       01 repeat-idx pic 9(03).
       01 prev-row-idx pic 9(03).
       01 SearchResult pic 9.
       01 SearchString pic x(10).
       01 SearchStringLength pic 9(03).
       01 SoundName pic x(20).
       01 SoundFlag pic 9(02).
       01 SoundRCD pic 9(01).
       77 Arial-16v0 handle of font.
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
          03 screen-1-bi-1 Bitmap
             line wrk-y
             column wrk-x
             size 5.57 cells 
             lines 2.56 cells 
             id 2
             bitmap-handle star-jpg
             bitmap-number 1
             .
          03 screen-1-pb-1 Push-Button
             line 32.56
             column 4.71
             size 7.86 cells 
             lines 1.81 cells 
             id 3
             event procedure screen-1-pb-1-evt-proc
             title "Å©"
             .
          03 screen-1-la-1 Label
             line 1.75
             column 9.62
             size 32.5 cells 
             lines 1.75 cells 
             font Arial-16v0
             id 1
             title "COBOL Star Pilot X"
             .
          03 screen-1-pb-2 Push-Button
             line 32.56
             column 14.0
             size 7.86 cells 
             lines 1.81 cells 
             id 6
             event procedure screen-1-pb-1-evt-proc
             title "Å™"
             .
          03 screen-1-pb-3 Push-Button
             line 32.42
             column 22.73
             size 10.86 cells 
             lines 1.81 cells 
             id 7
             event procedure screen-1-pb-1-evt-proc
             title "Home"
             .
          03 screen-1-pb-4 Push-Button
             line 32.44
             column 34.43
             size 7.86 cells 
             lines 1.81 cells 
             id 8
             event procedure screen-1-pb-1-evt-proc
             title "Å´"
             .
          03 screen-1-pb-5 Push-Button
             line 32.56
             column 44.86
             size 7.86 cells 
             lines 1.81 cells 
             id 9
             event procedure screen-1-pb-1-evt-proc
             title "Å®"
             .
          03 screen-1-ef-1 Entry-Field
             line 29.0
             column 59.86
             size 7.57 cells 
             lines 1.75 cells 
             id 5
             3-d
             .
          03 screen-1-co-1 Combo-Box
             line 29.0
             column 70.29
             size 18.57 cells 
             lines 4.0 cells 
             id 10
             3-d
             drop-down
             item-height 1.4
             .
          03 screen-1-ef-2 Entry-Field
             line 29.0
             column 91.0
             size 8.43 cells 
             lines 1.75 cells 
             id 11
             3-d
             .
          03 screen-1-pb-6 Push-Button
             line 32.8
             column 57.88
             size 10.62 cells 
             lines 1.55 cells 
             id 13
             event procedure screen-1-pb-1-evt-proc
             title "Insert"
             .
          03 screen-1-pb-7 Push-Button
             line 32.8
             column 71.62
             size 10.62 cells 
             lines 1.55 cells 
             id 14
             event procedure screen-1-pb-1-evt-proc
             title "Delete"
             .
          03 screen-1-pb-8 Push-Button
             line 32.8
             column 84.75
             size 10.62 cells 
             lines 1.55 cells 
             id 18
             event procedure screen-1-pb-1-evt-proc
             title "Reset"
             .
          03 screen-1-pb-9 Push-Button
             line 32.8
             column 97.0
             size 10.62 cells 
             lines 1.55 cells 
             id 19
             event procedure screen-1-pb-1-evt-proc
             title "Run"
             .
          03 screen-1-gr-1 Grid
             line 4.94
             column 62.14
             size 56.57 cells 
             lines 21.75 cells 
             id 4
             event-list ( cmd-goto msg-heading-clicked )
             event procedure screen-1-gr-1-evt-proc
             after procedure SCREEN-1-AFT-INIT-DATA
             boxed
             vscroll
             row-headings
             tiled-headings
             row-dividers 1
             heading-background-color rgb x#c0c0c0
             divider-color rgb x#000000
             cursor-frame-width 3
             num-rows 50
             selection-mode 9
             row-selected-background-color rgb x#ffff80 
             row-selected-foreground-color rgb x#000000
             .
          03 screen-1-pb-10 Push-Button
             line 2.05
             column 51.62
             size 10.62 cells 
             lines 1.7 cells 
             id 15
             event procedure screen-1-pb-10-evt-proc
             title "File"
             .
          03 screen-1-ef-4 Entry-Field
             line 2.2
             column 63.25
             size 32.14 cells 
             lines 1.44 cells 
             id 16
             3-d
             .
          03 screen-1-pb-11 Push-Button
             line 2.2
             column 109.12
             size 10.62 cells 
             lines 1.7 cells 
             id 17
             event procedure screen-1-pb-11-evt-proc
             title "Save"
             .
          03 screen-1-pb-12 Push-Button
             line 2.2
             column 97.0
             size 10.62 cells 
             lines 1.7 cells 
             id 12
             event procedure screen-1-pb-12-evt-proc
             title "Load"
             .
          03 screen-1-ef-3 Entry-Field
             line 29.0
             column 100.71
             size 8.57 cells 
             lines 1.75 cells 
             id 20
             3-d
             .
          03 screen-1-ef-5 Entry-Field
             line 29.0
             column 112.0
             size 6.57 cells 
             lines 1.75 cells 
             id 21
             3-d
             .
          03 screen-1-ef-6 Entry-Field
             line 29.0
             column 4.71
             size 45.29 cells 
             lines 1.75 cells 
             background-color rgb x#ffff80 foreground-color rgb x#ff0000
             visible 0
             id 22
             3-d
             read-only
             .
          03 screen-1-pb-13 Push-Button
             exception-value 27
             line 32.8
             column 109.12
             size 10.62 cells 
             lines 1.55 cells 
             id 23
             title "Quit"
             .
      *end {iscobol}copy-screen
           copy "my_Frame.cpy".
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
           initialize wfont-data arial-16v0.
           move 16 to wfont-size.
           move "Arial" to wfont-name.
           set wfont-bold to false.
           set wfont-italic to false.
           set wfont-underline to false.
           set wfont-strikeout to false.
           set wfont-fixed-pitch to false.
           call "w$font" using wfont-get-font arial-16v0 wfont-data.
       is-load-bitmaps.
           call "w$bitmap" using wbitmap-load "star.jpg" giving 
           star-jpg.
       is-exit-rtn.
           perform is-destroy-fonts.
           perform is-destroy-bitmaps.
           exit program.
           stop run.
       is-destroy-fonts.
           destroy arial-16v0.
       is-destroy-bitmaps.
           call "w$bitmap" using wbitmap-destroy star-jpg.
       is-screen-1-routine.
           perform is-screen-1-scrn
           perform is-screen-1-proc.
       is-screen-1-scrn.
           perform is-screen-1-create
           perform is-screen-1-init-data.
       is-screen-1-create.
           display standard window background-low
              screen line 81
              screen column 73
              size 121.28571
              lines 34.4375
              cell size is label font Default-Font
              label-offset 20
              color 257
              modeless
              title-bar
              no wrap
              title "Screen"
              handle window-handle
           .
           display screen-1.
           perform screen-1-aft-create.
       is-screen-1-init-data.
           perform is-screen-1-co-1-content.
           perform is-screen-1-gr-1-content.
           perform screen-1-aft-init-data.
       is-screen-1-co-1-content.
           modify screen-1-co-1
              item-to-add "IF"
              item-to-add "GOTO"
              item-to-add "STOP"
              item-to-add "LOOP"
              item-to-add "END-LOOP"
              item-to-add "MOVE"
           .
       is-screen-1-gr-1-content.
           modify screen-1-gr-1
              column-dividers ( 1 1 1 1 1 )
              data-columns ( 1 4 24 34 44 )
              display-columns ( 1 9 29 39 49 )
              separation ( 5 5 5 5 5 )
              alignment ( "U" "U" "U" "U" "U" )
              data-types ( "I" "X" "X" "X" "X" )
           .
           modify screen-1-gr-1 x = 1
              column-background-color rgb x#ffffff 
              column-foreground-color rgb x#000000
           .
       is-screen-1-proc.
           perform until exit-pushed
              accept screen-1 on exception 
                 perform is-screen-1-evaluate-func
              end-accept
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
       screen-1-gr-1-evt-proc.
           evaluate event-type
           when msg-goto-cell-mouse
              perform is-destroy-bitmaps
           when msg-heading-clicked
              perform screen-1-gr-1-evt-msg-heading-clicked
           when other
           end-evaluate
           .
       screen-1-pb-1-evt-proc.
           evaluate event-control-id
           when 3
              evaluate event-type
              when cmd-clicked
                 perform SCREEN-1-PB-1-EVT-CMD-CLICKED
              when other
              end-evaluate
           when 6
              evaluate event-type
              when cmd-clicked
                 perform SCREEN-1-PB-2-EVT-CMD-CLICKED
              when other
              end-evaluate
           when 7
              evaluate event-type
              when cmd-clicked
                 perform screen-1-pb-3-evt-cmd-clicked
              when other
              end-evaluate
           when 8
              evaluate event-type
              when cmd-clicked
                 perform screen-1-pb-4-evt-cmd-clicked
              when other
              end-evaluate
           when 9
              evaluate event-type
              when cmd-clicked
                 perform screen-1-pb-5-evt-cmd-clicked
              when other
              end-evaluate
           when 13
              evaluate event-type
              when cmd-clicked
                 perform SCREEN-1-PB-6-EVT-CMD-CLICKED
              when other
              end-evaluate
           when 14
              evaluate event-type
              when cmd-clicked
                 perform SCREEN-1-PB-7-EVT-CMD-CLICKED
              when other
              end-evaluate
           when 18
              evaluate event-type
              when cmd-clicked
                 perform screen-1-pb-8-evt-cmd-clicked
              when other
              end-evaluate
           when 19
              evaluate event-type
              when cmd-clicked
                 perform screen-1-pb-9-evt-cmd-clicked
              when other
              end-evaluate
           end-evaluate
           .
       screen-1-pb-10-evt-proc.
           evaluate event-type
           when cmd-clicked
              perform screen-1-pb-10-evt-cmd-clicked
           when other
           end-evaluate
           .
       screen-1-pb-11-evt-proc.
           evaluate event-type
           when cmd-clicked
              perform screen-1-pb-11-evt-cmd-clicked
           when other
           end-evaluate
           .
       screen-1-pb-12-evt-proc.
           evaluate event-type
           when cmd-clicked
              perform screen-1-pb-12-evt-cmd-clicked
           when other
           end-evaluate
           .
      *start event editor code

       screen-1-aft-create.
      *    set environment "AJ_KEISN_COLOR" to 5
      *    CALL "AJ_KEISN" USING wrk-len
      *                       "BOX(05,005)(05,010)_"
      *    CALL "AJ_KEISN" USING wrk-len
      *                       "BOX(06,005)(06,010)_"
      *    CALL "AJ_KEISN" USING wrk-len
      *                       "BOX(07,005)(07,010)_"
           .

       screen-1-aft-init-data.
           inquire screen-1-gr-1  alignment  buffer
           modify screen-1-gr-1 alignment spaces
           modify screen-1-gr-1 alignment = ( "C", "C", "C", "C", "C" )
           inquire screen-1-gr-1 alignment  buffer
           .
 
         
  
       screen-1-gr-1-evt-msg-heading-clicked.
           perform screen-1-gr-1-get-and-set
            
           .
       screen-1-gr-1-get-and-set.
           inquire screen-1-gr-1 cursor-y row-idx 
           inquire screen-1-gr-1(row-idx) record-data code-list
           modify  screen-1-ef-1  value w-rec-lineno 
           modify  screen-1-co-1  value w-rec-statement 
           modify  screen-1-ef-2  value w-rec-p1 
                   
           .
       screen-1-pb-1-evt-cmd-clicked.
           subtract 6 from wrk-x.
           if wrk-x < 6.0 
              perform err-outBounds
              move 6.0 to wrk-x
           end-if
           modify screen-1-bi-1 line wrk-y col wrk-x
           
           add 1 to max-line
           initialize code-list
           move max-line  to w-rec-lineno
           move "West"    to w-rec-statement
           move "1"       to w-rec-p1
           modify screen-1-gr-1 record-to-add code-list
           .
       screen-1-pb-2-evt-cmd-clicked.
           subtract 2.4 from wrk-y.
           if wrk-y < 4.9
              perform err-outBounds
              move 4.9 to wrk-y
           end-if
           modify screen-1-bi-1 line wrk-y col wrk-x
           
           add 1 to max-line
           initialize code-list
           move max-line   to w-rec-lineno
           move "North"    to w-rec-statement
           move "1"        to w-rec-p1
           modify screen-1-gr-1 record-to-add code-list
           .
       screen-1-pb-3-evt-cmd-clicked.
           move 30.0 to wrk-x.
           move 14.5 to wrk-y.
           modify screen-1-bi-1 line wrk-y col wrk-x
           
           add 1 to max-line
           initialize code-list
           move max-line   to w-rec-lineno
           move "Home"     to w-rec-statement
           move " "        to w-rec-p1
           modify screen-1-gr-1 record-to-add code-list
           .
       screen-1-pb-4-evt-cmd-clicked.
           add 2.4 to wrk-y
           if wrk-y > 24.1
              perform err-outBounds
              move 24.1 to wrk-y
           end-if
           modify screen-1-bi-1 line wrk-y col wrk-x
           
           add 1 to max-line
           initialize code-list
           move max-line   to w-rec-lineno
           move "South"    to w-rec-statement
           move "1"        to w-rec-p1
           modify screen-1-gr-1 record-to-add code-list
           .
       screen-1-pb-5-evt-cmd-clicked.
           add 6 to wrk-x.
           if wrk-x > 54
              perform err-outBounds
              move 54 to wrk-x
           end-if
           modify screen-1-bi-1 line wrk-y col wrk-x
           
           add 1 to max-line
           initialize code-list
           move max-line  to w-rec-lineno
           move "East"    to w-rec-statement
           move "1"       to w-rec-p1        
           modify screen-1-gr-1 record-to-add code-list
            
           .            
                   
       SCREEN-1-PB-7-EVT-CMD-CLICKED.
           inquire screen-1-gr-1 cursor-y row-idx
           modify screen-1-gr-1  RECORD-TO-DELETE row-idx
           perform until row-idx > max-line - 1
              inquire screen-1-gr-1(row-idx) record-data code-list
              subtract 1 from w-rec-lineno
              modify screen-1-gr-1(row-idx) record-data code-list
              add 1 to row-idx
           end-perform.
           compute max-line = max-line - 1
           
           .
       SCREEN-1-PB-6-EVT-CMD-CLICKED.
           inquire screen-1-ef-1 value w-rec-lineno
           inquire screen-1-co-1 value w-rec-statement
           inquire screen-1-ef-2 value w-rec-p1 
           
           compute row-idx = w-rec-lineno
           modify screen-1-gr-1  insertion-index row-idx
                                 RECORD-TO-ADD code-list.
           add 1 to row-idx
           perform until row-idx > max-line + 1
              inquire screen-1-gr-1(row-idx) record-data code-list
              add 1 to w-rec-lineno
              modify screen-1-gr-1(row-idx) record-data code-list
              add 1 to row-idx
           end-perform.
           compute max-line = max-line + 1
           
           .
       screen-1-pb-8-evt-cmd-clicked.
           move 30.0 to wrk-x.
           move 14.5 to wrk-y.
           modify screen-1-bi-1 line wrk-y col wrk-x
           move 0 to max-line
            
           modify screen-1-gr-1 reset-grid 1
           .
           
       screen-1-pb-9-evt-cmd-clicked.
           set GRID-SEARCH-IGNORE-CASE  to true
           set GRID-SEARCH-MATCH-ALL    to true
           set GRID-SEARCH-ALL-DATA     to true
           set GRID-SEARCH-MOVES-CURSOR to true
           set GRID-SEARCH-SKIP-CURRENT to false
           move 1 to GRID-SEARCH-COLUMN
                            
           move 1 to row-idx, prev-row-idx
           
           perform until row-idx > max-line
              inquire screen-1-gr-1(row-idx) record-data code-list
              perform show-current-row
              
              evaluate w-rec-statement
                 when "West"
                      subtract 6 from wrk-x
                 when "East"
                      add 6 to wrk-x
                 when "North"
                      subtract 2.4 from wrk-y
                 when "South"
                      add 2.4 to wrk-y
                 when "Home"
                      move 30.0 to wrk-x
                      move 14.5 to wrk-y
                 when "GOTO"
                      move function NUMVAL(w-rec-p1) to row-idx
                      exit perform cycle
                 when "LOOP"
                      move function NUMVAL(w-rec-p1) to repeat-times
                      add  row-idx 1 giving repeat-idx
                      add 1 to row-idx
                      exit perform cycle
                 when "END-LOOP"
                      subtract 1 from repeat-times
                      if repeat-times > 0
                         move repeat-idx to row-idx
                         exit perform cycle
                      end-if
                      add 1 to row-idx
                      exit perform cycle                     
                 when "STOP"
                      exit perform
              end-evaluate
              if (wrk-x < 6   or wrk-x > 54 or
                  wrk-y < 4.9 or wrk-y > 24.1)
                 perform err-outBounds
                 exit perform
              end-if
              modify screen-1-bi-1 line wrk-y col wrk-x
              call "C$SLEEP" using 0.5
              add 1 to row-idx
           end-perform.
            
           .
       screen-1-pb-10-evt-cmd-clicked.
           initialize opensave-data
           move "Choose a file" to opnsav-title
           move "../data/"      to opnsav-default-dir

           call "C$OPENSAVEBOX" using opensave-open-box, 
                                      opensave-data
                               giving opensave-status

           if opensave-status > 0
              move opnsav-filename to wk-fname
              modify screen-1-ef-4 value wk-fname
           end-if
           .
       screen-1-pb-11-evt-cmd-clicked.
           inquire screen-1-ef-4 value wk-fname
           move  wk-fname to code-f-nm
           open output code-f
           perform varying row-idx from 1 by 1 until row-idx > max-line
              inquire screen-1-gr-1(row-idx) record-data code-list
              move code-list to code-f-rec
              write code-f-rec
           end-perform
           close  code-f 
           .
       screen-1-pb-12-evt-cmd-clicked.
           inquire screen-1-ef-4 value wk-fname
           move wk-fname to code-f-nm
           open input code-f
           move 0 to max-line
           perform until 1 = 0
             read code-f at end exit perform
             end-read
             move code-f-rec to code-list
             modify screen-1-gr-1 record-to-add code-list
             add 1 to max-line
           end-perform
           close code-f
            
           .
       show-current-row.
           modify screen-1-gr-1, search-options = GRID-SEARCH-OPTIONS           
           move w-rec-lineno   TO SearchString
           modify screen-1-gr-1 (row-idx, 1) 
                                 search-text = SearchString
                                 length  = 3
                                 giving SearchResult     
           .
       err-outBounds.
           move "moa02.wav"  to SoundName
           move SND-ASYNC    to SoundFlag
           call "WIN$PLAYSOUND" USING SoundName SoundFlag
                                 giving SoundRCD
           modify screen-1-ef-6 value = "Error OUT Bounds"
                                visible=true
           call "C$SLEEP" using 2.0
           modify screen-1-ef-6 value = " "
                               visible=false
           .
                                
      
      *end event editor code
      *end {iscobol}copy-procedure
       report-composer section.
      *begin {iscobol}external-copyfiles
      *end {iscobol}external-copyfiles
