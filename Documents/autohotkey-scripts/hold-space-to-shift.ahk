; Shift when holding Spacebar
*Space::
{
  SendInput("{Shift down}")
  KeyWait("Space")
  SendInput("{Shift up}")
  if(A_TimeSinceThisHotkey < 500){
    SendInput("{Space}")
  }
  return
}
