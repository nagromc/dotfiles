# Starship prompt
source ~/.cache/starship/init.nu

# Zoxide
source ~/.config/zoxide.nu

# aliases
alias cm = chezmoi
alias envvar = rundll32.exe sysdm.cpl,EditEnvironmentVariables
alias g = git

# Creates a directory and `cd` into it
def-env mkcd [
  path: string  # The path of the new directory
] {
  mkdir $path
  cd $path
}

# Creates a temporary directory and `cd` into it
def-env mkcdtmp [
  path: string  # The path of the new directory in the system temporary directory
] {
  mkcd $"($env.TEMP)/($path)"
}
