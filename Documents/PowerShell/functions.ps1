function mkcd {
<#
.SYNOPSIS
Creates a directory, then `cd` into
#>
  param (
    $Path
  )
  New-Item -ItemType Directory -Path $Path > $null
  Set-Location $Path
}

function mkcdtmp {
  <#
.SYNOPSIS
Creates a directory in `$Env:TEMP` with a random name, then `cd` into
#>
  $parent = [System.IO.Path]::GetTempPath()
  [string] $name = [System.Guid]::NewGuid()
  mkcd (Join-Path $parent $name)
}
