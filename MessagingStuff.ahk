#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.




; Facebook, Signal, Whatsapp, etc..

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;; table of contens ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; options & flags  ;

; hotstrings zum sich verabreden  ;

;  allgemeine hotstrings für casual ;

; funktionen       ;



; formal stuff for e.g. emails ;




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;; options & flags  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


#If WinActive("WhatsApp") || WinActive(".*Facebook.*") || WinActive(".*Signal.*")




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;; hotstrings zum sich verabreden  ;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;






;;;;;;;;; Treffpunkte ausmachen, Wann wie wo ?

::uf::
Send, Um wie viel Uhr?
return

::tf::
Send, An welchen Tagen passt dir am besten?
return

::of::
Send, Wo wolln wir uns treffen?
return

::www::
Send, Wann wie wo wollen wir uns treffen?
return



;;;;;;;;;;;;;  Ich habe [Tage] zeit
; Anleitung: t + tab  und dann mo, di , fr ,... tm üm eingeben und mit # beenden.
::t::
; create the "tage" vectpr
tage:=[]
Loop
{
	Input, Var, L2,, mo,di,mi,do,fr,sa,so,tm,üm,#
	
	if instr(Var,"#")
	{
		break

	}else
	{
		tage.Push(convertToFullDay(Var))
	}
}

; It should now be:  tage = ["montag", "Freitag", "Sonntag" ] if I pressed mo fr so and # at the end to stop loop


; now create the "dayPattern"
num := tage.Length() - 1

if num = 0   ; nur ein tag 
	dayPattern := tage[1]
else         ; mehrere tage
{
	dayPattern := ""
	Loop, %num%  ; loop bis inclusive vorletzten tag
	{
		if (A_index = num) ; if vorletzter tag 
		{
			dayPattern := dayPattern tage[num]
		}
		else
		{
			dayPattern := dayPattern tage[A_index] ", "
		}
	}
	dayPattern := dayPattern " und " tage[num+1]   ; "und [letzer Tag] " noch hinzufügen
}

; dayPattern should now look e.g. like this:  "Montag, Freitag und Sonntag"
Send, Ich hab %dayPattern% zeit.
return




; ---------------------------


;  alles klar 
:c:kk::
Send, alles klar, top,  bis dann{!} :)
return



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;  allgemeine hotstrings für casual ;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;für smalltalk

::wl::
Send, Wie läufts?
return






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;; funktionen       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;






convertToFullDay(kürzel)
{
if inStr(kürzel,"mo")
	return "Montag"
else if inStr(kürzel, "di")
	return "Dienstag"
else if inStr(kürzel, "mi")
	return "Mittwoch"
else if inStr(kürzel, "do")
	return "Donnerstag"
else if inStr(kürzel, "fr")
	return "Freitag"
else if inStr(kürzel, "sa")
	return "Samstag"
else if inStr(kürzel, "so")
	return "Sonntag"
else if inStr(kürzel, "tm")
	return "morgen"
else if inStr(kürzel, "üm")
	return "übermorgen"
else
	return #error#
}








;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;























;;; turn off the options from above: 
#If





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;; formal stuff for e.g. emails ;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; active everywhere!






::mfg::
Send,
(
Mit freundlichen Grüßen,
Anton Rodenhauser
)
return








