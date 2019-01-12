@echo off
echo off   
Title Please wait while Enabling USB Access....Aricent IT Team - Ashok Makkar
Rem #USB will be Un-blocked post system Restart...Aricent IT Team - Ashok Makkar#

rem #Enable USB#

@echo off
echo off   
Title Please wait while Enabling USB....Aricent IT Team
rem #Enable USB#
reg add HKLM\SYSTEM\CurrentControlSet\services\USBSTOR /v Start /t Reg_Dword /d 3 /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\RemovableStorageDevices /f
reg delete HKEY_Current_User\SOFTWARE\Policies\Microsoft\Windows\RemovableStorageDevices /f
Takeown /f c:\windows\system32\drivers\USBSTOR.SYS /a
cacls c:\windows\system32\drivers\USBSTOR.SYS /e /g EVERYONE:F
cacls c:\windows\system32\drivers\USBSTOR.SYS /e /g Administrators:F
Takeown /f C:\windows\inf\usbstor.inf /a
cacls C:\windows\inf\usbstor.inf /e /g EVERYONE:F
cacls C:\windows\inf\usbstor.inf /e /g Administrators:F
Takeown /f C:\windows\inf\usbstor.pnf /a
cacls C:\windows\inf\usbstor.pnf /e /g Everyone:F
cacls C:\windows\inf\usbstor.pnf /e /g Administrators:F
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\RemovableStorageDevices /v Deny_All /t Reg_Dword /d 0 /f