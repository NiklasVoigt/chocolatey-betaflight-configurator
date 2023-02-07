$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/betaflight/betaflight-configurator/releases/download/10.9.0/betaflight-configurator_10.9.0_win64-installer.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'betaflight-configurator*'

  checksum      = 'fc84e16b7331c014702a5e770a7ca9a716252382c61124cbf875c55104e46b44'
  checksumType  = 'sha256'

  silentArgs    = "/VERYSILENT /allusers"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
