# Yunzai-Bot-Help
Yunzai-Bot-help是Linux-Centos系统一键安装Yunzai-BotV2&V3脚本  
 
【作者简介】   
职业：大二学生    
开发原因：安装比较费时间    
学习开始日期：2022年8月8日     
结语：免费分享给大家用，欢迎大家积极反馈，谢谢！     

## 一、项目介绍
拥有一键环境部署和一键安装启动更新停止等实用性功能  
作者测试用的centos8.2系统  
[移步Window安装YunzaiV2&V3教程|附有Yunzai-Bot常见问题](https://b23.tv/uTguBSj)  

## 二、安裝教程
>温聲提示    
>>手机能装Centos     
>>代码复制需装Git     
 
### 1. 获取Root权限  
`sudo su root #权限`   

### 2. 安装git    
`yum -y install git #安装Git`   

### 3. 拷贝项目    
`cd /         #移步最外层目录`   
`git clone https://gitee.com/ningmengchongshui/Yunzai-Bot-Help.git   #复制`   

### 4. 赋予权限    
`cd /Yunzai-Bot-Help/Centos         #移步代码目录`   
`chmod +x *.sh   #赋予权限`  

### 5. 运行代码   
`sh /Yunzai-Bot-Help/Centos/Centosdemo.sh   #启动`    

### 6. 强制卸载   
`rm -rf /Yunzai-Bot-Help   #卸载` 

### 7. windows助手   
在管家中下载git并安装    
右键桌面点击git bash     
`git clone https://gitee.com/ningmengchongshui/Yunzai-Bot-Help.git   #复制`    

## 三、功能介绍
* 一键部署基础环境与开机自启
* 一键安装启动更新停止
* 机器人状态控制面板
* 插件管理
* 运行管理
* 功能扩展
* SSH开通帮助
* 一键修改与删除配置
* 一键脚本自更新自配置
* 系统语言(可设置中文)

## 四、更新记录
* 2022年8月8日V0.0.0：首发测试、补充功能、优化代码逻辑、修复更新功能    
* 2022年8月8日V1.0.0：修改与整合菜单、优化菜单交互、修复错误显示    
* 2022年8月9日V1.0.1：新增插件管理与扩展功能、优化启动方式    
* 2022年8月10日V1.0.2：新增pm2运行管理、补充新插件、优化菜单    
* 2022年8月11日V1.0.3：采用新结构以稳定更新、优化菜单、修复错误显示   
* 2022年8月12日V1.1.0：稳定且完善需求功能（稳定版）    
* 2022年8月12日V1.1.1：简化代码和添加新插件（感谢大佬们开发了新功能）
* 2022年8月13日V1.1.2：新增插件、新增菜单
* 2022年8月13日V1.1.3：新增windows助手
* 2022年8月13日V1.2.0：机器人多开与数据互通（测试版）

## 五、反馈与交流

企鹅交流群`558505956`    
柠檬冲水：无进群要求，欢迎各路朋友加入哈    

## 六、特别赞助    
排名不分先后    
`TEIO`   
`乐`   
