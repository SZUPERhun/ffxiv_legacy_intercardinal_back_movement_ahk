#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance Force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

MoveBack := A_Args[1]
StrafeLeft := A_Args[2]
StrafeRight := A_Args[3]
MoveLeft := A_Args[4]
MoveRight := A_Args[5]

Hotkey, %StrafeLeft%, StrafeLeftButton
Hotkey, %StrafeLeft% Up, StrafeLeftButtonUp
Hotkey, %StrafeRight%, StrafeRightButton
Hotkey, %StrafeRight% Up, StrafeRightButtonUp
return

#IfWinActive ahk_class FFXIVGAME

StrafeLeftButton:
	if (GetKeyState(MoveBack))
	{
	Send {%MoveLeft% Down}
	}
	else
	{
	Send {%StrafeLeft% Down}
	}
return
	
StrafeLeftButtonUp:
	Send {%MoveLeft% Up}
	Send {%StrafeLeft% Up}
return

StrafeRightButton:
	if (GetKeyState(MoveBack))
	{
	Send {%MoveRight% Down}
	}
	else
	{
	Send {%StrafeRight% Down}
	}
return

StrafeRightButtonUp:
	Send {%MoveRight% Up}
	Send {%StrafeRight% Up}
return

