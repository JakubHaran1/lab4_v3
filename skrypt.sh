#!/bin/bash
if [ "$1" = "--date" ]; then
	date=$(date +%Y-%m-%d)
	echo "Data: $date"
fi

