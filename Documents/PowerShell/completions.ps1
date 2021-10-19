Invoke-Expression (& { (just --completions powershell ) -join "`n" })
Import-Module posh-git
Invoke-Expression (& { (chezmoi completion powershell) -join "`n" })
Invoke-Expression (& { (miniserve --print-completions powershell) -join "`n" })
. $($(rg --shimgen-help | Select-String -Pattern "^\s*Target: '(.*)rg.exe'\s*$").matches[0].groups[1].value + "complete\_rg.ps1")
