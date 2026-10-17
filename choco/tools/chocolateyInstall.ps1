$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = 'goport'
  url64bit      = 'https://github.com/muhammad-deve/GoPort/releases/download/v0.1.9/goport-windows-amd64.exe'
  checksum64    = '6ce13b12d36556393a58362bfda94711caa4371d9c396755ab47099434958d12'
  checksumType64= 'sha256'
  fileType      = 'exe'
  silentArgs    = ''
}

Get-ChocolateyWebFile @packageArgs -File "$env:ChocolateyInstall\bin\goport.exe"
