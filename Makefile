all: a

rename:
	cp $(file).gabc main.gabc

aproc:
	lualatex --shell-escape main.tex
	cp main.pdf $(file).pdf
delete:
	rm *.log
	rm *.aux
	rm *.gtex
	rm *.glog

a: rename aproc delete

