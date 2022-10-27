      *begin {iscobol}compiler-directives
      *end {iscobol}compiler-directives
      *begin {iscobol}prog-comment
      *HitBlow.cbl
      *HitBlow.cbl is generated from C:\Github\isGames\HitBlow\screen\HitBlow.isp
      *end {iscobol}prog-comment
       identification division.
      *begin {iscobol}progid
       program-id. HitBlow.
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
           class HashSet as "java.util.HashSet"
           class JCharacter as "java.lang.Character"
           .
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
       77 Arial-20v0 handle of font.
       77 Arial-12v0 handle of font.
       77 Arial-14v0 handle of font.
       01 my-string pic x any length.
       01 grid-idx pic 9(02).
       01 try-no pic 9(02).
       01 wk-y pic 9(02).
       01 wk-L pic 9(02).
       01 err-flg pic 9.
       01 wk-i pic 9(02).
       01 wk-j pic 9(02).
       01 wk-k pic 9(02).
       01 wk-NUM pic 9(02).
       01 wk-BGcolor pic 9(05).
       01 wk-char pic x.
       01 chance pic 9(02).
       01 noChance pic 9(02).
       01 wk-str1 pic x(10).
       01 wk-hit1 pic 9(02).
       01 wk-blow1 pic 9(02).
       01 wk-str2 pic x(10).
       01 wk-hit2 pic 9(02).
       01 wk-blow2 pic 9(02).
       01 wk-total pic 9(02).
       01 wk-X2 pic x(02).
       01 help-checked pic 9(01).
      *start working-storage editor code
       01  list-ok         object reference HashSet.
       01  list-no         object reference HashSet.
       01  list-chance     object reference HashSet.

       01  pc-param.
           05  pc-func     pic x(5).
           05  p-digit     pic 99     value 3.
           05  chk-string  pic x(10).
           05  hit-cnt     pic 99.
           05  blow-cnt    pic 99.
       01  NUM-INIT     PIC X(10) value "0123456789".
       01  msg1 pic x(50) value "No input!!".
       01  msg2 pic x(50) value "Only digits are allowed".
       01  msg3 pic x(50) value "Ilegal digit of number".
       01  msg4 pic x(50) value "Duplicate digit!! ".
       01  msg5 pic x(50) value "Congratulations!!".
       01  msg6.
           05  filler   pic x(04)   value "Hit=".
           05  msg-hit  pic 9(02).
           05  filler   pic x(07)  value "  Blow=".
           05  msg-blow pic 9(02).
           05  filler   pic x(35)  value space.
           
       01  change-cnt.
           05  filler occurs 4.
               10  gray-cnt   pic 99.
               10  cyan-cnt   pic 99.

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
             line 3.4
             column 20.9
             size 36.8 cells 
             lines 5.9 cells 
             font Arial-20v0
             id 1
             title "Hit and Blow Game"
             .
          03 screen-1-la-3 Label
             line 17.7
             column 59.3
             size 11.8 cells 
             lines 3.0 cells 
             id 5
             title "Input Number"
             .
          03 screen-1-ef-2 Entry-Field
             line 17.1
             column 72.9
             size 9.4 cells 
             lines 3.6 cells 
             font Arial-12v0
             id 6
             3-d
             .
          03 screen-1-pb-2 Push-Button
             exception-value 12
             line 17.7
             column 85.3
             size 9.1 cells 
             lines 3.0 cells 
             id 7
             title "Check"
             .
          03 screen-1-la-2 Label
             line 9.8
             column 59.2
             size 10.1 cells 
             lines 4.4 cells 
             id 2
             title "Play Digit"
             .
          03 screen-1-ef-1 Entry-Field
             line 9.8
             column 73.5
             size 8.8 cells 
             lines 3.8 cells 
             font Arial-12v0
             id 3
             3-d
             value P-DIGIT
             .
          03 screen-1-pb-1 Push-Button
             exception-value 11
             line 9.8
             column 84.2
             size 10.2 cells 
             lines 3.8 cells 
             id 4
             title "Reset"
             .
          03 screen-1-gr-1 Grid
             line 10.8
             column 10.6
             size 36.4 cells 
             lines 43.0 cells 
             font Arial-12v0
             id 8
             boxed
             column-headings
             vscroll
             row-dividers 1
             heading-background-color rgb x#c0c0c0
             divider-color rgb x#000000
             cursor-frame-width 3
             protection 1
             num-row-headings 1
             num-rows 11
             border-color rgb x#000000
             rows-per-page 10
             .
          03 screen-1-ef-3 Entry-Field
             line 28.3
             column 59.6
             size 4.8 cells 
             lines 3.9 cells 
             font Arial-12v0
             id 9
             3-d
             read-only
             value "0"
             .
          03 screen-1-pb-3 Push-Button
             exception-value 27
             line 60.3
             column 80.9
             size 9.5 cells 
             lines 3.8 cells 
             id 10
             title "Quit"
             .
          03 screen-1-ef-21 Entry-Field
             line 59.2
             column 5.5
             size 53.1 cells 
             lines 4.2 cells 
             id 11
             3-d
             .
          03 screen-1-ef-4 Entry-Field
             line 28.3
             column 66.4
             size 4.8 cells 
             lines 3.9 cells 
             font Arial-12v0
             id 12
             3-d
             read-only
             value "1"
             .
          03 screen-1-ef-5 Entry-Field
             line 28.3
             column 73.2
             size 4.8 cells 
             lines 3.9 cells 
             font Arial-12v0
             id 13
             3-d
             read-only
             value "2"
             .
          03 screen-1-ef-6 Entry-Field
             line 28.3
             column 80.2
             size 4.8 cells 
             lines 3.9 cells 
             font Arial-12v0
             id 14
             3-d
             read-only
             value "3"
             .
          03 screen-1-ef-7 Entry-Field
             line 28.3
             column 87.5
             size 4.8 cells 
             lines 3.9 cells 
             font Arial-12v0
             id 15
             3-d
             read-only
             value "4"
             .
          03 screen-1-ef-8 Entry-Field
             line 35.3
             column 59.6
             size 4.8 cells 
             lines 3.9 cells 
             font Arial-12v0
             id 16
             3-d
             read-only
             value "5"
             .
          03 screen-1-ef-9 Entry-Field
             line 35.3
             column 66.4
             size 4.8 cells 
             lines 3.9 cells 
             font Arial-12v0
             id 17
             3-d
             read-only
             value "6"
             .
          03 screen-1-ef-10 Entry-Field
             line 35.3
             column 73.2
             size 4.8 cells 
             lines 3.9 cells 
             font Arial-12v0
             id 18
             3-d
             read-only
             value "7"
             .
          03 screen-1-ef-11 Entry-Field
             line 35.3
             column 80.1
             size 4.8 cells 
             lines 3.9 cells 
             font Arial-12v0
             id 19
             3-d
             read-only
             value "8"
             .
          03 screen-1-ef-12 Entry-Field
             line 35.3
             column 87.3
             size 4.8 cells 
             lines 3.9 cells 
             font Arial-12v0
             id 20
             3-d
             read-only
             value "9"
             .
          03 screen-1-la-5 Label
             line 47.0
             column 63.5
             size 5.9 cells 
             lines 3.0 cells 
             id 22
             title "Gray"
             .
          03 screen-1-la-6 Label
             line 50.5
             column 63.5
             size 5.2 cells 
             lines 2.6 cells 
             id 23
             title "Cyan"
             .
          03 screen-1-la-7 Label
             line 43.5
             column 71.1
             size 4.3 cells 
             lines 2.7 cells 
             id 24
             title "01"
             .
          03 screen-1-la-8 Label
             line 43.5
             column 75.7
             size 4.3 cells 
             lines 2.7 cells 
             id 25
             title "02"
             .
          03 screen-1-la-9 Label
             line 43.5
             column 81.7
             size 4.3 cells 
             lines 2.7 cells 
             id 26
             title "03"
             .
          03 screen-1-la-10 Label
             line 43.5
             column 86.9
             size 4.3 cells 
             lines 2.7 cells 
             id 27
             title "04"
             .
          03 screen-1-ef-13 Entry-Field
             line 47.0
             column 71.1
             size 3.5 cells 
             lines 2.6 cells 
             id 28
             3-d
             read-only
             .
          03 screen-1-ef-14 Entry-Field
             line 47.0
             column 75.7
             size 3.5 cells 
             lines 2.6 cells 
             id 29
             3-d
             read-only
             .
          03 screen-1-ef-15 Entry-Field
             line 47.0
             column 81.7
             size 3.5 cells 
             lines 2.6 cells 
             id 30
             3-d
             read-only
             .
          03 screen-1-ef-16 Entry-Field
             line 47.0
             column 86.9
             size 3.5 cells 
             lines 2.6 cells 
             id 31
             3-d
             read-only
             .
          03 screen-1-ef-17 Entry-Field
             line 50.5
             column 71.1
             size 3.5 cells 
             lines 2.6 cells 
             id 32
             3-d
             read-only
             .
          03 screen-1-ef-18 Entry-Field
             line 50.5
             column 75.7
             size 3.5 cells 
             lines 2.6 cells 
             id 33
             3-d
             read-only
             .
          03 screen-1-ef-19 Entry-Field
             line 50.5
             column 81.7
             size 3.5 cells 
             lines 2.6 cells 
             id 34
             3-d
             read-only
             .
          03 screen-1-ef-20 Entry-Field
             line 50.5
             column 86.9
             size 3.5 cells 
             lines 2.6 cells 
             id 35
             3-d
             read-only
             .
          03 screen-1-cb-1 Check-Box
             line 43.5
             column 55.8
             size 9.2 cells 
             lines 2.0 cells 
             id 21
             event procedure screen-1-cb-1-evt-proc
             title "Helper"
             value "0"
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
           initialize wfont-data arial-12v0.
           move 12 to wfont-size.
           move "Arial" to wfont-name.
           set wfont-bold to false.
           set wfont-italic to false.
           set wfont-underline to false.
           set wfont-strikeout to false.
           set wfont-fixed-pitch to false.
           call "w$font" using wfont-get-font arial-12v0 wfont-data.
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
           destroy arial-12v0.
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
              size 96.0
              lines 65.1
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
              column-dividers ( 1 1 1 1 )
              data-columns ( 1 3 13 15 )
              display-columns ( 1 6 21 26 )
              separation ( 5 5 5 5 )
              alignment ( "U" "U" "U" "U" )
              data-types ( "9" "X" "9" "9" )
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
       screen-1-cb-1-evt-proc.
           evaluate event-type
           when cmd-clicked
              perform screen-1-cb-1-evt-cmd-clicked
           when other
           end-evaluate
           .
      *start event editor code
        screen-1-aft-create.
           move 1 to grid-idx
           move "INIT" to pc-func.
           move 3 to p-digit.
           call "pcSide" using pc-param. 
           
           set list_no  to HashSet:>new().
           set list_ok  to HashSet:>new().
           set list-chance to HashSet:>new().
           .      
           
       screen-1-aft-init-data.
           modify screen-1-gr-1(1, 1) cell-data = "No"
           modify screen-1-gr-1(1, 2) cell-data = "Number"
           modify screen-1-gr-1(1, 3) cell-data = "Hit"
           modify screen-1-gr-1(1, 4) cell-data = "Blow"
           modify screen-1-cb-1 value=1
           
            
           .
           
       screen-1-aft-end-acc.
            evaluate key-status
              when  12     *>Check
                  perform Check-RTN
              when  11    *>Reset
                  perform RESET-RTN
            end-evaluate           
           .
       Check-RTN. 
           inquire screen-1-ef-2 value my-string.
           perform Input-check.
           if err-flg = 1
              exit paragraph
           end-if.
           modify screen-1-ef-21 value " " color  1
           
           move "CHECK" to pc-func.
           move my-string to chk-string
           call "pcSide"  using pc-param
           add 1 to grid-idx
           compute try-no = grid-idx - 1
           modify screen-1-gr-1(grid-idx, 1) cell-data = try-no
           modify screen-1-gr-1(grid-idx, 2) cell-data = my-string
           modify screen-1-gr-1(grid-idx, 3) cell-data = hit-cnt
           modify screen-1-gr-1(grid-idx, 4) cell-data= blow-cnt
           modify screen-1-gr-1 cursor-y = grid-idx
           
           if hit-cnt = p-digit
              modify screen-1-ef-21 value msg5 color  5
              perform varying wk-i from 1 by 1 until wk-i > p-digit
                 move my-String(wk-i:1) to wk-char
                 move 417 to wk-BGcolor   *>Black+Red
                 perform Set-BGcolor
              end-perform
              
           else
              move hit-cnt to msg-hit
              move blow-cnt to msg-blow
              modify screen-1-ef-21 value msg6 color  1
           end-if.   
           
           if hit-cnt not = p-digit
              inquire screen-1-cb-1 value help-checked
              if help-checked = 1
                 initialize change-cnt
                 perform Set-change-cnt 
                 perform Anal-01
                 perform Anal-02
                 perform Anal-03
                 perform Anal-04
                 perform Set-change-cnt 
              end-if
           end-if.
                    
           .
       Input-check.
           move 0 to err-flg.
           move function byte-length(my-String) to wk-L.
           if wk-L = 0
              modify screen-1-ef-21 value msg1 color  5
              move 1 to err-flg
              exit paragraph
           end-if.
           perform varying wk-i from 1 by 1 until wk-i > wk-L
             if my-String(wk-i:1) < "0" or > "9"
                modify screen-1-ef-21 value msg2 color  5
                move 1 to err-flg
                exit paragraph
             end-if
           end-perform.
           if wk-L not = p-digit
              modify screen-1-ef-21 value msg3 color  5
              move 1 to err-flg
              exit paragraph
           end-if.
           perform varying wk-i from 1 by 1 until wk-i > p-digit - 1
              compute wk-j = wk-i + 1
              perform until wk-j > p-digit 
                 if my-String(wk-i:1) = my-String(wk-j:1)
                    modify screen-1-ef-21 value msg4 color  5
                    move 1 to err-flg
                    exit paragraph
                 end-if
                 add 1 to wk-j
              end-perform
           end-perform
           .
       Set-change-cnt.
           modify screen-1-ef-13 value gray-cnt(1)
           modify screen-1-ef-14 value gray-cnt(2)
           modify screen-1-ef-15 value gray-cnt(3)
           modify screen-1-ef-16 value gray-cnt(4)
           modify screen-1-ef-17 value cyan-cnt(1)
           modify screen-1-ef-18 value cyan-cnt(2)
           modify screen-1-ef-19 value cyan-cnt(3)
           modify screen-1-ef-20 value cyan-cnt(4)
       
           .    
       Anal-01.
           if hit-cnt + blow-cnt = 0
              perform varying wk-i from 1 by 1 until wk-i > p-digit
                 move my-String(wk-i:1) to wk-char
                 if (list_no:>contains(wk-char as JCharacter ))
                    exit perform cycle
                 end-if
                 move 289 to wk-BGcolor   *>Black+Gray
                 perform Set-BGcolor
                 perform Add-list-no
                 add 1 to gray-cnt(1)
              end-perform
              exit paragraph
           end-if.
           if hit-cnt + blow-cnt = p-digit
              perform varying wk-i from 1 by 1 until wk-i > p-digit
                 move my-String(wk-i:1) to wk-char
                 if (list_ok:>contains(wk-char as JCharacter ))
                    exit perform cycle
                 end-if
                 move 385 to wk-BGcolor  *>Black+Cyan
                 perform Set-BGcolor
                 perform Add-list-ok
                 add 1 to cyan-cnt(1)
              end-perform
              perform varying wk-i from 1 by 1 until wk-i > 10
                 move Num-INIT(wk-i:1) to wk-char
                 if NOT(list-ok:>contains(wk-char as JCharacter))
                    if (list_no:>contains(wk-char as JCharacter ))
                        exit perform cycle
                    end-if                    
                    move 289 to wk-BGcolor   *>Black+Gray
                    perform Set-BGcolor
                    perform Add-list-no
                    add 1 to gray-cnt(1)
                 end-if
              end-perform
           end-if.
           
           .
       Anal-02.
           move 0 to chance, noChance.
           perform varying wk-i from 1 by 1 until wk-i > p-digit
              move my-String(wk-i:1) to wk-char
              if list_no:>contains(wk-char as JCharacter )
                 add 1 to noChance
              end-if
              if list-ok:>contains(wk-char as JCharacter )
                 add 1 to chance
              end-if
           end-perform
    	     if p-digit - noChance = hit-cnt + blow-cnt 
    	        perform varying wk-i from 1 by 1 until wk-i > p-digit
                 move my-String(wk-i:1) to wk-char
                 if NOT(list_no:>contains(wk-char as JCharacter ))
                     if (list_ok:>contains(wk-char as JCharacter ))
                        exit perform cycle
                    end-if                    
                    move 385 to wk-BGcolor  *>Black+Cyan
                    perform Set-BGcolor
                    perform Add-list-ok
                    add 1 to cyan-cnt(2)
                 end-if
             end-perform
           end-if.
          
           if hit-cnt + blow-cnt - chance = 0
          	   perform varying wk-i from 1 by 1 until wk-i > p-digit
          	      move my-String(wk-i:1) to wk-char
                  if NOT(list-ok:>contains(wk-char as JCharacter))
                     if (list_no:>contains(wk-char as JCharacter ))
                        exit perform cycle
                     end-if                    
    			           move 289 to wk-BGcolor   *>Black+Gray
                     perform Set-BGcolor
                     perform Add-list-no
                     add 1 to gray-cnt(2)
                  end-if
              end-perform
           end-if.
           .
        Anal-03.
           inquire screen-1-gr-1(grid-idx,2) cell-data wk-str1
           inquire screen-1-gr-1(grid-idx,3) cell-data wk-X2
           move function numval(wk-X2) to wk-hit1
           inquire screen-1-gr-1(grid-idx,4) cell-data wk-X2
           move function numval(wk-X2) to wk-blow1
           
           perform varying wk-i from 2 by 1 until wk-i >= grid-idx
              inquire screen-1-gr-1(wk-i,2) cell-data wk-X2
              move function numval(wk-X2) to wk-hit2
              inquire screen-1-gr-1(wk-i,3) cell-data wk-X2
              move function numval(wk-X2) to wk-blow2
              
              inquire screen-1-gr-1(wk-i,4) cell-data wk-blow2
              compute wk-total = wk-hit1 + wk-blow1 + wk-hit2 + wk-blow2
              list-chance:>clear()              
              perform varying wk-j from 1 by 1 until wk-j > p-digit
                move wk-str1(wk-j:1) to wk-char
                perform Add-list-chance
                move wk-str2(wk-j:1) to wk-char
                perform Add-list-chance
              end-perform
              
              if wk-total = p-digit 
                 if list-chance:>size() = p-digit * 2
                    perform varying wk-j from 1 by 1 until wk-j > 10
                       move NUM-INIT(wk-j:1) to wk-char
                       if NOT(
                          list-chance:>contains(wk-char as JCharacter ))
                          if (list_no:>contains(wk-char as JCharacter ))
                             exit perform cycle
                          end-if                    
                          move 289 to wk-BGcolor   *>Black+Gray
                          perform Set-BGcolor
                          perform Add-list-no
                          add 1 to gray-cnt(3)
                       end-if
                    end-perform
                 end-if
              end-if
              
              if wk-total = 0
                 perform varying wk-j from 1 by 1 until wk-j > 10
                    move NUM-INIT(wk-j:1) to wk-char
                    if list-chance:>contains(wk-char as JCharacter )
                       if (list_no:>contains(wk-char as JCharacter ))
                           exit perform cycle
                       end-if                    
                       move 289 to wk-BGcolor   *>Black+Gray
                       perform Set-BGcolor
                       perform Add-list-no
                       add 1 to cyan-cnt(3)
                    end-if
                 end-perform
              end-if
           end-perform
           .
       Anal-04.
           if list-no:>size() = 10 - p-digit
              perform varying wk-i from 1 by 1 until wk-i > 10
                 move NUM-INIT(wk-i:1) to wk-char 
                 if NOT(list-no:>contains(wk-char as JCharacter ))
                    if (list_ok:>contains(wk-char as JCharacter ))
                        exit perform cycle
                    end-if                    
                    move 385 to wk-BGcolor  *>Black+Cyan
                    perform Set-BGcolor
                    perform Add-list-ok
                    add 1 to cyan-cnt(4)
                 end-if
              end-perform
           end-if.
                 
           if list-ok:>size() = p_digit
              perform varying wk-i from 1 by 1 until wk-i > 10
                 move NUM-INIT(wk-i:1) to wk-char 
                 if NOT(list-ok:>contains(wk-char as JCharacter ))
                    if (list_no:>contains(wk-char as JCharacter ))
                        exit perform cycle
                    end-if                    
                    move 289 to wk-BGcolor   *>Black+Gray
                    perform Set-BGcolor
                    perform Add-list-no
                    add 1 to gray-cnt(4)
                 end-if
              end-perform
           end-if.
            .
       Set-BGcolor.
           move function numval(wk-char) to wk-NUM
           evaluate wk-NUM
             when 0
                  modify screen-1-ef-3 color wk-BGcolor
             when 1
                  modify screen-1-ef-4 color wk-BGcolor
             when 2
                  modify screen-1-ef-5 color wk-BGcolor
             when 3
                  modify screen-1-ef-6 color wk-BGcolor
             when 4
                  modify screen-1-ef-7 color wk-BGcolor
             when 5
                  modify screen-1-ef-8 color wk-BGcolor
             when 6
                  modify screen-1-ef-9 color wk-BGcolor
             when 7
                  modify screen-1-ef-10 color wk-BGcolor
             when 8
                  modify screen-1-ef-11 color wk-BGcolor
             when 9
                  modify screen-1-ef-12 color wk-BGcolor
           end-evaluate    
           . 
       Add-list-ok.
           list-ok:>add(wk-char as JCharacter)
           .
       Add-list-no.
           list-no:>add(wk-char as JCharacter)
           .
       Add-list-chance.
           list-chance:>add(wk-char as JCharacter)
           .
               
       RESET-RTN.
           modify screen-1-gr-1 reset-grid 2
           modify screen-1-ef-2 value ""
           perform varying wk-i from 1 by 1 until wk-i > 10
             move NUM-INIT(wk-i:1) to wk-char
             move 257 to wk-BGcolor
             perform set-BGcolor
           end-perform.
           list-no:>clear()
           list-ok:>clear()
           list-chance:>clear
           
           
           move 1 to grid-idx
           move "INIT" to pc-func.
           inquire screen-1-ef-1 value p-digit
           call "pcSide" using pc-param. 
        
           .


       screen-1-cb-1-evt-cmd-clicked.
           initialize change-cnt.
           perform Set-change-cnt 
           inquire screen-1-cb-1 value help-checked 
           if help-checked = 0
              modify screen-1-ef-13 enabled 0
              modify screen-1-ef-14 enabled 0
              modify screen-1-ef-15 enabled 0
              modify screen-1-ef-16 enabled 0
              modify screen-1-ef-17 enabled 0
              modify screen-1-ef-18 enabled 0
              modify screen-1-ef-19 enabled 0
              modify screen-1-ef-20 enabled 0
           else
              modify screen-1-ef-13 ENABLED 1
              modify screen-1-ef-14 enabled 1
              modify screen-1-ef-15 enabled 1
              modify screen-1-ef-16 enabled 1
              modify screen-1-ef-17 enabled 1
              modify screen-1-ef-18 enabled 1
              modify screen-1-ef-19 enabled 1
              modify screen-1-ef-20 enabled 1
           end-if.

           . 
           .
      *end event editor code
      *end {iscobol}copy-procedure
       report-composer section.
      *begin {iscobol}external-copyfiles
      *end {iscobol}external-copyfiles
