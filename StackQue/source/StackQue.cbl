      *begin {iscobol}compiler-directives
      *end {iscobol}compiler-directives
      *begin {iscobol}prog-comment
      *StackQue.cbl
      *StackQue.cbl is generated from C:\Github\isGames\StackQue\screen\StackQue.isp
      *end {iscobol}prog-comment
       identification division.
      *begin {iscobol}progid
       program-id. StackQue.
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
       77 Arial-12v0 handle of font.
       77 Arial-14v0 handle of font.
       01 mode-sw pic 9 value 0.
       01 wk-i pic 9(02).
       01 wk-j pic 9(02).
       01 wk-cell pic x(04).
       01 wk-cell-save pic x(04).
       01 ret-cd pic s9(02).
       01 wk-row pic 9(02).
       01 out-idx pic 9(02) value 0.
       01 sp pic s9(02).
       01 rp pic s9(02).
       01 wp pic s9(02).
       01 wk-dmy pic 9(02).
      *start working-storage editor code
       01  wk-alphabet.
           05  wk-alpha-def.
             10  filler pic x(26) value
                 "ABCDEFGHIJKLMNOPQRSTUVWXYZ".
           05  wk-alpha-red redefines wk-alpha-def.
             10  wk-alpha pic x occurs 26.
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
             column 23.3
             size 24.8 cells 
             lines 4.8 cells 
             font Arial-14v0
             id 1
             title "Stack_Queue Test"
             .
          03 screen-1-gr-1 Grid
             line 19.7
             column 26.7
             size 21.7 cells 
             lines 34.0 cells 
             id 2
             boxed
             row-dividers 1
             divider-color rgb x#000000
             cursor-frame-width 3
             num-row-headings 1
             num-rows 11
             border-color rgb x#000000
             .
          03 screen-1-gr-2 Grid
             line 12.1
             column 3.1
             size 72.5 cells 
             lines 5.1 cells 
             id 3
             boxed
             hscroll
             row-dividers 1
             divider-color rgb x#000000
             cursor-frame-width 3
             num-rows 1
             .
          03 screen-1-ef-1 Entry-Field
             line 21.3
             column 7.6
             size 9.9 cells 
             lines 3.6 cells 
             id 5
             3-d
             .
          03 screen-1-ef-2 Entry-Field
             line 21.3
             column 56.5
             size 9.9 cells 
             lines 3.6 cells 
             id 6
             3-d
             .
          03 screen-1-pb-4 Push-Button
             exception-value 11
             line 67.5
             column 33.6
             size 12.0 cells 
             lines 3.2 cells 
             id 12
             self-act
             title "Stack/Queue"
             .
          03 screen-1-pb-6 Push-Button
             exception-value 12
             line 67.5
             column 4.4
             size 12.0 cells 
             lines 3.2 cells 
             id 14
             self-act
             title "Push"
             .
          03 screen-1-pb-7 Push-Button
             exception-value 13
             line 67.5
             column 19.0
             size 12.0 cells 
             lines 3.2 cells 
             id 15
             self-act
             title "Pop"
             .
          03 screen-1-pb-8 Push-Button
             exception-value 27
             line 67.5
             column 62.8
             size 12.0 cells 
             lines 3.2 cells 
             id 16
             self-act
             title "Quit"
             .
          03 screen-1-la-2 Label
             line 7.9
             column 3.1
             size 11.6 cells 
             lines 2.9 cells 
             id 18
             title "In_Data"
             .
          03 screen-1-la-3 Label
             line 55.3
             column 3.1
             size 10.3 cells 
             lines 2.6 cells 
             id 19
             title "Out_Data"
             .
          03 screen-1-gr-3 Grid
             line 59.3
             column 3.2
             size 72.5 cells 
             lines 5.1 cells 
             id 4
             boxed
             column-headings
             hscroll
             row-dividers 1
             divider-color rgb x#000000
             cursor-frame-width 3
             num-rows 1
             .
          03 screen-1-pb-5 Push-Button
             exception-value 4
             line 67.5
             column 48.2
             size 12.0 cells 
             lines 3.2 cells 
             id 13
             self-act
             title "Reset"
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
           initialize wfont-data arial-14v0.
           move 14 to wfont-size.
           move "Arial" to wfont-name.
           set wfont-bold to false.
           set wfont-italic to false.
           set wfont-underline to false.
           set wfont-strikeout to false.
           set wfont-fixed-pitch to false.
           call "w$font" using wfont-get-font arial-14v0 wfont-data.
       is-exit-rtn.
           perform is-destroy-fonts.
           exit program.
           stop run.
       is-destroy-fonts.
           destroy arial-14v0.
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
              size 87.1
              lines 73.2
              cell width 10
              cell height 10
              label-offset 20
              color 257
              modeless
              title-bar
              no wrap
              title "Screen"
           .
           display screen-1.
       is-screen-1-init-data.
           perform is-screen-1-gr-1-content.
           perform is-screen-1-gr-2-content.
           perform is-screen-1-gr-3-content.
           perform screen-1-aft-init-data.
       is-screen-1-gr-1-content.
           modify screen-1-gr-1
              column-dividers ( 1 1 1 )
              data-columns ( 1 6 16 )
              display-columns ( 1 6 21 )
              separation ( 5 5 5 )
              alignment ( "U" "U" "U" )
              data-types ( "X" "X" "X" )
           .
       is-screen-1-gr-2-content.
           modify screen-1-gr-2
              column-dividers ( 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
              1 1 1 1 1 1 )
              data-columns ( 1 5 9 13 17 21 25 29 33 37 41 45 49 53 57 
              61 65 69 73 77 81 85 89 93 97 101 )
              display-columns ( 1 6 11 16 21 26 31 36 41 46 51 56 61 66 
              71 76 81 86 91 96 101 106 111 116 121 126 )
              separation ( 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 
              5 5 5 )
              alignment ( "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" "U
      -       "" "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" 
              )
              data-types ( "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" "
      -       "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" "X
      -       "" )
           .
       is-screen-1-gr-3-content.
           modify screen-1-gr-3
              column-dividers ( 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
              1 1 1 1 1 1 )
              data-columns ( 1 5 9 13 17 21 25 29 33 37 41 45 49 53 57 
              61 65 69 73 77 81 85 89 93 97 101 )
              display-columns ( 1 6 11 16 21 26 31 36 41 46 51 56 61 66 
              71 76 81 86 91 96 101 106 111 116 121 126 )
              separation ( 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 
              5 5 5 )
              alignment ( "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" "U
      -       "" "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" 
              )
              data-types ( "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" "
      -       "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" "X
      -       "" )
           .
       is-screen-1-proc.
           perform until exit-pushed
              accept screen-1 on exception 
                 perform is-screen-1-evaluate-func
              end-accept
           perform screen-1-aft-end-acc
           end-perform.
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
       screen-1-aft-init-data.
           modify screen-1-gr-1 reset-grid 1.
           modify screen-1-gr-1 y = 11 row-background-color 3
           modify screen-1-gr-2 reset-grid 1.
           modify screen-1-gr-3 reset-grid 1.
           modify screen-1-ef-1 value " "
           modify screen-1-ef-2 value " "
           modify screen-1-pb-6 value "Push"
           modify screen-1-pb-7 value "Pop"
           move 1 to wk-j.
           perform varying wk-i from 1 by 1 until wk-i > 26
              move wk-alpha(wk-i) to wk-cell
              modify screen-1-gr-2(wk-j, wk-i) CELL-DATA = wk-cell
           end-perform
           
           move  0 to mode-sw
           move  1 to sp.
           move -1 to wp.
           move -1 to rp.
           move 0 to out-idx.
           
           modify screen-1-gr-1(1, 1) cell-data = "  ".            
           .
       screen-1-aft-end-acc.
            evaluate key-status
              when  1     *>file
                  continue
              when  2     *>Load
                  continue
              when  3     *>save
                  continue
              when  4     *>Reset
                  perform RESET-RTN
              when  11    *>ChangeMode
                  perform CHANGE-MODE-RTN
              when  12    *>Push/Queue
                  if mode-sw = 0
                     perform PUSH-RTN
                  else
                     perform QUEUE-RTN
                  end-if
              when  13    *>Pop/Deque
                  if mode-sw = 0
                     perform POP-RTN
                  else
                     perform DEQUE-RTN
                  end-if
              when  15    *>AutoRun
                  continue 
            end-evaluate  
            
           .
       RESET-RTN.
           perform screen-1-aft-init-data
           .
 
       CHANGE-MODE-RTN.
           if mode-SW = 0
              move 1 to mode-sw
              modify screen-1-pb-6 value "Queue"
              modify screen-1-pb-7 value "Deque"
           else
              move 0 to mode-sw
              modify screen-1-pb-6 value "Push"
              modify screen-1-pb-7 value "Pop"
           end-if.
           .
       PUSH-RTN.
           move 0 to ret-cd
           
           if sp > 10 
              move -1 to ret-cd
              exit paragraph
           end-if
           
           perform GET-INDATA.
           if ret-cd = -1
              exit paragraph
           end-if
           
           if sp = 0
              move 1 to sp
           end-if
           
           modify screen-1-gr-1 X = 1 Y = sp
           modify screen-1-gr-1 cell-data "   "
           modify screen-1-gr-1 X = 2 y = sp
           modify screen-1-gr-1 cell-data wk-cell-save
           
           add 1 to sp

           modify screen-1-gr-1 X = 1 y = sp
           modify screen-1-gr-1 cell-data "SP->"
           modify screen-1-gr-1 cursor-x 1 cursor-y sp
           .
           
           .
       POP-RTN.
           move 0 to ret-cd.
           if sp = 0
              move -1 to ret-cd
              exit paragraph
           end-if

           modify screen-1-gr-1 X = 1 Y = sp
           modify screen-1-gr-1 cell-data = "    "
           
           subtract 1 from sp
           modify  screen-1-gr-1 X = 2 Y = sp
           inquire screen-1-gr-1 cell-data wk-cell                      
           modify  screen-1-ef-2 value wk-cell 
           modify  screen-1-ef-1 value " "
           
           add 1 to out-idx
           modify screen-1-gr-3 X = out-idx Y = 1
           modify screen-1-gr-3 cell-data wk-cell
           modify screen-1-gr-3 cursor-x out-idx cursor-y 1
           .
           
           if sp > 1
              modify screen-1-gr-1 X = 1 Y = sp
              modify screen-1-gr-1 cell-data "sp->"
           end-if
           modify screen-1-gr-1 X = 2 Y = sp
           modify screen-1-gr-1 cell-data "    "
           modify screen-1-gr-1 cursor-x 1 cursor-y sp.
           
           if sp = 1
              move 0 to sp
           end-if.
           .
       GET-INDATA.
           move 0 to ret-cd
           modify  screen-1-gr-2 X = 1 Y = 1
           inquire screen-1-gr-2 cell-data wk-cell 
           modify  screen-1-ef-1 value wk-cell
           modify  screen-1-ef-2 value " "
           if wk-cell = " "
              move -1 to ret-cd
              exit paragraph
           end-if
           
           move wk-cell to wk-cell-save
           
           perform varying wk-i from 1 by 1 until wk-i >  25
              compute wk-j = wk-i + 1
              modify  screen-1-gr-2 X = wk-j Y = 1
              inquire screen-1-gr-2 cell-data wk-cell 
              modify  screen-1-gr-2 X = wk-i Y = 1
              modify  screen-1-gr-2 cell-data wk-cell 
           end-perform
           modify  screen-1-gr-2(1, 26) cell-data " "
           .
       
       QUEUE-RTN.
           if wp = -1 
            	move 1 to wp
           end-if
           if rp = -1
              move wp to rp
           end-if.
           if wp + 1 = rp 
              move -1 to ret-cd
              exit paragraph
           end-if
           
           perform GET-INDATA.
           if ret-cd = -1
              exit paragraph
           end-if
           
           modify screen-1-gr-1 X = 1 Y = wp
           modify screen-1-gr-1 cell-data "   "
           modify screen-1-gr-1 X = 2 y = wp
           modify screen-1-gr-1 cell-data wk-cell-save
           
           add 1 to wp
           if wp > 10 
              move 1 to wp
           end-if

           modify screen-1-gr-1 X = 1 y = wp
           modify screen-1-gr-1 cell-data "wp->"
           modify screen-1-gr-1 X = 2 y = wp
           modify screen-1-gr-1 cell-data " "
           modify screen-1-gr-1 X = 3 y = wp
           modify screen-1-gr-1 cell-data " "    
           modify screen-1-gr-1 cursor-x 1 cursor-y wp
           .
           
       DEQUE-RTN.
           if rp = -1
              move -1 to ret-cd 
              exit paragraph
           end-if.
           if rp = wp
              move -1 to ret-cd
              exit paragraph
           end-if
           modify  screen-1-gr-1 X = 2 Y = rp
           inquire screen-1-gr-1 cell-data wk-cell                      
           modify  screen-1-gr-1 cell-data = "    "
           modify  screen-1-gr-1 X = 3 Y = rp
           modify  screen-1-gr-1 cell-data = "    "
           modify  screen-1-ef-2 value wk-cell 
           modify  screen-1-ef-1 value " "
           
           add 1 to out-idx
           modify screen-1-gr-3 X = out-idx Y = 1
           modify screen-1-gr-3 cell-data wk-cell
           modify screen-1-gr-3 cursor-x out-idx cursor-y 1
           .
                      
           add 1 to rp
           if rp > 10
              move 1 to rp
           end-if 
           modify screen-1-gr-1 x = 3 y = rp 
           modify screen-1-gr-1 cell-data "<-rp"
           .
      *end event editor code
      *end {iscobol}copy-procedure
       report-composer section.
      *begin {iscobol}external-copyfiles
      *end {iscobol}external-copyfiles
