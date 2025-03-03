# Starship
Invoke-Expression (&starship init powershell)

# broot
. "$env:APPDATA/dystroy/broot/config/launcher/powershell/br.ps1"

# carapace shell completer
Set-PSReadLineOption -Colors @{ "Selection" = "`e[7m" }
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
carapace _carapace | Out-String | Invoke-Expression
