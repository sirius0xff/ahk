#SingleInstance, force

WinGet, g_taskbar_id, id, ahk_class Shell_TrayWnd ahk_exe explorer.exe

resume()
xxx(){
  ; IfWinActive, ahk_exe SkyrimSE.exe
  ; {
  ;   pause(1000)
  ;   return
  ; }
  global g_taskbar_id
  MouseGetPos, , , win_id,, 0
  ; MsgBox, %win_id% == %g_taskbar_id% , %control_name%
  if(win_id == g_taskbar_id){
    Send ^{LButton}
    KeyWait, Esc, T0.1
  }else
    pause(300)
}
pause(time_ms){
  Hotkey,~WheelDown,xxx,off
  Hotkey,~WheelUp,xxx,off
  SetTimer, resume,-%time_ms%
}

resume(){
  Hotkey,~WheelDown,xxx,on
  Hotkey,~WheelUp,xxx,on
}
; #IfWinActive, ahk_exe SkyrimSE.exe
; ~WheelDown::return
; ~WheelUp::return
; ^s::
; Sleep, 300
; Reload
; return