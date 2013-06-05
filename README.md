ouexam v2.3
===========

ouexam document class v2.3, 4 September 2012

Copyright 1999–2012 Nigel Stanger and University of Otago

This LaTeX2e document class enables the production of University of Otago formatted examination papers. It handles all the fiddly layout requirements (such as printing “TURN OVER” at the bottom of every page except the last), and also ensures that the actual number of marks for questions in the examination add up to the expected number of marks.


Requirements
------------

You will need the `verbatim`, `fontenc`, `textcomp` and `lmodern` packages in order to use `ouexam`. These should all come standard with most TeX installations. To build the documentation and example files, you will need `graphicx`, `hyperref`, at least version 1.1 of the `listings` package, and the `pdfjam` tool.


Installing
----------

To install the easy way:

1 Unpack the distribution archive and `cd` to the distribution directory.

2 `make`

3 `make install TEXMF_INSTALL=/path/to/texmf`.
  `/path/to/texmf` should be the root of your preferred texmf tree
  (e.g., `/usr/share/texmf`). You may need to do this as root
  depending on which texmf tree you are installing into. You can
  also define `TEXMF_INSTALL` as an environment variable then simply
  type make install.

To install manually, unpack the distribution archive, cd to the distribution directory, and do the following (now you know why there’s a Makefile ☺).

	% latex ouexam.ins
	% pdflatex example1.tex
	% pdflatex example1.tex
	% pdfjam --outfile eg1-1.pdf example1.pdf 1
	% pdfjam --outfile eg1-2.pdf example1.pdf 2
	% pdfjam --outfile eg1-3.pdf example1.pdf 3
	% pdflatex example2.tex
	% pdflatex example2.tex
	% pdfjam --outfile eg2-1.pdf example2.pdf 1
	% pdfjam --outfile eg2-2.pdf example2.pdf 2
	% pdfjam --outfile eg2-3.pdf example2.pdf 3
	% pdfjam --outfile eg2-4.pdf example2.pdf 4
	% pdflatex ouexam.dtx
	% pdflatex ouexam.dtx
	% pdflatex ouexam.dtx

Put `ouexam.cls` in `/path/to/texmf/tex/latex/ouexam`.

Put `eg*.pdf`, `ouexam.pdf`, `ouexam.dtx`, `ouexam.ins`, `HISTORY`, `MANIFEST`, `README` and `TODO` in `/path/to/texmf/doc/latex/ouexam`.

Put `Create*.pdf`, `example*.tex`, `example*.pdf` and `lstlang0.sty` in `/path/to/texmf/doc/latex/ouexam/example`.


FAQ
---

**The number of marks for my questions are not appearing at the end of the line even though there is plenty of room for them to fit.**

You probably have a blank line between the end of your question text and the `\end{question}` macro that actually generates the number of marks. The line break gets processed by TeX before the number of marks is generated and effectively generates a new paragraph. Until I figure out how to stop this from happening, the workaround is to not leave blank lines between the end of the question text and the `\end{question}`.
