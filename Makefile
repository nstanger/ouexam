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
EXAMPLE1_IMAGES = eg1-1.eps eg1-2.eps eg1-3.eps
EXAMPLE2_IMAGES = eg2-2.eps eg2-3.eps eg2-4.eps eg2-5.eps


# Build everything.
all: class doc example


# Build the class file only.
class: ouexam.cls
ouexam.cls: ouexam.dtx
	latex ouexam.ins


# Build the documentation only.
# Note: requires ps2pdf (GhostScript) to build the PDF version and
# ps2epsi to build the example images.
doc: ouexam.pdf

ouexam.pdf:	ouexam.ps
	ps2pdf $<

ouexam.ps: ouexam.dvi
	dvips -o $@ $<

ouexam.dvi:	ouexam.dtx $(EXAMPLE1_IMAGES) $(EXAMPLE2_IMAGES)
	latex $<
	latex $<
	latex $<

$(EXAMPLE1_IMAGES): example1.dvi
	dvips -pp `echo $@ | cut -c 5` -E -o $@ $<

$(EXAMPLE2_IMAGES): example2.dvi
	dvips -pp `echo $@ | cut -c 5` -E -o $@ $<


# Build the example only.
example: example1.pdf example2.pdf

example1.pdf: example1.ps
	ps2pdf $<

example1.ps: example1.dvi
	dvips -o $@ $<

example1.dvi: example1.tex example.tex ouexam.cls
	latex $<
	latex $<

example2.pdf: example2.ps
	ps2pdf $<

example2.ps: example2.dvi
	dvips -o $@ $<

example2.dvi: example2.tex example.tex ouexam.cls
	latex $<
	latex $<


# Install files in the appropriate locations in the texmf tree rooted at
# $(TEXMF_INSTALL). Either define this as a shell variable or pass it as
# command line argument, e.g., make install TEXMF_INSTALL=/usr/local/texmf.
install: class doc example
	mkdir -p $(TEXMF_INSTALL)/tex/latex/ouexam
	cp ouexam.cls $(TEXMF_INSTALL)/tex/latex/ouexam
	mkdir -p $(TEXMF_INSTALL)/doc/latex/ouexam/example
	cp eg*.eps ouexam.pdf ouexam.dvi ouexam.dtx ouexam.ins \
		FAQ INSTALL MANIFEST README TODO \
		$(TEXMF_INSTALL)/doc/latex/ouexam
	cp Create*.eps example*.tex example*.dvi example*.pdf lstlang0.sty \
		$(TEXMF_INSTALL)/doc/latex/ouexam/example
	texhash


# Clean up: remove temporary files.
tidy:
	rm -f *.tmp *.aux *.out *.log *.glo *.toc *.ps \
		$(EXAMPLE1_IMAGES) $(EXAMPLE2_IMAGES)

# Clean up: remove everything except the original source.
clean: tidy
	rm -f *.dvi *.pdf *.cls
