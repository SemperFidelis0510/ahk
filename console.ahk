﻿#NoEnv
#Persistent
#SingleInstance Force
SendMode, input
SetWorkingDir %A_ScriptDir%
#Include utils.ahk
;~ #Include %A_ScriptDir%
;~ #Include functions.ahk
;~ DetectHiddenWindows, off
ExitOnEnd := True ;exit flag
varnames := "x,y,z,win,a,b,c,d,w"


x := 3
y := [1,2]
z := y.MaxIndex()

Loop % (x-z)
{
	y.push(y[y.Maxindex()])
}

for _, i in y
	msgbox % i






;~ x := 1
;~ for i in range(2) {
;~ for _, j in range(2, 3) {
	;~ msgbox % "j: " . j
;~ }
;~ }


;~ z := 2
;~ x := [1]
;~ x.push(z)
;~ msgbox % x[1]
;~ for i in x {
	;~ msgbox % i
;~ }
;~ msgbox % x


;~ x := 1
;~ y := 3
;~ z := x + y
;~ msgbox % z

;~ x := range(56)
;~ msgbox % x
;~ for _, i in x {
	;~ MsgBox %i%
;~ }






;~ iniFile := "C:\Users\btavor\Pandora\AHK\paths.ini"
;~ section := "general_hotstrings"
;~ ; Read all the keys under the specified section
;~ IniRead, keys, %iniFile%

;~ Loop, %keys%
;~ {
	;~ IniRead, a, MyIni.ini, Sect_1, Key_%a_Index%
	;~ msgbox % a
;~ }
;~ msgbox % keys

