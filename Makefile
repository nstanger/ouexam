######################################################################
#
# File: $Id$
#
# Makefile for ouexam document class.
#
######################################################################

SHELL=/bin/sh


.PHONY: class doc example install tidy clean


# files
IMAGES = eg1-1.eps eg1-2.eps eg1-3.eps eg2-2.eps eg2-3.eps eg2-4.eps eg2-5.eps


# Build everything.
all: class doc example


# Build the class file only.
class: ouexam.cls
ouexam.cls: ouexam.dtx
	latex ouexam.ins


# Build the documentation only.
# Note: requires ps2pdf (GhostScript) to build the PDF version.
doc: ouexam.pdf

ouexam.pdf:	ouexam.ps
	ps2pdf $<

ouexam.ps: ouexam.dvi
	dvips -o $@ $<

ouexam.dvi:	ouexam.dtx
	latex $<
	latex $<
	latex $<


# Build the example only.
example:
	(cd example; latex example.tex; latex example.tex)


# Install files in the appropriate locations in the texmf tree rooted at
# $(TEXMF_INSTALL). Either define this as a shell variable or pass it as
# command line argument, e.g., make install TEXMF_INSTALL=/usr/local/texmf.
install: class doc example
	mkdir -p $(TEXMF_INSTALL)/tex/latex/ouexam
	cp ouexam.cls $(TEXMF_INSTALL)/tex/latex/ouexam
	mkdir -p $(TEXMF_INSTALL)/doc/latex/ouexam/example
	cp ouexam.pdf ouexam.dvi ouexam.dtx ouexam.ins $(TEXMF_INSTALL)/doc/latex/ouexam
	cp example/*.eps example/example.tex example/example.dvi example/example.pdf \
		$(TEXMF_INSTALL)/doc/latex/ouexam/example
	texhash


# Clean up: remove temporary files.
tidy:
	rm -f *.tmp *.aux *.out *.log *.glo *.toc

# Clean up: remove everything except the original source.
clean: tidy
	rm -f *.dvi *.pdf *.cls
