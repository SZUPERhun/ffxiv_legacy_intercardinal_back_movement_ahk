#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance Force
sendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

MoveBack := A_Args[1]
StrafeLeft := A_Args[2]
StrafeRight := A_Args[3]
MoveLeft := A_Args[4]
MoveRight := A_Args[5]

Hotkey, *%MoveBack%, MoveBackButton
Hotkey, *%MoveBack% Up, MoveBackButtonUp
Hotkey, *%StrafeLeft%, StrafeLeftButton
Hotkey, *%StrafeLeft% Up, StrafeLeftButtonUp
Hotkey, *%StrafeRight%, StrafeRightButton
Hotkey, *%StrafeRight% Up, StrafeRightButtonUp
return

#IfWinActive ahk_class FFXIVGAME

MoveBackButton:
	send {Blind}{%MoveBack% Down}
	if (GetKeyState(StrafeLeft, "P"))
	{
		send {Blind}{%StrafeLeft% Up}{%MoveLeft% Down}
	}
	if (GetKeyState(StrafeRight, "P"))
	{
		send {Blind}{%StrafeRight% Up}{%MoveRight% Down}
	}
return

MoveBackButtonUp:
	send {Blind}{%MoveBack% Up}
	if (GetKeyState(StrafeLeft, "P"))
	{
		send {Blind}{%MoveLeft% Up}{%StrafeLeft% Down}
	}
	if (GetKeyState(StrafeRight, "P"))
	{
		send {Blind}{%MoveRight% Up}{%StrafeRight% Down}
	}
return

StrafeLeftButton:
	if (GetKeyState(MoveBack, "P"))
	{
		send {Blind}{%MoveLeft% Down}
		return
	}
	send {Blind}{%StrafeLeft% Down}
return
	
StrafeLeftButtonUp:
	if (GetKeyState(MoveBack, "P"))
	{
		send {Blind}{%MoveLeft% Up}
		return
	}
	send {Blind}{%StrafeLeft% Up}
return

StrafeRightButton:
	if (GetKeyState(MoveBack, "P"))
	{
		send {Blind}{%MoveRight% Down}
		return
	}
	send {Blind}{%StrafeRight% Down}
return

StrafeRightButtonUp:
	if (GetKeyState(MoveBack, "P"))
	{
		send {Blind}{%MoveRight% Up}
		return
	}
	send {Blind}{%StrafeRight% Up}
return
