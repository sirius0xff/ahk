#SingleInstance force
;#NoTrayIcon
SetTitleMatchMode RegEx
SendMode Input
SetCapsLockState,OFF


; F2::WinSet, Transparent, 80,A
; F3::WinSet, Transparent, 255,A
 ;
; ~^c::
    ; sleep 300 
    ; x:=clipboard
    ; y:=SubStr(x,1,8)
    ; clipboard=https://www.dropbox.com/history/Result/sd3108-4/%y%/%x%/%x%_Combine.csv?_subject_uid=492262219&undelete=1
    ; return

; numpad7::
; send !e
; send {f2}{home}{right 4}{delete 4}{tab}
; send {f2}{home}{right 4}{delete 4}{tab}
; send {f2}{home}{right 4}{delete 4}{tab}
; send {enter}
; send +{tab 7}
; send {down}
; return
#t::WinSet,AlwaysOnTop,Toggle,A
; f3::winmove A,,0,0
^#!c::MouseGetPos,,,,clipboard
; $-::
    ; ; winget,aid,id,A
    ; looping:=1
    ; ; while(looping){
        ; _count_:=0
    ; while(looping and _count_<20){
        ; send {down}
        ; sleep 100
        ; send {up}
        ; sleep 100
        ; send +{down 3}
        ; sleep 1000
        ; send {delete}
        ; sleep 1000
        ; ; _count_+=1
    ; }
        ; ; send {f5}
        ; ; sleep 1000
        ; ; send {Enter}
        ; ; sleep 5000
    ; ; }
    ; ; msgbox,Done
    ; return 
; $=::looping:=0

; $#g::+#g
MiddleClickClose(){
    sleep 100
    CoordMode, Mouse, Relative
; return
    CaptionBarSize:=23

    MouseGetPos,,, WinUMID
    WinActivate, ahk_id %WinUMID% ; activate window below cursor
    
    MouseGetPos,, MouseY,,,

    middlecloseable:=true 
    If(MouseY < CaptionBarSize && MouseY > 0 && middlecloseable==true)
    {   
        IfWinActive, ahk_class Chrome_WidgetWin_1 ahk_exe chrome.exe
            return
        WinWaitActive,ahk_id %WinUMID%
        WinGet,minmax_,MinMax,ahk_id %WinUMID%
        if(minmax_==1){
            WinRestore,ahk_id %WinUMID%
            return
        }
        IfWinActive,Outlook ahk_class rctrl_renwnd32 ahk_exe OUTLOOK.EXE
            WinMinimize,A
        else
            Send !{F4}
    }
}
$~MButton up::MiddleClickClose()
;~$f2::
;	; send {f2}
;
;	sleep 20
;	send ^c
;	sleep 20
;	send {esc}
;	; send {down}
;	winactivate,ahk_class Notepad++
;	send ^v{enter}{enter}
;	sleep 100
;	winactivate,ahk_exe MSACCESS.EXE
;
;	send {enter}{Lalt}{Tab}{enter}q
;	; sleep 300
;	; send +{pgup 2}
;	sleep 400
;	send ^c
;	sleep 100
;	send ^w
;	winactivate,ahk_class Notepad++
;	send ^v{enter}{enter}{enter}
;	sleep 100
;	winactivate,ahk_exe MSACCESS.EXE
;
	return
; 1::
  ; ifwinactive ahk_class TfrmMain
  ; {
  ; send ^c{left 1}
  ; send 0{BS}^v{Enter}
  ; sleep 100
  ; send {right 1}{down}
  ; }
  ; return

; OnMessage(0x218, "OnSleep")

#d::Send #^{Right}
#a::Send #^{Left}
bAutoClick:=false
LWin & WheelUp::send {Blind}{PgUp}
LWin & WheelDown::send {Blind}{PgDn}
; #IfWinActive Rename ahk_class #32770
; 1::!y

; q::
  ; send ^c
  ; n:=clipboard * 1.2
  ; send %n%
  ; return
  ; #ifwinactive Symbolic Link Creator
  ; 1::
  ; Send {Down}{Tab}
  ; Send ^a{Delete}.{Tab 2}
  ; Send ^a{Delete}femalebody_0.nif{Tab}
  ; Send ^a{Delete}..\..\actors\character\character assets\femalebody_0.nif
  ; return
  ; 2::
  ; Send {Down}{Tab}
  ; Send ^a{Delete}.{Tab 2}
  ; Send ^a{Delete}femalebody_1.nif{Tab}
  ; Send ^a{Delete}..\..\actors\character\character assets\femalebody_1.nif
  ; return
  ; 1::send {up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}{up}{space}
  ; 2::send {down}{space}{down}{space}{down}{space}{down}{space}{down}{space}{down}{space}{down}{space}{down}{space}
  ; 1::ControlSend,,{Volume_UP},A
  ; 2::ControlSend,,{Volume_Down},ahk_class Shell_TrayWnd
  ; `::
  ;   WinMaximize, Notepad++
  ;   return
  ; `::
  ; msgbox hi
  ; settimer, aaaa,-1
  ; return
  ; aaaa:
  ; msgbox hi2
  ; sleep 3000
