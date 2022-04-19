let-env SHLVL = if (env | where name == SHLVL | empty?) {
  1
} else {
  $env.SHLVL + 1
}
