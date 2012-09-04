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
EXAMPLE1_IMAGES = eg1-1.pdf eg1-2.pdf eg1-3.pdf
EXAMPLE2_IMAGES = eg2-2.pdf eg2-3.pdf eg2-4.pdf eg2-5.pdf


# Build everything.
all: class doc example


# Build the class file only.
class: ouexam.cls
ouexam.cls: ouexam.dtx
	latex ouexam.ins


# Build the documentation only.
doc: ouexam.pdf

ouexam.pdf:	ouexam.dtx $(EXAMPLE1_IMAGES) $(EXAMPLE2_IMAGES)
	pdflatex $<
	pdflatex $<
	pdflatex $<

$(EXAMPLE1_IMAGES): example1.pdf
	pdfjam --outfile $@ $< `echo $@ | cut -c 5`

$(EXAMPLE2_IMAGES): example2.pdf
	pdfjam --outfile $@ $< `echo $@ | cut -c 5`


# Build the example only.
example: example1.pdf example2.pdf

example%.pdf: example%.tex example.tex ouexam.cls
	pdflatex $<
	pdflatex $<


# Install files in the appropriate locations in the texmf tree rooted at
# $(TEXMFHOME). Either define this as a shell variable or pass it as
# command line argument, e.g., make install TEXMFHOME=/usr/local/texmf.
install: class doc example
	mkdir -p $(TEXMFHOME)/tex/latex/ouexam
	cp ouexam.cls $(TEXMFHOME)/tex/latex/ouexam
	mkdir -p $(TEXMFHOME)/doc/latex/ouexam/example
	cp eg*.pdf ouexam.pdf ouexam.dtx ouexam.ins \
		FAQ INSTALL MANIFEST README TODO \
		$(TEXMFHOME)/doc/latex/ouexam
	cp Create*.pdf example*.tex example*.pdf lstlang0.sty \
		$(TEXMFHOME)/doc/latex/ouexam/example
	texhash


# Clean up: remove temporary files.
tidy:
	rm -f *.tmp *.aux *.out *.log *.glo *.toc *.ps \
		$(EXAMPLE1_IMAGES) $(EXAMPLE2_IMAGES)

# Clean up: remove everything except the original source.
clean: tidy
	rm -f ouexam.pdf eg*.pdf example*.pdf *.cls
