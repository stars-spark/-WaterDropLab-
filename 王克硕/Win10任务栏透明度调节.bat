@ECHO OFF&(PUSHD "%~DP0")&(REG QUERY "HKU\S-1-5-19">NUL 2>&1)||(
powershell -Command "Start-Process '%~sdpnx0' -Verb RunAs"&&EXIT)

TITLE Win10������͸���ȵ��ڹ���
ECHO.&ECHO ������ʹ���ڼ���Ҫ������Դ����������ر�����ҳ����ټ��������� &ECHO.&PAUSE&CLS
:MENU
ECHO.&ECHO  Win10������͸���ȵ��ڣ�
ECHO.&ECHO  1��ϵͳĬ��
ECHO.&ECHO  2����͸��
ECHO.&ECHO  3��ȫ͸��������������ɫ��������
ECHO.&ECHO.&ECHO ��ѡ��

CHOICE /C 123 /N >NUL 2>NUL

IF "%ERRORLEVEL%"=="1" (
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarAcrylicOpacity" >NUL 2>NUL
taskkill /f /im explorer.exe >NUL 2>NUL & start explorer
ECHO.&ECHO ��� &TIMEOUT /t 2 >NUL&CLS&GOTO MENU
)

IF "%ERRORLEVEL%"=="2" (
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarAcrylicOpacity" /t REG_DWORD /d "1" >NUL 2>NUL
taskkill /f /im explorer.exe >NUL 2>NUL & start explorer
ECHO.&ECHO ��� &TIMEOUT /t 2 >NUL&CLS&GOTO MENU
)

IF "%ERRORLEVEL%"=="3" (
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarAcrylicOpacity" /t REG_DWORD /d "0" >NUL 2>NUL
taskkill /f /im explorer.exe >NUL 2>NUL & start explorer
ECHO.&ECHO ��� &TIMEOUT /t 2 >NUL&CLS&GOTO MENU
)

