let-env SHLVL = if ("SHLVL" not-in $env) {
  1
} else {
  ($env.SHLVL | into int) + 1
}

zoxide init nushell | save --force ~/.config/zoxide.nu

mkdir ~/.cache/starship
starship init nu | save --force ~/.cache/starship/init.nu

let-env EDITOR = 'micro'
let-env RIPGREP_CONFIG_PATH = $nu.home-path + "/.config/ripgrep/ripgreprc"
let-env VISUAL = 'micro'