;~ Loop, Parse, keys, `n
;~ {
	;~ a := StrSplit(A_LoopField, "=")
	;~ msgbox % a[1]
	;~ msgbox % a[2]
;~ }

;~ msgbox % keys[1]
; If no keys are found, display an error message

;~ FileRead, content, %inifile%
;~ Loop, Parse, content, `n`r
;~ {
	;~ if(NOT InStr(A_LoopField, "="))
		;~ continue
	;~ ArrCount++
	;~ StringSplit, data, A_LoopField, =
	;~ key%ArrCount% := data1
;~ }

;~ Loop, %ArrCount%
;~ {
	;~ keyname := key%A_Index%
	;~ IniRead, keycontent, %inifile%, %inisec%, %keyname%
	;~ Msgbox % keycontent
	;~ ; Do what ever here with keycontent which contains the data from the key
;~ }



;~ msgbox, % paths["edge"]

;~ path := "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
;~ run % paths["edge"]

;~ WinActivate, ahk_exe ONENOTE.exe

;~ msgbox % WinExist("ahk_exe ONENOTE.EXE")
;~ #1::Ins

;~ x := "asdasdsadfdsfsdfkjzs 34m34lkn  3k45n34l ktgfd"
;~ x := "asdsad"

;~ MsgBox % strlen(x)
;~ inputbox, txt,, %x%,, 7*strlen(x)
;~ inputbox, txt,, %x%,, 200, 150

;~ x := PopTrayTip("hi", "shalom")

;~ msgbox % x

;~ OnMessage(0x404, Func("AHK_NOTIFYICON"))

;~ TrayTip, foo, bar

;~ AHK_NOTIFYICON(wParam, lParam, msg, hwnd)
;~ {
	;~ if (hwnd != A_ScriptHwnd)
		;~ return
	;~ if (lParam = 1029) ; NIN_BALLOONUSERCLICK
		;~ MsgBox, Notification was left-clicked.
	;~ if (lParam = 1028) ; NIN_BALLOONTIMEOUT
		;~ MsgBox, Notification timed out or was closed or right-clicked.
;~ }





;~ txt := "~#!abc"

;~ msgbox % SubStr(txt, 1, 1)
;~ msgbox % (SubStr(txt, 1, 1) in ^,#,+,!,~,$)

;~ Loop {
		;~ x := SubStr(txt, 1, 1)
		;~ if x in ^,#,+,!,~,$
			;~ txt := SubStr(txt, 2)
		;~ else
			;~ break
		;~ msgbox % txt

	;~ }

	;~ msgbox % txt



;~ run_cmd(paths["mathematica"],, 2)


;~ WorkingDir := "C:\Users\btavor\Downloads\Newfolder\SimSwap-main"
;~ WorkingDir := "E:\OneDrive - Technion\Pandora\ahk"

;~ Run, %comspec%, %work_dir%

;~ run, %comspec% /k "E:\SimSwap\swap.bat" emily1 "E:\SimSwap\pics\bodies\453304669.jpg" Single
;~ run, %comspec% /k "E:\SimSwap\swap.bat"

;~ x := "gdsa|abcs|cfad"
;~ Sort, x, D|

;~ MsgBox % x



;~ WinGetTitle, txt, A
;~ msgbox % txt

;~ x := "adawd"
;~ msgbox % quote(x)

;~ DllCall("kernel32.dll\SetProcessShutdownParameters", "UInt", 0x4FF, "UInt", 0)
;~ OnMessage(0x0011, "WM_QUERYENDSESSION")
;~ OnMessage(0x0002, "WM_DESTROY")
;~ OnExit(func("exitfunc"))
;~ return


;~ WM_DESTROY(parama, paramb) {
	;~ Run, autohotkey.exe "%A_ScriptFullPath%"
	;~ DllCall("ShutdownBlockReasonCreate", "ptr", A_ScriptHwnd, "wstr", Reason)
	;~ return
;~ }

;~ WM_QUERYENDSESSION(parama, paramb) {
	;~ Run, autohotkey.exe "%A_ScriptFullPath%"
	;~ DllCall("ShutdownBlockReasonCreate", "ptr", A_ScriptHwnd, "wstr", Reason)
	;~ return
;~ }

;~ exitfunc(a,b) {
	;~ Run, autohotkey.exe "%A_ScriptFullPath%"
	;~ DllCall("ShutdownBlockReasonCreate", "ptr", A_ScriptHwnd, "wstr", Reason)
	;~ return
;~ }

;~ x := 4
;~ x *= 5
;~ msgbox % x
;~ msgbox % winactive("ahk_exe chrome.exe")
;~ if (y:=1)
	;~ msgbox 6


;~ SetTimer, mon, 3000
;~ return

;~ mon:
;~ MsgBox,,, 4, 2
;~ return

;~ MsgBox,,, 5, 2

;~ msgbox % timestamp()
;~ FormatTime, td,, yyyyMMddHHmmss
;~ msgbox % td


;~ j := "a"

;~ if j in %varnames%
	;~ msgbox 4

;~ x:="abc"

;~ if (x!=="Abc")
	;~ msgbox 4

;~ wingettitle, x, ahk_exe scite.exe

;~ MsgBox, %A_AhkVersion%

;~ x:="abc"

;~ if (%x%==abc) and 1
	;~ msgbox 4

;~ run, explore C:\











;~ Hotstring(":*:abc", "ccc", "on")

;~ #1::
;~ {
	;~ w := WinActive("ahk_exe chrome.exe")
	;~ WinGetTitle, ttitle, ahk_exe chrome.exe
	;~ MsgBox, 64, Tab title, %ttitle%
;~ }


;~ #1::
;~ {
	;~ w := WinActive("ahk_exe chrome.exe")
	;~ ControlGetPos, posx, posy,,, Intermediate D3D Window1, ahk_id %w%
	;~ ControlGetText, txt, Intermediate D3D Window1, ahk_id %w%
	;~ MouseGetPos, x, y
	;~ msgbox %x% | %y%
	;~ msgbox %posx% | %posy%
	;~ msgbox % txt
;~ }


;~ key := "F:\key.sec"

;~ FileRead, x, %key%

;~ msgbox % x


;~ x :=2

;~ if x in 1,4,7
	;~ msgbox 4


;~ x := "a"
;~ x = "%x%"

;~ msgbox % x


;~ class x {
	;~ static xxx := {}
	;~ static yyy := {}
	;~ __New() {
		;~ this.xxx := {"j": 3}
		;~ this.yyy := {}
	;~ }

	;~ push(a, b, c) {
		;~ this.__set(%a%, b, c)
		;~ this[a][b] := c
		;~ this[a].InsertAt(b, c)
		;~ msgbox % a . b . c
		;~ msgbox % this[a]["j"]
	;~ }

;~ }

;~ z := new x

;~ z.push("xxx", "a", "b")
;~ z.push("yyy", "abxf", 23423)

;~ for i, j in z.xxx
	;~ msgbox %i% | %j%

;~ msgbox % x.xxx

;~ for Each, i in x
	;~ msgbox % i



;~ path := "E:\OneDrive - Technion\pandora\ahk\memory\pic.jpg"

;~ #1::
	;~ FileAppend, %ClipboardAll%, %path%




;~ f(z) {
	;~ s := 10
	;~ fps := 30
	;~ rate := Ceil(1000/fps)
	;~ P := "E:\OneDrive - Technion\pandora\ahk\memory\clips\clip_image_20230201124854.jpg"
	;~ img := LoadPicture(P)

	;~ Gui, abc:new, -Caption +ToolWindow
	;~ Gui, Margin, 1, 1
	;~ Gui, Color, 44FF44
	;~ gui, add, Picture, +HwndPicGUI, HBITMAP:*%img%
	;~ gui, show, AutoSize

	;~ Hotkey, LButton, CloseClip
	;~ SetTimer, DisplayImage, %rate%

	;~ DisplayImage:
		;~ mousegetpos, x, y
		;~ x+=s
		;~ y+=s
		;~ msgbox % z
		;~ Gui, abc:show, X%x% Y%y%
		;~ return

	;~ CloseClip:
		;~ SetTimer, DisplayImage, Off
		;~ Hotkey, LButton, Off
		;~ Gui, abc:destroy
		;~ return
;~ }

;~ f(3)

;~ LButton::
;~ {
	;~ SetTimer, DisplayImage, Off
	;~ Gui, abc:destroy
;~ }

;~ sleep 1000

;~ Loop {
		;~ mousegetpos, x, y
		;~ x+=s
		;~ y+=s
		;~ gui, abc:show, X%x% Y%y%
		;~ sleep, rate
	;~ } until GetKeyState("LButton", "P")



;~ x := "C:\Users\Bar\Downloads\asdsa.html"

;~ file := new fileclass(x)


;~ msgbox % file.name








;~ msgbox % path["downloads"]

;~ SysGet, scr, MonitorPrimary
;~ sysget, scr, MonitorName, scr
;~ msgbox % scr

;~ scr :=

;~ pth := "C:\Users\btavor\Downloads"
;~ SplitPath, pth,,, ext, pth

;~ while 1 {
	;~ FileGetTime, time, %pth%, M
	;~ msgbox,,, % time, 3
	;~ sleep, 3000
;~ }


;~ x:=pathClass.revise("pandora")
;~ msgbox % x

;~ pth := "E:\OneDrive - Technion\Pandora\lyx"
;~ SplitPath, pth, flnm, dr, ext, nm, drv
;~ msgbox % flnm . " | " . dr  . " | " . ext . " | " . nm . " | " . drv


;~ x:=1

;~ switch x {
	;~ case 1, 2:
		;~ msgbox 1
	;~ case 3:
		;~ msgbox 2
;~ }


;~ p := new pathclass
;~ msgbox % p["onedrive"]
;~ p["abc"] := "111"

;~ msgbox % p["abc"]



;~ #1::
	;~ winget, win, List
	;~ Loop %win% {
		;~ id := win%A_Index%
		;~ wingettitle, wt, ahk_id %id%
		;~ msgbox % wt
	;~ }




;~ a := [1,4,6,43]
;~ b := 6
;~ a.push(75)


;~ Loop % a.length()
;~ {
	;~ msgbox % a[A_Index]
;~ }
;~ for i0, j0 in a
	;~ msgbox % j0

;~ for i0, j0 in b
	;~ msgbox % j0


;~ msgbox % inlist(b,a)


;~ #1::
;~ {
	;~ x := get_explorer_path("all")
	;~ msgbox % x[1]
	;~ msgbox % x[2]
	;~ msgbox % x[2]
;~ }






;~ #1::
;~ {
	;~ fold := "A"
	;~ fold := "ahk_class CabinetWClass"
	;~ Winget, ppp, list, %fold%
	;~ hwnd := WinExist(fold)
	;~ msgbox % hwnd
	;~ for Window in ComObjCreate("Shell.Application").Windows
		;~ if (window.hwnd==hwnd) {
			;~ msgbox 3
			;~ Path_to_Selection := window.Document.Folder.Self.Path
		;~ }

	;~ MsgBox % Path_to_Selection
	;~ return
;~ }


;~ #2::
;~ {
	;~ list := [0x100b6, 0xb70512, 0x2202fc, 0x90468, 0xb0464, 0x300b0]
	;~ for v, x in list
	;~ {
		;~ Winget, y1, Processname, ahk_id %x%
		;~ MsgBox % y1
		;~ Wingetclass, y2, ahk_id %x%
		;~ msgbox % y2
		;~ Winget, y3, ahk_id %x%, Processname
		;~ Winget, y4, ahk_id %x%, Processname
	;~ }
	;~ return
;~ }

;~ cmd := "asdsa | asdas . asdsa"

;~ cmd := StrSplit(cmd, [":", "|", ".", ","])

;~ Loop, 2
;~ {
	;~ x := cmd.RemoveAt(1)
	;~ msgbox % cmd[1]
;~ }



;~ fold := "C:\Users\btavor\Desktop\New folder\"
;~ old := fold . "eventlog.txt"
;~ new_file := fold . "123.txt"



;~ FileMove, %old%, %new_file%, 1



;~ #1::
;~ {
;~ ;invoke menu item in context menu that matches string
;~ ;e.g. Notepad right-click menu, 'Paste' menu item
;~ SendMessage, 0x1E1,,,, ahk_exe notepad.exe ;MN_GETHMENU := 0x1E1
;~ hMenu := ErrorLevel

;~ vNeedle := "Paste"
;~ vNeedle := StrReplace(vNeedle, "&")
;~ Loop, % DllCall("user32\GetMenuItemCount", Ptr,hMenu)
;~ {
	;~ vIndex := A_Index-1
	;~ vID := DllCall("user32\GetMenuItemID", Ptr,hMenu, Int,vIndex, UInt)
	;~ if (vID = 0) || (vID = 0xFFFFFFFF) ;-1
		;~ continue
	;~ vChars := DllCall("user32\GetMenuString", Ptr,hMenu, UInt,vIndex, Ptr,0, Int,0, UInt,0x400) + 1
	;~ VarSetCapacity(vText, vChars << !!A_IsUnicode)
	;~ DllCall("user32\GetMenuString", Ptr,hMenu, UInt,vIndex, Str,vText, Int,vChars, UInt,0x400) ;MF_BYPOSITION := 0x400
	;~ if (StrReplace(vText, "&") = vNeedle)
	;~ {
		;~ PostMessage, 0x1F1, % vIndex, 0,, ahk_class #32768 ;MN_DBLCLK := 0x1F1
		;~ break
	;~ }
;~ }
;~ return
;~ }


;~ #2::
;~ {
	;~ SendMessage, 0x007B,,,, ahk_exe notepad.exe
	;~ return
;~ }









;~ p := "E:\OneDrive - Technion\Pandora\ahk\cache"

;~ x := get_newest_file(p)
;~ msgbox % x

;~ #1::
;~ {
	;~ capture_img()
	;~ return
;~ }

;~ while 1 {
	;~ if (A_Cursor = "unknown") {
		;~ mousegetpos,,,, sumatractrl
		;~ msgbox % sumatractrl
	;~ }
	;~ sleep, 1000
;~ }

;~ get_newest_file("E:\OneDrive - Technion\Documents\School\Tutorials\Linear Algebra A\gilad\week 7")

;~ x := get_clip_img()
;~ msgbox % x

;~ run_cmd("", 1, 2)

;~ funct() {
	;~ return [3, 76]
;~ }

;~ x := funct()

;~ MsgBox % x[2]


;~ img := get_clip_img()
;~ x := save_img(img, "C:\Users\Bar\OneDrive - Technion\Pandora\ahk\cache\sumatra\pic.jpg")
;~ msgbox % x

;~ date := 0
;~ time := 1

;~ if date
	;~ FormatTime, td,, yyyyMMdd
;~ if time {
	;~ FormatTime, tt,, HHmmss
;~ }
;~ t = %td%%tt%

;~ msgbox, % t

;~ send, +#{s}

;~ #1::
;~ {
	;~ msgbox, %A_Cursor%
	;~ return
;~ }

;~ image := LoadPicture("E:\OneDrive - Technion\Pictures\For TV\141889226_4379664632061673_5794151195757663372_n.png")
;~ image1 := "E:\OneDrive - Technion\Pictures\For TV\141889226_4379664632061673_5794151195757663372_n.png"

;~ handle := DllCall("GetClipboardData", "UInt", 17)
;~ Size := DllCall("GlobalSize", "UInt", Handle)
;~ Pointer := DllCall("GlobalLock", "UInt", Handle)
;~ VarSetCapacity(Data, Size)
;~ DllCall("RtlMoveMemory", "UInt", &Data, "UInt", Pointer, "UInt", Size)
;~ DllCall("GlobalUnlock", "UInt", Handle)

;~ DllCall("OpenClipboard", "ptr", 0)
;~ DllCall("IsClipboardFormatAvailable", "uint", 2)
;~ img := DllCall("GetClipboardData", "uint", 2, "ptr")
;~ img := ClipboardAll

;~ if DllCall("OpenClipboard", "ptr", 0) {
	;~ if DllCall("IsClipboardFormatAvailable", "uint", 2) {
		;~ img := DllCall("GetClipboardData", "uint", 2, "ptr")
	;~ }
	;~ DllCall("CloseClipboard")
;~ }

;~ msgbox, % img
;~ tooltip_img(img, [0, 0])
;~ x := [[1,1],[1,1]]
;~ x := [1,1]

;~ msgbox, % x[1].MaxIndex()
;~ if x[1] is integer
	;~ msgbox, 1


;~ if image1 is not integer
	;~ MsgBox, 1

;~ coordmode,mouse,screen
;~ mousegetpos,x,y
;~ imagex:=x+20
;~ imagey:=y+20
;~ splashimage, HBITMAP:*%image%,b x%imagex% y%imagey%,,,MouseImageID
;~ sleep,100
;~ loop
;~ {
	;~ mousegetpos,x,y
	;~ imagex:=x+20
	;~ imagey:=y+20
	;~ winmove,MouseImageID,,%imagex%,%imagey%
	;~ sleep,80
;~ }


;~ lang := get_lang()
;~ msgbox % lang



;~ VarSetCapacity(kbd, 9)
;~ if DllCall("GetKeyboardLayoutName", uint, &kbd)
  ;~ msgbox, % kbd






;~ Run, *RunAs autohotkey.exe "%A_ScriptFullPath%"
;~ x := "fsd4"
;~ x := quote(x)
;~ msgbox % x

;~ run_cmd("add_lyx_item", 1, 2, "--init")





;~ ScriptName = TrayTip

;~ TrayTip, %ScriptName%, Press A to test, 1

;~ A::
;~ TrayTip, %ScriptName%, Sending A Message, 1
;~ return

;~ win := "ahk_id " . WinExist("ahk_exe SumatraPDF.exe")
;~ ControlSend,, ^{g}, % win
;~ WinWait, Go to page
;~ ControlGetText, txt, Edit1, % win
;~ ControlSend,, {enter}, Go to page
;~ msgbox % txt

;~ #1::
;~ {
	;~ win := WinActive("A")
	;~ ControlGetFocus, con, ahk_id %win%
	;~ ControlGet, txt, Selected,, % con, ahk_id %win%
	;~ msgbox % txt
	;~ msgbox % con
	;~ msgbox % win
	;~ return
;~ }

;~ x :
;~ if (y := x - 5)
	;~ msgbox 6
;~ msgbox % y

;~ #1::
;~ {
;~ ControlGetPos, X, Y, W, H, OneNote::DocumentCanvas1, ahk_exe ONENOTE.exe
;~ msgbox, %X% | %Y% | %W% | %H%
;~ }
;~ ^1::
;~ {
	;~ WinActive("A")

	;~ tmp := ClipboardAll
	;~ Clipboard =
	;~ send +#{s}
	;~ ClipWait, 20, 1
	;~ pic := ClipboardAll
	;~ Clipboard := tmp
	;~ ClipWait, 0.5

	;~ if pic is alpha
		;~ msgbox 1
	;~ if pic is alnum
		;~ msgbox 2
	;~ if isobject(pic)
		;~ msgbox 3

	;~ pic := setclipboarddata(pic)
	;~ pic = HBITMAP*%pic%

	;~ Gui, Add, picture,, % pic
	;~ Gui, Show, w640 h480
	;~ Return
;~ }

;~ SetClipboardData(hBitmap) {
	;~ DllCall("GetObject", "Uint", hBitmap, "int", VarSetCapacity(oi,84,0), "Uint", &oi)
	;~ hDIB :=	DllCall("GlobalAlloc", "Uint", 2, "Uint", 40+NumGet(oi,44))
	;~ pDIB :=	DllCall("GlobalLock", "Uint", hDIB)
      ;~ DllCall("RtlMoveMemory", "Uint", pDIB, "Uint", &oi+24, "Uint", 40)
	;~ DllCall("RtlMoveMemory", "Uint", pDIB+40, "Uint", NumGet(oi,20), "Uint", NumGet(oi,44))
	;~ DllCall("GlobalUnlock", "Uint", hDIB)
	;~ return hDIB
;~ }


;~ ~!PrintScreen::
;~ ~PrintScreen::
;~ If GDI_SaveBitmap(ClipboardGet_DIB(), OUTF:=A_ScriptDir"\"A_Now".bmp" )
	;~ Runwait, Rundll32.exe %A_Windir%\system32\shimgvw.dll`,ImageView_Fullscreen %OUTF%

