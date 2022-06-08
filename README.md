# IEList4ISDSites
set IE mode for external client to access ISD IE required sites.

## for non-admin user

### Installation 

Open PowerShell - win+R, type "powershell", or cmd run following
```
reg add HKCU\SOFTWARE\Policies\Microsoft\Edge /v InternetExplorerIntegrationLevel /t RREG_DWORD /d 1
reg add HKCU\SOFTWARE\Policies\Microsoft\Edge /v InternetExplorerIntegrationSiteList /t REG_SZ /d "https://bcgov.github.io/IEList4ISDSites/IEsites.xml"
```
If get path not find error, run following first, then run the cmd above
```
reg add HKCU\SOFTWARE\Policies\Microsoft\Edge
```

### Uninstallation
```
reg delete HKCU\SOFTWARE\Policies\Microsoft\Edge /v InternetExplorerIntegrationLevel /f
reg delete HKCU\SOFTWARE\Policies\Microsoft\Edge /v InternetExplorerIntegrationSiteList /f
reg delete HKCU\SOFTWARE\Policies\Microsoft\Edge /f
```

### Verification
see [below](#verification-1)

## for admin user

### installation
Download the policy from the following link

[https://bcgov.github.io/IEList4ISDSites/HLK.reg](https://bcgov.github.io/IEList4ISDSites/HLK.reg)

it will download or prompt you to download a file via your browser.

You need to run that [HLK.reg](docs/HLK.reg) file from wherever your browser it downloads to.   ( **DO NOT** do this on a gov computer it will overwrite your existing IE mode settings)

You need to be an admin on the workstation to run it.

- N.B. Make sure they check with any local IT support they may have in case their company manages IE Mode for Edge on their systems, as, like gov computers, this will over write anything that may have been done for them already.  If that is the case we can just provide our site entries to their IT support group to add to their settings.
- We can also provide [details](docs/IEsites.xml) for an appendix on what this is doing if required.

When it runs it will prompt with some security warnings to click thru, OK, Run, or Yes

![1](https://user-images.githubusercontent.com/11949273/172456786-4d9bb285-81ed-4a30-8962-db9215406807.png)
![2](https://user-images.githubusercontent.com/11949273/172457045-6455e82e-60e9-4dd5-b22a-4b2042e70885.png)

Admin rights

![3](https://user-images.githubusercontent.com/11949273/172457091-e17b2025-20a5-4bb1-a2a2-80db2e2af489.png)
![4](https://user-images.githubusercontent.com/11949273/172457110-c7a77970-a5e9-42db-9250-6e106571efc1.png)

Which should result in the success message like

![5](https://user-images.githubusercontent.com/11949273/172457156-0d89621f-1683-46cc-b67b-db631826f2ee.png)


### Verification

Once done if you close all Edge sessions and reopen and all sites related to our ministry should work correctly in IE mode indefinitely.

User can confirm what has happened in Edge by opening Edge and putting the following in the address bar

`edge://policy`

![6](https://user-images.githubusercontent.com/11949273/172457227-98c6b33b-0e7a-417c-987e-94c0ff26cff0.png)

And

The list of sites provided by the iesites.xml list and how to run them.  This list covers off ICM and CRIS, prod, recover, training and practice sites.

`edge://compat`

![7](https://user-images.githubusercontent.com/11949273/172457272-7da65742-a14c-466b-9119-f31363dd0ad6.png)

