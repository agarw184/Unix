all: README.md

README.md:	guessinggame.sh 
		echo "Title of Project: Unix WorkBench game" > README.md
		echo "" >> README.md	
		echo "Date of making the assignment: _$(date)_"  >> README.md	
		echo "Number of lines of code" >> README.md
		grep -c '' guessinggame.sh >> README.md 

clean: 
	rm README.md  