;~ ClipboardGet_DIB() {           ; By SKAN    www.autohotkey.com/forum/viewtopic.php?t=35242
 ;~ If DllCall("IsClipboardFormatAvailable", UInt,2 )
   ;~ DllCall( "OpenClipboard", UInt,0 ), tBM := DllCall("GetClipboardData", UInt,2 )
 ;~ , hBM := DllCall( "CopyImage", UInt,tBM, UInt,0, Int,0,Int,0, UInt,0x2000, UInt )
 ;~ , DllCall( "CloseClipboard" )
;~ Return hBM ? hBM : 0
;~ }

;~ GDI_SaveBitmap(hBM, File) {  ; By SKAN    www.autohotkey.com/forum/viewtopic.php?t=35242
 ;~ DllCall( "GetObject", Int,hBM, Int,VarSetCapacity($,84), UInt,NumPut(0,$,40,"Short")-42 )
 ;~ Numput( VarSetCapacity(BFH,14,0)+40, Numput((NumGet($,44)+54),Numput(0x4D42,BFH)-2)+4 )
 ;~ If ( hF := DllCall( "CreateFile", Str,File,UInt,2**30,UInt,2,Int,0,UInt,2,Int64,0 ) ) > 0
   ;~ DllCall( "WriteFile", UInt,hF, UInt,&BFH,  UInt,14, IntP,0,Int,0 ) ; BITMAPFILEHEADER
 ;~ , DllCall( "WriteFile", UInt,hF, UInt,&$+24, UInt,40, IntP,0,Int,0 ) ; BITMAPINFOHEADER
 ;~ , DllCall( "WriteFile", UInt,hF, UInt,NumGet($,20), UInt,NumGet($,44), UIntP,BW, Int,0 )
 ;~ , DllCall( "CloseHandle", UInt,hF )
;~ Return BW ? 54+BW : 0
;~ }

