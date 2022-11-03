$Space::

SendInput, {Shift down}
KeyWait, Space
SendInput, {Shift up}

if(A_PriorKey = "Space"){
  if(A_TimeSinceThisHotkey > 500)
    return
  SendInput, {Space}
}
return
