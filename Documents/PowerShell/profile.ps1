# aliases
New-Alias -Name cm -Value chezmoi
New-Alias -Name d -Value docker
New-Alias -Name g -Value git
New-Alias -Name lg -Value lazygit


# display possible completion with fzf instead of completing
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }


# starship
Invoke-Expression (&starship init powershell)


# zoxide
Invoke-Expression (& { $hook = if ($PSVersionTable.PSVersion.Major -ge 6) { 'pwd' } else { 'prompt' } (zoxide init powershell --hook $hook) -join "`n" })


# completions
Invoke-Expression (& { (just --completions powershell ) -join "`n" })
Import-Module posh-git
Invoke-Expression (& { (chezmoi completion powershell) -join "`n" })


# count shell level
$ENV:RIPGREP_CONFIG_PATH = "$ENV:USERPROFILE\.config\ripgrep\ripgreprc"
$ENV:SHLVL = [int] $ENV:SHLVL + 1
