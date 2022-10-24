      *begin {iscobol}compiler-directives
      *end {iscobol}compiler-directives
      *begin {iscobol}prog-comment
      *catsEye.cbl
      *catsEye.cbl is generated from C:\Github\isGames\catsEye\screen\catsEye.isp
      *end {iscobol}prog-comment
       identification division.
      *begin {iscobol}progid
       program-id. catsEye.
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
            class cellItem  as "CellItem"
            class arraylist as "java.util.ArrayList"
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
       01  map-record   pic x(42).
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
       77 ‚l‚r-ƒSƒVƒbƒN-11v0-b handle of font.
       01 result-msg pic x(40).
       01 row-idx pic 9(02).
       01 col-idx pic 9(02).
       01 row-max pic 9(2) value 21.
       01 col-max pic 9(2) value 21.
       01 wk-i pic 9(02).
       01 wk-j pic 9(02).
       01 wk-ptr pic 9(03).
       01 pic-99 pic 99.
       77 Arial-9v0 handle of font.
       77 Arial-8v0 handle of font.
       01 map-file-name pic x(80).
       01 map-f-sts pic x(2).
       01 selected-cells-list pic x any length.
       01 wk-pos pic X(50).
       01 wk-row-x.
          05 wk-row pic 9(02).
       01 wk-col-x.
          05 wk-col pic 9(02).
       01 wk-string pic x(50).
       01 opensave-status pic S9(01).
       01 gold-row pic 9(02).
       01 gold-col pic 9(02).
       01 start-row pic 9(02) value 0.
       01 start-col pic 9(02) value 0.
       01 step-no pic 9(02).
       01 ret-cd pic S9(4).
       01 wk-cell pic x.
       77 Arial-20v0 handle of font.
      *start working-storage editor code
       COPY "isopensave.def".
       01  clist-a    object reference arraylist.
       01  clist-t    object reference arraylist.
       01  cell-item  object reference CellItem.
       01  wk-jint    object reference Jinteger.
       
       
       01  map-row.
           05 map-col   PIC XX occurs 21.
       
       01  selected-cell-tbl.
           05  selected-cell-cnt pic 99.
           05  filler  occurs 50.
             10  selected-row   pic 99.
             10  selected-col   pic 99.    
       
       01  dev-tbl.
           05  dev-define.
               10  filler pic s9 value 1.
               10  filler pic s9 value 0.
               10  filler pic s9 value -1.
               10  filler pic s9 value 0.
               10  filler pic s9 value 0.
               10  filler pic s9 value 1.
               10  filler pic s9 value 0.
               10  filler pic s9 value -1.
           05  dev-red redefines dev-define.
               10  filler occurs 4.
                 15  dev-yy   pic s9.
                 15  dev-xx   pic s9.
         
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
          03 screen-1-gr-1 Grid
             line 12.75
             column 4.6
             size 38.5 cells 
             lines 74.0 cells 
             width-in-cells
             height-in-cells
             font Arial-8v0
             id 1
             boxed
             column-headings
             adjustable-rows
             adjustable-columns
             row-headings
             row-dividers 1
             heading-background-color rgb x#b6e2f7 
             heading-foreground-color rgb x#000000
             divider-color rgb x#000000
             cursor-frame-width 3
             num-col-headings 1
             num-row-headings 1
             num-rows 21
             selection-mode 36
             cell-selected-background-color rgb x#c0c0c0
             rows-per-page 21
             .
          03 screen-1-pb-1 Push-Button
             exception-value 1
             line 10.83
             column 56.0
             size 8.4 cells 
             lines 4.83 cells 
             font Arial-9v0
             id 2
             self-act
             title "file:"
             .
          03 screen-1-ef-1 Entry-Field
             line 17.0
             column 57.7
             size 34.8 cells 
             lines 4.17 cells 
             font Arial-9v0
             id 3
             3-d
             value map-file-name
             .
          03 screen-1-pb-2 Push-Button
             exception-value 2
             line 27.83
             column 66.4
             size 8.4 cells 
             lines 4.83 cells 
             font Arial-9v0
             id 4
             self-act
             title "Load"
             .
          03 screen-1-pb-3 Push-Button
             exception-value 3
             line 27.83
             column 77.8
             size 8.4 cells 
             lines 4.83 cells 
             font Arial-9v0
             id 5
             self-act
             title "Save"
             .
          03 screen-1-pb-4 Push-Button
             exception-value 5
             line 92.0
             column 54.9
             size 8.2 cells 
             lines 4.17 cells 
             font Arial-9v0
             id 8
             self-act
             title "Step in"
             .
          03 screen-1-pb-5 Push-Button
             exception-value 4
             line 92.0
             column 73.9
             size 8.2 cells 
             lines 4.17 cells 
             font Arial-9v0
             id 9
             self-act
             title "Reset"
             .
          03 screen-1-pb-6 Push-Button
             exception-value 27
             line 92.0
             column 83.4
             size 8.2 cells 
             lines 4.17 cells 
             font Arial-9v0
             id 10
             self-act
             title "Quit"
             .
          03 screen-1-la-2 Label
             line 35.83
             column 56.0
             size 18.7 cells 
             lines 3.33 cells 
             font Arial-9v0
             id 11
             title "Select setting Cells"
             .
          03 screen-1-la-3 Label
             line 56.67
             column 66.1
             size 3.9 cells 
             lines 4.17 cells 
             font Arial-9v0
             id 12
             title "row"
             .
          03 screen-1-la-4 Label
             line 56.33
             column 77.5
             size 3.5 cells 
             lines 3.17 cells 
             font Arial-9v0
             id 13
             title "col"
             .
          03 screen-1-ef-2 Entry-Field
             line 56.5
             column 70.3
             size 5.2 cells 
             lines 4.33 cells 
             font Arial-9v0
             id 14
             3-d
             .
          03 screen-1-ef-3 Entry-Field
             line 56.5
             column 80.6
             size 6.3 cells 
             lines 4.33 cells 
             font Arial-9v0
             id 15
             3-d
             .
          03 screen-1-pb-7 Push-Button
             exception-value 11
             line 44.83
             column 56.3
             size 5.7 cells 
             lines 5.17 cells 
             font Arial-9v0
             id 6
             title "Block"
             .
          03 screen-1-pb-8 Push-Button
             exception-value 12
             line 44.83
             column 66.5
             size 5.7 cells 
             lines 5.17 cells 
             font Arial-9v0
             id 7
             title "Gold"
             .
          03 screen-1-pb-9 Push-Button
             exception-value 13
             line 44.83
             column 77.1
             size 5.7 cells 
             lines 5.17 cells 
             font Arial-9v0
             id 16
             title "Start"
             .
          03 screen-1-ef-4 Entry-Field
             line 78.83
             column 57.2
             size 32.7 cells 
             lines 4.83 cells 
             font Arial-9v0
             id 17
             3-d
             read-only
             value result-msg
             .
          03 screen-1-la-1 Label
             line 57.17
             column 55.7
             size 9.6 cells 
             lines 3.5 cells 
             font Arial-9v0
             id 18
             title "GOLD position"
             .
          03 screen-1-pb-10 Push-Button
             exception-value 14
             line 44.83
             column 86.8
             size 5.7 cells 
             lines 5.17 cells 
             font Arial-9v0
             id 19
             title "Clear"
             .
          03 screen-1-la-5 Label
             line 64.17
             column 66.1
             size 3.9 cells 
             lines 4.17 cells 
             font Arial-9v0
             id 20
             title "row"
             .
          03 screen-1-la-6 Label
             line 64.0
             column 77.3
             size 3.5 cells 
             lines 3.17 cells 
             font Arial-9v0
             id 21
             title "col"
             .
          03 screen-1-la-7 Label
             line 64.5
             column 55.6
             size 9.6 cells 
             lines 3.5 cells 
             font Arial-9v0
             id 22
             title "Start position"
             .
          03 screen-1-ef-5 Entry-Field
             line 64.0
             column 70.3
             size 5.2 cells 
             lines 4.33 cells 
             font Arial-9v0
             id 23
             3-d
             .
          03 screen-1-ef-6 Entry-Field
             line 64.0
             column 80.7
             size 6.2 cells 
             lines 3.67 cells 
             font Arial-9v0
             id 24
             3-d
             .
          03 screen-1-la-8 Label
             line 4.5
             column 19.3
             size 28.1 cells 
             lines 6.5 cells 
             font Arial-20v0
             id 25
             title "CatsEye Gold X"
             .
          03 screen-1-pb-11 Push-Button
             exception-value 6
             line 92.0
             column 64.4
             size 8.2 cells 
             lines 4.17 cells 
             font Arial-9v0
             id 26
             title "AutoRun"
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
           initialize wfont-data arial-8v0.
           move 8 to wfont-size.
           move "Arial" to wfont-name.
           set wfont-bold to false.
           set wfont-italic to false.
           set wfont-underline to false.
           set wfont-strikeout to false.
           set wfont-fixed-pitch to false.
           call "w$font" using wfont-get-font arial-8v0 wfont-data.
           initialize wfont-data arial-9v0.
           move 9 to wfont-size.
           move "Arial" to wfont-name.
           set wfont-bold to false.
           set wfont-italic to false.
           set wfont-underline to false.
           set wfont-strikeout to false.
           set wfont-fixed-pitch to false.
           call "w$font" using wfont-get-font arial-9v0 wfont-data.
           initialize wfont-data arial-20v0.
           move 20 to wfont-size.
           move "Arial" to wfont-name.
           set wfont-bold to false.
           set wfont-italic to false.
           set wfont-underline to false.
           set wfont-strikeout to false.
           set wfont-fixed-pitch to false.
           call "w$font" using wfont-get-font arial-20v0 wfont-data.
           initialize wfont-data ‚‚“-ƒSƒVƒbƒN-11v0-b.
           move 11 to wfont-size.
           move "‚l‚r ƒSƒVƒbƒN" to wfont-name.
           set wfont-bold to true.
           set wfont-italic to false.
           set wfont-underline to false.
           set wfont-strikeout to false.
           set wfont-fixed-pitch to false.
           call "w$font" using wfont-get-font ‚‚“-ƒSƒVƒbƒN-11v0-b wfont-data.
       is-exit-rtn.
           perform is-destroy-fonts.
           exit program.
           stop run.
       is-destroy-fonts.
           destroy arial-8v0.
           destroy arial-9v0.
           destroy arial-20v0.
           destroy ‚‚“-ƒSƒVƒbƒN-11v0-b.
       is-screen-1-routine.
           perform is-screen-1-scrn
           perform is-screen-1-proc.
       is-screen-1-scrn.
           perform is-screen-1-create
           perform is-screen-1-init-data.
       is-screen-1-create.
           display standard window background-low
              screen line 25
              screen column 91
              size 92.8
              lines 109.166664
              cell width 10
              cell height 6
              label-offset 20
              control font ‚l‚r-ƒSƒVƒbƒN-11v0-b
              color 257
              modeless
              title-bar
              no wrap
              title "Screen"
              handle window-handle
           .
           display screen-1.
       is-screen-1-init-data.
           perform is-screen-1-gr-1-content.
           perform screen-1-aft-init-data.
       is-screen-1-gr-1-content.
           modify screen-1-gr-1
              column-dividers ( 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
              1 )
              data-columns ( 1 3 5 7 9 11 13 15 17 19 21 23 25 27 29 31 
              33 35 37 39 41 )
              display-columns ( 1 4 7 10 13 16 19 22 25 28 31 34 37 40 
              43 46 49 52 55 58 61 )
              separation ( 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 )
              alignment ( "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" "U" "U
      -       "" "U" "U" "U" "U" "U" "U" "U" "U" "U" )
              data-types ( "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" "
      -       "X" "X" "X" "X" "X" "X" "X" "X" "X" "X" )
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
      *start event editor code

       screen-1-aft-init-data.
           perform CLEAR-MAP-RTN.
           set clist-a to arraylist:>new()
           set clist-t to arraylist:>new()
           move 0 to step-no
           .
       screen-1-aft-end-acc.
           evaluate key-status
              when  1     *>file
                  perform FILE-CHOOSE-RTN
              when  2     *>Load
                  perform FILE-LOAD-RTN
              when  3     *>save
                  perform FILE-SAVE-RTN
              when  4     *>Reset
                  perform RESET-RTN   
              when  5     *>StepIn
                  perform STEP-IN-RTN
                  perform STEP-IN-AFTER
              when  6     *>AutoRun
                  perform until 1 = 0
                     perform STEP-IN-RTN
                     perform STEP-IN-AFTER
                     if ret-cd <= 0
                        exit perform
                     end-if
                     call "C$SLEEP" using 0.5
                  end-perform                  
              when 11     *>Block
                  perform SET-BLOCK-RTN
              when 12     *>Gold
                  perform SET-GOLD-RTN
              when 13     *>Start
                  perform SET-START-RTN
              when 14
                  perform SET-CLEAR-RTN
           end-evaluate.
           .
           
       GET-SELECTED-CELLS.
           inquire screen-1-gr-1 cells-selected selected-cells-list.
           move selected-cells-list to wk-string
           move 1 to wk-ptr.
           move 0 to selected-cell-cnt.
           perform until 1 = 0
              move space to wk-pos
              unstring wk-string delimited by all space
                       into wk-pos
                       with pointer wk-ptr
              if wk-pos = space exit perform
              end-if
              add 1 to selected-cell-cnt
              unstring wk-pos delimited by ","
                       into wk-row-x wk-col-x                               
              move function numval(wk-row-x) to 
                   selected-row(selected-cell-cnt)
              move function numval(wk-col-x) to 
                   selected-col(selected-cell-cnt) 
           end-perform
           .
       SET-BLOCK-RTN.
           perform GET-SELECTED-CELLS.
           perform varying wk-i from 1 by 1 
                   until wk-i > selected-cell-cnt
                   move selected-row(wk-i) to wk-row
                   move selected-col(wk-i) to wk-col
              modify screen-1-gr-1(wk-row, wk-col) CELL-DATA = "#"
           end-perform.
           .
       SET-GOLD-RTN.
           perform GET-SELECTED-CELLS.
           if selected-cell-cnt not = 1
              move "You can't specify multiple GOLD cell!!" to 
                    result-msg
              modify  screen-1-ef-4 value result-msg
           else
              move selected-row(1) to gold-row
              move selected-col(1) to gold-col
              modify screen-1-gr-1(gold-row, gold-col) CELL-DATA = "G"
              compute wk-row = gold-row - 1
              compute wk-col = gold-col - 1
              modify screen-1-ef-2 value wk-row
              modify screen-1-ef-3 value wk-col
           end-if.
           
       SET-START-RTN.
           perform GET-SELECTED-CELLS.
           if selected-cell-cnt not = 1
              move "You can't specify multiple START cell!!" to 
                    result-msg
              modify  screen-1-ef-4 value result-msg
           else
              move selected-row(1) to start-row
              move selected-col(1) to start-col
              modify screen-1-gr-1(start-row, start-col) CELL-DATA ="S"
              compute wk-row = start-row - 1
              compute wk-col = start-col - 1
              modify screen-1-ef-5 value wk-row
              modify screen-1-ef-6 value wk-col
           end-if.
 
       SET-CLEAR-RTN.
           perform GET-SELECTED-CELLS.
           perform varying wk-i from 1 by 1 
                   until wk-i > selected-cell-cnt
                   move selected-row(wk-i) to wk-row
                   move selected-col(wk-i) to wk-col
              modify screen-1-gr-1(wk-row, wk-col) CELL-DATA = " "
           end-perform.
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
           perform varying row-idx from 2 by 1 until row-idx > row-max
              inquire screen-1-gr-1(row-idx) record-data map-record              
              write map-record
           end-perform
           close  map-file 
           .
       FILE-LOAD-RTN.
           inquire screen-1-ef-1 value map-file-name
           open input map-file
           modify screen-1-gr-1 mass-update = 1
           modify screen-1-gr-1 reset-grid 3 
           move 2 to row-idx
           perform until 1 = 0
             read map-file at end exit perform
             end-read
             modify screen-1-gr-1 record-to-add map-record
             add 1 to row-idx
           end-perform
           modify screen-1-gr-1 mass-update = 0
           close map-file.            
           .
       STEP-IN-RTN.       
           if start-row = 0 or start-col = 0
              move -2 to ret-cd
              exit paragraph
           end-if.
           if step-no = 0
               set cell-item to CellItem:>new(start-row, start-col)
               clist-a:>add(cell-item)
           end-if
           .
		       clist-t:>clear() . 
		       add 1 to step-no.
		       modify screen-1-gr-1 mass-update = 1
		       
           perform varying wk-i from 0 by 1  
                   until   wk-i >= clist-a:>size() 
              set cell-item to  clist-a:>get(wk-i) as CellItem
              cell-item:>getRow(wk-row)
              cell-item:>getCol(wk-col)
              move step-no to pic-99
              perform varying wk-j from 1 by 1 until wk-j > 4
                 compute row-idx = wk-row + dev-yy(wk-j)
                 compute col-idx = wk-col + dev-xx(wk-j)
                 if  row-idx < 1 OR row-idx > 21 OR
                     col-idx < 1 OR col-idx > 21
                     exit perform cycle
                 end-if
                 modify  screen-1-gr-1 X = col-idx Y = row-idx
                 move space to wk-cell
                 inquire screen-1-gr-1 cell-data wk-cell
                 if wk-cell = "G"
                    move -1 to ret-cd
                    modify screen-1-gr-1 mass-update = 0
                    exit paragraph
                 end-if
                 if wk-cell = "#"
                    exit perform cycle
                 end-if
                 if wk-cell = " "
                    modify screen-1-gr-1(row-idx, col-idx) 
                            CELL-DATA pic-99
                    set cell-item to CellItem:>new(row-idx, col-idx)
                    clist-t:>add(cell-item)
                 end-if
              end-perform                       
           end-perform.
           modify screen-1-gr-1 mass-update = 0
           set ret-cd to clist-t:>size()
           .
           
       STEP-IN-AFTER.
           evaluate ret-cd
                 when -1 
                         move "You got Gold !!" to result-msg
                         modify screen-1-ef-4 value result-msg
                 when -2
                         move "You have to set Start-Cell!!" to 
                               result-msg
                         modify screen-1-ef-4 value result-msg                     
                 when 0
                         move "You missed failure" to result-msg
                         modify screen-1-ef-4 value result-msg
                 when other
                         perform CLIST-COPY-RTN
           end-evaluate
           .
       CLIST-COPY-RTN.
               clist-a:>clear() .               
               perform varying wk-i from 0 by 1 
                       until   wk-i >= clist-t:>size()
                   set cell-item to  clist-t:>get(wk-i) as CellItem
                   clist-a:>add(cell-item)                 
               end-perform
               clist-t:>clear()
                .
                
       RESET-RTN.
           perform CLEAR-MAP-RTN
           if gold-row not = 0 or gold-col not = 0
              move 0 to gold-row
              move 0 to gold-col
              modify screen-1-ef-2 value "  "
              modify screen-1-ef-3 value "  "
           end-if
           if start-row not = 0 or start-col not = 0
              move 0 to start-row
              move 0 to start-col
              modify screen-1-ef-5 value "  "
              modify screen-1-ef-6 value "  "
           end-if
           .
           
       CLEAR-MAP-RTN.
           modify screen-1-gr-1 mass-update = 1
           modify screen-1-gr-1 reset-grid 1 
           perform varying row-idx from 1 by 1 until row-idx > row-max
              move space to map-row
              if row-idx = 1
                 perform varying wk-i from 1 by 1 until wk-i >= col-max
                    move wk-i to pic-99
                    move pic-99 to map-col(wk-i + 1,)
                 end-perform
              else
                 compute pic-99 = row-idx - 1
                 move pic-99 to map-col(1)
              end-if
              modify screen-1-gr-1 record-to-add map-row
           end-perform.
           modify screen-1-gr-1 mass-update = 0
		        .            
      *end event editor code
      *end {iscobol}copy-procedure
       report-composer section.
      *begin {iscobol}external-copyfiles
      *end {iscobol}external-copyfiles
