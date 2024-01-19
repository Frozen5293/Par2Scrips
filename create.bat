@echo off
chcp 65001
echo ===========================
echo =========创建5%恢复========
echo ===========================
cd "%~dp0"
:loop
set current_param="%1"
if not %current_param%=="" (
    echo == Get File Path: %current_param%
    .\par2.exe c -v -r5 -n5 "%current_param%"
    shift
    goto loop
)
else ( 
    echo Warning:未知原因中断!
)
echo 按任意键结束...
pause
