#!/bin/bash
random_string(){
#echo "Programa random_string_final, cria uma string aleatoria de 8 caracteres."
#echo "Atravez do comando RANDOM, que gera um numero aleatorio (entre 0 - 32767),"
#echo "divido pelo numero de algarismos"
#echo "É criado um loop de 8 interações, escolhendo cada algarismo de forma aleatoria"
#echo "E por fim, concatena os algarismos."
var=(a b c d e f g h i j k l m n o p q r s t u v x y w z A B C D E F G H I J K L M N O P Q R S T U V X Y W Z)
i=0
for char in ${var[@]}
do
#echo $char
i=$(($i+1))
done
#echo -e "\nTamanho do array é:"
#echo $i

#0-32767
#echo -e "\nRandom = 0 - 32767"
#echo "array:"
#echo $i
#echo "divindo (Random/52):"
#echo $((32768/52))

#loop que cria uma string aleatoria de 8 char
string_ale=""
tamanho_string=0
pos=0
while (( tamanho_string < 8 ))
do
	pos=$(($RANDOM/630))
	string_ale=${var[pos]}$string_ale
	let tamanho_string++
	#echo $tamanho_string
	done
name=$string_ale
#echo -e "\nstring aleatoria:"
#echo $string_ale
}
gerar_arquivos(){
#caminho
cd ~/Documents
mkdir Files
cd ~/Documents/Files

#inicializando contadores
cont_1=0
cont_2=0
cont_3=0
cont_4=0
cont_5=0
cont_6=0
cont_7=0

#arquivos
arq1=".mp3"
arq2=".avi"
arq3=".mp4"
arq4=".txt"
arq5=".doc"
arq6=".xls"
arq7=".ppt"

#loops de criação de arquivos
while ((cont_1<100))
do
	random_string
	touch $name$arq1
	let cont_1++
done
while ((cont_2<100))
do
	random_string
	touch $name$arq2
	let cont_2++
done
while ((cont_3<100))
do
	random_string
	touch $name$arq3
	let cont_3++
done
while ((cont_4<100))
do
	random_string
	touch $name$arq4
	let cont_4++
done
while ((cont_5<100))
do
	random_string
	touch $name$arq5
	let cont_5++
done
while ((cont_6<100))
do
	random_string
	touch $name$arq6
	let cont_6++
done
while ((cont_7<100))
do
	random_string
	touch $name$arq7
	let cont_7++
done

digito=0
while ((digito < 7))
do
echo -e "\nEscolha as opções:"
echo "Digite 1 - Listar arquivos"
echo "Digite 2 - Mais detalhes"
echo "Digite 3 - Nova Pasta"
echo "Digite 4 - Mover"
echo "Digite 5 - Informações"
echo "Digite 6 - Apagar"
echo "Digite igual/maior 7 - Sair do programa"
read digito

if [ $digito -eq 1 ]
then
	cd ~/Documents/Files
	ls
elif [ $digito -eq 2 ]
then
	cd ~/Documents/Files
	ls -l
elif [ $digito -eq 3 ]
then
	cd ~/Documents/Files
	flag=1
	while (( flag < 2 ))
	do
	echo -e "\nDigite 1 - Criar pastas manualmente"
	echo "Digite 2 - Criar pastas automaticamente"
	echo "Digite maior/igual 3 - Sair"
	read criar
	if [ $criar -eq 1 ]
	then
	echo "Digite nome da nova pasta:"
	read name_pasta
	mkdir $name_pasta
	elif [ $criar -eq 2 ]
	then
	mkdir txt
	mkdir mp3
	mkdir mp4
	mkdir doc
	mkdir xls
	mkdir ppt
	mkdir avi
	else
	flag=2
	fi
	done
elif [ $digito -eq 4 ]
then
	echo -e "\nDigite numero pra organizar a pasta por extensão"
	echo "Digite 1 - Mover arquivos MP3 para pasta"
	echo $arq1
	echo "Digite 2 - Mover arquivos AVI para pasta"
	echo $arq2
	echo "Digite 3 - Mover arquivos MP4 para pasta"
	echo $arq3	
	echo "Digite 4 - Mover arquivos TXT para pasta"
	echo $arq4
	echo "Digite 5 - Mover arquivos DOC para pasta"
	echo $arq5
	echo "Digite 6 - Mover arquivos XLS para pasta"
	echo $arq6
	echo "Digite 7 - Mover arquivos PPT para pasta"
	echo $arq7
	echo "Digite maior/igual 8 - Organizar conteúdo automaticamente"
	read organizador
	
	if [ $organizador -eq 1 ]
	then
	mv *$arq1 ~/Documents/Files/mp3

	elif [ $organizador -eq 2 ]
	then
	mv *$arq2 ~/Documents/Files/avi

	elif [ $organizador -eq 3 ]
	then
	mv *$arq3 ~/Documents/Files/mp4

	elif [ $organizador -eq 4 ]
	then
	mv *$arq4 ~/Documents/Files/txt

	elif [ $organizador -eq 5 ]
	then
	mv *$arq5 ~/Documents/Files/doc

	elif [ $organizador -eq 6 ]
	then
	mv *$arq6 ~/Documents/Files/xls

	elif [ $organizador -eq 7 ]
	then
	mv *$arq7 ~/Documents/Files/ppt

	else
	mv *$arq1 ~/Documents/Files/mp3
	mv *$arq2 ~/Documents/Files/avi
	mv *$arq3 ~/Documents/Files/mp4
	mv *$arq4 ~/Documents/Files/txt
	mv *$arq5 ~/Documents/Files/doc
	mv *$arq6 ~/Documents/Files/xls
	mv *$arq7 ~/Documents/Files/ppt
	fi
elif [ $digito -eq 5 ]
then
	#informações
	echo -e "\nTotal de arquivos criados:"
	echo $(($cont_1+$cont_2+$cont_3+$cont_4+$cont_5+$cont_6+$cont_7))
	echo "total de arquivos $arq1:"
	echo $cont_1
	echo "total de arquivos $arq2:"
	echo $cont_2
	echo "total de arquivos $arq3:"
	echo $cont_3
	echo "total de arquivos $arq4:"
	echo $cont_4
	echo "total de arquivos $arq5:"
	echo $cont_5
	echo "total de arquivos $arq6:"
	echo $cont_6
	echo "total de arquivos $arq7:"
	echo $cont_7
elif [ $digito -eq 6 ]
then
	cd ~/Documents/Files
	ls
	echo "Qual pasta deseja apagar?"
	read nome_pasta
	rm -r $nome_pasta
fi
done
}
gerar_arquivos