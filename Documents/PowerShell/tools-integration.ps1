# display possible completion with fzf instead of completing
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }

# starship
Invoke-Expression (&starship init powershell)

# zoxide
Invoke-Expression (& { $hook = if ($PSVersionTable.PSVersion.Major -ge 6) { 'pwd' } else { 'prompt' } (zoxide init powershell --hook $hook) -join "`n" })

# add icons to `dir`
# https://github.com/devblackops/Terminal-Icons must be installed with `scoop install terminal-icons`
Import-Module Terminal-Icons
