######################################################################
#
# File: $Id$
#
# Makefile for ouexam document class.
#
######################################################################

SHELL=/bin/sh


.PHONY: class doc pdfdoc install tidy clean


# Build everything.
all: class doc


# Build the class file only.
class: ouexam.cls
ouexam.cls: ouexam.dtx
	latex ouexam.ins


# Build the documentation only.
doc: ouexam.dvi

# only make pdfdoc if you have GhostScript and dvipdf installed
pdfdoc: ouexam.pdf

ouexam.pdf:	ouexam.dvi
	dvipdf ouexam.dvi ouexam.pdf

ouexam.dvi:	ouexam.dtx
	latex ouexam.dtx
	latex ouexam.dtx
	latex ouexam.dtx


# Install files in the appropriate locations in the texmf tree rooted at
# $(TEXMF_INSTALL). Either define this as a shell variable or pass it as
# command line argument, e.g., make install TEXMF_INSTALL=/usr/local/texmf.
install:
	mkdir -p $(TEXMF_INSTALL)/tex/latex/ouexam
	cp ouexam.cls $(TEXMF_INSTALL)/tex/latex/ouexam
	mkdir -p $(TEXMF_INSTALL)/doc/latex/ouexam
	cp ouexam.dvi ouexam.dtx ouexam.ins $(TEXMF_INSTALL)/doc/latex/ouexam
	if [ -f ouexam.pdf ]; then cp ouexam.pdf $(TEXMF_INSTALL)/doc/latex/ouexam; fi
	texhash


# Clean up: remove temporary files.
tidy:
	rm -f *.tmp *.aux *.out *.log *.glo *.toc

# Clean up: remove everything except the original source.
clean: tidy
	rm -f *.dvi *.pdf *.cls