; return

; `::
  ; bAutoClick:=true
  ; while (bAutoClick){
  ; send {LButton}
  ; sleep 5
  ; }
  ; return
  ; ` up::bAutoClick:=falseAAAAAAAAAAAAAAA
  ;$~LAlt::
  ;  KeyWait,LAlt,T99
  ;  Send {LAlt up}
  ;  if A_TimeSinceThisHotkey >= 500
  ;    Send {LAlt}
;  return
#f9::run AU3_Spy.exe
; $MButton::
  ; send {MButton up}
  ; sleep 50
  ; return
  ; XButton2::PgUp
  ; XButton1::PgDn
  ; f9::
  ; bAutoClick:=true
  ; while(bAutoClick){
  ; Send {LButton down}
  ; Random, slp , 50, 100
  ; sleep %slp%
  ; Send {LButton up}
  ; Random, slp , 200, 1000
  ; sleep %slp%
  ; }
  ; return
  ; f10::bAutoClick:=false
  ; qwerty
  ;^Ctrl +Shift !Alt #Win
  ; F1::LButton
  ; F2::RButton
  ; ~XButton1::XButton2
  ; ~XButton2::XButton1
  ; ~XButton2::msgbox XButton2
  ; !^f::
  ; ; WinSet, Style, -0x0C400000,ahk_class LaunchUnrealUWindowsClient
  ; WinMove, ahk_class LaunchUnrealUWindowsClient,, 0, 0, 1920, 1080
; return
#F8::
  WinGetClass, class, A
  clipboard=ahk_class %class%
  MsgBox, %clipboard%
  return
#s::
#+s::run %A_Desktop%\-Scripts-
    ; run %A_Desktop%\Everything\Everything.lnk
    ; WinWait,ahk_exe Everything.exe
    ; WinMove,ahk_exe Everything.exe,,921,540,943,547
    ; return 
    
;///////////////////////////////////////////////////////////////////////
#IfWinActive ahk_class CurrPorts ahk_exe cports.exe
Del::Send ^t{Enter}
    
;///////////////////////////////////////////////////////////////////////
#IfWinActive Valentina Studio ahk_class Qt5QWindowIcon ahk_exe vstudio.exe
~$F5::^e
$^w::return
;///////////////////////////////////////////////////////////////////////
#IfWinActive ahk_exe Brackets.exe
^+c::Send ^/
^+x::Send ^/
;///////////////////////////////////////////////////////////////////////
#IfWinActive ahk_exe SharpDevelop.exe
$!`::^+l
$!1::^+p
^+c::Send ^/
^+x::Send ^/
$^s::
send ^+i
sleep 100
send ^s
return 
^space::send ^t
;///////////////////////////////////////////////////////////////////////
#IfWinActive ahk_class MozillaWindowClass ahk_exe thunderbird.exe
;minimize windows instead of closing
$Lbutton::
    MouseGetPos,x,y
    WinGetPos,,,w,h
    ;close button
    If((x>=w-45)&&(x<=w) &&(y>=0)&& (y<=32)) {
        WinMinimize,A
    }else if(x>w || x<0 || y<0 || y>h ){
        Send {Lbutton down}
        KeyWait,Lbutton
        Send {Lbutton up}
    }else{
        Send {Lbutton down}
    }
    return

$Lbutton up::
    MouseGetPos,x,y
    WinGetPos,,,w,h
    ;close button
    If((x>=w-45)&&(x<=w) &&(y>=0)&& (y<=32)) {
        WinMinimize,A
    }
    Send {Lbutton up}
    return

;///////////////////////////////////////////////////////////////////////
#IfWinActive Microsoft Excel ahk_class NUIDialog ahk_exe EXCEL.EXE
; ~LButton up::
    ; CoordMode,Mouse,Screen
    ; MouseGetPos,x,y
    ; WinGetPos,,,w,h
    ; x:=x-w/2
    ; y:=y-3*h/4
    ; WinMove,x,y
    ; return
$~MButton::Send n
$~RButton::Send {Esc}
; $~LButton::Send s
#IfWinActive ahk_class XLMAIN ahk_exe EXCEL.EXE
!c::
    t:=0
    Send !a
    sleep %t%
    Send !o
    sleep %t%
    Send !p
    sleep %t%
    Send !d
    sleep %t%
    Send {Tab 5}
    ; ControlFocus,RichEdit20W7,Connection Properties ahk_class bosa_sdm_XL9 ahk_exe EXCEL\.EXE
    ; Send a
    ; sleep %t%
    ; Send a
    ; sleep %t%
    return
;///////////////////////////////////////////////////////////////////////
#IfWinActive ahk_exe PyScripter.exe
^+c::Send ^'
^+x::Send ^'
^y::return
$F5::Send ^{F9}
;///////////////////////////////////////////////////////////////////////
#IfWinActive ahk_class SunAwtFrame ahk_exe datagrip.exe
~^Enter::Send ^!l
;///////////////////////////////////////////////////////////////////////
#IfWinActive ahk_class Chrome_WidgetWin_1 ahk_exe atom.exe
$^+c::send ^{/}
$^+x::send ^{/}
;///////////////////////////////////////////////////////////////////////
#IfWinActive ahk_exe pycharm(64)?\.exe
~F4::Send ^a!+e{Esc}
$^+x::send ^/
$^+c::send ^/
$^y::Send ^+z
!`::Send ^+{-}
!1::Send ^!{-}
!2::Send ^{-}
!r::Send +{F6}
$F5::Send +{F9}
$F6::Send +{F10}
$F10::Send +^{F10}
$F9::Send +^{F9}
;$!LButton::
;    Send {Lbutton}
;    Send !{LButton down}
;    return
;$!LButton up::Send {LButton up}
;!RButton::
; Send {Blind}{LButton }

