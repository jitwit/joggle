.PHONY : clean

boards.txt : boards.ijs
	jconsole "$<" -js "exit 0"

clean :
	rm -rf *~
