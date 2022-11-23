#!/usr/bin/env bash

dossier=$1 # 文件夹名
fichier_tableau=$2
files=$(ls $dossier) # 文件夹里面的所有文件名
echo $dossier
for FILE in $files
# FILE 某个文件名
do
    echo $FILE
	if [ ! -f $FILE ]
	then
		echo "$FILE does not exist."
		echo "It should be a file containing a list of urls."
	else
		./traitement_url_base.sh $($dossier/$FILE) $fichier_tableau
	fi
done