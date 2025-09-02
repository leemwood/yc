#!/bin/bash

# 设置脚本名称
SCRIPT_NAME="柠枺生电互通基础端"

# 检查是否已安装Java 21

echo "请确保你使用的是Java 21环境。"

#提醒用户分配好内存了吗？
echo "分配好内存了吗？，设好可以删除或注释掉下面这一行。 "

# 启动服务器
java -Xmx4G -jar leaves-1.21.8.jar nogui

# 请按任意键继续
read -rsp $'按任意键继续...\n' -d ''