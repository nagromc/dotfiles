numpad_mode := False


#If (numpad_mode)
{
  ; +-----+-----+-----+-----+-----+-----+
  ; |  7  |  8  |  9  |  0  |  -  |  =  |
  ; |  7  |  8  |  9  |     |  -  |  +  |
  ; +-----+-----+-----+-----+-----+-----+
  ; |  U  |  I  |  O  |  P  |  [  |  ]  |
  ; |  4  |  5  |  6  |     |  /  |  *  |
  ; +-----+-----+-----+-----+-----+-----+
  ; |  J  |  K  |  L  |
  ; |  1  |  2  |  3  |
  ; +-----+-----+-----+
  ; |  M  |  ,  |  .  |
  ; |  0  |  ,  |  .  |
  ; +-----+-----+-----+
  ; VK37::Numpad7  ; 7
  ;                     VK38::Numpad8  ; 8
  ;                                         VK39::Numpad9  ; 9
  ; VK55::Numpad4  ; U
  ;                     VK49::Numpad5  ; I
  ;                                         VK4F::Numpad6  ; O
  ; VK4A::Numpad1  ; J
  ;                     VK4B::Numpad2  ; K
  ;                                         VK4C::Numpad3  ; L
  ; VK4D::Numpad0  ; M
  ;                     VKBC::,  ; ,
  ;                                         VKBE::.  ; .
  ; VKBD::-  ; -
  ; VKBB::+  ; =
  ; VKDB::/  ; [
  ; VKDD::*  ; ]


  ; Alternative key maps:
  ; +-----+-----+-----+-----+-----+-----+-----+
  ; |  6  |  7  |  8  |  9  |  0  |  -  |  =  |
  ; |     |     |     |     |     |  -  |  +  |
  ; +-----+-----+-----+-----+-----+-----+-----+
  ; |  Y  |  U  |  I  |  O  |  P  |  [  |  ]  |
  ; |     |  7  |  8  |  9  |     |  /  |  *  |
  ; +-----+-----+-----+-----+-----+-----+-----+
  ; |  H  |  J  |  K  |  L  |
  ; |  ,  |  4  |  5  |  6  |
  ; +-----+-----+-----+-----+
  ; |  N  |  M  |  ,  |  .  |
  ; |  .  |  1  |  2  |  3  |
  ; +-----+-----+-----+-----+
  ; |         Space         |
  ; |           0           |
  ; +-----+-----+-----+-----+
                      VK55::Numpad7  ; U
                                          VK49::Numpad8  ; I
                                                              VK4F::Numpad9  ; O
  VK48::,  ; H
                      VK4A::Numpad4  ; J
                                          VK4B::Numpad5  ; K
                                                              VK4C::Numpad6  ; L
  VK4E::.  ; N
                      VK4D::Numpad1  ; M
                                          VKBC::Numpad2  ; ,
                                                              VKBE::Numpad3  ; .
  VK20::Numpad0  ; Space
  ; on AltGr+Space, send Space
  <^>!VK20::Send {Space}
  VKBD::-  ; -
  VKBB::+  ; =
  VKDB::/  ; [
  VKDD::*  ; ]


  ; +-----+-----+-----+-----+-----+
  ; |  A  |  S  |  D  |  F  |  G  |
  ; |  -  |  +  |  /  |  *  |  =  |
  ; +-----+-----+-----+-----+-----+
  VK41::-  ; a
  VK53::+  ; s
  VK44::/  ; d
  VK46::*  ; f
  VK47::=  ; g
}
#If


toggle_numpad_mode:
{
  CoordMode, ToolTip, Screen

  numpad_mode := !numpad_mode

  If (numpad_mode)
  {
    OutputDebug, numpad mode enabled
    ToolTip, Numpad emulation enabled, 10, 10
  } Else {
    OutputDebug, numpad mode disabled
    ToolTip
  }

  return
}

~LControl & ~RAlt::
OutputDebug, AltGr pressed
if (A_PriorHotkey <> "~LControl & ~RAlt" or A_TimeSincePriorHotkey > 400)
{
  ; Too much time between presses, so this isn't a double-press.
  KeyWait, RAlt
  OutputDebug, RAlt released
  return
}
OutputDebug, AltGr double-pressed: toggle numpad mode
gosub, toggle_numpad_mode
return
