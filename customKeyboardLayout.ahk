



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;; reorganization to make it work ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; setting capslock anew, disabling arrows etc..



;;;;; disabling capslock and setting it anew

CapsLock::Return

::p::
SetCapsLockState, % GetKeyState("Capslock","t") ? "Off" : "On" ;toggle capslock
return



;;;; disable keys for practice
Left::
Send, Falsch
return


Up::
Send, Falsch
return

Right::
Send, Falsch
return

Down::
Send, Falsch
return





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
Send, {Del}
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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;; AltGreek Layout ;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;; send =
<^>!t::
Send, {=}
return


;;;; ]
<^>!r::
Send, ]
return


;;;;; [
<^>!e::
Send, [
return


;;;;; ?
<^>!g::
Send, ?
return

;;;;; !
<^>!f::
Send, {!}
return


;;;;; }
<^>!d::
Send, {}}
return


;;;; send {
<^>!s::
Send, {{}
return


;;;; send (
<^>!v::
Send, (
return


;;;; send )
<^>!b::
Send, )
return


;;;;;;;;;;;;;;; training



;;;; send =
;~ +0::
;~ Send, falsch
;~ return


;;;; ]
<^>!9::
Send, falsch
return


;;;;; [
<^>!8::
Send, falsch
return


;~ ;;;;; ?
;~ +ß::
;~ Send, ?
;~ return

;~ ;;;;; !
;~ +1::
;~ Send, falsch
;~ return


;~ ;;;;; }
;~ <^>!d::
;~ Send, {}}
;~ return


;;;; send {
<^>!7::
Send, falsch
return


;~ ;;;; send (
;~ +8::
;~ Send, (
;~ return


;~ ;;;; send )
;~ <^>!b::
;~ Send, )
;~ return
















