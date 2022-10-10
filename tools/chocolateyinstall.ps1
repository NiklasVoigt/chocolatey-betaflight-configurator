$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/betaflight/betaflight-configurator/releases/download/10.8.0/betaflight-configurator_10.8.0_win64-installer.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'betaflight-configurator*'

  checksum      = '10dabf1193dfd55893aba1a8dd4217bcfdb26583c4d851303543235ac2955df7'
  checksumType  = 'sha256'

  silentArgs    = "/VERYSILENT /allusers"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
