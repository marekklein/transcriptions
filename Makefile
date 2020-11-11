base := $(shell v='$(file)'; echo "$${v%.*}")
all: a

rename:
	
	cp $(base).gabc main.gabc

aproc:
	lualatex --shell-escape main.tex
	cp main.pdf $(base).pdf
delete:
	rm *.log
	rm *.aux
	rm *.gtex
	rm *.glog

a: rename aproc delete

