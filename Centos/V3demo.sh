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
PS3="请选择: "
Yunzai33="${myadress}/YunzaiV3/Yunzai-Bot"
readonly Yunzai33
while true; 
do
echo "________________________________________"
echo "_______欢迎使用《Yunzai-Bot-V3》安装"
echo "_______作者：bilibili柠檬冲水UP"
echo "_______提示：严格按顺序安装"
echo "_______2022年8月16日V1.1.4"
echo "______________________"
fruits4=(
    '安装BotV3' 
    '安装miaoV3' 
    '依赖加载'  
    '安装Chromium'  
    '初始化启动'  
    '修改group配置'  
    '修改other配置'   
    '删除QQ配置'  
    '更新'  
    '卸载'   
    '返回'
)
select version4 in ${fruits4[@]}
do
case $version4 in
'安装BotV3')
clear
node -v
if [ $? = 0 ] ; then
echo "Node.js已安装"
else
echo "Node.js未安装"
echo "正在安装node.js，请耐心等待..."
yum install -y dnf
dnf module install nodejs:16 -y
echo "nodejs安装成功！"
fi
redis-server -v
if [ $? = 0 ] ; then
echo "Redis已安装"
else
echo "Redis未安装"
echo "正在安装redis，请耐心等待..."
yum -y install git
yum -y install redis
echo "redis安装成功！"
redis-server --daemonize yes
echo "redis启动！"
systemctl enable redis.service
echo "设置开机自启！"
fi
git version
if [ $? = 0 ] ; then
echo "Git已安装"
else
echo "Git未安装"
echo "正在安装Git，请耐心等待..."
yum -y install git
echo "Git安装成功！"
fi
echo "正在安装Yunzai-BotV3，请耐心等待..."
[ -d ${myadress}"/YunzaiV3" ] || echo "初始化目录失败，退出执行！"
[ -d ${myadress}"/YunzaiV3" ] || break
cd ${myadress}"/YunzaiV3"
[ -d ${Yunzai33}"/plugins/example" ] || git clone https://gitee.com/Le-niao/Yunzai-Bot.git
[ -d ${Yunzai33}"/plugins/example" ] || echo "Yunzai安装失败！" 
[ -d ${Yunzai33}"/plugins/example" ] || rm -rf ${Yunzai33} ""
[ -d ${Yunzai33}"/plugins/example" ] || echo "Yunzai残留已清除！" 
[ -d ${Yunzai33}"/plugins/example" ] || break
echo "Yunzai-BotV3安装成功！"
cd ${myadress}""
break
;;
'安装miaoV3')
clear
echo "正在安装miao-plugin，请耐心等待..."
[ -d ${Yunzai33}"/plugins/example" ] || echo "请先安装Yunzai-BotV3" 
[ -d ${Yunzai33}"/plugins/example" ] || break
cd ${Yunzai33}""
npm install image-size
git clone https://gitee.com/yoimiya-kokomi/miao-plugin.git ./plugins/miao-plugin/
[ -d ${Yunzai33}"/plugins/miao-plugin/resources" ] || echo "miao-pluginV3安装失败！" 
[ -d ${Yunzai33}"/plugins/miao-plugin/resources" ] || rm -rf ${Yunzai33}"/plugins/miao-plugin"
[ -d ${Yunzai33}"/plugins/miao-plugin/resources" ] || break
echo "miao-plugin安装成功！"
cd ${myadress}""
break
;;
'依赖加载')
clear
echo "正在加载，请耐心等待..."
echo "若是卡住太久，可按CTRL+Z退出"
[ -d ${Yunzai33} ] || echo "请先安装Yunzai-BotV3"
[ -d ${Yunzai33} ] || break
cd ${Yunzai33}""
npm install
echo "加载成功！"
cd ${myadress}
break
;;
'安装Chromium')
clear
[ -d ${Yunzai33}"/plugins/example" ] || echo "请先安装Yunzai-BotV3" 
[ -d ${Yunzai33}"/plugins/example" ] || break
cd ${Yunzai33}""
yum install pango.x86_64 libXcomposite.x86_64 libXcursor.x86_64 libXdamage.x86_64 libXext.x86_64 libXi.x86_64 libXtst.x86_64 cups-libs.x86_64 libXScrnSaver.x86_64 libXrandr.x86_64 GConf2.x86_64 alsa-lib.x86_64 atk.x86_64 gtk3.x86_64 -y 
yum install libdrm libgbm libxshmfence -y
yum install nss -y
yum update nss -y
yum groupinstall fonts -y
echo "基础环境检测完成，正在安装hromium...."
echo "若网速过慢，可按CTRL+Z退出，重新执行"
echo "若受服务器限制，可尝试重启"
node ./node_modules/puppeteer/install.js
echo "Chromium安装成功！"
cd ${myadress}""
break
;;
'初始化启动')
clear
[ -d ${Yunzai33}"/plugins" ] || echo "请先安装Yunzai-BotV3"
[ -d ${Yunzai33}"/plugins" ] || break
cd ${Yunzai33}""
echo "初始化完成后,按CTRL+Z退出"
echo "重新执行脚本,以后台启动Yunzai-Bot"
node app.js
break
;;
'修改group配置')
clear
[ -d ${Yunzai33}"/plugins/example" ] || echo "请先安装Yunzai-BotV3"
[ -d ${Yunzai33}"/plugins/example" ] || break
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "您未配置机器人V3QQ"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || break
[ -e ${Yunzai33}"/config/config/group.yaml" ] || echo "您未配置机器人"
[ -e ${Yunzai33}"/config/config/group.yaml" ] || break
vi ${Yunzai33}"/config/config/group.yaml"
cd ${myadress}""
echo "修改成功！"
break
;;
'修改other配置')
clear
[ -d ${Yunzai33}"/plugins/example" ] || echo "请先安装Yunzai-BotV3"
[ -d ${Yunzai33}"/plugins/example" ] || break
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "您未配置机器人V3QQ"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || break
[ -e ${Yunzai33}"/config/config/other.yaml" ] || echo "您未配置机器人"
[ -e ${Yunzai33}"/config/config/other.yaml" ] || break
vi ${Yunzai33}"/config/config/other.yaml"
cd ${myadress}""
echo "修改成功！"
break
;;
'删除QQ配置')
clear
[ -d ${Yunzai33}"/plugins/example" ] || echo "请先安装Yunzai-BotV3"
[ -d ${Yunzai33}"/plugins/example" ] || break
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "您未配置机器人V3QQ"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || break
rm -rf ${Yunzai33}"/config/config/qq.yaml"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || echo "配置删除成功！"
[ -e ${Yunzai33}"/config/config/qq.yaml" ] || break
cd ${myadress}""
echo "配置删除失败！"
break
;;
'更新')
clear
[ -d ${Yunzai33}"/plugins/example" ] || echo "请先安装Yunzai-BotV3"
[ -d ${Yunzai33}"/plugins/example" ] || break
echo "正在更新Yunzai..."
cd ${Yunzai33}""
git pull
echo "yunzai更新命令执行完成！"
cd ${myadress}
[ -d ${Yunzai33}"/plugins/miao-plugin" ] || echo "请先安装miao-pluginV3"
[ -d ${Yunzai33}"/plugins/miao-plugin" ] || break
echo "正在更新miao..."
cd ${Yunzai33}"/plugins/miao-plugin"
git pull
echo "miao更新命令执行完成！"
cd ${myadress}""
break
;;
'卸载')
clear
echo "警告！"
echo "警告！"
echo "警告！"
echo "输入0确定卸载"
echo "任意值返回"
read -p "请选择：" x
if [ $x = 0 ]
then
[ -d ${Yunzai33}"/plugins" ] || echo "请先安装Yunzai-BotV3"
[ -d ${Yunzai33}"/plugins" ] || break
rm -rf ${Yunzai33}""
[ -e ${Yunzai33} ] || echo "卸载Yunzai-BotV3成功！"
[ -e ${Yunzai33} ] || break
cd ${myadress}""
echo "卸载Yunzai-BotV3失败！"
else
echo "您已取消卸载！"
fi
break
;;
'返回')
clear
exit
;;
*)
clear
cd ${myadress}""
echo "#######提示：您的选择不存在！######"
break
esac
done
done