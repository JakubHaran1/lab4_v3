#!/bin/bash
first=$1
second=$2
repo_url="https://github.com/JakubHaran1/lab4_v3.git"



if [ "$1" = "--date" ]; then
	date=$(date +%Y-%m-%d)
	echo "Data: $date"
fi
echo "*log*" > .gitignore

if [ "$first" = "--logs" ] || [ "$first" = "-l" ] && [ -n "$second" ]; then
	 for (( i=1; i<="$second"; i++ )); do
                file_name="log${i}.txt"
                echo "Nazwa pliku: $file_name" > "$file_name"
                echo "Nazwa skryptu: $0" >> "file_name"
                echo "Data kiedy został utworzony plik $(date)" >> "file_name"
        done
elif [ "$first" = "--logs" ] || [ "$first" = "-l" ]; then
	for (( i=1; i<=100; i++ )); do
		file_name="log${i}.txt"
		echo "Nazwa pliku: $file_name" > "$file_name"
		echo "Nazwa skryptu: $0" >> "file_name"
		echo "Data kiedy został utworzony plik $(date)" >> "file_name"
	done
elif [ "$first" = "--help" ] || [ "$first" = "-h" ]; then
	echo "--logs lub -l -> stworzenie 100 plików log"
	echo "--logs x lub -l x -> stworzenie x plików log"
	echo "--help lub -h -> wyświetli pomoc"
	echo "--init -> Klonuje repozytoriun a ściezka dodawana jest do PATH"
	echo "--error 30 lub -e 30 -> tworzy folder i 100 plików error"
elif [ "$first" = "--init" ]; then
	git clone "$repo_url" .
	export PATH="$PWD:$PATH"
	echo "Repozytorium zostało sklonowane, a ścieżka została dodana do zmiennej PATH."

elif [ "$first" = "--error 30" ] || [ "$first" = "-e 30" ]; then
	mkdir errorx
	for (( i=1; i<=100; i++ )); do
		file_name="errorx${i}.txt"
		touch "./errorx/$file_name"
	done
fi

echo "error/" >> .gitignore
