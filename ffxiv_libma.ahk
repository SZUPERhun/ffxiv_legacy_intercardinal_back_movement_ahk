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
Steer := A_Args[6]

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
		send {Blind}{%MoveLeft% Up}
	}
	if (GetKeyState(StrafeRight, "P"))
	{
		send {Blind}{%MoveRight% Up}
	}
return

StrafeLeftButton:
	if (GetKeyState(MoveBack))
	{
		send {Blind}{%MoveLeft% Down}
	}
	else
	{
		send {Blind}{%StrafeLeft% Down}
	}
return
	
StrafeLeftButtonUp:
	send {Blind}{%MoveLeft% Up}{%StrafeLeft% Up}
return

StrafeRightButton:
	if (GetKeyState(MoveBack))
	{
		send {Blind}{%MoveRight% Down}
	}
	else
	{
		send {Blind}{%StrafeRight% Down}
	}
return

StrafeRightButtonUp:
	send {Blind}{%MoveRight% Up}{%StrafeRight% Up}
return
