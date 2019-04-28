#!/usr/bin/env bash
#/usr/bin/env bash

README.md: guessinggame.sh
	touch README.md
	echo "# guessinggame" > README.md
	echo "*  Created on: $$(date)" >> README.md
	echo "  \n" >> README.md
	echo "* The number of lines of code it has are: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
reset:
	rm README.md