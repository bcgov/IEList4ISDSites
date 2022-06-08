New-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Edge" -Name "InternetExplorerIntegrationLevel" -PropertyType "DWROD" -Value "1"
New-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Edge" -Name "InternetExplorerIntegrationSiteList" -Value "https://bcgov.github.io/IEList4ISDSites/IEsites.xml"