;~ controlsend,, {F11}, ahk_exe sumatrapdf.exe


;~ UIA := UIA_Interface() ; Initialize UIA interface
;~ sumatra := UIA.ElementFromHandle(WinExist("ahk_exe SumatraPDF.exe")) ; Get the element for the Notepad window
;~ win := sumatra.FindFirstByType("Window")
;~ scrollbar2 := sumatra.FindFirstByType("ScrollBar")
;~ pane := sumatra.FindFirstByType("pane")
;~ thumb := sumatra.FindFirstByType("Thumb")
;~ patterns := sumatra.getsupportedpatterns()
;~ msgbox % patterns[2]

;~ ^1::
;~ {
;~ sumatra.FindFirstByType("edit").valuepattern.setvalue(3)
;~ sumatra.FindFirstByType("ScrollBar").valuepattern.setvalue(3)
;~ scrollbar := pane.ScrollPattern
;~ s := scrollbar2.rangevaluepattern
;~ msgbox % s.maximum
;~ msgbox % scrollbar2.value
;~ scrollbar2.setvalue(70)
;~ scrollbar2.valuepattern.setvalue(100)
;~ s2 := s.setvalue
;~ msgbox % s.VerticallyScrollable
;~ win := sumatra.windowpattern
;~ leg := pane.LegacyIAccessiblePattern
;~ msgbox % win.WindowInteractionState
;~ leg.dodefaultaction()
;~ msgbox % leg.help[1]
;~ scrollbar.VerticalViewSize := 100
;~ msgbox % scrollbar.horizontalViewSize
;~ }

