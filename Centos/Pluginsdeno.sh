#!/bin/bash
myadress="/home/lighthouse"
readonly myadress
[ -d /home ] || echo "警告：不是Centos系统！退出执行！"
[ -d /home ] || exit
cd /home
[ -d ${myadress} ] || mkdir  lighthouse
[ -d ${myadress} ] || echo "初始化lighthouse目录失败！退出执行！"
cd ${myadress}""
[ -d ${myadress}"/YunzaiV2" ] || mkdir  YunzaiV2
[ -d ${myadress}"/YunzaiV3" ] || mkdir  YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || echo "初始化Yunzai目录失败！退出执行！" 
[ -d ${myadress}"/YunzaiV3" ] || exit
cd ${myadress}""
Yunzai22="${myadress}/YunzaiV2/Yunzai-Bot"
readonly Yunzai22
Yunzai33="${myadress}/YunzaiV3/Yunzai-Bot"
readonly Yunzai33
PS3="请选择: "
while true;
do
echo "_______________________________________"
echo "_____欢迎使用《Yunzai-Bot-Plugins》帮助"
echo "_____作者：bilibili柠檬冲水UP___________"
echo "_____提示：未加载的，请先加载依赖________"
echo "_____提示：V3插件都需要重启Bot___________"
echo "_____2022年8月16日V1.1.4________________"
echo "________________________________________"
fruits5=(
'加载依赖' 
'插件列表'
'逍遥图鉴' 
'成就帮助'
'闲心娱乐V3'
'碎月娱乐V3'   
'我要修仙V3'  
'逆天改命V3'
'自由安装'
'插件删除'
'选择更新'
'回滚更新'
'返回'
)
select version5 in ${fruits5[@]}
do
case $version5 in
'加载依赖')
clear
npm i yaml   #依赖 
npm i superagent   #依赖
npm i promise-retry  #依赖
break
;;
'逍遥图鉴')
echo "放入V2逍遥：2"
echo "放入V3逍遥：3"
echo "卸载V2逍遥：20"
echo "卸载V3逍遥：30"
echo "任意输入返回"
read -p "请选择：" y
if [ $y = 2 ]
then
[ -d ${Yunzai22}"/plugins" ] || 
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -d ${Yunzai22}"/plugins" ] || break
[ ! -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || 
[ ! -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || echo "已安装图鉴！"
[ ! -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || break
clear
cd ${Yunzai22}""
git clone https://gitee.com/Ctrlcvs/xiaoyao-cvs-plugin.git ./plugins/xiaoyao-cvs-plugin/
echo "命令已执行！"
cd ${myadress}""
fi
if [ $y = 3 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || clear
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || echo "已安装图鉴！"
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || break
clear
cd ${Yunzai33}""
git clone https://gitee.com/Ctrlcvs/xiaoyao-cvs-plugin.git ./plugins/xiaoyao-cvs-plugin/
echo "命令已执行！"
cd ${myadress}""
fi
if [ $y = 20 ]
then
[ -d ${Yunzai22}"/plugins" ] || clear
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -d ${Yunzai22}"/plugins" ] || break
[ -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || clear
[ -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || echo "已安装图鉴！"
[ -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || break
[ ! -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || cd ${Yunzai22}""
[ ! -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || rm -rf ${Yunzai22}"/plugins/xiaoyao-cvs-plugin"
clear
echo "命令已执行！"
cd ${myadress}""
fi
if [ $y = 30 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || clear
[ -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || echo "已安装图鉴！"
[ -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || break
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || cd ${Yunzai33}""
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || rm -rf ${Yunzai33}"/plugins/xiaoyao-cvs-plugin"
clear
echo "命令已执行！"
cd ${myadress}""
fi
echo "您已返回！"
break
;;
'成就帮助')
echo "放入V2成就：2"
echo "放入V3成就：3"
echo "卸载V2成就：20"
echo "卸载V3成就：30"
echo "任意输入返回"
read -p "请选择：" y
if [ $y = 2 ]
then
[ -d ${Yunzai22}"/plugins" ] || clear
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -d ${Yunzai22}"/plugins" ] || break
[ ! -d ${Yunzai22}"/plugins/achievements-plugin" ] || clear
[ ! -d ${Yunzai22}"/plugins/achievements-plugin" ] || echo "已安装成就！"
[ ! -d ${Yunzai22}"/plugins/achievements-plugin" ] || break
clear
cd ${Yunzai22}
git clone https://gitee.com/zolay-poi/achievements-plugin.git ./plugins/achievements-plugin/
echo "命令已执行！"
cd ${myadress}""
fi
if [ $y = 3 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || clear
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || echo "已安装成就！"
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || break
cd ${Yunzai33}""
git clone https://gitee.com/zolay-poi/achievements-plugin.git ./plugins/achievements-plugin/
echo "命令已执行！"
cd ${myadress}""
fi
if [ $y = 20 ]
then
[ -d ${Yunzai22}"/plugins" ] || clear
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -d ${Yunzai22}"/plugins" ] || break
[ -d ${Yunzai22}"/plugins/achievements-plugin" ] || clear
[ -d ${Yunzai22}"/plugins/achievements-plugin" ] || echo "未安装成就"
[ -d ${Yunzai22}"/plugins/achievements-plugin" ] || break
[ ! -d ${Yunzai22}"/plugins/achievements-plugin" ] || cd ${Yunzai22}""
[ ! -d ${Yunzai22}"/plugins/achievements-plugin" ] || rm -rf ${Yunzai22}"/plugins/achievements-plugin"
clear
echo "命令已执行！"
cd ${myadress}""
fi
if [ $y = 30 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ -d ${Yunzai33}"/plugins/achievements-plugin" ] || clear
[ -d ${Yunzai33}"/plugins/achievements-plugin" ] || echo "未安装成就"
[ -d ${Yunzai33}"/plugins/achievements-plugin" ] || break
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || cd ${Yunzai33}""
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || rm -rf ${Yunzai33}"/plugins/achievements-plugin"
clear
echo "命令已执行！"
cd ${myadress}""
fi
echo "您已返回"
break
;;
'闲心娱乐V3')
echo "放入V3闲心：3"
echo "卸载V3闲心：30"
echo "任意输入返回"
read -p "请选择：" y
if [ $y = 3 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || clear
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || echo " 已安装闲心！"
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || break
clear
cd ${Yunzai33}""
git clone https://gitee.com/xianxincoder/xianxin-plugin.git ./plugins/xianxin-plugin/  
echo "命令已执行！"
cd ${myadress}""
fi
if [ $y = 30 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ -d ${Yunzai33}"/plugins/xianxin-plugin" ] || clear
[ -d ${Yunzai33}"/plugins/xianxin-plugin" ] || echo "未安装闲心！"
[ -d ${Yunzai33}"/plugins/xianxin-plugin" ] || break
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || cd ${Yunzai33}""
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || rm -rf ${Yunzai33}"/plugins/xianxin-plugin"
clear
echo "命令已执行！"
cd ${myadress}""
fi
echo "您已返回"
break
;;
'碎月娱乐V3')
echo "放入V3碎月：3"
echo "卸载V3碎月：30"
echo "任意输入返回"
read -p "请选择：" y
if [ $y = 3 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || clear
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || echo " 已安装闲心！"
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || break
clear
cd ${Yunzai33}""
git clone https://gitee.com/Acceleratorsky/suiyue.git ./plugins/suiyue/
echo "命令已执行！"
cd ${myadress}""
fi
if [ $y = 30 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ -d ${Yunzai33}"/plugins/suiyue" ] || clear
[ -d ${Yunzai33}"/plugins/suiyue" ] || echo "未安装闲心！"
[ -d ${Yunzai33}"/plugins/suiyue" ] || break
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || cd ${Yunzai33}""
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || rm -rf ${Yunzai33}"/plugins/suiyue"
clear
echo "命令已执行！"
cd ${myadress}""
fi
echo "您已返回"
break
;;


'我要修仙V3')
echo "放入V3修仙：3"
echo "卸载V3修仙：30"
echo "任意输入返回"
read -p "请选择：" y
if [ $y = 3 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || clear
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || echo " 已安装修仙！"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
clear
cd ${Yunzai33}""
git clone https://gitee.com/waterfeet/xiuxian-emulator-plugin ./plugins/xiuxian-emulator-plugin/  
echo "命令已执行！"
cd ${myadress}""
fi
if [ $y = 30 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || clear
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || echo "未安装修仙！"
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || cd ${Yunzai33}""
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || rm -rf ${Yunzai33}"/plugins/xiuxian-emulator-plugin"
clear
echo "命令已执行！"
cd ${myadress}""
fi
echo "您已返回"
break
;;


'逆天改命V3')
echo "道友：1"
echo "纳戒：2"
echo "装备: 3"
read -p "任意值返回,请选择：" x

if [ $x = 1 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || clear
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || echo "未安装修仙！"
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
y="xiuxian_player"
cd ${Yunzai33}"/plugins/xiuxian-emulator-plugin/resources/data/$y"
ls
echo "《文件编辑教程》"
echo "按i进入修改模式"
echo "按ESE退出修改模式"
echo "输入:wq!并回车强制保存"
echo "按CTRL+Z退出文件"
echo "改：0"
echo "杀：1"
read -p "选择:" z

if [ $z = 0 ]
then
read -p "QQ:" qq
vi $qq".json"
fi

if [ $z = 1 ]
then
read -p "QQ:" qq
rm -rf $qq".json"
ls
cd ${Yunzai33}"/plugins/xiuxian-emulator-plugin/resources/data/xiuxian_najie"
rm -rf $qq".json"
cd ${Yunzai33}"/plugins/xiuxian-emulator-plugin/resources/data/xiuxian_equipment"
rm -rf $qq".json"
echo "执行完成！"
fi

fi


if [ $x = 2 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || clear
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || echo "未安装修仙！"
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
y="xiuxian_najie"
cd ${Yunzai33}"/plugins/xiuxian-emulator-plugin/resources/data/$y"
ls
echo "《文件编辑教程》"
echo "按i进入修改模式"
echo "按ESE退出修改模式"
echo "输入:wq!并回车强制保存"
echo "按CTRL+Z退出文件"
echo "改：0"
read -p "选择:" z

if [ $z = 0 ]
then
read -p "QQ:" qq
vi $qq".json"
fi


fi



if [ $x = 3 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || clear
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || echo "未安装修仙！"
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
y="xiuxian_equipment"
cd ${Yunzai33}"/plugins/xiuxian-emulator-plugin/resources/data/$y"
ls
echo "《文件编辑教程》"
echo "按i进入修改模式"
echo "按ESE退出修改模式"
echo "输入:wq!并回车强制保存"
echo "按CTRL+Z退出文件"
echo "改：0"
read -p "选择:" z

if [ $z = 0 ]
then
read -p "QQ:" qq
vi $qq".json"
fi


fi

cd ${myadress}""
break
echo "您已返回！"

break
;;




'插件列表')
clear
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ ! -d ${Yunzai22}"/plugins" ] || cd ${Yunzai22}"/lib/example"
[ ! -d ${Yunzai22}"/plugins" ] || echo "【V2插件列表】"
[ ! -d ${Yunzai22}"/plugins" ] || ls
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ ! -d ${Yunzai33}"/plugins" ] || cd ${Yunzai33}"/plugins/example"
[ ! -d ${Yunzai33}"/plugins" ] || echo "【V3插件列表】"
[ ! -d ${Yunzai33}"/plugins" ] || ls
cd ${myadress}""
break
;;


'自由安装')
clear
echo "注：js类型插件需插件作者授权！"
echo "注：不做推广使用！"
echo "注：本功能可手动安装自己想要的plugin插件"
echo "注：您只需按需求输入即可"
echo "交流反馈群：558505956"
read -p "任意值返回，选择版本：" x

if [ $x = 2 ]
then 
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -d ${Yunzai22}"/plugins" ] || break
echo "1 )安装"
echo "2 )更新"
echo "3 )卸载"
echo "0 )返回"
read -p "选择：" choice

if [ $choice = 1 ]
then
echo "链接例子：https://gitee.com/ningmengchongshui/Yunzai-Bot-Help.git"
read -p "插件链接：" y
cd ${Yunzai22}"/plugins"
git clone $y
fi

if [ $choice = 2 ]
then
cd ${Yunzai22}"/plugins"
ls
read -p "选择更新：" y
cd $y""
git pull
fi

if [ $choice = 3 ]
then
cd ${Yunzai22}"/plugins"
ls
read -p "选择卸载：" y
rm -rf $y""
fi

echo "操作已执行"
fi

if [ $x = 3 ]
then
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
echo "1 )安装"
echo "2 )更新"
echo "3 )卸载"
echo "0 )返回"
read -p "选择：" choice

if [ $choice = 1 ]
then
echo "链接例子：https://gitee.com/ningmengchongshui/Yunzai-Bot-Help.git"
read -p "插件链接：" y
cd ${Yunzai33}"/plugins"
git clone $y
fi

if [ $choice = 2 ]
then
cd ${Yunzai33}"/plugins"
ls
read -p "选择更新：" y
cd $y""
git pull
fi

if [ $choice = 3 ]
then
cd ${Yunzai33}"/plugins"
ls
read -p "选择卸载：" y
rm -rf $y""
fi

echo "操作已执行"
fi


cd ${myadress}""
echo "您已返回！"
break
;;



'插件删除')
clear
read -p "选择版本:" x
if [ $x = 2 ]
then 
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -d ${Yunzai22}"/plugins" ] || break
[ ! -d ${Yunzai22}"/plugins" ] || cd ${Yunzai22}"/lib/example"
[ ! -d ${Yunzai22}"/plugins" ] || echo "【V2插件列表】"
[ ! -d ${Yunzai22}"/plugins" ] || ls
read -p "插件名：" y
[ -e ${Yunzai22}"/lib/example/"$y ] || echo "插件不存在！"
[ -e ${Yunzai22}"/lib/example/"$y ] || break
rm -rf ${Yunzai22}"/lib/example/"$y
echo "操作已执行"
break
fi
if [ $x = 3 ]
then 
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ ! -d ${Yunzai33}"/plugins" ] || cd ${Yunzai33}"/plugins/example"
[ ! -d ${Yunzai33}"/plugins" ] || echo "【V3插件列表】"
[ ! -d ${Yunzai33}"/plugins" ] || ls
read -p "插件名：" y
[ -e ${Yunzai33}"/plugins/example/"$y ] || echo "插件不存在！"
[ -e ${Yunzai33}"/plugins/example/"$y ] || break
rm -rf ${Yunzai33}"/example/plugins/"$y
echo "操作已执行"
break
fi
echo "你选择了未知版本！"
break
;;
'选择更新')
clear
echo "更新图鉴V2：12"
echo "更新图鉴V3：13"
echo "更新成就V2：22"
echo "更新成就V3：23"
echo "更新闲心V3：33"
echo "更新修仙V3：43"
echo "更新碎月V3：53"
echo "更新插件：0"
echo "任意值返回！"
read -p "请选择：" y
if [ $y = 12 ]
then
[ -d ${Yunzai22}"/plugins" ] || 
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -d ${Yunzai22}"/plugins" ] || break
[ ! -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || 
[ ! -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || echo "已安装图鉴！"
[ ! -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || cd ${Yunzai22}"/plugins/xiaoyao-cvs-plugin"
[ ! -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || git pull
[ ! -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || break
cd ${myadress}""
echo "执行出错啦！"
fi 
if [ $y = 13 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin"] || clear
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || echo "已安装图鉴！"
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || cd ${Yunzai33}"/plugins/xiaoyao-cvs-plugin"
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || git pull
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || break
cd ${myadress}""
echo "执行出错啦！"
fi 
if [ $y = 22 ]
then
[ -d ${Yunzai22}"/plugins" ] || clear
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -d ${Yunzai22}"/plugins" ] || break
[ ! -d ${Yunzai22}"/plugins/achievements-plugin" ] || clear
[ ! -d ${Yunzai22}"/plugins/achievements-plugin" ] || echo "已安装成就！"
[ ! -d ${Yunzai22}"/plugins/achievements-plugin" ] || cd ${Yunzai22}"/plugins/achievements-plugin"
[ ! -d ${Yunzai22}"/plugins/achievements-plugin" ] || git pull
[ ! -d ${Yunzai22}"/plugins/achievements-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai22}"/plugins/achievements-plugin" ] || break
cd ${myadress}""
echo "执行出错啦！"
fi 
if [ $y = 23 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || clear
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || echo "已安装成就！"
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || cd ${Yunzai33}"/plugins/achievements-plugin"
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || git pull
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || break
cd ${myadress}""
echo "执行出错啦！"
fi 
if [ $y = 33 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || clear
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || echo " 已安装闲心！"
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || cd ${Yunzai33}"/plugins/xianxin-plugin"
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || git pull
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || break
cd ${myadress}""
echo "执行出错啦！"
fi 
if [ $y = 43 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || clear
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || echo " 已安装修仙！"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || cd ${Yunzai33}"/plugins/xiuxian-emulator-plugin"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || git fetch --all
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || git reset --hard main
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || git pull
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
cd ${myadress}""
echo "执行出错啦！"
fi
if [ $y = 53 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || clear
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || echo " 已安装修仙！"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || cd ${Yunzai33}"/plugins/xiuxian-emulator-plugin"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || git pull
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
cd ${myadress}""
echo "执行出错啦！"
fi
if [ $y = 0 ]
then
echo "功能等添加"
fi 

break
;;
'回滚更新')
clear
echo "回滚图鉴V2：12"
echo "回滚图鉴V3：13"
echo "回滚成就V2：22"
echo "回滚成就V3：23"
echo "回滚闲心V3：33"
echo "回滚碎月V3：43"
echo "回滚修仙V3：53"
echo "回滚插件：0"
echo "任意值返回！"
read -p "请选择：" y
if [ $y = 12 ]
then
[ -d ${Yunzai22}"/plugins" ] || 
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -d ${Yunzai22}"/plugins" ] || break
[ ! -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || 
[ ! -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || echo "已安装图鉴！"
[ ! -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || cd ${Yunzai22}"/plugins/xiaoyao-cvs-plugin"
[ ! -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || git revert
[ ! -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai22}"/plugins/xiaoyao-cvs-plugin" ] || break
cd ${myadress}""
echo "执行出错啦！"
fi 
if [ $y = 13 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || clear
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || echo "已安装图鉴！"
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || cd ${Yunzai33}"/plugins/xiaoyao-cvs-plugin"
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || git revert
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || break
cd ${myadress}""
echo "执行出错啦！"
fi 
if [ $y = 22 ]
then
[ -d ${Yunzai22}"/plugins" ] || clear
[ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
[ -d ${Yunzai22}"/plugins" ] || break
[ ! -d ${Yunzai22}"/plugins/achievements-plugin" ] || clear
[ ! -d ${Yunzai22}"/plugins/achievements-plugin" ] || echo "已安装成就！"
[ ! -d ${Yunzai22}"/plugins/achievements-plugin" ] || cd ${Yunzai22}"/plugins/achievements-plugin"
[ ! -d ${Yunzai22}"/plugins/achievements-plugin" ] || git revert
[ ! -d ${Yunzai22}"/plugins/achievements-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai22}"/plugins/achievements-plugin" ] || break
cd ${myadress}""
echo "执行出错啦！"
fi 
if [ $y = 23 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || clear
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || echo "已安装成就！"
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || cd ${Yunzai33}"/plugins/achievements-plugin"
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || git revert
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || break
cd ${myadress}""
echo "执行出错啦！"
fi 
if [ $y = 33 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || clear
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || echo " 已安装闲心！"
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || cd ${Yunzai33}"/plugins/xianxin-plugin"
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || git revert
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || break
cd ${myadress}""
echo "执行出错啦！"
fi 
if [ $y = 43 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || clear
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || echo " 已安装碎月！"
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || cd ${Yunzai33}"/plugins/suiyue"
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || git revert
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || echo "命令已执行"
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || break
cd ${myadress}""
echo "执行出错啦！"
fi
if [ $y = 53 ]
then
[ -d ${Yunzai33}"/plugins" ] || clear
[ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
[ -d ${Yunzai33}"/plugins" ] || break
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || clear
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || echo " 已安装修仙！"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || cd ${Yunzai33}"/plugins/xiuxian-emulator-plugin"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || git revert
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || echo "命令已执行"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
cd ${myadress}""
echo "执行出错啦！"
fi
if [ $y = 0 ]
then
echo "功能等添加"
fi 
break
;;
'返回')
clear
exit
;;
*)
clear
echo "#######提示：您的选择不存在！######"
break
esac
done
done
break