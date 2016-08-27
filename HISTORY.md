Version History
===============

Version 2.4 (2016-08-27)
------------------------

### New features ###

* Key-value options for the `examsection`, `question`, `subquestion`, and
  `subsubquestion` environments. These let you control things like whether
  marks and section titles are printed, and whether or not to compute and
  verify marks totals for sub-components of sections and questions.

* A `\questionskip` length to let you adjust the spacing between top-level
  questions.

* Optional questions—e.g., answer any three of five, where each question is
  worth 20 marks each, for a total of 60—freaked out the automatic total
  verification. The totalling can now be disabled for a section using the
  `don't verify total` option (see above).

* Added new `embargo` class option for embargoed exam papers, which have
  somewhat different title page formatting requirements.

### Fixes ###

* The various question environments must now be correctly nested (i.e.,
  sub-sub-questions within sub-questions within questions). [Stephen Cranefield]

* The `draft` class option now has the full functionality you would expect
  (change bars, etc.).

* Disabled the `twocolumn` class option.

* Obsoleted the `\newsection` macro, which has been deprecated for ten years!

* `ouexam` was incompatible with the `hyperref` package. Fixed. [Mark George]

* Float pages on the last page of the document messed up both the page count
  and the “TURN OVER”/“END” sequencing. Fixed. (Also removed the `lastpage`
  page style as part of this fix.) [Stephen Cranefield]

* Fixed bug that caused a crash when there was a `verbatim` environment
  followed by a blank line at the end of a question. [Mark George]

* Updated to latest 2016 calculator rules.


Version 2.3.1 (2014-09-15)
--------------------------

* Removed “Paper” from the title box to conform to University standards.


Version 2.3 (2012-09-04)
------------------------

* Updated exam paper formatting to conform to latest University standards.

* Added `times` class option.

* Disabled `10pt` and `11pt` class options.

* `ouexam` now requires the `fontenc`, `textcomp` and `lmodern` packages.

* Generating the class documentation now requires PDFLaTeX.


Version 2.2 (2010-04-26)
------------------------

* Added time allocation macros.


Version 2.1.3 (2009-04-28)
--------------------------

* Changed the defaults for `\material`, `\copiesof` and `\otherinstructions` to
  “N/A”.

* Fixed vertical spacing of title page.


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

* Removed the `\marks` macro because it conflicts with a macro in e-TeX.


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

A complete rewrite from scratch. **This version is not backwards compatible
with earlier versions!** However, the class will detect attempts to use
obsolete features.

* Added `draft` and `markingschedule` class options.

* Added checking for the correct number of marks.

* Added support for summer school exams.

* Fixed headers so that the page number is always centered.

* Removed `multichoice` class option and all associated macros and environments.

* Disabled `twoside` class option, as exam papers are always printed
  single-sided.


Version 1.2 (2000-04-14)
------------------------

* Added support for marking schedule information.


Version 1.1 (1999-04-20)
------------------------

* Added `multichoice` class option.

* Added automatic calculation of marks totals for questions.

* Added tracking of the number of questions in an exam.

* The `subquestions` and `subsubquestions` environment are now disabled when
  the `multichoice` class option is specified.

* Changed default font size to 12pt.

* Removed dependence on `calc` and `ifthen` packages.


Version 1.0 (1999-04-15)
------------------------

Initial release.
