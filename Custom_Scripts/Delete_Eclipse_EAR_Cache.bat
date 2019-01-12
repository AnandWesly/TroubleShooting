@echo OFF
echo *********************** Started deleting the weblogic server cache ********************
SET pathServer=C:\Users\Administrator\WorkSpace_CKI_Interface_SKY\.metadata\.plugins\org.eclipse.core.resources\.projects\CrmKenanInterfaceEAR\beadep\basedomain\CrmKenanInterfaceEAR\split_src\META-INF\.WL_internal

SET pathServer1 = C:\Users\Administrator\WorkSpace_CKI_Interface_SKY\.metadata\.plugins\org.eclipse.wst.server.core


del %pathServer1%\tmp0 /f /s /q
for /D %%f in (%pathServer1%\tmp0) do rmdir "%%f" /s /q


del %pathServer%\cache /f /s /q
for /D %%f in (%pathServer%\cache) do rmdir "%%f" /s /q





echo *********************** Operation Completed ********************
pause