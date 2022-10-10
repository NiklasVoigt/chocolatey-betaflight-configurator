# Chocolatey package for Betaflight Configurator

## How to update this chocolatey package

1. `choco uninstall betaflight-configurator` with admin rights
2. Update $url in chocolateyinstall.ps1
3. Update checkusm in the same file `certutil -hashfile $url SHA256`
4. Update `version` in `betaflight-configurator.nuspec`
5. Build pack `choco pack`
6. Test locally `choco install betaflight-configurator -dv -s .`
7. Push `choco push betaflight-configurator.10.8.0.nupkg -s https://push.chocolatey.org/`


## Links

* Chocolatey [Quick Start](https://docs.chocolatey.org/en-us/create/create-packages-quick-start)
* Chocolatey Doku [create packages](https://docs.chocolatey.org/en-us/create/create-packages)

