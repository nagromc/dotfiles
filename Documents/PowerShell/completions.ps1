# carapace shell completer
Set-PSReadLineOption -Colors @{ "Selection" = "`e[7m" }
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
carapace _carapace | Out-String | Invoke-Expression

Invoke-Expression (& { (chezmoi completion powershell) -join "`n" })
# Invoke-Expression (& { (miniserve --print-completions powershell) -join "`n" })
. $Env:USERPROFILE\scoop\apps\ripgrep\current\complete\_rg.ps1
