; swap '«' and AltGr+'«' ('<') characters
«::Send <
<^>!«::Send {Text}«

; swap '»' and AltGr+'»' ('>') characters
»::Send >
<^>!»::Send {Text}»

; swap 'à' and 'w' characters
à::Send {Text}w
w::Send {Text}à
+à::Send {Text}W
+w::Send {Text}À

; upon Shift+Space, send regular space instead of `narrow no-break space (U+202F)`
+Space::Send {Space}
