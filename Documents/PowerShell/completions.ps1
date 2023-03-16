Invoke-Expression (& { (just --completions powershell ) -join "`n" })
Import-Module posh-git
Invoke-Expression (& { (chezmoi completion powershell) -join "`n" })
Invoke-Expression (& { (miniserve --print-completions powershell) -join "`n" })
. $Env:USERPROFILE\scoop\apps\ripgrep\current\complete\_rg.ps1
Import-Module DockerCompletion
glab completion -s powershell | Out-String | Invoke-Expression
Invoke-Expression -Command $(gh completion -s powershell | Out-String)
