#!/bin/bash

# 检查是否提供了参数
# 参数一：横坐标；
# 参数二: 纵坐标;
# 参数三：点击次数；
# 参数四：点击频率；
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ] || [ -z "$4" ]; then
  echo "Usage: $0 <x> <y> <clicks> <frequency>"
  exit 1
fi

# 定义要点击的坐标
x=$1
y=$2

# 定义点击次数
clicks=$3

# 定义点击间隔
frequency=$4

# 循环点击指定的次数
echo "开始点击"
for i in $(seq 1 $clicks); do
    # 使用 cliclick 执行点击
    cliclick c:$x,$y
    # 添加延迟，避免点击过快
    sleep $frequency
done
echo "任务完成"