#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;; table of contens ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;-------------- header stuff ----------

; speed optimzation ;
; other global settings ;



;-------------- Programmable keypad / RSI stuff --------------------



; general RSI stuff
; Programmable amag keypad




;-------------- general function not program specific --------------------

; costumized keyboard layout  ;


; general utility stuff (in windows) ;


; close everything with q + tab ;


; open folders, applications & notes etc ;



;--------------- program specific stuff ------


; google chrome hotstrings &keys  ;


; Anki hotstrings & keys ;


; evernote hotstrings &keys ;


; fb, whatsapp, signal etc hotstrings & keys ;


; --------------- programier stuff -----------


; get examples in PyCharm/python ;


;--------------- text editor stuff ------------


; useful general text editor stuff ;


; general abbreviations that I often need ;

; navigational hotsttrings, bulk deletion etc ;


;--------------- functions --------------------

; general util Functions for system operations" ;
; useful text editor functions ;
; evernote functions ;





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;; speed optimzation ;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





;;;;;;;; other global settings ;;;;;;;;;;;;;;;;
SetTitleMatchMode, RegEx
#Hotstring EndChars `t      ;  sets the new ending characters for all hotstrings, not just the ones beneath it:
SetKeyDelay, 0, 0












;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;; random test stuff ;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

















;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;; general RSI stuff ;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


numpad5::
Send, ^{+}
return

;;;;; Disable scroll wheel
WheelDown::return
WheelUp::return


; Open Dragon
:o:odr::
Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Dragon\Dragon
return

;;;;; Restart Dragon
:o:rdr::
Process, Close, Dragon
MsgBox, nn
return



; Dragon dictation box closing/press transfer
#z::
; click, 897, 351
Send ^a
Sleep,400
Send ^c
Sleep,300
Send, {Escape}
Sleep,300
Send ^v
return




;~ ;;;;; move to left/right virtual desktop

;~ Numpad7::
;~ Send ^#{Left}
;~ return

;~ Numpad9::
;~ Send ^#{Right}
;~ return




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;; Programmable amag keypad ;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;; hold mouseclick drag etc, via numpad one, which is directly put to amag pad
Numpad1::
Send,  {LButton down}
KeyWait, Numpad1
return

Numpad1 up::
Send, {LButton up}
return



;;;;; mouse right click via qckMac6

^#m::
Send, {RButton}
return


;;;;; scroll up and down, with numpad3 and numpad2
Numpad3::
Send, {WheelDown}
return

Numpad2::
Send, {WheelUp}
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;; costumized keyboard layout  ;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


#Include C:\Users\Anton Rodenhauser\Documents\ProgrammierSachen\autohotkey_scripts\customKeyboardLayout.ahk


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;; general utility stuff (in windows) ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;; make an ordinary mouse click
::mc::
Send, {LButton}
return


;;;;;; x via alt + strg + c (cut)  for my mouse
!^c::
Send, ^x
return


;;;;;;; get name of current active window

:c:gtt::
WinGetTitle, Title, A
Clipboard := Title
MsgBox, The active window is "%Title%".
return





;;;;;;;;  de-/activate nightmode


:c:nm::
Send, #s
Sleep, 300
Send, nachtmodus
Sleep, 1200
Send, {Enter}

; click button
WinWait, Einstellungen, , 4   ; wait for window, but no longer than 4 seconds
Sleep, 1200
Click, 122, 279
Sleep, 100
Send, !{F4}
return





;;;;;;;; clear all virtual desktops


:o:ccc::
Loop, 6
	Send, ^#{F4}
return


;;;;;;; add virtual desktops
:o:aaa::
; first clear them all, to make it neat..
Loop, 6
	Send, ^#{F4}   
; create VDs
Loop, 6
	Send, ^#d
; next, move to very left again
Loop, 6
	Send, ^#{Left}

return






