# Makefile for ouexam document class

all: class doc

class: ouexam.cls
doc: ouexam.dvi

# only make pdfdoc if you have GhostScript and dvipdf installed
pdfdoc: ouexam.pdf

ouexam.cls: ouexam.dtx
	latex ouexam.ins

ouexam.pdf:	ouexam.dvi
	dvipdf ouexam.dvi ouexam.pdf

ouexam.dvi:	ouexam.dtx
	latex ouexam.dtx
	latex ouexam.dtx
	latex ouexam.dtx

clean:
	rm -f *.dvi *.tmp *.aux *.out *.log *.cls *.glo *.toc *.pdf
