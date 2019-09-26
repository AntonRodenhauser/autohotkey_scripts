



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;; reorganization to make it work ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; setting capslock anew, disabling arrows etc..









;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;; CapsLock Layout ;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; all navigational keys


;;;;; disabling capslock and setting it anew

CapsLock::Return



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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;; AppsKey Menu key layout ;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;; send =
AppsKey & t::
Send, {=}
return


;;;; ]
AppsKey & r::
Send, ]
return


;;;;; [
AppsKey & e::
Send, [
return


;;;;; ?
AppsKey & g::
Send, ?
return

;;;;; !
AppsKey & f::
Send, {!}
return


;;;;; }
AppsKey & d::
Send, {}}
return


;;;; send {
AppsKey & s::
Send, {{}
return


;;;; send (
AppsKey & v::
Send, (
return


;;;; send )
AppsKey & b::
Send, )
return

