;return
; $RButton up::Send {Blind}{LButton up}
; !+LButton::
; ; msgbox hi
; Send {LShift up}{LAlt down}{LButton down}
; return 
; LButton up::Send {LAlt up}{LButton up}
    ; +Enter::Send {End}{Enter}
; $^Enter::Send {Home}{Enter}{Up}
LAlt & a::Send ^!{Left}
LAlt & d::Send ^!{Right}
$^s::
  Send ^!l
  sleep 100
  Send ^s
  return
; $F10::Send +!{F10}21
; $F9::Send {F9}21
;///////////////////////////////////////////////////////////////////////
#IfWinActive,Outlook ahk_class rctrl_renwnd32 ahk_exe OUTLOOK.EXE
$Lbutton::
    MouseGetPos,x,y
    WinGetPos,,,w,h
    ;close button
    If((x>=w-45)&&(x<=w) &&(y>=0)&& (y<=32)) {
        WinMinimize,A
    }else if(x>w || x<0 || y<0 || y>h ){
        Send {Lbutton down}
        KeyWait,Lbutton
        Send {Lbutton up}
    }else{
        Send {Lbutton down}
    }
    return

$Lbutton up::
    MouseGetPos,x,y
    WinGetPos,,,w,h
    ;close button
    If((x>=w-45)&&(x<=w) &&(y>=0)&& (y<=32)) {
        WinMinimize,A
    }
    Send {Lbutton up}
    return
;///////////////////////////////////////////////////////////////////////
#IfWinActive ahk_exe MATLAB.exe
$^+c::Send ^r
$^+x::Send ^t

$^c::LineCopy()
$^x::LineCut()
LineCopy(){
	; TempCB = %ClipBoard% ; Park clipboard (text) content, Other content (format, images, etc.) will be lostTempCB = %ClipBoard% ; Park clipboard (text) content, Other content (format, images, etc.) will be lost..
	ClipBoard = ; Clear clipboard
	Send ^c ; Grab selected text
	ClipWait ,0.1 ; Wait 0.1 seconds for clipboard (clipboard will not get filled if nothing is selected)
	if (Clipboard = "") ; Nothing selected, thus copy whole line
	{
		Send +{Home 2}^c
		Sleep 1
		MoveBack := StrLen(ClipBoard)
		Send {Left}+{End}^c{Left}{Right %MoveBack%}
		Sleep 1
		ClipBoard:="`n" ClipBoard
	}
	Return
}
LineCut(){
	; TempCB = %ClipBoard% ; Park clipboard (text) content, Other content (format, images, etc.) will be lostTempCB = %ClipBoard% ; Park clipboard (text) content, Other content (format, images, etc.) will be lost..
	ClipBoard = ; Clear clipboard
	Send ^x ; Grab selected text
	ClipWait ,0.1 ; Wait 0.1 seconds for clipboard (clipboard will not get filled if nothing is selected)
	if (Clipboard = "") ; Nothing selected, thus copy whole line
	{
		Send {Home 2}+{down}^x
	}
	Return
}
;////////////////////////////////////////////
#IfWinActive ahk_exe sublime_text.exe
LAlt & a::
	if(GetKeyState("shift"))
		Send ^{PgUp}
	Else
		Send !-
	return