;;;;; strg + f hyper link fake thing
!LButton::
Send, ^c
Sleep, 300
Send, ^f
Sleep, 300
Send, ^v
return






;;;;;;;; close everything with q + tab ;;;;;;;;




:o:q::
Send, !{F4}
return





;;;;;;; fast & slow scrolling
+WheelDown::
Send, {WheelDown 5}
return

+WheelUp::
Send, {WheelUp 5}
return







; get mouse position
::gmp::
MouseGetPos, x,y
Clipboard := "x = " x ", y = " y
MsgBox, x = %x%, y = %y%
return






; quick minimization of window
::t::
WinMinimize,A
return



; maximize window: 
:o:v::
WinMaximize, A
return





;;;; move windows arround


:o:mm::
WinMove, A,, 0, 0, 1900, 1050
sleep, 300
WinMaximize, A
return



:o:mlr::
WinMove, A,, -1000, 20, 1000, 1200
sleep, 200
Send, #{Right}
sleep, 200
Send,{Enter}
return

:o:ml::
;WinMove, A,, -1000, 200, 1000, 1200
Send, #+{Left}
sleep, 300
WinMaximize, A
return


:o:mll::
WinMove, A,, -1000, 20, 1000, 1200
sleep, 200
Send, #{Left}
sleep, 200
Send,{Enter}
return



:o:mrr::
WinMove, A,, 3000, 20, 1000, 1200
sleep, 200
Send, #{Right}
sleep, 200
Send,{Enter}
return

:o:mr::
;WinMove, A,, 3000, 20, 1000, 1200
Send, #+{Right}
sleep, 300
WinMaximize, A
return


:o:mrl::
WinMove, A,, 3000, 20, 1000, 1200
sleep, 200
Send, #{Left}
sleep, 200
Send,{Enter}
return






;;;;;;;;  copy paste clipboard into last active editor
^#c::
Sleep, 300
Send, ^c    ; copy 

; go to last active window
Send, {Alt down} 
Send, {Tab}
Send, {Alt up}

Sleep, 200


Send, ^v    ; past
Send, {Enter 3}



Sleep, 200

; go back to starting window
Send, {Alt down} 
Send, {Tab}
Send, {Alt up}

return



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; open folders, applications & notes etc ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




#Include C:\Users\Anton Rodenhauser\Documents\ProgrammierSachen\autohotkey_scripts\OpenApplikationsStuff.ahk





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; google chrome hotstrings &keys  ;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;~ #If WinActive(".*Google Chrome.*")

:o:oxd::oxford define 


:o:le::linguee englisch



:o:+::
Send, {Tab 19}
return




#If



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;; programier stuff ;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;; import libraries for python
::pia::
Send,
(
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
)
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; get examples in PyCharm/python ;;;;;;;;;;;;;;



; get data frame
::pdf::
Send,
(
dataList = [[1,2,3],[4,5,6],[7,8,9]]
index = ["i1","i2", "i3"]
columns=["c1","c2","c3"]
df= pd.DataFrame(dataList,  columns=columns, index = index)
)
return


; get list with letters
::pll::
Send, L = ["v1", "v2", "v3"]
return

; get list with numbers
::pln::
Send, L = [1,2,3]
return




::ppy::
Send, 
(
y =  
print(y)
)
Send, {Up} 
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;; Anki hotstrings & keys ;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



#Include C:\Users\Anton Rodenhauser\Documents\ProgrammierSachen\autohotkey_scripts\AnkiStuff.ahk





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;; evernote hotstrings &keys ;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



#Include C:\Users\Anton Rodenhauser\Documents\ProgrammierSachen\autohotkey_scripts\EvvernoteStuff.ahk      ; purpsely two v  so it does not confuse it whith evernote note when RegEx is active




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; fb, whatsapp, signal etc hotstrings & keys ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



#Include C:\Users\Anton Rodenhauser\Documents\ProgrammierSachen\autohotkey_scripts\MessagingStuff.ahk




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;; useful general text editor stuff ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





