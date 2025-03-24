# starship
Invoke-Expression (&starship init powershell)

# zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# add icons to `dir`
# https://github.com/devblackops/Terminal-Icons must be installed with `scoop install terminal-icons`
Import-Module Terminal-Icons

# broot
. "$env:APPDATA/dystroy/broot/config/launcher/powershell/br.ps1"

# mise-en-place
(&mise activate pwsh) | Out-String | Invoke-Expression
