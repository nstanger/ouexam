Version History
===============

Version 2.3
-----------

* Updated exam paper formatting to conform to latest University standards.

* Added “times” class option.

* ouexam now requires the fontenc, textcomp and lmodern packages.

* Generating the class documentation now required PDFLaTeX.


Version 2.2
-----------

* Added time allocation macros.


Version 2.1.3
-------------

* Changed the defaults for `\material`, `\copiesof` and `\otherinstructions` to
  “N/A”.


Version 2.1.2
-------------

* The “subject to inspection” messages that appear in the calculators and
  permitted material sections of the title page now only appear when
  calculators are allowed or there actually is additional permitted
  material, respectively.


Version 2.1.1
-------------

* “END” is now printed at the bottom of the last page of the exam.


Version 2.1
-----------

* Updated the calculators macro to conform to the new University calculator
  regulations. `\allowcalculators` now has an optional argument to specify
  the kinds of calculators permitted.

* `\permitcalculators` has been added as a synonym for `\allowcalculators`.


Version 2.0.2
-------------

* If you omitted any of the required title page macros (`\examyear`,
  `\papernumber`, `\papertitle` or `\department`), ouexam crashed when trying
  to report the error. Fixed.

* Added the ability to specify “FY” (full-year) as a semester type in the
  `\semester` macro.


Version 2.0.1
-------------

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
