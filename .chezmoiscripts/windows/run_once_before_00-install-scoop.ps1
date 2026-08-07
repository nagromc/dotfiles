if (Get-Command "scoop" -ErrorAction SilentlyContinue)
{
  exit
}

Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
scoop install aria2 git sudo
