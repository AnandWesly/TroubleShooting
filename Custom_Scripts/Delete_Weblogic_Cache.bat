@echo OFF
echo *********************** Started deleting the weblogic server cache ********************
SET pathServer=C:\Oracle\Middleware\Oracle_Home\user_projects\domains\basedomain\servers\AdminServer

del %pathServer%\tmp /f /s /q
for /D %%f in (%pathServer%\tmp) do rmdir "%%f" /s /q

del %pathServer%\cache /f /s /q
for /D %%f in (%pathServer%\cache) do rmdir "%%f" /s /q

del %pathServer%\logs /f /s /q
for /D %%f in (%pathServer%\logs) do rmdir "%%f" /s /q

echo *********************** Operation Completed ********************
pause