LAlt & d::
	if(GetKeyState("shift"))
		Send ^{PgDn}
	Else
		Send !+-
	return
^+c::send ^/
^+x::send ^/
; $^s::
    ; Send ^!+f
    ; sleep 100
    ; Send ^s
    ; return
$+enter::Send ^{Enter}
$^Enter::Send {Up}{End}{Enter}
;///////////////////////////////////////////////////////////////////////
#IfWinActive ^Save$ ahk_class #32770 ahk_exe notepad\+\+\.exe
; 1::msgbox ,hi
; $MButton up::return
; $RButton up::return
; $LButton up::return
$MButton::Send n
$RButton::Send {Esc}
; $LButton::Send y
#IfWinActive ^Reload$ ahk_class #32770 ahk_exe notepad\+\+\.exe
$MButton::Send n
$RButton::Send {Esc}
; $LButton::Send y

#IfWinActive ahk_class Notepad\+\+ ahk_exe notepad\+\+\.exe
; $~MButton::
    ; MiddleClickClose()
    ; MouseGetPos,,,,classNN
    ; if(classNN!= "SysTabControl325"){
        ; Send {MButton}
        ; return
    ; }
    ; Send {MButton}
       
    ; WinWait,Save ahk_class #32770,,0.2
    ; if(%ErrorLevel%!=0)
        ; return
    ; Send {Tab}
       
    ; CoordMode,Mouse,Screen
    ; MouseGetPos,x,y
    ; y:=y-50
    ; x:=x-200
    ; WinMove,Save ahk_class #32770,,%x%,%y%
    ; return


$XButton1::
    send !f{down 2}{right 1}{enter}
    return

$^.::send ->
!Enter::Send ^.
~^s::
  sleep 300
  IfWinActive,%A_ScriptName%
  Reload
  return
!q::
  IfWinActive,.psc
  Send {LAlt}rp
  return
CapsLock & f::
  Send {LAlt down}pi{Enter}{LAlt up}
  return
; mbutton::send {lalt down}{lbutton down}
; mbutton up::send {lalt up}{lbutton up}
; LAlt & f::
; LAlt & f::Send ^+i
LAlt & a::
	if(GetKeyState("shift"))
		Send ^{PgUp}
	Else
		Send ^-
	return

LAlt & d::
	if(GetKeyState("shift"))
		Send ^{PgDn}
	Else
		Send ^+-
	return
^+z::send ^y
+Enter::Send {End}{Enter}
^Enter::Send {Home}{Enter}{Up}
$^+c::Send ^k
$^+x::Send ^+k
^+::Send ^y
~LAlt Up:: return
;incremental search
; ~^f::
	; WinWait,Find
	; while(true){
	; IfWinActive,Find
	; {	Input,key,V I L1
	; if(RegExMatch(key, "[\w\s\t!@#$%^&*()_+}{:?><]")!=0)
		; Send {Enter}{Right}
	; }Else
		; break
	; }
	; return
$!LButton::
	alt_LButtonLoop:=true
	mousegetpos,x0,y0

	Send ^{LButton}
	; sleep 500
	while(alt_LButtonLoop){
		mousegetpos,x,y
		if(x!=x0 or y!=y0){
			BlockInput,MouseMove
			;prevent double click
			x1:=x0+20
			mousegetpos,x,y
			MouseMove,x1,y
			Send {LButton}
			;alt click
			MouseMove,x0,y0
			Send {Blind}{LButton down}
			;move back
			MouseMove,x,y
			BlockInput,MouseMoveOff

			alt_LButtonLoop:=false
			break
		}
		sleep 1
	}
	return
$!LButton up::
	if(not alt_LButtonLoop)
		Send {Blind}{LButton up}
	alt_LButtonLoop:=false
	return

$^c::LineCopy()
$^x::LineCut()

$^MButton::Send !s{Down 17}{Right}{Down}{Enter}
$+^MButton::Send !s{Down 18}{Right}{Up}{Enter}

$^LButton::
	Send {LButton}^f
	WinWaitActive,Find
	Send {Tab}{+}{Tab}{+}{Tab 7}{Enter}
	return
$~^f::
	WinWait,Find
	Send {Tab}{-}{Tab}{-}+{Tab 2}
	return
^r::
	cb_backup:=clipboard
	Send ^c
	Send ^f
	WinWait,Find
	Send {Tab}{+}{Tab}{+}+{Tab 3}{Right}{Tab}^v
	sleep 100
	clipboard:=cb_backup
	return

;VSCode///////////////////////////////////////////////////////////////////
#IfWinActive ahk_exe Code.exe
xbutton1::
    send ^k
    send r
    return
