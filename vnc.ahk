﻿#NoEnv
#Warn

store_hotstring() {
	local key, text0
	InputBox, key, Key Name, Please enter key name
	if !ErrorLevel {
		text0 := GetSelectedText()
		msgbox % text
		run_cmd(paths, "save_vnc_hotstring", [text0, "memory/vnc_htostrings.json", key], 2,,, 1)
	}
	return
}

stamp(type, name) {
	FormatTime, CurrentDateTime,, dd/MM/yy
	SendInput % "// " . type . " by " . name . " at " . CurrentDateTime . ": "
	return
}

;~ alt_tab() {
	;~ GetKeyState("alt", "p")
;~ }

#IfWinActive ahk_exe vncviewer.exe

!Tab::Send, ^+l

^WheelRight::+^k
^WheelLeft::+^l

^+h::store_hotstring()

;~ ::secbr:://--------------------------------------------------------

;~ :X:comment::stamp("COMMENT", "btavor")
;~ :X:todo::stamp("TODO", "btavor")
;~ :X:question::stamp("QUESTION", "btavor")

::fog_flag::-inc_comp 0


#IF
