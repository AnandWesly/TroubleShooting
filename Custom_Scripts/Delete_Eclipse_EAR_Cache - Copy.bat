@echo OFF
echo *********************** Started deleting the weblogic server cache ********************
SET pathServer=C:\Users\Administrator\EXPORT_EAR_SKYITALIA\.metadata\.plugins\org.eclipse.core.resources\.projects\CrmKenanInterfaceEAR\beadep\base_domain\CrmKenanInterfaceEAR\split_src\META-INF\.WL_internal

del %pathServer%\cache /f /s /q
for /D %%f in (%pathServer%\cache) do rmdir "%%f" /s /q


echo *********************** Operation Completed ********************
pause