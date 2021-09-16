Invoke-Expression (& { (just --completions powershell ) -join "`n" })
Import-Module posh-git
Invoke-Expression (& { (chezmoi completion powershell) -join "`n" })
Invoke-Expression (& { (miniserve --print-completions powershell) -join "`n" })
