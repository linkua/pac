%%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a 
cls
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
CD /D "%~dp0"
@echo off

echo 是否执行IP更新？IP更新从云端更新IP配置以解决封锁问题！
echo 按3跳过，按1选择ip1更新，若ip1不好用再按2选ip2更新，如果更新后都用不了，请发邮件到kebi2014@gmail.com进行反馈！
choice /C 123 /T 15 /D 3 /M "1、ip1更新  2、ip2更新  3、跳过"
if errorlevel 3 goto startfq
if errorlevel 2 goto ip2
if errorlevel 1 goto ip1

:ip2
start /wait "" "%~dp0SS\ip_Update\ip_2.bat"
goto startfq

:ip1
start /wait "" "%~dp0SS\ip_Update\ip_1.bat"
goto startfq

:startfq

start "" "%~dp0SS\Shadowsocks.exe"
echo 等待SSR启动，请稍候...
IF EXIST %~dp0App\chrome.exe (
    start %~dp0App\chrome.exe --proxy-server=127.0.0.1:1080
) 