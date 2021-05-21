# ouexam v2.4.2

ouexam document class v2.4.2, 30 August 2019

Copyright 1999–2021 Nigel Stanger and University of Otago

This LaTeX2ε document class enables the production of University of Otago formatted examination papers. It handles all the fiddly layout requirements (such as printing “**TURN OVER**” at the bottom of every page except the last), and also ensures that the actual number of marks for questions in the examination add up to the expected number of marks.

## Requirements

You will need the `verbatim`, `fontenc`, `textcomp`, `lmodern`, and `pgfkeys` packages in order to use `ouexam`. These should all come standard with most TeX installations. To build the documentation and example files, you will need `graphicx`, `hyperref`, at least version 1.1 of the `listings` package, and the `pdfjam` tool.

## Installing

To install the easy way:

1 Unpack the distribution archive and `cd` to the distribution directory.

2 `make`

3 `make install TEXMFHOME=/path/to/texmf`.
  `/path/to/texmf` should be the root of your preferred texmf tree
  (e.g., `/usr/share/texmf`). You may need to do this as root
  depending on which texmf tree you are installing into. You can
  also define `TEXMFHOME` as an environment variable then simply
  type make install.

To install manually, unpack the distribution archive, cd to the distribution directory, and do the following (now you know why there’s a Makefile ☺).

```sh
latex ouexam.ins
pdflatex example1.tex
pdflatex example1.tex
pdfjam --outfile eg1-1.pdf example1.pdf 1
pdfjam --outfile eg1-2.pdf example1.pdf 2
pdfjam --outfile eg1-3.pdf example1.pdf 3
pdflatex example2.tex
pdflatex example2.tex
pdfjam --outfile eg2-1.pdf example2.pdf 1
pdfjam --outfile eg2-2.pdf example2.pdf 2
pdfjam --outfile eg2-3.pdf example2.pdf 3
pdfjam --outfile eg2-4.pdf example2.pdf 4
pdflatex ouexam.dtx
pdflatex ouexam.dtx
pdflatex ouexam.dtx
```

Put `ouexam.cls` in `/path/to/texmf/tex/latex/ouexam`.

Put `eg*.pdf`, `ouexam.pdf`, `ouexam.dtx`, `ouexam.ins`, `HISTORY`, `MANIFEST`, `README` and `TODO` in `/path/to/texmf/doc/latex/ouexam`.

Put `Create*.pdf`, `example*.tex`, `example*.pdf` and `lstlang0.sty` in `/path/to/texmf/doc/latex/ouexam/example`.

You can also build the examples using GUI tools such as TeXMaker, TeXShop, etc. (but see the FAQ below).

## FAQ

### The number of marks for my questions are not appearing at the end of the line even though there is plenty of room for them to fit.

You probably have a blank line between the end of your question text and the `\end{question}` macro that actually generates the number of marks. The line break gets processed by TeX before the number of marks is generated and effectively generates a new paragraph. Until I figure out how to stop this from happening, the workaround is to not leave blank lines between the end of the question text and the `\end{question}`.

### I fixed that, but there’s still vertical space between the end of my question and the number of marks.

This is almost certainly because the question text ends with a list-based environment of some sort (including `itemize`, `enumerate`, `description`, `list`, `quote`, `quotation`, `center`, `flushleft`, and `flushright`). I’m not convinced that this can be fixed in a general way, but a workaround is to subtract a negative multiple of `\lastskip` immediately before the `\end{question}` (or whatever), e.g., `\vskip-2\lastskip`. -2 is about right if you want the marks to appear on the line following the question text, while -4.75 is about right if you want the marks to be aligned with the final line of the question text.

### Why can’t I build content.tex?

`content.tex` is an include file for both `example1.tex` and `example2.tex`. It doesn’t have a `\documentclass` and you therefore *can’t* `pdflatex` it! The only input files you should be building are `example1.tex` and `example2.tex`.

### How do I get rid of “(Subject to inspection by the examiners)”?

Add this to the document preamble:

```tex
\makeatletter
\def\@copiesof{Blah blah blah.}
\makeatother
```

**Do not use the `\copiesof` macro.**

### How do I change “N/A” to “NIL” (or or similar)?

Add this to the document preamble, **before** you use any of `\material`, `\copiesof`, or `\otherinstructions`:

```tex
\makeatletter
% Replace "N/A" with "NIL" to keep exams office happy :P
\def\@NA{NIL}
\let\@material\@NA
\let\@copiesof\@NA
\let\@otherinst\@NA
\makeatother
```

You can then use `\material`, `\copiesof`, or `\otherinstructions` as required. Unused options will print as “NIL”.
