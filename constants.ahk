﻿#NoEnv
SendMode, input
SetWorkingDir %A_ScriptDir%
#Include utils.ahk

global debug := 0
global AsAdmin := 0
global math_activation := "3209-0499-VQYQQU"
global watchlist := []
global hotstrings := {}
global focus := new BB()
global layout = 0
global equ := []
global bm := []
global ref_cache := {}
global TTState := ""
global Null := False
global group_names := ["programming", "communication", "data", "video"]
;~ global groups := {"programming": programming, "communication": communication}

global programming
GroupAdd, programming, ahk_exe SciTE.exe
GroupAdd, programming, ahk_exe pycharm64.exe
GroupAdd, programming, ahk_exe Mathematica.exe
GroupAdd, programming, ahk_exe hh.exe
GroupAdd, programming, ahk_exe EXCEL.EXE
GroupAdd, programming, ahk_exe notepad++.exe

global communication
GroupAdd, communication, WhatsApp
GroupAdd, communication, ahk_exe OUTLOOK.exe
GroupAdd, communication, ahk_exe Discord.exe

global internet
GroupAdd, internet, ahk_exe msedge.exe
GroupAdd, internet, ahk_exe chrome.exe


;~ turn screen to class
global screens := {"Xrange": [], "Yrange": [], "dim": [], "COM": []
					,"names": ["left", "right", "right"]
					,"order": ["\\.\DISPLAY1", "\\.\DISPLAY2", "\\.\DISPLAY2"]
					, "enum": [], "comm": 2}

get_screens_data(screens, debug)

Switch A_ComputerName{
	;~ Case "PHYAROM2":
	;~ Case "ZEUS2":
	Case "CHRONOS7":
		screens["names"] := ["wacom", "main", "secondary"]
		screens["comm"] := 1
		SysGet, scr, MonitorPrimary
		sysget, scr, MonitorName, scr
		If (scr="\\.\DISPLAY9")
			screens["order"] := ["\\.\DISPLAY9", "\\.\DISPLAY1", "\\.\DISPLAY8"]
		Else
			screens["order"] := ["\\.\DISPLAY5", "\\.\DISPLAY1", "\\.\DISPLAY4"]
}
scr :=


global HS := {}
HS["mgmail"] := "mtavor556@gmail.com"
HS["mtech"] := "btavor@campus.technion.ac.il"
HS["zipcode"] := "3670041"
HS["lastcc"] := "520197"
HS["myid"] := "204882203"
HS["lizid"] := "206151219"
HS["myphone"] := "0526603463"
HS["lizphone"] := "0526512327"

global SearchEngines := {}
SearchEngines["google"] := "http://www.google.com/search?q="
SearchEngines["books"] := "https://libgen.li/index.php?req="
SearchEngines["translateEn>He"] := "https://translate.google.com/?sl=en&tl=iw&op=translate&text="
SearchEngines["translateHe>En"] := "https://translate.google.com/?sl=iw&tl=en&op=translate&text="
SearchEngines["wikipedia"] := "https://en.wikipedia.org/w/index.php?title=Special%3ASearch&search="
SearchEngines["torrent"] := "https://rarbgtor.org/torrents.php?search="
SearchEngines["ahk"] := "https://www.autohotkey.com/docs/v1/lib/"
SearchEngines["youtube"] := "https://www.youtube.com/results?search_query="



