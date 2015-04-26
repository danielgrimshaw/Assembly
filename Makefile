# Makefile
all: first sum load store uncdnlBranches compare loop collatz array

first: first.o
	gcc -o $@ $+

first.o: first.s
	as -o $@ $<

sum: sum.o
	gcc -o $@ $+

sum.o: sum.s
	as -o $@ $<

load: load.o
	gcc -o $@ $+

load.o: load.s
	as -o $@ $<

store: store.o
	gcc -o $@ $+

store.o: store.s
	as -o $@ $<

uncdnlBranches: uncdnlBranches.o
	gcc -o $@ $+

uncdnlBranches.o: uncdnlBranches.s
	as -o $@ $<

compare: compare.o
	gcc -o $@ $+

compare.o: compare.s
	as -o $@ $<

loop: loop.o
	gcc -o $@ $+

loop.o: loop.s
	as -o $@ $<

collatz: collatz.o
	gcc -o $@ $+

collatz.o: collatz.s
	as -o $@ $<

array: array.o
	gcc -o $@ $+

array.o: array.s
	as -o $@ $<

clean:
	rm -vf first sum load store uncdnlBranches compare loop collatz array *.o
