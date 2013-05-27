********************************************************************************
**
** File: $Id$
**
********************************************************************************

ouexam v2.3
=============

ouexam document class v2.3, 4 September 2012

Copyright 1999--2012 Nigel Stanger and University of Otago

This LaTeX2e document class enables the production of University of Otago
formatted examination papers. It handles all the fiddly layout requirements
(such as printing `TURN OVER' at the bottom of every page except the last),
and also ensures that the actual number of marks for questions in the
examination add up to the expected number of marks.


WHAT'S NEW IN VERSION 2.3

* Updated exam paper formatting to conform to latest University standards.

* Added "times" class option.

* ouexam now requires the fontenc, textcomp and lmodern packages.

* Generating the class documentation now required PDFLaTeX.


WHAT'S NEW IN VERSION 2.2

* Added time allocation macros.


WHAT'S NEW IN VERSION 2.1.3

* Changed the defaults for \material, \copiesof and \otherinstructions to
  "N/A".


WHAT'S NEW IN VERSION 2.1.2

* The "subject to inspection" messages that appear in the calculators and
  permitted material sections of the title page now only appear when
  calculators are allowed or there actually is additional permitted
  material, respectively.


WHAT'S NEW IN VERSION 2.1.1

* "END" is now printed at the bottom of the last page of the exam.


WHAT'S NEW IN VERSION 2.1

* Updated the calculators macro to conform to the new University calculator
  regulations. \allowcalculators now has an optional argument to specify
  the kinds of calculators permitted.

* \permitcalculators has been added as a synonym for \allowcalculators.


WHAT'S NEW IN VERSION 2.0.2

* If you omitted any of the required title page macros (\examyear,
  \papernumber, \papertitle or \department), ouexam crashed when trying
  to report the error. Fixed.

* Added the ability to specify "FY" (full-year) as a semester type in the
  \semester macro.


WHAT'S NEW IN VERSION 2.0.1

* There was a bug in the definition of the macros for numbering
  sub-sub-questions that meant they were numbered as "(a)" instead of the
  correct "(i)". Fixed.

* When referencing sub-questions or sub-sub-questions, the entire question
  number was included (that is, "1(b)(iii)" instead of just "(iii)"). This
  made it difficult to sensibly reference these items, so the relevant
  macros have been changed to omit this prefixed information. References to
  questions now print as "1", sub-questions as "(b)" and sub-sub-questions
  as "(iii)". If this does not suit your requirements, change the
  \labelquestion, \labelsubquestion or \labelsubsubquestion macros.


REQUIREMENTS

ouexam requires the verbatim class, which should be standard on most LaTeX
installations. The class documentation uses the graphicx and hyperref
packages, so you will have to install these first if you don't have them
already.


INSTALLING (UNIX OR SIMILAR)

A makefile is provided:

	* "make" will produce both ouexam.cls and ouexam.pdf.

	* "make class" will produce ouexam.cls. Place this file in a directory
	  somewhere in your TeX search path (e.g., if you use teTeX, put it in
	  texmf/tex/latex/ouexam or somewhere similar).

	* "make doc" will produce ouexam.pdf.
	

INSTALLING (EVERYTHING ELSE)

Run ouexam.ins through LaTeX to produce ouexam.cls. Place this file in a
directory somewhere in your LaTeX search path. Then run ouexam.dtx through
PDFLaTeX _three_ (yes, three) times to produce the documentation.
