@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"

@SHIFT
@ECHO OFF
TITLE һ��ȥ����ݷ�ʽС��ͷ��С����
ECHO.&ECHO ������ʹ���ڼ���Ҫ������Դ����������ر�����ҳ����ټ��������� &ECHO.&PAUSE&CLS
:MENU
ECHO.&ECHO  ������������Ҫ����
ECHO.&ECHO  1��ȥ����ݷ�ʽС��ͷ
ECHO.&ECHO  2��ȥ��С���ƽǱ�
ECHO.&ECHO  3���ָ���ݷ�ʽС��ͷ
ECHO.&ECHO  4���ָ�С���ƽǱ�
ECHO.&ECHO.&ECHO ��ѡ��

CHOICE /C 1234 /N >NUL 2>NUL

IF "%ERRORLEVEL%"=="1" (
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /d "%systemroot%\system32\imageres.dll,197" /t reg_sz /f >NUL 2>NUL
taskkill /f /im explorer.exe >NUL 2>NUL
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db" >NUL
del "%userprofile%\AppData\Local\iconcache.db" /f /q >NUL 2>NUL
start explorer
ECHO.&ECHO ��� &TIMEOUT /t 2 >NUL&CLS&GOTO MENU
)

IF "%ERRORLEVEL%"=="2" (
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 77 /d "%systemroot%\system32\imageres.dll,197" /t reg_sz /f >NUL 2>NUL
taskkill /f /im explorer.exe >NUL 2>NUL
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db" >NUL
del "%userprofile%\AppData\Local\iconcache.db" /f /q >NUL 2>NUL
start explorer
ECHO.&ECHO ��� &TIMEOUT /t 2 >NUL&CLS&GOTO MENU
)

IF "%ERRORLEVEL%"=="3" (
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /f >NUL 2>NUL
taskkill /f /im explorer.exe >NUL 2>NUL
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db" >NUL
del "%userprofile%\AppData\Local\iconcache.db" /f /q >NUL 2>NUL
start explorer
ECHO.&ECHO ��� &TIMEOUT /t 2 >NUL&CLS&GOTO MENU
)

IF "%ERRORLEVEL%"=="4" (
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 77 /f >NUL 2>NUL
taskkill /f /im explorer.exe >NUL 2>NUL
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db" >NUL
del "%userprofile%\AppData\Local\iconcache.db" /f /q >NUL 2>NUL
start explorer
ECHO.&ECHO ��� &TIMEOUT /t 2 >NUL&CLS&GOTO MENU
)
