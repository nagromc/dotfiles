#Requires AutoHotkey v2.0

; Win + End → hang up Teams, then go back
#End::
{
  ; Remember the currently active window
  prevWin := WinExist("A")

  ; Activate any Teams window
  WinActivate("ahk_exe ms-teams.exe")
  ; wait for it to become active
  WinWaitActive("ahk_exe ms-teams.exe",, 0.5)

  ; Send Teams' native hang‑up shortcut: Ctrl+Shift+H
  Send "^+h"

  Sleep 150

  ; Restore previously active window
  if prevWin
    WinActivate(prevWin)
}
