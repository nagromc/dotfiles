$env.SHLVL = if ("SHLVL" not-in $env) {
  1
} else {
  ($env.SHLVL | into int) + 1
}

print $"(ansi yellow)Temporary fix should be reverted from ((chezmoi source-path) + '/AppData/Roaming/nushell/env.nu' | ansi link --text 'env.nu') once the PR ('https://github.com/ajeetdsouza/zoxide/pull/632' | ansi link --text 'ajeetdsouza/zoxide#632') is released"
zoxide init nushell | str replace "def-env" "def --env" --all | save --force ~/.config/zoxide.nu

mkdir ~/.cache/starship
starship init nu | save --force ~/.cache/starship/init.nu

$env.EDITOR = 'micro'
$env.RIPGREP_CONFIG_PATH = $nu.home-path + "/.config/ripgrep/ripgreprc"
$env.VISUAL = 'micro'
