      *begin {iscobol}compiler-directives
      *end {iscobol}compiler-directives
      *begin {iscobol}prog-comment
      *MonoChrome.cbl
      *MonoChrome.cbl is generated from C:\Github\isGames\MonoChrome\screen\MonoChrome.isp
      *end {iscobol}prog-comment
       identification division.
      *begin {iscobol}progid
       program-id. MonoChrome.
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
      *start file-control editor code
       
      *end file-control editor code
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
       77 Arial-12v00 handle of font.
       77 Arial-14v01 handle of font.
       77 Arial-15v00 handle of font.
       01 Arial-16v0 handle of font.
       77 Arial-20v0 handle of font.
       01 num-width pic 9(02).
       01 num-height pic 9(02).
       01 wk_row pic 9(02).
       01 wk-col pic 9(02).
       01 map-key pic 9(04).
       01 c-color pic 9(01) value 0.
       01 w-color pic 9(01).
       01 wk-cell pic x(03).
       01 ws-x pic S9(02).
       01 ws-y pic S9(02).
       01 wk-i pic 9(02).
       01 wk-j pic 9(02).
       01 wk-k pic 9(02).
       01 runLeng-x.
          05 runLeng pic 9(2).
       01 wrk-item0 pic x(10).
       01 code-string pic X(100).
       01 code-leng pic 9(04).
      *start working-storage editor code
       COPY "isopensave.def".
       
      *end working-storage editor code
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
             line 3.2
             column 19.2
             size 34.7 cells 
             lines 5.0 cells 
             font Arial-20v0
             id 1
             title "MonoChrome Picture"
             .
          03 screen-1-ef-1 Entry-Field
             line 19.4
             column 79.9
             size 9.3 cells 
             lines 3.1 cells 
             id 13
             3-d
             .
          03 screen-1-ef-2 Entry-Field
             line 25.5
             column 79.9
             size 9.3 cells 
             lines 3.1 cells 
             id 14
             3-d
             .
          03 screen-1-pb-5 Push-Button
             exception-value 27
             line 60.9
             column 79.0
             size 11.0 cells 
             lines 4.7 cells 
             id 17
             title "Quit"
             .
          03 screen-1-pb-1 Push-Button
             exception-value 6
             line 32.5
             column 73.0
             size 11.1 cells 
             lines 4.9 cells 
             id 18
             title "Reset"
             .
          03 screen-1-gr-1 Grid
             line 11.2
             column 15.8
             size 30.6 cells 
             lines 35.1 cells 
             font Arial-14v01
             id 19
             event procedure screen-1-gr-1-evt-proc
             boxed
             adjustable-rows
             adjustable-columns
             row-dividers 1
             divider-color rgb x#000000
             cursor-frame-width 3
             protection 1
             num-rows 10
             border-color rgb x#000000
             rows-per-page 8
             .
          03 screen-1-la-2 Label
             line 19.4
             column 65.3
             size 10.6 cells 
             lines 3.1 cells 
             font Arial-16v0
             id 2
             title "width"
             .
          03 screen-1-la-3 Label
             line 26.2
             column 65.3
             size 7.2 cells 
             lines 3.2 cells 
             font Arial-16v0
             id 3
             title "Height"
             .
          03 screen-1-la-4 Label
             line 69.6
             column 6.7
             size 7.7 cells 
             lines 3.6 cells 
             font Arial-16v0
             id 4
             title "Code"
             .
          03 screen-1-ef-3 Entry-Field
             line 68.9
             column 16.5
             size 57.1 cells 
             lines 5.1 cells 
             id 5
             3-d
             read-only
             .
          03 screen-1-pb-2 Push-Button
             exception-value 1
             line 62.4
             column 23.2
             size 10.9 cells 
             lines 4.0 cells 
             id 6
             title "enCode"
             .
          03 screen-1-pb-3 Push-Button
             exception-value 2
             line 62.5
             column 50.2
             size 13.5 cells 
             lines 4.0 cells 
             id 7
             title "deCode"
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
       is-load-fonts.
           initialize wfont-data arial-14v01.
           move 14 to wfont-size.
           move "Arial" to wfont-name.
           set wfont-bold to false.
           set wfont-italic to false.
           set wfont-underline to false.
           set wfont-strikeout to false.
           set wfont-fixed-pitch to false.
           call "w$font" using wfont-get-font arial-14v01 wfont-data.
           initialize wfont-data arial-16v0.
           move 16 to wfont-size.
           move "Arial" to wfont-name.
           set wfont-bold to false.
           set wfont-italic to false.
           set wfont-underline to false.
           set wfont-strikeout to false.
           set wfont-fixed-pitch to false.
           call "w$font" using wfont-get-font arial-16v0 wfont-data.
           initialize wfont-data arial-20v0.
           move 20 to wfont-size.
           move "Arial" to wfont-name.
           set wfont-bold to false.
           set wfont-italic to false.
           set wfont-underline to false.
           set wfont-strikeout to false.
           set wfont-fixed-pitch to false.
           call "w$font" using wfont-get-font arial-20v0 wfont-data.
       is-exit-rtn.
           perform is-destroy-fonts.
           exit program.
           stop run.
       is-destroy-fonts.
           destroy arial-14v01.
           destroy arial-16v0.
           destroy arial-20v0.
       is-screen-1-routine.
           perform is-screen-1-scrn
           perform is-screen-1-proc.
       is-screen-1-scrn.
           perform is-screen-1-create
           perform is-screen-1-init-data.
       is-screen-1-create.
           display standard window background-low
              screen line 41
              screen column 91
              size 97.7
              lines 77.7
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
           perform screen-1-aft-create.
       is-screen-1-init-data.
           perform is-screen-1-gr-1-content.
           perform screen-1-aft-init-data.
       is-screen-1-gr-1-content.
           modify screen-1-gr-1
              column-dividers ( 1 1 1 1 1 1 1 1 1 1 )
              data-columns ( 1 3 5 7 9 11 13 15 17 19 )
              display-columns ( 1 4 7 10 13 16 19 22 25 28 )
              separation ( 5 5 5 5 5 5 5 5 5 5 )
              alignment ( "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" )
              data-types ( "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" )
           .
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
       screen-1-gr-1-evt-proc.
           evaluate event-type
           when msg-gd-dblclick
              perform screen-1-gr-1-evt-msg-gd-dblclick
           when other
           end-evaluate
           .
      *start event editor code

       screen-1-aft-init-data.
           perform CLEAR-GRID.
           *>modify screen-1-gr-1 mass-update = 1
           modify screen-1-gr-1 cursor-Y 5 cursor-X 5
           move 10 to num-width.
           move 10 to num-height
           modify screen-1-ef-1 value num-width.
           modify screen-1-ef-2 value num-height.
           perform varying wk-row from 1 by 1  
                                  until wk-row > num-height
              perform varying wk-col from 1 by 1 
                                     until wk-col > num-width
                 modify screen-1-gr-1(wk-row, wk-col) CELL-DATA = "0"
                 modify screen-1-gr-1(wk-row, wk-col) cell-color = 396
              end-perform
           end-perform           
            
           .
       screen-1-aft-create.
            
           .
       screen-1-aft-end-acc.
            evaluate key-status
              when  1     *>enCode
                  perform enCODE-RTN
              when  2     *>deCode
                  perform deCODE-RTN
              when  6    *>Reset
                  perform RESET-RTN
            end-evaluate           
           .
       
       screen-1-gr-1-evt-msg-gd-dblclick.
           inquire screen-1-gr-1 X ws-X Y ws-Y
           move ws-x to wk-col
           move ws-y to wk-row
           perform DBL-CLICKED-RTN

           .
       
       CLEAR-GRID.
           modify screen-1-gr-1 reset-grid 1
           perform varying wk-row from 1 by 1  until wk-row > 10
              perform varying wk-col from 1 by 1 until wk-col > 10
                 modify screen-1-gr-1(wk-row, wk-col) CELL-DATA = " "
                 modify screen-1-gr-1(wk-row, wk-col) cell-color = 289
              end-perform
           end-perform           
           .
       
       enCODE-RTN.
           move space to code-string.
           move 1 to code-leng.
           move num-width to runLeng
           move runLeng-x to code-string(code-leng:2)
           add  3 to code-leng
      *    
           move 0 to runLeng.
           move 0 to c-color.
           perform varying wk-row from 1 by 1 until wk-row > num-height
              perform varying wk-col 
                                  from 1 by 1 until wk-col > num-width
                 modify  screen-1-gr-1 x = wk-col, y = wk-row
                 inquire screen-1-gr-1 cell-data wk-cell
                 if wk-cell = "1"
                    move 1 to w-color
                 else
                    move 0 to w-color
                 end-if
                 if w-color = c-color
                    add 1 to runLeng
                 else
                    move runLeng-x to code-string(code-leng:2)
                    add  3 to code-leng
                    move 1 to runLeng
                    compute c-color =  1 -c-color
                 end-if
              end-perform
           end-perform.
           move runLeng-x to code-string(code-leng:2)
           add 2 to code-leng
           
           modify screen-1-ef-3 value code-string(1:code-leng)             
           .
           
       deCODE-RTN.
           perform CLEAR-GRID.
           move space to code-string.
           inquire screen-1-ef-3 value = code-string
           perform varying code-leng from 100 by -1 until code-leng < 1
              if code-string(code-leng:1) NOT = " "
                 exit perform
              end-if
           end-perform
           move 1 to wk-k.
           move code-string(wk-k:2) to runLeng-x
           move runLeng to num-width
           add 3 to wk-k
      *
           move 0 to c-color
           move 1 to wk-row wk-col.
           perform until wk-k > code-leng 
              move code-string(wk-k:2) to runLeng-x
              add 3 to wk-k
              perform varying wk-i from 1 by 1 until wk-i > runLeng
                 if c-color = 0
                   modify screen-1-gr-1(wk-row, wk-col) 
                          CELL-DATA = "0" cell-color = 396
                 else
                    compute map-key = wk-row * 100 + wk-col
                    modify screen-1-gr-1(wk-row, wk-col) 
                           cell-data = "1" cell-color = 297
                 end-if
                 add 1 to wk-col
                 if wk-col > num-width 
                    move 1 to wk-col
                    add  1 to wk-row
                 end-if
              end-perform
              compute c-color = 1 - c-color
           end-perform.
           move wk-row to num-height
           modify screen-1-ef-1 value num-width.
           modify screen-1-ef-2 value num-height.
           
           .    
           
       DBL-CLICKED-RTN.
           compute map-key = wk-row * 100 + wk-col
           modify  screen-1-gr-1 x = wk-col, y = wk-row
           inquire screen-1-gr-1 cell-data wk-cell
              
           evaluate wk-cell
              when  "0"
                    modify screen-1-gr-1(wk-row, wk-col) 
                            cell-data = "1" cell-color = 297
              when "1"
                    modify screen-1-gr-1(wk-row, wk-col) 
                            cell-data = "0" cell-color = 396
           end-evaluate
           
           .
       
       RESET-RTN.
           perform CLEAR-GRID.
           *>modify screen-1-gr-1 mass-update = 1
           modify screen-1-gr-1 cursor-Y 5 cursor-X 5
           inquire screen-1-ef-1 value num-width.
           inquire screen-1-ef-2 value num-height.
           perform varying wk-row from 1 by 1  
                                  until wk-row > num-height
              perform varying wk-col from 1 by 1 
                                     until wk-col > num-width
                 modify screen-1-gr-1(wk-row, wk-col) CELL-DATA = "0"
                 modify screen-1-gr-1(wk-row, wk-col) cell-color = 396
              end-perform
           end-perform           
           .

      *end event editor code
      *end {iscobol}copy-procedure
       report-composer section.
      *begin {iscobol}external-copyfiles
      *end {iscobol}external-copyfiles
