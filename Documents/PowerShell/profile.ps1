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


# `just` completions
Invoke-Expression (& { (just --completions powershell ) -join "`n" })


# git completions
Import-Module posh-git


# count shell level
$ENV:SHLVL = [int] $ENV:SHLVL + 1
