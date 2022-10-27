      *begin {iscobol}compiler-directives
      *end {iscobol}compiler-directives
      *begin {iscobol}prog-comment
      *Reversi.cbl
      *Reversi.cbl is generated from C:\Github\isGames\reversi\screen\Reversi.isp
      *end {iscobol}prog-comment
       identification division.
      *begin {iscobol}progid
       program-id. Reversi.
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
       select map-file assign to dynamic map-file-name
           organization line sequential
           file status map-f-sts.
      *end file-control editor code
      *end {iscobol}file-control
       data division.
       file section.
      *begin {iscobol}file-section
      *start file section editor code
       fd  map-file.
       01  map-record.
           05  map-row    pic 99.
           05  fil-01     pic x.
           05  map-col    pic 99.
           05  fil-02     pic x.
           05  map-color  pic 9.
      *end file section editor code
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
       77 Arial-20v0 handle of font.
       77 Arial-12v0 handle of font.
       77 Arial-14v0 handle of font.
       77 Arial-13v0 handle of font.
       77 Arial-14v00 handle of font.
       77 Arial-15v0 handle of font.
       77 Arial-16v0 handle of font.
       01 map-f-sts pic x(02).
       01 mode-sw pic 9(01).
       01 num-white pic 9(02).
       01 num-black pic 9(02).
       01 num-reverse pic 9(02).
       01 wk_row pic 9(02).
       01 wk-col pic 9(02).
       01 g-char-tbl.
          05 g-char-def.
             10 filler pic x(03) value "Åõ".
             10 filler pic x(03) value "Åú".
          05 filler redefines g-char-def.
             10 g-char occurs 2 pic x(03).
       01 map-key pic 9(04).
       01 ret-cd pic S9(01).
       01 c-color pic 9(01) value 1.
       01 wk-cell pic x(03).
       01 ws-x pic S9(02).
       01 ws-y pic S9(02).
       01 wk-i pic 9(02).
       01 wk-j pic 9(02).
       01 dx pic S9(02).
       01 dy pic s9(02).
       01 MatSize pic 9(02) value 8.
       01 rev_tbl.
          02 rev-cnt pic 9(02).
          02 filler occurs 10.
             10 rev-y pic 9(02).
             10 rev-x pic 9(02).
       77 Arial-20v00 handle of font.
      *start working-storage editor code
       COPY "isopensave.def".
       01  map-file-name pic x(128).
       01  opensave-status pic s9(01).
       01  dev-tbl.
           05 dev-def.
             10 dev-def-y pic x(16) value "-1-1-10000+1+1+1".
             10 dev-def-x pic x(16) value "-100+1-1+1-100+1".
           05 filler redefines dev-def.
             10 dev-y occurs 8 pic x(02).
             10 dev-x occurs 8 pic x(02).
       
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
             line 3.8
             column 16.5
             size 22.9 cells 
             lines 4.8 cells 
             font Arial-20v0
             id 1
             title "Reversi Game"
             .
          03 screen-1-la-2 Label
             line 6.6
             column 52.4
             size 15.8 cells 
             lines 3.1 cells 
             id 2
             title "Select Map file"
             .
          03 screen-1-pb-1 Push-Button
             exception-value 1
             line 9.6
             column 75.9
             size 4.4 cells 
             lines 3.1 cells 
             id 3
             title "..."
             .
          03 screen-1-ef-1 Entry-Field
             line 9.6
             column 52.4
             size 22.2 cells 
             lines 3.1 cells 
             id 4
             3-d
             .
          03 screen-1-pb-2 Push-Button
             exception-value 2
             line 14.8
             column 53.5
             size 9.6 cells 
             lines 3.2 cells 
             id 5
             title "file load"
             .
          03 screen-1-pb-3 Push-Button
             exception-value 3
             line 14.8
             column 67.0
             size 9.0 cells 
             lines 3.2 cells 
             id 6
             title "file save"
             .
          03 screen-1-la-3 Label
             line 22.1
             column 52.8
             size 8.4 cells 
             lines 3.4 cells 
             id 7
             title "Mode"
             .
          03 screen-1-pb-4 Push-Button
             exception-value 4
             line 22.1
             column 63.4
             size 14.5 cells 
             lines 3.4 cells 
             id 8
             title "Play Game"
             .
          03 screen-1-la-4 Label
             line 28.6
             column 53.5
             size 15.7 cells 
             lines 2.9 cells 
             id 9
             title "Select Cell and click"
             .
          03 screen-1-rb-1 Radio-Button
             line 37.1
             column 53.4
             size 9.3 cells 
             lines 3.1 cells 
             id 11
             title "White :"
             group 1
             group-value "0"
             value "0"
             .
          03 screen-1-rb-2 Radio-Button
             line 43.1
             column 53.1
             size 9.3 cells 
             lines 3.1 cells 
             id 12
             title "Black :"
             group 1
             group-value "0"
             value "0"
             .
          03 screen-1-ef-2 Entry-Field
             line 37.1
             column 65.6
             size 9.3 cells 
             lines 3.1 cells 
             id 13
             3-d
             .
          03 screen-1-ef-3 Entry-Field
             line 43.1
             column 65.3
             size 9.3 cells 
             lines 3.1 cells 
             id 14
             3-d
             .
          03 screen-1-la-6 Label
             line 48.5
             column 52.9
             size 9.3 cells 
             lines 3.1 cells 
             id 15
             title "Reversed"
             .
          03 screen-1-ef-4 Entry-Field
             line 48.5
             column 65.3
             size 9.3 cells 
             lines 3.1 cells 
             id 16
             3-d
             .
          03 screen-1-pb-5 Push-Button
             exception-value 27
             line 58.3
             column 51.8
             size 10.3 cells 
             lines 3.2 cells 
             id 17
             title "Quit"
             .
          03 screen-1-pb-6 Push-Button
             exception-value 6
             line 57.4
             column 67.6
             size 10.8 cells 
             lines 3.7 cells 
             id 18
             title "Reset"
             .
          03 screen-1-gr-1 Grid
             line 12.3
             column 7.4
             size 36.9 cells 
             lines 39.9 cells 
             font Arial-20v00
             id 19
             event procedure screen-1-gr-1-evt-proc
             boxed
             adjustable-rows
             adjustable-columns
             row-dividers 1
             divider-color rgb x#000000
             cursor-frame-width 3
             protection 1
             num-rows 8
             border-color rgb x#000000
             rows-per-page 8
             .
          03 screen-1-la-7 Label
             line 59.9
             column 6.3
             size 28.2 cells 
             lines 3.1 cells 
             id 20
             title "result"
             .
          03 screen-1-la-5 Label
             line 28.6
             column 71.9
             size 9.5 cells 
             lines 2.9 cells 
             id 10
             title "ÅZ  |   Åú"
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
           initialize wfont-data arial-20v0.
           move 20 to wfont-size.
           move "Arial" to wfont-name.
           set wfont-bold to false.
           set wfont-italic to false.
           set wfont-underline to false.
           set wfont-strikeout to false.
           set wfont-fixed-pitch to false.
           call "w$font" using wfont-get-font arial-20v0 wfont-data.
           move arial-20v0 to arial-20v00.
       is-exit-rtn.
           perform is-destroy-fonts.
           exit program.
           stop run.
       is-destroy-fonts.
           destroy arial-20v0.
           destroy arial-20v00.
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
              size 86.4
              lines 62.9
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
              column-dividers ( 1 1 1 1 1 1 1 1 )
              data-columns ( 1 4 7 10 13 16 19 22 )
              display-columns ( 1 4 7 10 13 16 19 22 )
              separation ( 5 5 5 5 5 5 5 5 )
              alignment ( "U" "U" "U" "U" "U" "U" "U" "U" )
              data-types ( "X" "X" "X" "X" "X" "X" "X" "X" )
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
           when msg-goto-cell-mouse
              perform screen-1-gr-1-evt-msg-goto-cell-mouse
           when msg-gd-dblclick
              perform screen-1-gr-1-evt-msg-gd-dblclick
           when other
           end-evaluate
           .
      *start event editor code

       screen-1-aft-init-data.
           modify screen-1-gr-1 reset-grid 1
           *>modify screen-1-gr-1 mass-update = 0
           perform varying wk-row from 1 by 1  until wk-row > 8
              perform varying wk-col from 1 by 1 until wk-col > 8
                 modify screen-1-gr-1(wk-row, wk-col) CELL-DATA = " "
                 modify screen-1-gr-1(wk-row, wk-col) cell-color = 289
              end-perform
           end-perform           
           *>modify screen-1-gr-1 mass-update = 1
           modify screen-1-gr-1 cursor-Y 6 cursor-X 6
           move 0 to num-white num-black num-reverse ret-cd
           move 0 to mode-sw
           move 1 to c-color
           modify screen-1-rb-1 enabled = 1
           modify screen-1-rb-2 enabled = 0
            
           .
       screen-1-aft-create.
           move 0 to rev-cnt.
            
           .
       screen-1-aft-end-acc.
            evaluate key-status
              when  1     *>file
                  perform FILE-CHOOSE-RTN
              when  2     *>Load
                  perform FILE-LOAD-RTN
              when  3     *>Save
                  perform FILE-SAVE-RTN
              when  4     *>Mode Changerow
                  perform CHANGE-MODE-RTN                  
              when  6    *>Reset
                  perform RESET-RTN
            end-evaluate           
           .
       screen-1-gr-1-evt-msg-goto-cell-mouse.
           perform screen-1-gr-1-evt-msg-gd-dblclick 
           .           
       
       screen-1-gr-1-evt-msg-gd-dblclick.
           inquire screen-1-gr-1 X ws-X Y ws-Y
           move ws-x to wk-col
           move ws-y to wk-row
           perform DBL-CLICKED-RTN

           .
       
           
       DBL-CLICKED-RTN.
           if mode-sw = 0     *>Play Mode
              perform REVERSE-RTN
              modify screen-1-ef-4 value num-reverse
              compute c-color = 3 - c-color
              if c-color = 1
                 modify screen-1-rb-1 enabled = 1
                 modify screen-1-rb-2 enabled = 0
              else
                 modify screen-1-rb-1 enabled = 0
                 modify screen-1-rb-2 enabled = 1
              end-if
           else
              compute map-key = wk-row * 100 + wk-col
              modify  screen-1-gr-1 x = wk-col, y = wk-row
              inquire screen-1-gr-1 cell-data wk-cell
              
              evaluate wk-cell
                 when  g-char(1)
                    subtract 1 from num-white
                    move 2 to map-color
                    add 1 to num-black
                    modify screen-1-gr-1(wk-row, wk-col) 
                            cell-data = g-char(2) cell-color = 257
                 when g-char(2)
                    subtract 1 from num-black 
                    modify screen-1-gr-1(wk-row, wk-col) 
                            cell-data = "Å@" cell-color = 289
                 when " "
                    move 1 to map-color
                    add 1 to num-white
                    modify screen-1-gr-1(wk-row, wk-col) 
                           cell-data = g-char(1) cell-color = 257
              end-evaluate
           end-if.
           modify screen-1-ef-2 value num-white
           modify screen-1-ef-3 value num-black
           modify screen-1-ef-4 value num-reverse
           
           .
       
       REVERSE-RTN.
           move 0 to num-reverse
           modify  screen-1-gr-1 x = wk-col, y = wk-row
           inquire screen-1-gr-1 cell-data wk-cell
           if wk-cell not = " "
              move -1 to ret-cd
              exit paragraph
           end-if.
           move g-char(c-color) to wk-cell
           modify screen-1-gr-1(wk-row, wk-col)  cell-data = wk-cell
                           cell-color = 257
           if c-color = 1
              add 1 to num-white
           else
              add 1 to num-black
           end-if
           perform varying wk-i from 1 by 1 until wk-i > 8
              move function numval(dev-y(wk-i)) to dy
              move function numval(dev-x(wk-i)) to dx
              perform ReverseCount
           end-perform
                         
          .
       ReverseCount.
           move 0 to rev-cnt.
           compute ws-y = wk-row + dy 
           compute ws-x = wk-col + dx
           perform until 1 = 0
              if ws-x < 1 OR ws-x > 8 OR ws-y < 1 OR ws-y > 8
                 move 0 to rev-cnt
                 exit perform
              end-if
              modify  screen-1-gr-1 x = ws-x, y = ws-y
              inquire screen-1-gr-1 cell-data wk-cell
              if wk-cell = " "
                 move 0 to rev-cnt
                 exit perform
              end-if
              if  wk-cell = g-char(c-color)
                  perform REVERSE-FLUSH 
                 exit perform
              end-if
              add 1 to rev-cnt
              move ws-y to rev-y(rev-cnt)
              move ws-x to rev-x(rev-cnt)
              
              compute ws-y = ws-y + dy 
              compute ws-x = ws-x + dx
           end-perform
       
           .        
       REVERSE-FLUSH.
           if rev-cnt > 0
                 perform varying wk-j from 1 by 1 
                         until wk-j > rev-cnt
                    move rev-y(wk-j) to map-row
                    move rev-x(wk-j) to map-col
                    move g-char(c-color) to wk-cell
                    modify screen-1-gr-1(map-row, map-col)  
                           cell-data = wk-cell cell-color = 257
                    if c-color = 1
                       add      1 to   num-white
                       subtract 1 from num-black
                    else
                       add      1 to   num-black
                       subtract 1 from num-white
                    end-if
                    add 1 to num-reverse
                 end-perform
           end-if
       
           .  
       FILE-CHOOSE-RTN.  
           initialize opensave-data
           move "Choose a file" to opnsav-title
           move "../data/"      to opnsav-default-dir

           call "C$OPENSAVEBOX" using opensave-open-box, 
                                      opensave-data
                               giving opensave-status

           if opensave-status > 0
              move opnsav-filename to map-file-name
              modify screen-1-ef-1 value map-file-name
           end-if
           .
       FILE-SAVE-RTN.
           inquire screen-1-ef-1 value map-file-name
           open output map-file
           initialize  map-record
           perform varying wk-i from 1 by 1 until wk-i > MatSize
              perform varying wk-j from 1 by 1 until wk-j > MatSize
                   inquire screen-1-gr-1(wk-i, wk-j) cell-data wk-cell
                   if wk-cell = " "
                      exit perform cycle
                   end-if
                   evaluate wk-cell
                      when g-char(1)  move 0 to map-color
                      when g-char(2)  move 1 to map-color
                   end-evaluate
                   move wk-i to map-row
                   move wk-j to map-col
                   write map-record
               end-perform                    
           end-perform.
           close  map-file 
           .
       FILE-LOAD-RTN.
           move 0 to num-white num-black num-reverse
           modify screen-1-gr-1 mass-update = 1
           modify screen-1-gr-1 reset-grid 1
           perform screen-1-aft-init-data.
           inquire screen-1-ef-1 value map-file-name
           open input map-file
           perform until 1 = 0
              read map-file at end exit perform
              end-read
              move map-row   to wk-row
              move map-col   to wk-col
              if map-color = 1
                 modify screen-1-gr-1(wk-row, wk-col) 
                         cell-data g-char(1) cell-color = 257
                 add 1 to num_white
              else
                 modify screen-1-gr-1(wk-row, wk-col) 
                         cell-data g-char(2) cell-color = 257
                 add 1 to num-black
              end-if
           end-perform
           close map-file.     
           
           modify screen-1-ef-2 value num-white
           modify screen-1-ef-3 value num-black
           modify screen-1-ef-4 value num-reverse
           modify screen-1-gr-1 mass-update = 0
           .
       CHANGE-MODE-RTN.
    	     if mode-sw = 0
    		      move 1 to mode-sw
    		      modify screen-1-la-5 value "ÅZÅ®ÅúÅ®Å¢"
    		      modify screen-1-pb-4 value "Set stones"
    		    else
    		      move 0 to mode-sw
    		      modify screen-1-la-5 value "ÅZ  |  Åú"
    		      modify screen-1-pb-4 value "Play Game"
    		    end-if.
           .
       RESET-RTN.
           perform screen-1-aft-init-data
           modify screen-1-ef-2 value num-white
           modify screen-1-ef-3 value num-black
           modify screen-1-ef-4 value num-reverse
           .
           
       
       


      *end event editor code
      *end {iscobol}copy-procedure
       report-composer section.
      *begin {iscobol}external-copyfiles
      *end {iscobol}external-copyfiles