;~ msgbox % y.CurrentVerticalScrollPercent
;~ y.Scroll(,0)
;~ scrollbar.SetScrollPercent(,100)

;~ wingetpos,,,, h, ahk_exe sumatrapdf.exe
;~ msgbox % h




;~ Run, notepad.exe
;~ UIA := UIA_Interface() ; Initialize UIA interface
;~ WinWaitActive, ahk_exe notepad.exe
;~ npEl := UIA.ElementFromHandle(WinExist("ahk_exe notepad.exe")) ; Get the element for the Notepad window
;~ documentEl := npEl.FindFirstByType("Document") ; Find the first Document control (in Notepad there is only one). This assumes the user is running a relatively recent Windows and UIA interface version 2+ is available. In UIA interface v1 this control was Edit, so an alternative option instead of "Document" would be "UIA.__Version > 1 ? "Document" : "Edit""
;~ documentEl.SetValue("Lorem ipsum") ; Set the value for the document control.
; documentEl.CurrentValue := "Lorem ipsum"
; documentEl.Value := "Lorem ipsum"







;~ hwnd := winExist("ahk_exe sumatrapdf.exe")
;~ msgbox % hwnd
;~ x := ComObjGet("SumatraPDF.pdf")
;~ ControlGet, hCtl, Hwnd,, Edit1, ahk_exe sumatrapdf.exe
;~ x := Acc_ObjectFromWindow(hwnd)
;~ y := x is ComObject
;~ MsgBox % y

