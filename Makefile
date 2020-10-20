.PHONY : clean check bench

J = jconsole

check : test.ijs
	$(J) "$<" -js "exit ''"

bench : test.ijs
	$(J) "$<" -js "exit bench ''"

boards.txt : boards.ijs
	$(J) "$<" -js "exit 0"

clean :
	rm -rf *~