;;;;; jump to next line with cursor
+Enter::
Send, {End}
Sleep, 100
Send, {Enter}
return






;;;;;;;;;;;;;;;  make line underlined bold mit blau  ;;;;;;;;;;;;;;;;;;;;;;
^h::             ; make bold, underline and press F7
markLine()
Sleep 200  

ctrl_ub()

Sleep 300  ; necessary, otherwise "too fast" for anki? 


Send, {F7}

Sleep 200  ; necessary, otherwise "too fast" for anki? 

Send, {Right}
ctrl_ub()

Sleep 200  ; necessary, otherwise "too fast" for anki? 

Send, {Down}
return




;;;;;; make heading for anki, scroll and add spacing
!h::             ; make bold, underline and press F7
markLine()
Sleep 200  
ctrl_ub()
Sleep 300  ; necessary, otherwise "too fast" for anki? 
Send, {F7}
Sleep 200  ; necessary, otherwise "too fast" for anki? 
Send, {Right}
Sleep, 100
ctrl_ub()
Sleep 200  ; necessary, otherwise "too fast" for anki? 
Send, {Down}
Sleep, 100
Send, {Enter 7}
Send, {WheelDown 3}
return




;;;;;;;;;;;;;;;  make line underlined bold ohne blau  
^!h::             
markLine()

Sleep 400 

ctrl_ub()

Sleep 400  ; necessary, otherwise "too fast" for anki? 

Send, {Right}
ctrl_ub()
return




;;;;;;;;;;;;;; mark complete line, no matter where cursor
^j::
markLine()
return


;;;;;;;;;;;;; arrow
:O:arr::
Send, ==>
return



; text expansion for dots ... and ---

::...::
Send, {. 40}
return

::---::
Send, {- 40}
return



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; navigational hotsttrings, bulk deletion etc ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;; add white space and move cursor up

:o:aws::
Send, {Enter 30}
Send, {Up 30}
return

; delete downwards
:o:d::
Send, {Shift down}
Sleep, 100 
Send, {Down 5}
Send, {Shift up}
Sleep, 100 
Send, {Backspace}
return

:o:dd::
Send, {Shift down}
Sleep, 100 
Send, {Down 10}
Send, {Shift up}
Sleep, 100 
Send, {Backspace}
return

:o:ddd::
Send, {Shift down}
Sleep, 100 
Send, {Down 30}
Send, {Shift up}
Sleep, 100 
Send, {Backspace}
return


; delete up
:o:f::
Send, {Shift down}
Sleep, 100 
Send, {Up 5}
Send, {Shift up}
Sleep, 100 
Send, {Backspace}
return

:o:ff::
Send, {Shift down}
Sleep, 100 
Send, {Up 10}
Send, {Shift up}
Sleep, 100 
Send, {Backspace}
return

:o:fff::
Send, {Shift down}
Sleep, 100 
Send, {Up 30}
Send, {Shift up}
Sleep, 100 
Send, {Backspace}
return



; press enter multiple times
:o:j::
Send, {Enter 5}
return

:o:jj::
Send, {Enter 10}
return

:o:jjj::
Send, {Enter 30}
return

; move cursor upwards
:o:u::
Send, {Up 5}
return

:o:uu::
Send, {Up 10}
return

:o:uuu::
Send, {Up 30}
return

; move cursor down
:o:z::
Send, {Down 5}
return

:o:zz::
Send, {Down 10}
return

:o:zzz::
Send, {Down 30}
return


;;;;;;;  delete last sentence


:o:cs::
ClipSaved := ClipboardAll  ; save clipboard
beginOfLine := 0

