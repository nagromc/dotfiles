; Function to toggle the ScrollLock state
ScrollLock:: {
  state := !GetKeyState("ScrollLock", "T")
  SetScrollLockState(state ? "On" : "Off")

  if (state) {
    ; Calculate the position for the tooltip at the bottom right corner
    tooltipX := A_ScreenWidth - 130
    tooltipY := A_ScreenHeight

    ; Display the tooltip at the calculated position
    ToolTip("Numpad mode", tooltipX, tooltipY)
  } else {
    ToolTip("")  ; Hide the tooltip
  }

  return
}

; Bind keys conditionally depending on ScrollLock state
#HotIf GetKeyState("ScrollLock", "T")
; Right hand
vk4E::Send("{Numpad0}")  ; n key
vk4D::Send("{Numpad1}")  ; m key
vkBC::Send("{Numpad2}")  ; , key
vkBE::Send("{Numpad3}")  ; . key
vk4A::Send("{Numpad4}")  ; j key
vk4B::Send("{Numpad5}")  ; k key
vk4C::Send("{Numpad6}")  ; l key
vk55::Send("{Numpad7}")  ; u key
vk49::Send("{Numpad8}")  ; i key
vk4F::Send("{Numpad9}")  ; o key
vk36::Send("a")  ; 6 key
vk37::Send("b")  ; 7 key
vk38::Send("c")  ; 8 key
vk39::Send("d")  ; 9 key
vk30::Send("e")  ; 0 key
vkBD::Send("f")  ; - key

; Left hand
vk5A::Send("0")  ; z key
vk58::Send("1")  ; x key
vk43::Send("2")  ; c key
vk56::Send("3")  ; v key
vk42::Send("0")  ; b key
vk53::Send("4")  ; s key
vk44::Send("5")  ; d key
vk46::Send("6")  ; f key
vk57::Send("7")  ; w key
vk45::Send("8")  ; e key
vk52::Send("9")  ; r key
vkC0::Send("a")  ; ` key
vk31::Send("b")  ; 1 key
vk32::Send("c")  ; 2 key
vk33::Send("d")  ; 3 key
vk34::Send("e")  ; 4 key
vk35::Send("f")  ; 5 key
#HotIf
