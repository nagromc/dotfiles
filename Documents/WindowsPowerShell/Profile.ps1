# Starship
Invoke-Expression (&starship init powershell)

# broot
. "$env:APPDATA/dystroy/broot/config/launcher/powershell/br.ps1"

# carapace shell completer
Set-PSReadLineOption -Colors @{ "Selection" = "$([char]0x1b)[7m" }
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
carapace _carapace | Out-String | Invoke-Expression
