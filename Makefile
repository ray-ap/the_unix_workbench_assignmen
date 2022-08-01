README.md: guessinggame.sh
	echo "# Project Name: FILE NUMBER GUESSER" > README.md
	echo >> README.md
	echo >> README.md
	echo "Makefile run on: " $$(date) >> README.md
	echo >> README.md
	echo "Lines of code in guessinggame.sh: $$(wc -l guessinggame.sh|egrep -o '[0-9]+')" >> README.md
