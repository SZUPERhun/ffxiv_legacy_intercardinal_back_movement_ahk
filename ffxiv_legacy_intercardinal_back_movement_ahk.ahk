#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive ahk_class FFXIVGAME

*a::
	if (GetKeyState("s"))
	{
	Send {� Down}
	}
	else
	{
	Send {a Down}
	}
return

*a Up::
	Send {Shift Up}{Ctrl Up}{� Up}
	Send {a Up}
return

*d::
	if (GetKeyState("s"))
	{
	Send {� Down}
	}
	else
	{
	Send {d Down}
	}
return

*d Up::
	Send {Shift Up}{Ctrl Up}{� Up}
	Send {d Up}
return