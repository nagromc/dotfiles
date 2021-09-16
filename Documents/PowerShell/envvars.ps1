$Env:LESS = { { .envvars.LESS | quote } }
$Env:PAGER = { { .envvars.PAGER | quote } }
$Env:Path += ";$Env:UserProfile\.local\bin"
$Env:RIPGREP_CONFIG_PATH = "$Env:USERPROFILE\.config\ripgrep\ripgreprc"
# count shell level
$Env:SHLVL = [int] $Env:SHLVL + 1
