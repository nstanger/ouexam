Version History
===============

Version 2.4 (2013)
------------------

* The various question environments must now be correctly nested (sub-sub-questions
  within sub-questions within questions).

* The `draft` class option now has the full functionality you would expect
  (change bars, etc.).

* Disabled the `twocolumn` class option.

* Obsoleted the `\examsection` macro, which has been deprecated for ten years!

* `ouexam` was incompatible with the `hyperref` package. Fixed.

* Float pages on the last page of the document messed up both the page count
  and the “TURN OVER”/“END” sequencing. Fixed.


Version 2.3 (2012-09-04)
------------------------

* Updated exam paper formatting to conform to latest University standards.

* Added `times` class option.

* `ouexam` now requires the `fontenc`, `textcomp` and `lmodern` packages.

* Generating the class documentation now requires PDFLaTeX.


Version 2.2 (2010-04-26)
------------------------

* Added time allocation macros.


Version 2.1.3 (2009-04-28)
--------------------------

* Changed the defaults for `\material`, `\copiesof` and `\otherinstructions` to
  “N/A”.


Version 2.1.2 (2008-08-14)
--------------------------

* The “subject to inspection” messages that appear in the calculators and
  permitted material sections of the title page now only appear when
  calculators are allowed or there actually is additional permitted
  material, respectively.


Version 2.1.1 (2006-08-21)
--------------------------

* “END” is now printed at the bottom of the last page of the exam.


Version 2.1 (2004-04-16)
------------------------

* Updated the calculators macro to conform to the new University calculator
  regulations. `\allowcalculators` now has an optional argument to specify
  the kinds of calculators permitted.

* `\permitcalculators` has been added as a synonym for `\allowcalculators`.


Version 2.0.2 (2002-08-22)
--------------------------

* If you omitted any of the required title page macros (`\examyear`,
  `\papernumber`, `\papertitle` or `\department`), `ouexam` crashed when trying
  to report the error. Fixed.

* Added the ability to specify “FY” (full-year) as a semester type in the
  `\semester` macro.


Version 2.0.1 (2002-04-30)
--------------------------

* There was a bug in the definition of the macros for numbering
  sub-sub-questions that meant they were numbered as “(a)” instead of the
  correct “(i)”. Fixed.

* When referencing sub-questions or sub-sub-questions, the entire question
  number was included (that is, “1(b)(iii)” instead of just “(iii)”). This
  made it difficult to sensibly reference these items, so the relevant
  macros have been changed to omit this prefixed information. References to
  questions now print as “1”, sub-questions as “(b)” and sub-sub-questions
  as “(iii)”. If this does not suit your requirements, change the
  `\labelquestion`, `\labelsubquestion` or `\labelsubsubquestion` macros.


Version 2.0 (2002-01-30)
------------------------


Version 1.2 (2000-04-14)
------------------------


Version 1.1 (1999-04-20)
------------------------


Version 1.0 (1999-04-15)
------------------------
