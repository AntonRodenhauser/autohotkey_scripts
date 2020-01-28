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


; Open Dragon
:o:odr::
Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Dragon\Dragon
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


:o:ddm::
Run, https://drive.google.com/drive/folders/1VtOyvrKrHs9jy9lA1pVlUsgxHLIEyc2B
return

:o:dov::
Run, https://drive.google.com/drive/my-drive?ths=true
return


:o:dea::
Run, https://drive.google.com/drive/folders/1Fetajm_77lIe1-HSHfE0z16We4zx2qDU?ths=true
return

:o:dkn::
Run, https://drive.google.com/drive/folders/1z11vYSgw1vEBBr6wl9yirk9YLSisrWry?ths=true
return

:o:oee::
Run, https://docs.google.com/spreadsheets/d/1BRFuV1e6hxxHEOdnQLi2_0GJ4FhatOS8QQF5B_rfjQE/edit#gid=0
return

