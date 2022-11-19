#!/bin/bash

yourv=$(cat /etc/issue)
readonly yourv

myadress="/home/lighthouse"
readonly myadress

export YunzaiV3="${myadress}/YunzaiV3/XiuXianV3"

funv3(){
	if ! [ -d "${YunzaiV3}/plugins" ];then
		echo "未安装修仙版云崽"
		read -p "回车并退出..." x
	fi
	break
}
funqq(){
	if ! [ -e "${YunzaiV3}/config/config/qq.yaml" ];then
		echo "请先启动修仙版云崽在配置qwq"
	       read -p "回车并退出..." x
	fi
	break
}

while true
do
	OPTION=$(whiptail \
		--title "《Yunzai-Bot-V3》" \
		--menu "$yourv" \
		15 50 3 \
		"1" "安装" \
		"2" "启动" \
		"3" "修改配置" \
		"4" "修改主人" \
		"5" "删除QQ" \
		"6" "更新" \
		"7" "卸载" \
		3>&1 1>&2 2>&3)

	x=$?
	if [ $x = 0 ]
	then
		if [ $OPTION = 1 ];then
			echo "1"
			read -p "回车并继续..." c
		fi
		if [ $OPTION = 2 ];then
                        echo "2"
			read -p "回车并继续..." c
                fi
		if [ $OPTION = 3 ];then
                        echo "3"
			read -p "回车并继续..." c
                fi
		if [ $OPTION = 4 ];then
                        echo "4"
			read -p "回车并继续..." c
                fi
		if [ $OPTION = 5 ];then
                        echo "5"
			read -p "回车并继续..." c
                fi
		if [ $OPTION = 6 ];then
                        echo "6"
			read -p "回车并继续..." c
                fi
		if [ $OPTION = 7 ];then
                        echo "7"
			read -p "回车并继续..." c
                fi
	else
		exit
	fi
done