.PHONY : clean

J = jconsole

check : test.ijs
	$(J) "$<" -js "exit bench test ''"

boards.txt : boards.ijs
	$(J) "$<" -js "exit 0"

clean :
	rm -rf *~