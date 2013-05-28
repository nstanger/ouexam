Things To Do
============

- ouexam appears to be incompatible with hyperref? Crashes during
  `\maketitlepage`. (Mark George)

- Specify questions with no marks attached. `\question*` perhaps?

- Marks totalling currently doesn’t work with sections where not all
  questions are to be answered (e.g., “Answer any 2 questions”). At the
  moment it totals up all the questions, when in fact the total should be
  less. Workaround: reset the counter to the correct total after the last
  question in the section.

- Look at bundling all the various support files into the .dtx file?

- Figure out how to gobble line breaks before a `\end{subquestion}` so that they
  don’t screw up the positioning of the number of marks. A similar issue seems
  to arise with lgrind’ed listings that appear at the end of questions (but
  this actually causes things to break).

- Some way of entering timings for questions (Andrew Long):

> Further to our discussion on exam timings. Maybe it would be 
> useful to provide a way to show the timings for each question
> using your LaTeX exam class? Perhaps they could appear in the 
> margin next to each question.

- Add up marks for marking schedule and check they are the same as the total
  marks for a question (Richard?).

- Generate marking sheets from the marking schedule info? (to appear at end
  of document)

- Reinstate question mark subtotals as a class option (format [Question y total
  x marks]).

- Options for positioning of mark amounts (end of question vs. in margin).

- Styles for number of marks?

- Options for positioning of page numbers (footer vs. header).

- Different types of questions (e.g., multiple choice, fill in the blank, etc.).

- Does the draft option need to be passed to the article class?

- `\questionskip`: how much whitespace after a question (default `\baselineskip`).
  Turn this off when `markingschedule` is active?
