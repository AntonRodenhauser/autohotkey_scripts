#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.










;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;; CapsLock Layout ;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; all navigational keys



;;;; delete left/right word
CapsLock & z::
Send, ^{BackSpace}
return

CapsLock & h::
Send, ^{Delete}
return



;;;; delete left/right
CapsLock & n::
Send, {BackSpace}
return

CapsLock & m::
Send, {Delete}
return



;;;; move end/beginning of line
CapsLock & ü::
Send, {Home}
return

CapsLock & ä::
Send, {End}
return



;;;; move left right
CapsLock & j::
Send, {Left}
return

CapsLock & k::
Send, {Right}
return


;;;; move up/down
CapsLock & u::
Send, {Up}
return

CapsLock & i::
Send, {Down}
return


;;;; mark left/right letter
CapsLock & ö::
Send, +{Left}
return

CapsLock & .::
Send, +{Right}
return


;;;;; mark left/right word

CapsLock & p::
Send, +^{Left}
return

CapsLock & ,::
Send, +^{Right}
return




;;;;;; jump left/right word
CapsLock & o::
Send, ^{Left}
return

~CapsLock & l::
Send, ^{Right}
return



;~ ;;;;;; ???? 
;~ CapsLock & -::
;~ Send, ^x
;~ return




;~ djlfkja dlkfja dkfjldkjalkdfj  dlfjaldkllo
;~ djlfkja dlkfja dkfjldkjalkdfj  dlfjaldkllo
;~ djlfkja dlkfja dkfjldkjalkdfj  dlfjaldkllo
;~ djlfkja dlkfja dkfjldkjalkdfj  dlfjaldkllo
;~ djlfkja dlkfja dkfjldkjalkdfj  dlfjaldkllj
;~ djlfkja dlkfja dkfjldkjalkdfj  dlfjaldkllo
;~ djlfkja dlkfja dkfjldkjalkdfj  dlfjaldkllo
;~ djlfkja dlkfja dkfjldkjalkdfj  dlfjaldkllo
;~ djlfkja dlkfja dkfjldkjalkdfj  dlfjaldkllo
;~ djlfkja dlkfja dkfjldkjalkdfj  dlfjaldkllo
;~ djlfkja dlkfja dkfjldkjalkdfj  dlfjaldkllo




