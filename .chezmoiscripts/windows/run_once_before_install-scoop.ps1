if (Get-Command "scoop" -ErrorAction SilentlyContinue)
{
  exit
}

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
scoop install git
