; swap '«' and AltGr+'«' ('<') characters
«::SendText("<")
<^>!«::SendText("«")

; swap '»' and AltGr+'»' ('>') characters
»::SendText(">")
<^>!»::SendText("»")

; swap 'à' and 'w' characters
à::SendText("w")
w::SendText("à")
+à::SendText("W")
+w::SendText("À")

; upon Shift+Space, send regular space instead of `narrow no-break space (U+202F)`
+Space::Send("{Space}")
