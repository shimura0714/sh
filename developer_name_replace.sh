#!/bin/bash

function usage {
	cat << EOF
$(basename ${0}) is a tool for cyma local dev env config file settings 

Usage:
	$(basename ${0}) [command]

EOF
exit 1
}

if [ -n "$1"]; then
	echo "ERROR:名前をを入力してください。"
	exit 1
fi

files=([0]="dev.txt" [1]="dev_2.txt")
for((i=0; i<${#files[*]}; i++))
do
	echo "${files[$i]}"
	cat "${files[$i]}" | sed -e "s/XXXXX/"$1"/g" > shimura_$i.txt
done
