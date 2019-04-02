#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.








; scipt to quickly open specific folders, windows, applications

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;; table of contens ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; open other stuff ;


; open programmes  ;

; open folders  ;


; open recent/last window


; open drive stuff ;




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;; open other stuff ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;; open all ahk scripts 
::oas::
Edit  ;opens the current script for editing
run, Edit "C:\Users\Anton Rodenhauser\Documents\ProgrammierSachen\autohotkey_scripts/AnkiStuff.ahk"
run, Edit "C:\Users\Anton Rodenhauser\Documents\ProgrammierSachen\autohotkey_scripts/customKeyboardLayout.ahk"
run, Edit "C:\Users\Anton Rodenhauser\Documents\ProgrammierSachen\autohotkey_scripts/EvvernoteStuff.ahk"
run, Edit "C:\Users\Anton Rodenhauser\Documents\ProgrammierSachen\autohotkey_scripts/OpenApplikationsStuff.ahk"

return



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;; open programmes  ;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; open google
::g::
Send, #1
Sleep, 200
Send, {Enter}  ; in case multple windows are open
return

; open evernote
:o:e::
Send, #2
Sleep, 200
Send, {Enter}  ; in case multple windows are open
return



; open anki
:o:a::
if WinExist("Hinzufügen")
{
	WinActivate, Hinzufügen
}else
{
	Send, #3
}
return



; open whatsapp

:o:w::
if WinExist("WhatsApp")
{
	WinActivate, WhatsApp
}else
{
	Run, C:\Users\Anton Rodenhauser\AppData\Local\WhatsApp\WhatsApp.exe
}
return








;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;; open folders  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



:o:fho::
Run, C:\Users\Anton Rodenhauser\Documents\Hobby-Projekte
return



:o:fme::
Run, C:\Users\Anton Rodenhauser\Dropbox\DokumenteDropbox\Meditation
return

:o:fdo::
Run, C:\Users\Anton Rodenhauser\Documents
return


:o:fdr::
Run, C:\Users\Anton Rodenhauser\Dropbox\DokumenteDropbox
return

:o:fbü::
Run, C:\Users\Anton Rodenhauser\Documents\Bücher_offline
return

:o:fsda::
Run, C:\Users\Anton Rodenhauser\Dropbox\DokumenteDropbox\Studium\AllesZu DataScience\DataScienceCourses\Stat_Data_Ana
return


:o:fds::
Run, C:\Users\Anton Rodenhauser\Dropbox\DokumenteDropbox\Studium\AllesZu DataScience\DataScienceCourses
return


:o:fahk::
Run, C:\Users\Anton Rodenhauser\Documents\ProgrammierSachen\autohotkey_scripts
return





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;; open recent/last window ;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



:o:lw::
Send, {Alt down} 
Send, {Tab}
Send, {Alt up}
return




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;; open drive stuff ;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


:o:dov::
Run, https://drive.google.com/drive/my-drive?ths=true
return


:o:dea::
Run, https://drive.google.com/drive/folders/1Fetajm_77lIe1-HSHfE0z16We4zx2qDU?ths=true
return

:o:dkn::
Run, https://drive.google.com/drive/folders/1z11vYSgw1vEBBr6wl9yirk9YLSisrWry?ths=true
return

