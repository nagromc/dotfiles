function .. {
<#
.SYNOPSIS
`cd` to parent directory
#>
  Set-Location ..
}

function ... {
<#
.SYNOPSIS
`cd` to grandparent directory
#>
  Set-Location ../..
}

function .... {
<#
.SYNOPSIS
`cd` to great-grandparent directory
#>
  Set-Location ../../..
}

function ..... {
<#
.SYNOPSIS
`cd` to great-great-grandparent directory
#>
  Set-Location ../../../..
}

function envvar {
<#
.SYNOPSIS
Opens the `Edit environment variables` panel
#>
  rundll32.exe sysdm.cpl,EditEnvironmentVariables
}

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
