#!/bin/bash
fichier_urls=$1 # le fichier d'URL en entrée
fichier_tableau=$2 # le fichier HTML en sortie
echo "getting URLs of $1..."
echo "<html><header><meta charset="UTF-8" /></header><body>" > $fichier_tableau
echo "<table>" >> $fichier_tableau
echo "<tr style='background: green;'><th>ligne</th><th>code</th><th>URL</th><th>encodage</th><th>occurence</th></tr>" >> $fichier_tableau

lineno=1;
# For every url in the file
for URL in $(cat $1)
do
	RESPONSE=$(curl -Is $URL | tr -d "\r") # 获取header
	CODE=$(echo $RESPONSE | egrep -o "^HTTP/.* [0-9]+" | tail -n 1 | cut -d' ' -f2) #找出header里面的response code（HTTP/1.1 200）
	CHARSET=$(echo $RESPONSE | egrep -o "charset=(\w|-)+" | tail -n 1 | cut -d= -f2) #找出header里面的encodage（charset=xxx）

	if [[ $CODE -eq 200 ]] # 如果code等于200
	then
		echo "200 OK"
		DUMP=$(lynx -dump -nolist -assume_charset=$CHARSET -display_charset=$CHARSET $URL) # 网页的文本内容
		# exercices 1 用curl访问URL，获取html，存到aspiration文件夹里
		HTML_RESPONSE=$(curl $URL)
		echo "$HTML_RESPONSE" > ../urls_exercices_2/aspirations/fich1.html 
		# exercices 2 将DUMP存到dumps-text
		echo "$DUMP" > ../urls_exercices_2/dumps-text/fich1_1.txt
		# exercices 3 算出现次数
		OCCURENCE=$(echo $DUMP | egrep -o '(m|M)éli-mélo|(m|M)eli-melo' | wc -l | xargs)

		# exercices 4 将关键词前后的ligne提取，放到contextes里
		CONTEXT_LIGNE_PRE=$(echo $DUMP | egrep -A 1 '(m|M)éli-mélo|(m|M)eli-melo')
		echo "$CONTEXT_LIGNE_PRE" > ../urls_exercices_2/contextes/fich1_1.txt
		CONTEXT_LIGNE_AVA=$(echo $DUMP | egrep -B 1 '(m|M)éli-mélo|(m|M)eli-melo')
		echo "$CONTEXT_LIGNE_AVA" > ../urls_exercices_2/contextes/fich1_2.txt
		# exercices 5 将关键词左右的句子提取，放到html的某几列
		
		CONTEXT_LIGNE_MIL=$(echo $DUMP | egrep -o '(m|M)éli-mélo|(m|M)eli-melo')
		echo "<html><header><meta charset="UTF-8" /></header><body>" > ../urls_exercices_2/tableaux/tableaux.html
		echo "<table>" >> ../urls_exercices_2/tableaux/tableaux.html
		echo "<tr>
				<th>$CONTEXT_LIGNE_AVA</th>
				<th>$CONTEXT_LIGNE_MIL</th>
				<th>$CONTEXT_LIGNE_PRE</th>
			</tr>" >> ../urls_exercices_2/tableaux/tableaux.html
		echo "<tr>
				<th>$lineno</th>
				<th>$CODE</th>
				<th><a href="$URL">$URL</a></th>
				<th>$CHARSET</th><th>$OCCURENCE</th>
			</tr>" >> $fichier_tableau
		if [[ $CHARSET -ne "UTF-8" && $CHARSET -ne "utf-8" && -n "$DUMP" ]]
		then
			DUMP=$(echo $DUMP | iconv -f $CHARSET -t UTF-8//IGNORE)
		fi
	else
		DUMP=""
		CHARSET=""
	fi
	lineno=$((lineno+1));
done

echo "</table>" >> $fichier_tableau
echo "</body>" >> $fichier_tableau
echo "</html>" >> $fichier_tableau