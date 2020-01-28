#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;; table of contens ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





; greek letters ;
; put hat on stuff ;
; put bar on stuff ;
; add indexes ;
; make bold ;
; add tilde ;
; mathematical symbols;
; math cursiv fonds ;


; other normal hotstrings for anki;


;  editor stuff for anki



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;









#If WinActive( "Edit Current" ) || WinActive("Add") || WinActive(".*Browse.*") || WinActive("User 1 - Anki")    ; these hotkeys only work in anki!


;;;;;;;;;;;;;;; greek letters ;;;;;;;;;;;;;;;;;;

::al::
Send, [$$]\alpha[/$$]
return


::be::
Send, [$$]\beta[/$$]
return



::ell::
Send, [$$]\ell[/$$]
return

:c:et::
Send, [$$]\eta[/$$]
return

::ep::
Send, [$$]\epsilon[/$$]
return

:c:ga::
Send, [$$]\gamma[/$$]
return


:c:mu::
Send, [$$]\mu[/$$]
return



:c:ph::
Send, [$$]\phi[/$$]
return

:c:pi::
Send, [$$]\pi[/$$]
return


:c:si::
Send, [$$]\sigma[/$$]
return



:c:Th::
Send, [$$]\Theta[/$$]
return

:c:th::
Send, [$$]\theta[/$$]
return

::vt::
Send, [$$]\vartheta[/$$]
return




;;;;;;;;;;; put hat on stuff ;;;;;;;;;;;;;;;;;;;;

::yh::
Send,  [$$] \hat{{}y{}}[/$$]
return

::yhi::
Send,  [$$] \hat{{}y_{{}i{}}{}}[/$$]
return



::fh::
Send, [$$]\hat{{}y{}}[/$$]
return


;;;;;;;;;;; put bar on stuff ;;;;;;;;;;;;;;;;;;;


:c:xb::
Send, [$$]\bar{{}x{}}[/$$]
return

:c:Xb::
Send, [$$]\bar{{}X{}}[/$$]
return



;;;;;;;;;;;;; add indexes ;;;;;;;;;;;;;;;;;;;;

::xi::
Send, [$$]x_{{}i{}}[/$$]
return


::xj::
Send, [$$]x_{{}j{}}[/$$]
return

::xij::
Send, [$$]x_{{}ij{}}[/$$]
return


::xfi::
Send, [$$]\bold{{}x_{{}i{}}{}}[/$$]
return




::yi::
Send, [$$]y_{{}i{}}[/$$]
return








;;;;;;;;;; make bold ;;;;;;;;;;;;;;;;;;;


:c:xf::
Send, [$$]\bold{{}x{}}[/$$]
return

:c:Xf::
Send, [$$]\bold{{}X{}}[/$$]
return


;;;;;;;;;; add tilde ;;;;;;;;;;;;;;;;;;;;;;;;;


:c:xt::
Send, [$$]\tilde{{}x{}}[/$$]
return





;;;;;;;;;; mathematical symbols;;;;;;;;;;;;;;;


::el::
Send, [$$]\in[/$$]
return



::del::
Send, [$$]\partial[/$$]
return


:c:na::
Send, [$$]\nabla[/$$]
return



:co:leq::
Send, [$$]\leq[/$$]
return


:co:geq::
Send, [$$]\geq[/$$]
return


;;;;;;;;; math cursiv fonds ;;;;;;;;;;;;;;;;;;



:c:mD::
Send, [$$]\mathcal{{}D{}}[/$$]
return




:c:mI::
Send, [$$]\mathcal{{}I{}}[/$$]
return




;;;;;;;;;; formating hotkeys for anki ;;;;;;;;


; add quotation marks at beginning and end of line, removes existing '`" etc..

^q::
Send, {Home}
firstChar := getCaretRightChar()
If inStr("`´'""" , firstChar)
	Send, {Delete}
Send, "
Send, {End}
lastChar := getCaretLeftChar()
If inStr("’‘`´'""" , lastChar)
	Send, {BackSpace}
Send, "
return





;;;;;;;;;;;;; other normal hotstrings for anki;;;;;;;;;
:o:ngf::
Send, nicht gewusste Frage:{Enter 2}
return



::moh::
Send, my own hotkey/voice command/ahk stuff:{Enter 2}
return







::nil::
Send, not important, just look
markLine()
sleep, 200
Send, ^i
Send, {F7}
sleep, 200
Send, {Right}
sleep, 200
Send, {Enter 2}
return


;;;;; change note type
::chn::
Send, b
sleep, 200
Send, +^m
sleep, 200
Send, ^n
return



::cht::
Send, b
sleep, 200
Send, ^d
return




;  editor stuff for anki



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  editor stuff for anki ;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


:o:pac::
Send, {Enter 40}
Send, {Up 18}
return



















;;; turn off the options from above: 
#If

