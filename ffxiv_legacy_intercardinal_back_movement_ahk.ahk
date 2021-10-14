#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive ahk_class FFXIVGAME

$a::
	if (GetKeyState("s"))
	{
	Send {ö Down}
	}
	else
	{
	Send {a Down}
	}
return

$a Up::
	{ö Up}
	Send {a Up}
return

$d::
	if (GetKeyState("s"))
	{
	Send {ó Down}
	}
	else
	{
	Send {d Down}
	}
return

$d Up::
	{ó Up}
	Send {d Up}
return
