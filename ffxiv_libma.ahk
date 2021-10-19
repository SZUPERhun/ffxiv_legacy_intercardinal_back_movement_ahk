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

Hotkey, %MoveBack%, MoveBackButton
Hotkey, %MoveBack% Up, MoveBackButtonUp
Hotkey, %StrafeLeft%, StrafeLeftButton
Hotkey, %StrafeLeft% Up, StrafeLeftButtonUp
Hotkey, %StrafeRight%, StrafeRightButton
Hotkey, %StrafeRight% Up, StrafeRightButtonUp
return

#IfWinActive ahk_class FFXIVGAME

MoveBackButton:
	send {%MoveBack% Down}
	if (GetKeyState(StrafeLeft))
	{
		send {%StrafeLeft% Up}{%MoveLeft% Down}
	}
	if (GetKeyState(StrafeRight))
	{
		send {%StrafeRight% Up}{%MoveRight% Down}
	}
return

MoveBackButtonUp:
	send {%MoveBack% Up}
	if (GetKeyState(StrafeLeft))
	{
		send {%MoveLeft% Up}
	}
	if (GetKeyState(StrafeRight))
	{
		send {%MoveRight% Up}
	}
return

StrafeLeftButton:
	if (GetKeyState(MoveBack))
	{
		send {%MoveLeft% Down}
	}
	else
	{
		send {%StrafeLeft% Down}
	}
return
	
StrafeLeftButtonUp:
	send {%MoveLeft% Up}{%StrafeLeft% Up}
return

StrafeRightButton:
	if (GetKeyState(MoveBack))
	{
		send {%MoveRight% Down}
	}
	else
	{
		send {%StrafeRight% Down}
	}
return

StrafeRightButtonUp:
	send {%MoveRight% Up}{%StrafeRight% Up}
return
