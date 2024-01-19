@echo off
chcp 65001
echo ============================
echo =========恢复错误文件=======
echo ============================
cd "%~dp0"
:loop
set current_param="%1"
if not %current_param%=="" (
    echo == Get File Path: %current_param%
    .\par2.exe r -v  "%current_param%"
    shift
    goto loop
)
else ( 
    echo Warning:未知原因中断!
)
echo 按任意键结束...
pause
