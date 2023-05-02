#!/bin/bash

echo arg 0: $0
echo arg 1: $1
echo arg 2: $2
echo arg 3: $3
echo arg 4: $4
echo arg 5: $5
echo arg 6: $6
echo args: $@


args="$@"

for arg in $args; do
	#echo $arg ${arg,,}
	mv "$arg" "${arg,,}"
	if [[ -f "$arg.startup" ]]; then
		#echo $arg.startup ${arg,,}.startup
		mv "$arg.startup" "${arg,,}.startup"
	fi
done