;~ x := ComObjGet("ahk_id 0x2078a")

;~ x := ComObjCreate("::{3D3B1846-CC43-42AE-BFF9-D914083C2BA3}")

;~ For x in ComObjCreate("Shell.Application").Windows
;~ {
	;~ msgbox % x.Path
	;~ y := x.shellWindows.Item(ComObject(VT_UI4 := 0x13, SWC_DESKTOP := 0x8)).Document
	;~ msgbox % y.Path
;~ }

;~ x := "aasdsa"
;~ x = "%x%"

;~ IfInString, x, %A_Space%
	;~ msgbox % x

;~ MsgBox % A_WinDir
;~ run ms-settings:windowsupdate-action

;~ x := ""

;~ if (x = "")
	;~ msgbox 3
;~ x := [1,2,3]
;~ x.push(2,5)
;~ MsgBox % x[5]

;~ text := "asdasd"

;~ text = "%text%"

;~ MsgBox text
;~ focus := new BB

;~ focus.get("win")
;~ msgbox % focus.text
;~ text := get_selected_text()

;~ #1:: msgbox % focus.text
;~ #2:: msgbox % focus.text["now"]
;~ #3:: msgbox % focus.clip
;~ #4:: msgbox % text

;~ Clipboard := "asdasdasd" . "`r`n" . Clipboard

