%%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a 
cls

%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
CD /D "%~dp0"
@echo off

echo �Ƿ�ִ��IP���£�IP���´��ƶ˸���IP�����Խ���������⣡
echo ��3��������1ѡ��ip1���£���ip1�������ٰ�2ѡip2���£�������º��ò��ˣ��뷢�ʼ���kebi2014@gmail.com���з�����
choice /C 123 /T 15 /D 3 /M "1��ip1����  2��ip2����   3������"
if errorlevel 3 goto startfq
if errorlevel 2 goto ip2
if errorlevel 1 goto ip1
 
:ip2
start /wait "" "%~dp0Lightsocks\ip_Update\ip_2.bat"
goto startfq
 
:ip1
start /wait "" "%~dp0Lightsocks\ip_Update\ip_1.bat"
goto startfq
 
:startfq

copy /Y Lightsocks\config.ini  %USERPROFILE%\.lightsocks.json
start "" "%~dp0Lightsocks\lightsocks-local.exe"
IF EXIST %~dp0App\chrome.exe (
    start %~dp0App\chrome.exe --proxy-server="socks5://127.0.0.1:7448" )
