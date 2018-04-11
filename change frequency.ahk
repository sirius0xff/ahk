CoordMode, Mouse, Relative

F1::SetFreq(1.85)
F2::SetFreq(1.88)
F3::SetFreq(1.92)
F4::SetFreq(1.95)
F5::SetFreq(1.98)
	
SetFreq(hz){
	winactivate,ahk_exe Large Signal Measurement.exe
	MouseClick, left, 175,310,1,0
	send ^a
	send %hz%
	MouseClick, left, 525,700,1,0	
}

#IfWinActive ahk_class Notepad++
~^s::
  sleep 300
  IfWinActive,%A_ScriptName%
  Reload
  return