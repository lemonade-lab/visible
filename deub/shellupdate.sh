#!/bin/bash

source /visible/globals.sh

cd "$USER_BASE_DIR"

while true
do
	OPTION=$(whiptail \
		--title "《Manage》" \
		--menu "$SYSTEM_VERSION" \
		15 50 5 \
		"1" "工具更新Update" \
		"2" "工具卸载Uninstall" \
		3>&1 1>&2 2>&3)
	feedback=$?
	if [ $feedback = 0 ]; then
		if [ $OPTION = 1 ]; then
			if [ ! -d "$APP_DIR" ]; then
				cd /
				git clone "https://github.com/ningmengchongshui/visible.git"
			fi

			if [ ! -e "$CENTOS_START_BASE" ]; then
				rm -rf "$APP_DIR"
				echo "#操作失败了，请重新执行"
			else
				cd "$APP_DIR"
				git fetch --all
				git reset --hard main
				git pull
				echo "《visible》"
				echo "#执行完成...."
				echo "#请输入启动指令唤起...."
			fi
			exit 0

		fi
		if [ $OPTION = 1 ]; then
			sudo su root
			rm -rf "$APP_DIR"
			echo "《visible》"
			echo "#已卸载应用..."
			exit 0
                fi
	else
		exit 1
	fi
done
