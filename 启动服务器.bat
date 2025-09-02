@echo off
setlocal
chcp 65001 >nul
:: 设置窗口标题
title 柠枺生电互通基础端

:: 显示欢迎信息
echo 欢迎使用柠枺生电互通基础端！
echo 请确保您已安装JAVA21环境。
echo 请设定服务器分配的内存大小,推荐4G以上。
echo 请设定服务器分配的内存大小,推荐4G以上。

:: 固定内存大小为4G
set JAVA_OPTS=-Xmx4G

:: 重启跳转点
:restart

:: 启动服务器
java %JAVA_OPTS% -jar leaves-1.21.8.jar nogui

:: 自动重启服务器
echo 服务器已关闭，是否重启？
echo (Y/N)
set choice=
set /p choice=
if /i "%choice%"=="Y" goto restart
if /i "%choice%"=="N" exit

:: 关闭窗口
exit