; +xbutton1::
        
        ; run, explorer "%path%"
    ; return
:*:@@::$@""{Left}{Enter}
:*:'''::$@""{Left}{Enter}

!NumPadEnter::
!Enter::
    Send ^.
    ; sleep 100
    ; Send {Blind}{Down}{Up}
    return
~^s::
    ifwinactive,.*\.cs\s*$
    {
        send ^+b
        sleep 200 
        send {enter}    
    }
    return
!`::Send ^k^0
!1::Send ^k^2
!2::Send ^k^j
; !3::Send ^k^3
; !4::Send ^k^4
!r::send {F2}
^+z::Send ^y
; `::Send ^j
$^+c::Send ^k^c
$^+x::Send ^k^u
LAlt & a::Send !{Left}
LAlt & d::Send !{Right}
^BS::Send ^+{left}{del}
^.::
    IfWinActive \w*\.(js|cs)
        SendRaw `=>
    Else
        SendRaw ->
    return

$~LShift::
    if (A_PriorHotKey == A_ThisHotkey AND A_TimeSincePriorHotkey < 300){
    ; Send  {Blind}{Home}
      Send  ^p
    }else{
    }
    KeyWait,LShift
    SetCapsLockState,OFF
    return
F6::Send ^!n
;visual studio/////////////////////////////////////////////////////////////
#IfWinActive ahk_class HwndWrapper.DefaultDomain
$!r::Send ^r^r
$^r::Send ^h
; ~^Lbutton::Send {F12}
!`::Send ^m^a
!1::Send ^m^o
!2::Send ^m^t
^+z::Send ^y
`::Send ^j
^+c::Send ^k^c
^+x::Send ^k^u
^BS::Send ^+{left}{del}
$!Enter::Send ^.
$!NumPadEnter::Send ^.
$^s::
    Send ^k^d
    Send ^s
    return
; :*:<>::template<>{Left}
; ~LButton up::Send {F7}

; +x::send auto nscan = +{Enter}assert( nscan== );{Left 2}
#s::run D:\Users\Sirius\Desktop\Scripts\Visual Studio
XButton2::send {LButton}+!g
XButton1::Send ^k^r
~^LButton::
    lastCtrlClickTime:=A_TickCount
    return
~^LButton up::
    if A_TickCount-lastCtrlClickTime>200
        return
    Send {F12}
    ; Send {LButton}{Ctrl down}{G}{Ctrl up}{Alt down}{F12}{Alt up}
    return
; XButton1 up::send {LButton}{Ctrl down}{G}{Ctrl up}{Alt down}{F12}{Alt up}
Alt & RButton::Send {LButton}+!f
; RButton::Send {LButton}{RButton up}
; XButton1::!LButton
; $+f::Send ^k^d
LAlt & x::Send ^k^d
LAlt & d::Send ^+-
LAlt & a::Send ^-
; +t::
  ; t::
  ; Send {Blind}t
  ; sleep 300
  ; if A_TimeSincePriorHotkey < 310
  ; if(getkeystate("shift","d"))
  ; Send {BS}�V
  ; else
  ; Send {BS}�n
  ; sleep 1000
  ; return
  ; ~t up::return
  ; if(A_PriorHotKey == "t" AND A_TimeSincePriorHotkey > 300)
  ;
  ; Send �V
  ; else
  ; Send �n
; return
;^s::
;  Send ^k^
;  sleep 50
;  Send ^s
;  return
;~^+s::
;  Send ^+s
;  Send ^!s
;  return
; ~!f::
  ; Send ^s
  ; Send !f
; return
~^;::Send {End};
;~+Enter::
  ;  Send {End}
  ;  Send {Enter}
;  return
;^.::SendRaw ->
^+;::SendRaw ::
^=::SendRaw =>
+Space:: ;next error
Send ^+{F12}
return
; +h::
  ; if (A_PriorHotKey == "+h" AND A_TimeSincePriorHotkey < 500){
    ; Send {BackSpace}hash_
  ; }else
  ; Send H
  ; return
; ^u::
  ; temp=%clipboard%
  ; send ^c
  ; sleep 100
  ; if StrLen(clipboard)>0 {
  ; xxxx=unique_ptr<%clipboard%>
  ; send %xxxx%
  ; }
  ; clipboard=%temp%
  ; return
;pycharm///////////////////////////////////////////////////////////////////////
#IfWinActive ahk_class SunAwtFrame
^s::send !{f8}^s
;///////////////////////////////////////////////////////////////////////
#IfWinActive ahk_class illustrator
`::winminimize
XButton2::^9
Numpad9::^9
XButton1::^y

^!s::IllustratorRunScript("SaveAll")
!w::
path:=IllustratorGetWorkingDir()
run %path%
return
~+^f::
{
  SetKeyDelay,10,40
  ; WinGetTitle,title
  ; title:=substr(title,1,instr(title,".ai")-1)
  path:=IllustratorGetWorkingDir()
  StringGetPos,pos,path,\,R1
  folder:=SubStr(path,pos+2)

  sendEvent {shift up}{ctrl up}
  SendEvent ^e
  WinWait,Export,,1
  if ErrorLevel
  return
  Send {tab}pp{tab}{space}{enter}
  WinWait,PNG Options,,5
  ;size: s,m,h=screen,medium,high
  ;aa : a=art optimize, t=text optimize, n=no optimize
  Send mmmmm{Tab}n{enter}
  WinWait,Replace Files,,0.5
  if not ErrorLevel
  ControlSend,,{enter},Replace Files
  sleep 100
  SetWorkingDir %path%
  try{
    if (folder=="scene")
    run "!!update sprite.py"
    else
    run "!!update sprite.bat"
  }
  SetWorkingDir,%A_ScriptDir%
  ControlSend,,^s,ahk_class illustrator
  return
}

^w::
WinGetTitle,title
title:=substr(title,1,instr(title,".ai")-1)
run D:\Users\Sirius\Desktop\Shoot\data\textures\character\update sprite.py,D:\Users\Sirius\Desktop\Shoot\data\textures\character\%title%
return

!q up::
{
  st:=100
  KeyWait, alt

  ;copy, new layer, paste
  Send {ctrl down}c
  sleep st
  Send l
  sleep st
  Send {shift down}v
  sleep st
  Send {ctrl up}{shift up}
  sleep st

  ;group
  Send {ctrl down}g
  Send /
  sleep st
  Send {ctrl up}
  sleep st


  ;offset
  Send {alt down}cpp{alt up}
  sleep st
  Send 10{tab}{up}{up}{down}{tab}0{Enter}
  sleep st

  ; ;zig zag
    ; Send {alt down}cdz{alt up}
    ; sleep st
    ; Send 0{tab}{tab}0{tab}{right}{Enter}
  ; sleep st

  ; msgbox ,,,drag the Contents to the top in the Apperace panel then press q,1
  ; KeyWait,ctrl


  ;cut, new layer, paste
  Send {ctrl down}x
  sleep st
  Send l
  sleep st
  Send {shift down}v
  sleep st
  Send {ctrl up}{shift up}
  sleep st

  ;expand appearance
  Send {alt down}o{alt up}e{enter}
  sleep st

  ;path add
  Send {alt down}c{alt up}fa
  sleep st

  ;expand appearance
  Send {alt down}o{alt up}e{enter}
  sleep st

  ; ungroup
  Send {ctrl down}{shift down}
  sleep st
  Send gg
  sleep st
  Send {ctrl up}{shift up}
  sleep st

  ;hide other layers
  Send {alt down}o{alt up}ho

  ; ;document setup
    ; send {ctrl down}{alt down}p
    ; sleep st
    ; send {ctrl up}{alt up}
    ; sleep st
    ; send {tab}{enter}
  ; sleep st

  ; ;transform each
    ; send {alt down}otn{enter}{alt up}
  ; sleep st

  ; send 50{tab}50{tab}0{tab}0{tab}0{Enter}
  return
}

; !w up::
  ; st:=100
; KeyWait, alt

; ;transform each
  ; Send {alt down}otn{enter}{alt up}
  ; sleep st
  ; Send 50{tab}50{tab}0{tab}0{tab}0{Enter}
  ; return
; ~LButton::
MButton::Send {Space down}{LButton down}
MButton Up::
	Send {LButton Up}{Space Up}
	sleep 200
	if(lastSaveTime=="")
	lastSaveTime:= A_TickCount
	else if( A_TickCount-lastTime>60000){
	lastSaveTime:= A_TickCount
	Send {Ctrl down}
	sleep 40
	Send s
	sleep 40
	Send {Ctrl up}
	; msgbox,,,saving,0.5
}
return
~s::lastSaveTime:=A_TickCount
~WheelUp::Send {WheelUp}{WheelUp}
~WheelDown::Send {WheelDown}{WheelDown}
alt & WheelUp::Send {alt down}{WheelUp}{alt}
alt & WheelDown::Send {alt down}{WheelDown}{alt}

alt & f::
Send {alt down}{ctrl down}f
sleep 100
Send {ctrl up}{alt up}
return
~Alt up::
sleep 100
if not getkeystate("LButton","Down"){
  Send {Esc}
}
return
#s::run D:\Users\Sirius\Desktop\Scripts\Illustrator Scripts
IllustratorRunScript(scriptName){
  run,
  (Join
  C:\Program Files\Adobe\Adobe Illustrator CC 2014\Support Files\Contents\Windows\Illustrator.exe
  D:\Users\Sirius\Desktop\Scripts\Illustrator Scripts\%scriptName%.js
  )
}
IllustratorGetWorkingDir(){
  IllustratorRunScript("GetPath")
  WinWait,Script Prompt
  WinGetText,path
  Send {enter}
  StringReplace,path,path,`r`n,,All
  StringReplace,path,path,/,\,All
  StringLeft,path,path,StrLen(path)-10
  path:=SubStr(path,8)
  path:="D:\Users\Sirius"+path
  return path
}
;///////////////////////////////////////////////////////////////////////
;MySQL Workbench
#IfWinActive MySQL Workbench ahk_exe MySQLWorkbench.exe
$~MButton::
    MouseGetPos,,,,classnn
    IF(classnn=="WindowsForms10.SysTabControl32.app.0.1a0e24_r8_ad14"){
        Send {Rbutton}{Down}{Enter}        
    }else if(classnn=="WindowsForms10.Window.8.app.0.1a0e24_r8_ad130"){
        Send {Rbutton}{a}       
    }
    return
^NumPadEnter::
^Enter::
    ControlGetFocus,con
    id_:=substr(con,strlen(con)-1)
    classnn:="WindowsForms10.BUTTON.app.0.1a0e24_r8_ad"+((id_-16)*2+110)
    ; msgbox,%id_%
    ; return

    ControlClick,%classnn%,MySQL Workbench ahk_exe MySQLWorkbench.exe
    ControlSend,%classnn%,{Enter},MySQL Workbench ahk_exe MySQLWorkbench.exe
    
    ; classnn:="WindowsForms10.BUTTON.app.0.1a0e24_r8_ad12"
    ; ControlClick,%classnn%,MySQL Workbench ahk_exe MySQLWorkbench.exe
    ; ControlSend,%classnn%,{Enter},MySQL Workbench ahk_exe MySQLWorkbench.exe
    
    WinWait,Apply SQL Script to Database ahk_exe MySQLWorkbench.exe,,3
    If(ErrorLevel==0){
        ControlClick,Apply,Apply SQL Script to Database ahk_exe MySQLWorkbench.exe
        ControlSend,Apply,{Enter},Apply SQL Script to Database ahk_exe MySQLWorkbench.exe
        ; sleep 2000
        ; winclose,Apply SQL Script to Database ahk_exe MySQLWorkbench.exe
    }
    
    return
^+z::send ^y
;///////////////////////////////////////////////////////////////////////
;powerpoint
#ifwinactive ahk_class PPTFrameClass ahk_exe POWERPNT.EXE
tab::send +!{Right}
+tab::send +!{Left}
;///////////////////////////////////////////////////////////////////////
;blender
#IfWinActive ahk_class GHOST_WindowClass
XButton2::+MButton
XButton1::NumPad7
Browser_Home::^+BS
; !XButton1::Send ^p
#r::Send ^+o

;///////////////////////////////////////////////////////////////////////
#IfWinActive ahk_class Flash12*
MButton::
Send {Space down}{LButton down}
return
MButton Up::
Send {Space Up}{LButton Up}
return
Alt & WheelUp::
Send {ctrl down}{shift down}{WheelUp}{ctrl up}{shift up}
return
Alt & WheelDown::
Send {ctrl down}{shift down}{WheelDown}{ctrl up}{shift up}
return
;///////////////////////////////////////////////////////////////////////
#IfWinActive ahk_class Chrome_WidgetWin_1
~MButton::
CoordMode, Mouse, Relative
MouseGetPos, x, y
PixelGetColor ,c, x,y
if (c!=0xcece5c)
return
WinGetPos ,wx,,w,
if ((wx =-8  and y<52) or (x>=0 and x<=w and y>=0 and y<=45))
Send {Ctrl down}{Shift down}t{Ctrl up}{Shift up}
return
XButton2::return
XButton1::^+b
#ifwinactive project ahk_class Chrome_WidgetWin_1 ahk_exe chrome.exe
$^+c::
$^+x::Send ^/
;firefox///////////////////////////////////////////////////////////////////////
#IfWinActive ahk_class MozillaWindowClass ahk_exe firefox
$~MButton::return
;  ; CoordMode,Mouse,Relative
;  MouseGetPos,mxOrg,myOrg
;  sleep 100
;  PixelGetColor,colOrg,mxOrg,myOrg
;  if(colOrg!=0x333333)
;    return
;  run AutoHotkey.exe FireFoxAutoScroll.ahk %mxOrg% %myOrg%
;  return
XButton2::
  CoordMode,Mouse,Relative
  ; MouseGetPos,x,y
    ; MouseClick, left, 5, 150,1,0
  ; MouseMove,%x%,%y%,0
  ControlClick,x5 y150
  send {pgup}
  ; sleep 300
  return
XButton1::
  CoordMode,Mouse,Relative
  ControlClick,x5 y150
  send {pgdn}
  ; sleep 300
  return
#`::
  if(not ListBox1Exist){
    ListBox1Exist:=true
    Gui, Margin,0,0
    Gui, -SysMenu -Caption -Border +ToolWindow
    Gui, Add, ListBox,vListBox1String gListBox1Action wp+200 R10,
    (LTrim Join
    |aaa
    |cc
    |bbb
    |ddd
    )
  }
  CoordMode, Mouse, Screen
  MouseGetPos, x, y
  y:=y-5
  x:=x-50
  Gui, Show,x%x% y%y%
  SetTimer, WinFocusLoop, 17
  return
WinFocusLoop:
  IfWinNotActive ahk_class AutoHotkeyGUI
  Gui,Cancel
  Else
  SetTimer, WinFocusLoop, 17
  return
ListBox1Action:
Gui,Submit
sendraw %ListBox1String%
return
; ^`::send ``
  ; `::Winminimize
;///////////////////////////////////////////////////////////////////////
;pyscripter
#IfWinActive ahk_class TPyIDEMainForm
^Backspace::send ^+{Left}{Delete}
^Delete::send ^+{Right}{Delete}
;///////////////////////////////////////////////////////////////////////
;intellJ
#IfWinActive ahk_class SunAwtFrame
!t::
oldClip:=clipboard
send ^a
sleep 50
send ^c
sleep 50
send {esc}
total:=0
StringSplit, line, clipboard, `n
clipboard:=oldClip
Loop, %line0%
{
  l := line%a_index%
  p:=RegExMatch(l,"^\s*\{ ([0-9\.]+), \w+ = \{[\s,\d\.]+\} \}",match)
  if p
  total:=total+match1
}
total:=trim0(total)
msgbox,,,%total%,0.5
return

trim0(num)
{
  Loop, % StrLen(num)
  {
    StringRight, tester, num, 1
    If (tester = "0")
    StringTrimRight, num, num, 1
  }
  return num
}
;///////////////////////////////////////////////////////////////////////
#IfWinActive ahk_exe cmd.exe
$^v::Send %clipboard%
;///////////////////////////////////////////////////////////////////////
#IfWinActive ahk_exe explorer.exe
XButton1::Send !fc
$+Delete::
    KeyWait,Shift
    Send {Delete}
    return 

~Esc::
    ifwinactive,-Scripts-
        Send !{F4}
    return
; 1::
	; run %comspec% /k mklink "C:\Users\SANA-Sirius\Documents\Projects\TensorBox-master\a" "C:\Users\SANA-Sirius\Documents\Projects\TensorBox-master\train.py"
	; return
;///////////////////////////////////////////////////////////////////////
#IfWinActive ahk_class PROCEXPL
;Process Exprorer
XButton1::
`::Send !p{down 6}{enter}
;///////////////////////////////////////////////////////////////////////
#IfWinActive ahk_class TFruityLoopsMainForm
^z::^!z
^+z::^z

;///////////////////////////////////////////////////////////////////////
#IfWinActive
; ^PrintScreen::run D:\Users\Sirius\Pictures\Screenshots
; CapsLock::return
$^Home::Send {CapsLock}
$*CapsLock::
    send {CapsLock 2}
    if (A_PriorHotKey == A_ThisHotkey AND A_TimeSincePriorHotkey < 300){
    Send  {Blind}{Home}
    }else{
      Send  {Blind}{End}
    }
    KeyWait,CapsLock
    SetCapsLockState,OFF
    return
; $*CapsLock::
  ; keywait,CapsLock,up T0.1
  ; if ErrorLevel
  ; Send  {Blind}{Home}
  ; else
  ; Send  {Blind}{End}
  ; keywait,CapsLock,up T2
  ; return
; !CapsLock::Send !{Enter}
+^#Home::CapsLock
; +CapsLock::send {Home}
;ScrollLock::run nircmd.exe monitor off
;^ScrollLock::Shutdown, 2
+Volume_UP::run nircmd.exe changesysvolume 512
+Volume_Down::run nircmd.exe changesysvolume -512


HandleMessage( p_w, p_l, p_m, p_hw )
{
	global
	local	control
	setformat, integerfast, h
	if(LastHw==0x000000)
	{
		LastHw:=p_l
		return
  }
	if(LastHw!=p_l)
	{
		ss=% LostFocus[LastHw]
		if (IsLabel(ss))
    gosub %ss%
		LastHw:=p_l
  }
	return
}