#! /bin/sh
time="99:99:99"
while IFS= read -r line; do
	if [[ "$time" != "${line:9:8}" ]]; then
		echo "$line"
		time=${line:9:8}
	fi
done < "$1"
