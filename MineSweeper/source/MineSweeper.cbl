      *begin {iscobol}compiler-directives
      *end {iscobol}compiler-directives
      *begin {iscobol}prog-comment
      *MineSweeper.cbl
      *MineSweeper.cbl is generated from C:\Github\isGames\MineSweeper\screen\MineSweeper.isp
      *end {iscobol}prog-comment
       identification division.
      *begin {iscobol}progid
       program-id. MineSweeper.
       author. Žõˆê.
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
           class CellItem  as "CellItem"
           class ArrayList as "java.util.ArrayList"
           class jinteger  as "java.lang.Integer"
           .
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
           05  filler     pic x.
           05  map-col    pic 99.
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
       77 Arial-9v0 handle of font.
       01 mode-sw pic 9 value 0.
       01 show-bomb-sw pic 9(01) value 0.
       01 timer-sw pic 9(01).
       01 ret-cd pic s9(01).
       01 ws-X pic 9(02).
       01 ws-y pic 9(02).
       01 wk-row pic s9(02).
       01 wk-col pic s9(02).
       01 num-bombs pic S9(02).
       01 num-cleared pic s9(02).
       01 bomb-cnt pic 9(02).
       01 wk-cell pic x(03).
       01 wk-idx pic 9(04).
       01 wk-i pic 9(02).
       01 wk-j pic 9(02).
       01 wk-k pic 99.
       77 wk-msg pic x(30) value "msg".
       01 dev-tbl.
          05 dev-def.
             10 dev-def-y pic x(16) value "-1-1-10000+1+1+1".
             10 dev-def-x pic x(16) value "-100+1-1+1-100+1".
          05 filler redefines dev-def.
             10 dev-y occurs 8 pic x(02).
             10 dev-x occurs 8 pic x(02).
       01 map-f-sts pic X(02).
       01 map-file-name pic X(128).
       01 wk-y pic 99.
       01 wk-x pic 9(02).
       01 wrk-item pic 99.
       01 hit pic 9.
       77 Arial-10v0 handle of font.
      *start working-storage editor code
       01  bombList   object reference ArrayList.
       01  clist-a    object reference ArrayList.
       01  clist-t    object reference ArrayList.
       01  cell-item  object reference CellItem.
       01  wk-jint    object reference Jinteger.
       COPY "isopensave.def".
       01  opensave-status pic s9(01).
      *
       01  hMain                   handle of thread.
       01  hTime                   handle of thread.
       01  receive-status          pic 99.
       01  system-time             pic 9(8).
       01  time-disp.
        03 h-disp                  pic 99.
        03 filler                  pic x value ":".
        03 m-disp                  pic 99.         
        03 filler                  pic x value ":".
        03 s-disp                  pic 99.
       01  msg-string              pic x(1).
       78  stop-msg                value "X".
       77  SYNC-TIME-1          PIC 9(8).
       77  SYNC-TIME-2          PIC 9(8).
       77  TIME-DIFF            PIC 9(6)V99.
       77  BEGIN-SECS           PIC 9(6)V99.
       77  END-SECS             PIC 9(6)V99.
       77  BEGIN-TIME           PIC 9(8).
       01  BEGIN-TIME-FIELDS    REDEFINES BEGIN-TIME.
           03  BEGIN-HOURS      PIC 9(2).
           03  BEGIN-MINUTES    PIC 9(2).
           03  BEGIN-SECONDS    PIC 9(2).
           03  BEGIN-HUNDRETHS  PIC 9(2).
       77  END-TIME             PIC 9(8).
       01  END-TIME-FIELDS      REDEFINES END-TIME.
           03  END-HOURS        PIC 9(2).
           03  END-MINUTES      PIC 9(2).
           03  END-SECONDS      PIC 9(2).
           03  END-HUNDRETHS    PIC 9(2).
       77  TOTAL-TIME           PIC 9(7)V99 VALUE ZERO.
       
       
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
             line 2.17
             column 6.92
             size 21.92 cells 
             lines 4.25 cells 
             font Arial-20v0
             id 25
             title "MIne Sweeper3"
             .
          03 screen-1-pb-1 Push-Button
             exception-value 1
             line 5.08
             column 42.25
             size 8.4 cells 
             lines 2.9 cells 
             font Arial-9v0
             id 2
             self-act
             title "file:"
             .
          03 screen-1-ef-1 Entry-Field
             line 5.67
             column 53.0
             size 21.17 cells 
             lines 2.25 cells 
             id 1
             3-d
             .
          03 screen-1-pb-2 Push-Button
             exception-value 2
             line 9.5
             column 53.0
             size 8.4 cells 
             lines 2.9 cells 
             font Arial-9v0
             id 4
             self-act
             title "Load"
             .
          03 screen-1-pb-3 Push-Button
             exception-value 3
             line 9.5
             column 64.33
             size 8.4 cells 
             lines 2.9 cells 
             font Arial-9v0
             id 5
             self-act
             title "Save"
             .
          03 screen-1-gr-1 Grid
             line 12.83
             column 6.92
             size 29.08 cells 
             lines 25.42 cells 
             width-in-cells
             height-in-cells
             font Arial-10v0
             id 3
             event procedure screen-1-gr-1-evt-proc
             boxed
             adjustable-rows
             adjustable-columns
             row-dividers 1
             divider-color rgb x#000000
             cursor-frame-width 3
             protection 1
             num-rows 12
             border-color rgb x#000000
             rows-per-page 10
             .
          03 screen-1-pb-4 Push-Button
             exception-value 27
             line 44.67
             column 63.0
             size 7.67 cells 
             lines 3.1 cells 
             font Arial-9v0
             id 7
             title "Quit"
             .
          03 screen-1-la-6 Label
             line 26.75
             column 44.25
             size 5.67 cells 
             lines 2.08 cells 
             font Arial-9v0
             visible 0
             id 8
             title "Select cell :"
             .
          03 screen-1-pb-5 Push-Button
             exception-value 5
             line 20.75
             column 54.83
             size 12.92 cells 
             lines 2.33 cells 
             font Arial-9v0
             id 9
             title "Play Game"
             .
          03 screen-1-la-4 Label
             line 21.33
             column 44.5
             size 9.58 cells 
             lines 2.25 cells 
             font Arial-9v0
             id 10
             title "Mode Change"
             .
          03 screen-1-la-2 Label
             line 15.5
             column 44.42
             size 5.5 cells 
             lines 3.17 cells 
             font Arial-9v0
             id 12
             title "Bombs"
             .
          03 screen-1-ef-2 Entry-Field
             line 15.17
             column 50.83
             size 5.42 cells 
             lines 2.92 cells 
             font Arial-20v0
             id 13
             3-d
             .
          03 screen-1-pb-12 Push-Button
             exception-value 13
             line 44.67
             column 50.75
             size 7.67 cells 
             lines 3.08 cells 
             font Arial-9v0
             id 17
             title "Reset"
             .
          03 screen-1-la-7 Label
             line 49.75
             column 6.75
             size 43.17 cells 
             lines 4.33 cells 
             font Arial-20v0
             id 18
             title wk-msg
             .
          03 screen-1-la-3 Label
             line 6.92
             column 5.17
             size 7.0 cells 
             lines 3.0 cells 
             font Arial-20v0
             id 11
             title "Timer"
             .
          03 screen-1-la-5 Label
             line 6.92
             column 14.17
             size 11.17 cells 
             lines 3.0 cells 
             font Arial-20v0
             id 14
             title "00:00:00"
             .
          03 screen-1-la-8 Label
             line 26.75
             column 53.0
             size 21.17 cells 
             lines 2.08 cells 
             font Arial-9v0
             id 16
             title "Double click: Open cell "
             .
          03 screen-1-la-9 Label
             line 30.33
             column 52.92
             size 20.17 cells 
             lines 2.33 cells 
             font Arial-9v0
             id 6
             title " Right click: set Flag"
             .
          03 screen-1-ef-3 Entry-Field
             line 15.17
             column 65.83
             size 6.58 cells 
             lines 2.92 cells 
             font Arial-20v0
             id 15
             3-d
             .
          03 screen-1-la-10 Label
             line 15.5
             column 58.67
             size 4.42 cells 
             lines 2.58 cells 
             id 19
             title "Flags"
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
           initialize wfont-data arial-9v0.
           move 9 to wfont-size.
           move "Arial" to wfont-name.
           set wfont-bold to false.
           set wfont-italic to false.
           set wfont-underline to false.
           set wfont-strikeout to false.
           set wfont-fixed-pitch to false.
           call "w$font" using wfont-get-font arial-9v0 wfont-data.
           initialize wfont-data arial-10v0.
           move 10 to wfont-size.
           move "Arial" to wfont-name.
           set wfont-bold to false.
           set wfont-italic to false.
           set wfont-underline to false.
           set wfont-strikeout to false.
           set wfont-fixed-pitch to false.
           call "w$font" using wfont-get-font arial-10v0 wfont-data.
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
           destroy arial-9v0.
           destroy arial-10v0.
           destroy arial-20v0.
       is-screen-1-routine.
           perform is-screen-1-scrn
           perform is-screen-1-proc.
       is-screen-1-scrn.
           perform is-screen-1-create
           perform is-screen-1-init-data.
       is-screen-1-create.
           display standard window background-low
              screen line 49
              screen column 109
              size 77.333336
              lines 55.833332
              cell width 12
              cell height 12
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
              column-dividers ( 1 1 1 1 1 1 1 1 1 1 1 1 )
              data-columns ( 1 4 7 10 13 16 19 22 25 28 31 39 )
              display-columns ( 1 5 9 13 17 21 25 29 33 37 41 45 )
              separation ( 5 5 5 5 5 5 5 5 5 5 5 5 )
              alignment ( "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" "U
      -       "" )
              data-types ( "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" "
      -       "X" )
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
           when msg-grid-rbutton-down
              perform screen-1-gr-1-evt-msg-grid-rbutton-down
           when msg-gd-dblclick
              perform screen-1-gr-1-evt-msg-gd-dblclick
           when other
           end-evaluate
           .
      *start event editor code
       screen-1-aft-init-data.
           modify screen-1-gr-1 reset-grid 1
           *>modify screen-1-gr-1 mass-update = 0
           perform varying wk-row from 1 by 1  until wk-row > 12
              perform varying wk-col from 1 by 1 until wk-col > 12
                 modify screen-1-gr-1(wk-row, wk-col) CELL-DATA = " "
                 modify screen-1-gr-1(wk-row, wk-col) cell-color = 289
              end-perform
           end-perform           
           *>modify screen-1-gr-1 mass-update = 1
           modify screen-1-gr-1 cursor-Y 6 cursor-X 6
           move 0 to num-bombs, num-cleared, timer-sw, ret-cd
           .

       screen-1-aft-create.
            set bombList to ArrayList:>new
            set clist-a to arraylist:>new()
            set clist-t to arraylist:>new()            
           .
       screen-1-aft-end-acc.
            
            evaluate key-status
              when  1     *>file
                  perform FILE-CHOOSE-RTN
              when  2     *>Load
                  perform FILE-LOAD-RTN
              when  3     *>Save
                  perform FILE-SAVE-RTN
              when  5     *>Mode Changerow
                  perform CHANGE-MODE-RTN                  
              when 13     *>Reset
                  perform STOP-TIMER
                  perform RESET-RTN
            end-evaluate
            .
        screen-1-gr-1-evt-msg-gd-dblclick.
           inquire screen-1-gr-1 X ws-X Y ws-Y
           move ws-x to wk-col
           move ws-y to wk-row
           if mode-sw = 0
                  perform START-TIMER
                  perform OPEN-CELL-RTN
                  if ret-cd = -1
                     perform STOP-TIMER
                     move "Bomb Game over!!" to wk-msg
                     modify screen-1-la-7 value wk-msg 
                     perform SHOW-BOMBS-RTN
                  end-if                     
           else
               inquire screen-1-gr-1 cell-data wk-cell
               evaluate wk-cell
                  when " "
                      perform SET-BOMB
                  when "B"
                      perform CLEAR-BOMB
               end-evaluate  
           end-if
           .
       screen-1-gr-1-evt-msg-grid-rbutton-down.
           inquire screen-1-gr-1 X ws-X Y ws-Y
           move ws-x to wk-col
           move ws-y to wk-row
           if mode-sw = 0
                  perform START-TIMER
                  inquire screen-1-gr-1 cell-data wk-cell
                  if wk-cell = "B" OR " "    
                     perform SET-FLAG                     
                  else
                     if wk-cell = "F"
                        perform CLEAR-FLAG
                     end-if
                  end-if                
                  if num-cleared = bombList:>size()
                     perform STOP-TIMER 
                     move "Congratulations!! All cleared" to wk-msg
                     modify screen-1-la-7 value wk-msg
                  end-if
           end-if
            
           .
            
       RESET-RTN.
           move 0 to num-bombs num-cleared timer-sw
           modify screen-1-gr-1 reset-grid 1
           perform screen-1-aft-init-data.
           perform screen-1-aft-create.
           modify screen-1-ef-2 value " "
           move "00:00:00" to time-disp
           modify screen-1-la-5 title time-disp
           move space to wk-msg
           modify screen-1-la-7 value wk-msg
           modify screen-1-ef-2 value num-bombs
           modify screen-1-ef-3 value num-cleared

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
           perform varying wk-i from 0 by 1 
                   until   wk-i >= bombList:>size()
              set cell-item to bombList:>get(wk-i) as Cellitem 
              cell-item:>getRow(wk-row)
              cell-item:>getCol(wk-col)
              move wk-row to map-row
              move wk-col to map-col
              write map-record
           end-perform
           close  map-file 
           .
       FILE-LOAD-RTN.
           bombList:>clear()
           move 0 to num-bombs num-cleared 
           modify screen-1-gr-1 mass-update = 1
           modify screen-1-gr-1 reset-grid 1
           perform screen-1-aft-init-data.
           inquire screen-1-ef-1 value map-file-name
           open input map-file
           perform until 1 = 0
             read map-file at end exit perform
             end-read
             move map-row to wk-row
             move map-col to wk-col
             modify screen-1-gr-1(wk-row, wk-col) cell-data = "B"   
             add 1 to num-bombs
             set cell-item to CellItem:>new(wk-row, wk-col)
             bombList:>add(cell-item)
                   
           end-perform
           modify screen-1-ef-2 value num-bombs
           close map-file.     
           if mode-sw = 0
              perform Hide-BOMBS-RTN
           else
              perform Show-BOMBS-RTN
           end-if  
           modify screen-1-gr-1 mass-update = 0
           .
           
       CHANGE-MODE-RTN.
           if mode-sw = 0
              move 1 to mode-sw
              modify screen-1-pb-5 value "Cell setting"
              modify screen-1-la-8 title "Double click: Bomb Set/Clear" 
              modify screen-1-la-9 visible false
              perform Show-BOMBS-RTN
           else
              move 0 to mode-sw
              modify screen-1-pb-5 value "Play Game"
              modify screen-1-la-8 title "Double click: Open Cell" 
              modify screen-1-la-9 visible true
              modify screen-1-la-9 title "Right  click: Flag Set/Clear"
              perform HIDE-BOMBS-RTN                     
           end-if
           .
                  
       SET-BOMB.
           modify  screen-1-gr-1(wk-row, wk-col)  CELL-DATA = "B" 
                   cell-color = 257
           add 1 to num-bombs
           modify screen-1-ef-2 value num-bombs
           set cell-item to CellItem:>new(wk-row, wk-col)
           bombList:>add(cell-item)
           .
           
       CLEAR-BOMB.
           subtract 1 from num-bombs
           modify screen-1-ef-2 value num-bombs
           modify  screen-1-gr-1(wk-row, wk-col) CELL-DATA = " "
                                                 cell-color = 297
           perform check-CONTAINS
           if hit = 1
              set wk-Jint to wk-k
              bombList:>remove(wk-Jint)
           end-if                
           .
       SET-FLAG.
           subtract 1 from num-bombs 
           modify screen-1-ef-2 value num-bombs
           perform check-CONTAINS
           if hit = 1
              add 1 to num-cleared
              modify screen-1-ef-3 value num-cleared
           end-if
           modify screen-1-gr-1 cell-data = "F"
           modify screen-1-gr-1 cell-color = 365
           .
       CLEAR-FLAG.
           add 1 to num-bombs                     
           modify screen-1-ef-2 value num-bombs
           perform check-CONTAINS
           if hit = 1
              modify screen-1-gr-1 cell-data = "B"
              subtract 1 from num-cleared  
              modify screen-1-ef-3 value num-cleared                    
           else
              modify screen-1-gr-1 cell-data = " "
           end-if
           modify screen-1-gr-1 cell-color = 257           
           .       
       check-CONTAINS.
           move 0 to hit.
           perform varying wk-k from 0 by 1 
                   until wk-k >= bombList:>size()
              set cell-item to bombList:>get(wk-k) as CellItem
              cell-item:>getRow(wk-y)
              cell-item:>getCol(wk-x)
              if wk-row = wk-y and wk-col = wk-x
                 move 1 to hit
                 exit perform
              end-if
           end-perform
       
           .    
       Show-BOMBS-RTN.
           perform varying wk-i from 0 by 1  
                   until   wk-i >= bombList:>size() 
              set cell-item to  bombList:>get(wk-i) as CellItem
              cell-item:>getRow(wk-row)
              cell-item:>getCol(wk-col)
              modify  screen-1-gr-1 x = wk-col y = wk-row
              modify  screen-1-gr-1 cell-data = "B"
              if ret-cd = -1
                 modify  screen-1-gr-1 cell-color = 417
              else
                 modify  screen-1-gr-1 cell-color = 257
              end-if
           end-perform           
           .
       HIDE-BOMBS-RTN.
           perform varying wk-i from 0 by 1  
                   until   wk-i >= bombList:>size() 
              set cell-item to  bombList:>get(wk-i) as CellItem
              cell-item:>getRow(wk-row)
              cell-item:>getCol(wk-col)
              modify  screen-1-gr-1 x = wk-col y = wk-row
              modify  screen-1-gr-1 cell-color = 297
           end-perform           
       
           .
       OPEN-CELL-RTN.
           move 0 to ret-cd
           modify  screen-1-gr-1 x = ws-X, y = ws-Y
           inquire screen-1-gr-1 cell-data wk-cell
           if wk-cell = "B"
              move -1 to ret-cd
           end-if
           if wk-cell = " "
              clist_a:>clear()
              clist_t:>clear()
              set cell-item to CellItem:>new(ws-Y, ws-X)
              clist_a:>add(cell-item)
              perform until clist-a:>size() < 1
                 move 0 to wk-j
                 perform until wk-j >= clist-a:>size()
                    set cell-item to  clist-a:>get(wk-j) as CellItem
                    cell-item:>getRow(ws-Y)
                    cell-item:>getCol(ws-X)                 
                    perform CELL-CHECK-RTN
                    add 1 to wk-j 
                 end-perform
                 perform COPY-CLIST-RTN
              end-perform              
           end-if
           
           .
       CELL-CHECK-RTN.
           move 0 to bomb-cnt.
           perform varying wk-i from 1 by 1 until wk-i > 8
           
              compute wk-row = ws-y + function numval(dev-y(wk-i))
              compute wk-col = ws-x + function numval(dev-x(wk-i))
              if wk-row < 1 or wk-row > 12 or wk-col < 1 or wk-col > 12
                 exit perform cycle
              end-if              
              modify  screen-1-gr-1 x = wk-col, y = wk-row
              inquire screen-1-gr-1 cell-data wk-cell
              if wk-cell = "B"
                 add 1 to bomb-cnt
              end-if              
           end-perform
           if bomb-cnt > 0
              modify  screen-1-gr-1 x = ws-X, y = ws-Y
              move  bomb-cnt to wk-cell
              modify  screen-1-gr-1 cell-data = wk-cell
              evaluate bomb-cnt
                 when 1
                    modify screen-1-gr-1  cell-color = 481
                 when 2
                    modify screen-1-gr-1  cell-color = 385
                 when  3
                    modify screen-1-gr-1  cell-color = 417
                 when other              
                    modify screen-1-gr-1  cell-color = 417
              end-evaluate
           else
              perform varying wk-i from 1 by 1 until wk-i > 8
                 compute wk-row = ws-y + function numval(dev-y(wk-i))
                 compute wk-col = ws-x + function numval(dev-x(wk-i))
                 if wk-row < 1 or wk-row > 12 or 
                    wk-col < 1 or wk-col > 12
                    exit perform cycle
                 end-if  
                modify  screen-1-gr-1 x = wk-col, y = wk-row
                inquire screen-1-gr-1 cell-data wk-cell
                if wk-cell = " "  
                   modify screen-1-gr-1 cell-data = "C" 
                   modify screen-1-gr-1 cell-color = 16        
                   set cell-item to CellItem:>new(wk-row, wk-col)
                   clist-t:>add(cell-item)
                end-if
              end-perform
           end-if
           .
       COPY-CLIST-RTN.    
           clist-a:>clear() .               
           perform varying wk-i from 0 by 1 
                   until   wk-i >= clist-t:>size()
               set cell-item to  clist-t:>get(wk-i) as CellItem
               clist-a:>add(cell-item)                 
           end-perform
           clist-t:>clear()
           .
            
        SHOW-TIMER.
           perform until 1 = 2
              yield
              accept system-time from time
              perform CALC-TIME
              modify screen-1-la-5 title time-disp
              receive msg-string from hMain
                 before time 100
                 not on exception  
                    if msg-string = stop-msg
                       exit perform
                    end-if
              end-receive
           end-perform
           . 
              
       START-TIMER.
           if timer-sw = 1
              exit paragraph
           end-if
           move 1 to timer-sw
           ACCEPT SYNC-TIME-1 FROM TIME.
           PERFORM WITH TEST AFTER UNTIL SYNC-TIME-1 NOT = SYNC-TIME-2
               ACCEPT SYNC-TIME-2 FROM TIME
           END-PERFORM.
           ACCEPT BEGIN-TIME FROM TIME
      *
           ACCEPT hMain from thread
           perform thread SHOW-TIMER handle hTime
           *>send stop-msg to hTime
           
           .
           
       STOP-TIMER.
           if timer-sw = 0
              exit paragraph
           end-if
           move 0 to timer-sw.
           perform CALC-TIME           
           stop thread hTime.
           move 0 to hTime. 
                             
           .       
           
       CALC-TIME.
           ACCEPT END-TIME FROM TIME.
           COMPUTE BEGIN-SECS = (BEGIN-HOURS * 3600) +
               (BEGIN-MINUTES * 60) + (BEGIN-SECONDS) +
               (BEGIN-HUNDRETHS / 100).
           COMPUTE END-SECS = (END-HOURS * 3600) +
               (END-MINUTES * 60) + (END-SECONDS) +
               (END-HUNDRETHS / 100).
           IF (END-SECS < BEGIN-SECS) THEN
               ADD 86400 TO END-SECS
           END-IF.
           COMPUTE TIME-DIFF = END-SECS - BEGIN-SECS
           DIVIDE  TIME-DIFF by 3600 giving h-disp remainder TIME-DIFF
           DIVIDE  TIME-DIFF by 60   giving m-disp remainder s-disp
           .   
                         
           

      *end event editor code
      *end {iscobol}copy-procedure
       report-composer section.
      *begin {iscobol}external-copyfiles
      *end {iscobol}external-copyfiles