Loop
{   
	start := A_TickCount  ; exit after a certain amout of time
    clipboard =           ; empty the clipboard (start off empty to allow ClipWait to detect when the text has arrived)
    ; Send, +^{Left}      ; select text by whole words to the left
    Send, +{Left}         ; select text by single characters to the left
    Send, ^c              ; copy selected text
    ClipWait, 1              ; wait until the clipboard contains data
	
	if (A_TickCount-start > 500)   ; exit after 4 seconds at the latest
	{
		beginOfLine := 1
		break
	}
	
    StringLeft, OutputVar, clipboard, 1  ; save the first character from the left side of the clipboard in the variable OutputVar
    if OutputVar in .,?,! ; if any of these has been found
        break             ; terminate the loop
	else
		Send, {Backspace}
	
	

}
if not beginOfLine
	Send, {Right}
clipboard := ClipSaved    ;restore original clipboard
return














;;;;;;;;;;;;;;; heading evernote size ;;;;;;;;;;;;;

^#h::             ; press cntrl + h

markLine()
ctrl_ub()

Sleep, 400

openFontSize()
return





;;;;;;;;;;;;;;; delete line ;;;;;;;;;;;;;;;;;;;;
^k::
deleteLine()
Send, {BackSpace}
return

; delete line down
^m::
Send, {Down}
deleteLine()
Send, {BackSpace}
return


;;;;;;;;;;;;  double quotation marks

RShift & 2::
Send, ""
Send, {Left}
return



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;; general abbreviations that I often need ;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;; email

:o:mai::
Send, anton.rodenhauser@hotmail.com
return


:o:nam::
Send, Anton Rodenhauser
return

:o:adr::
Send, Bülowstr. 55, 10783 Berlin
return

:o:tel::
Send, 015223257315
return


:o:ban::
Send,
( 
Kontoinhaber: Anton Rodenhauser
Bank: Sparda Bank Augsburg
IBAN: DE81720905000000358331
BIC: GENODEF1S03 
Sparda Bank Augsburg
)
return

:o:blz::
Send, DE81720905000000358331
return

:o:edc::
Send, (For complicated reasons it's much easier to type in English for me right now, but you're very welcome to answer in German)
return








;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; general util Functions for system operations" ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;








;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;; useful text editor functions ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


markLine()
{
Send, {Home}{Shift down}{End}{Shift up}
}

deleteLine()
{
markLine()
Send, {Backspace}
}

ctrl_ub()
{
	Send, {Ctrl down}ub{Ctrl up}
}



getMarkedText()
{
	prevClipBoard := Clipboard   ; save previous content of clipBoard
	Clipboard =  ; empty clipboard
	Send, ^c
		
	ClipWait, 0.5  ; wait 0.5s or until clipboard contains data
	markedText := Clipboard
	
	Clipboard := prevClipBoard
	
	return markedText
}
	


getCaretLeftChar()  ; get the left character next to caret
{
	Send, {Shift down}{Left}{Shift up}
	leftChar := getMarkedText()
	Send, {Right}
	return leftChar
}

getCaretRightChar()  ; get the right character next to caret
{
	Send, {Shift down}{Right}{Shift up}
	rightChar := getMarkedText()
	Send, {Left}
	return rightChar
}







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;; evernote functions ;;;;;;;;


;;;;; set font size ;;;;;;;;;;;;;;;;;;;;;;;;;;

setFontSize(FontSize)
{
	Send, ^d
	Loop
	{
		IfWinActive, Schriftart
		{
			Send, {tab 2}%FontSize%{Enter}
			return
		}
	}
}


;;;;;;; open font size ;;;;;;;;;;;;;;;;;;;;;;;;;;;
openFontSize()
{
	Send, ^d
	Loop,
	{
		IfWinActive, Schriftart
		{
			Send, {tab 2}
			return
		}
	}
}


;;;;;;;; remove formating ;;;;;;;;;;;
; pressesshift + strg + space 

ctrl_shift_space()
{
	Send, {Shift down}{Ctrl down}
	Send, {Space}
	Send, {Shift up}{Ctrl up}
}










