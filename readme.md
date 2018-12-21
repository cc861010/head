## start desktop
./xrun  

## build image
./build 


## 为什么有这个项目:
1. 系统使用时间较长后,越来越臃肿,各种配置,服务太多,无法维护. 某天系统无法启动后,所有系统环境都丢失了,想要重装或回到某个时刻非常困难

2. 每个的系统随着自己使用都是独立无二的,适合某一场景的系统不能很方便的和别人分享,系统崩溃后要重现比较困难

3. 初学者要自定义一个系统很困难.

4. 不同的使用需求需要不同的系统环境. 比如玩游戏看视频使用一个系统,办公需要办公的软件支持,开发工作需要使用的不同的开发环境.如果使用单一系统,最终必然导致难以维护


## 项目特点:

+ 系统构建标准化

    todo 
    
+ 状态分支版本化

    todo 
    
+ 分享获取便捷化

    todo 
    

## 使用前提:
1. 软件:支持docker的最小系统,比如CoreOS，ubuntu server,RancherOS等
2. 硬件:x86主机,键盘鼠标,显示器


## 使用场景:
1. 需要统一的桌面工作环境
2. 桌面环境为linux,常用工具为i3窗口管理,tmux多窗口管理
3. 可以打包,方便部署,脚本化构建,可移植性
