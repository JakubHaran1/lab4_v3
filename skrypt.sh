#!/bin/bash
if [ "$1" = "--date" ]; then
	date=$(date +%Y-%m-%d)
	echo "Data: $date"
fi
echo "*log*" > .gitignore

if [ "$1" = "--logs" ]; then
	for (( i=1; i<=100; i++ )); do
		file_name="log${i}.txt"
		echo "Nazwa pliku: $file_name" > "$file_name"
		echo "Nazwa skryptu: $0" >> "file_name"
		echo "Data kiedy został utworzony plik $(date)" >> "file_name"
	done
fi
