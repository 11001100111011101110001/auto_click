#!/bin/bash

echo "Please move the mouse to the position you want to click, then press the Enter key to get the mouse coordinates.";
read -r -p "请将鼠标移至需要点击的位置，然后按下回车键获取鼠标坐标。";

# 获取当前鼠标位置
mouse_position=$(cliclick p);

# 输出鼠标位置
echo "Current mouse coordinates: $mouse_position";
echo "当前鼠标坐标: $mouse_position";

# 提示输入点击次数
echo "Please enter the number of clicks.";
read -r -p "请输入点击次数：" clicks;

# 循环点击指定的次数
echo "Please enter the click time interval in seconds.";
read -r -p "请输入点击间隔时间，以秒为单位：" interval;

echo "Clicking...";
echo "点击中...";
for i in $(seq 1 $clicks);
do
    cliclick c:$mouse_position;
    sleep $interval;
done
echo "Task completed.";
echo "任务完成～";