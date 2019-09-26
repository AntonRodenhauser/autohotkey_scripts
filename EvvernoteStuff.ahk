#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.








;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;; table of contens ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; open specific notes





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;









#If WinActive(".*Evernote.*")












;;;;;;;;;; other useful hostrings ;;;;;;;;;;;;;;;;;


;;; turn off the options from above: 
#If



; das muss hier sein, da str + Q window komisch ist
::it::
send, intitle:
return

::caf::
Send, {Enter}
Send, d
Sleep, 400
Send, +{Home}
Sleep, 400
Send, ^+{Space}
Send, {Right}
return





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; open specific notes ;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

::est::
Send, #+f
Sleep, 300
Send, intitle:Steuernummern intitle:IDs
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return

::efi::
Send, #+f
Sleep, 300
Send, intitle:Finanzen intitle:Rente
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return

::epa::
Send, #+f
Sleep, 300
Send, intitle:Benutzernamen/Passwörter/Kontozugang
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return

::exx::
Send, #+f
Sleep, 300
Send, intitle:sex intitle:xxxx
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return



::etr::
Send, #+f
Sleep, 300
Send, intitle:MCA intitle:Triad
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return

::eem::
Send, #+f
Sleep, 300
Send, intitle:empty intitle:note
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return



::eiw::
Send, #+f
Sleep, 300
Send, intitle:irgendwann
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return



::ema::
Send, #+f
Sleep, 300
Send, intitle:Masterplan intitle:personal
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return



::edo::
Send, #+f
Sleep, 300
Send, intitle:dojo intitle:stuff
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return






::eea::
Send, #+f
Sleep, 300
Send, intitle:EA intitle:random intitle:stuff
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return


::eli::
Send, #+f
Sleep, 300
Send, intitle:life intitle:hacks
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return



::ech::
Send, #+f
Sleep, 300
Send, intitle:challenges intitle:ideas
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return


::ean::
Send, #+f
Sleep, 300
Send, intitle:Anne
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return


::eds::
Send, #+f
Sleep, 300
Send, intitle:better intitle:data
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return


::efg::
Send, #+f
Sleep, 300
Send, intitle:funny intitle:Comedy
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return



::efe::
Send, #+f
Sleep, 300
Send, intitle:fun intitle:evening
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return


::esk::
Send, #+f
Sleep, 300
Send, intitle:skill intitle:collection
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return


::edn::
Send, #+f
Sleep, 300
Send, intitle:SS19 intitle:do
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return


::ear::
Send, #+f
Sleep, 300
Send, intitle:Artikel intitle:demnächst
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return


::epr::
Send, #+f
Sleep, 300
Send, intitle:Professional intitle:Career 
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return


::ewr::
Send, #+f
Sleep, 300
Send, intitle:myWeekly intitle:reflection
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return







::ewr::
Send, #+f
Sleep, 300
Send, intitle:myWeekly intitle:reflection
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return



::epf::
Send, #+f
Sleep, 300
Send, intitle:Fragen intitle:Programmieren
Sleep, 300
Send, {Tab}
Send, ^{Enter}
return







::esg::
Send, #+f
Sleep, 300
Send, intitle:
return














; irgendwann note
:c:i::

if WinExist("Irgendwann mal, aber wichtig! - Evernote")
{
	WinActivate
}
;~ else
;~ {
	;~ if WinExist(".*Evernote.*")
	;~ {
		;~ WinActivate
	;~ } else
	;~ {
		;~ Send, #2
	;~ }
	;~ WinWait, .*Evernote.*
	;~ openEvernoteNote("Irgendwann")
;~ }
return


; empty note
:c:r::
if WinExist("empty note for everything..")
{
	WinActivate
}
;~ else
;~ {
	;~ if WinExist(".*Evernote.*") ; this definitely wokrs!
	;~ {
		;~ WinActivate
	;~ } else
	;~ {
		;~ Send, #2
	;~ }
	;~ WinWait, .*Evernote.*
	;~ openEvernoteNote("empty note")
;~ }
return