;~ MsgBox % Clipboard

;~ Loop, parse, clipboard, `n, `r
;~ {
    ;~ MsgBox,
	;~ %A_LoopField%
;~ }
;~ MsgBox Clipboard[2]

;~ WinGet, abc, List, ahk_class CabinetWClass
;~ loop, %abc%{
	;~ id := abc%A_Index% %id%
	;~ shellWindows := ComObjCreate("Shell.Application").Windows
	;~ shellFolderView := shellWindows.Item( ComObject(VT_UI4 := 0x13, SWC_DESKTOP := 0x8) ).Document
	;~ for window in shellWindows       ; ShellFolderView object: https://goo.gl/MhcinH
         ;~ if (hWnd = window.HWND) && (shellFolderView := window.Document)
            ;~ break

	;~ ControlFocus, Edit1, ahk_id %id%
	;~ ControlGet, path, Line ,1, Edit1, ahk_id %id%
	;~ WinGetText, text, ahk_id %id%, Address:
	;~ path :=

	;~ msgbox % shellFolderView.Folder.Self.Path
;~ }

;~ Explorer_GetActiveFolderPath() {
   ;~ WinGetClass, winClass, % "ahk_id" . hWnd := WinExist("A")
   ;~ if !(winClass ~="Progman|WorkerW|(Cabinet|Explore)WClass")
      ;~ Return

   ;~ shellWindows := ComObjCreate("Shell.Application").Windows
   ;~ if (winClass ~= "Progman|WorkerW")  ; IShellWindows::Item:    https://goo.gl/ihW9Gm
                                       ;~ ; IShellFolderViewDual:   https://goo.gl/gnntq3
      ;~ shellFolderView := shellWindows.Item(ComObject(VT_UI4 := 0x13, SWC_DESKTOP := 0x8) ).Document
   ;~ else {
      ;~ for window in shellWindows       ; ShellFolderView object: https://goo.gl/MhcinH
         ;~ if (hWnd = window.HWND) && (shellFolderView := window.Document)
            ;~ break
   ;~ }
   ;~ Return shellFolderView.Folder.Self.Path
;~ }

;~ #1:: msgbox % Explorer_GetActiveFolderPath()

;~ Loop, 3 {
	;~ SysGet, mon, Monitor, %A_Index%
;~ msgbox, %monLeft% : %monTop% : %monRight% : %monBottom%

;~ }

;~ #1::
;~ {
	;~ MouseGetPos, X, Y
	;~ A := det_screen(X,Y)
	;~ msgbox % A[1]
	;~ return
;~ }


;~ for each523, var364 in varnames {
	;~ if IsSet(%var364%)
		;~ msgbox % %var364%
;~ }

;~ #1::reload

if ExitOnEnd
	ExitApp
