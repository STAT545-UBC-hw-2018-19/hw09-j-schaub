# STAT547M: Homework 9 - Automating Data-Analysis Pipelines

## Overview
This repository contains changes to Shaun Jackman and Jenny Bryan's `make-activity`, which was built to follow the *Automating Data-Analysis Pipelines* activity. The original files for the `make-activity` repo can be found [here](https://github.com/STAT545-UBC/make-activity) and their tutorial can be found [here](http://stat545.com/automation04_make-activity.html).

The changes to the original files are done to satisfy the requirements for Homework 9 for UBC's STAT 547M course. For more information, please see the homework [instructions](http://stat545.com/Classroom/assignments/hw09/hw09.html)

## My Specific Changes

For the homework, I have completed the following tasks:

1. Produced an R script called `first_letter.R` to extract information on the frequency of the first letter of each word in the `words.txt` file. This txt file can be downloaded from [here](https://github.com/STAT545-UBC/make-activity/blob/master/words.txt).

2. Added a rule to the Makefile to extract the information from `first_letter.R` and create a `.tsv` file.

3. Added a rule to the Makefile to produce a `.png` file of the `letters.tsv` data.

4. Produced an R Markdown file called `first_letter_report.Rmd` to display the `letters.png`.

5. Added a rule to the Makefile to render `final_report.Rmd` into a `final_report.html` document.

## NOTE
Building the Makefile will occasionally produce an error when creating words.txt (Something like: "Incomplete last line"). 
This will result in a cascade of errors and the Makefile will not work.
If this first error message pops up for words.txt, clean all and rebuild until the error doesn't show up.
Then the Makefile will run properly.

I think this error has something to do with the online download of words.txt, which only produces a partial file.
So trying to re-download by cleaning and rebuilding will re-download until you get a full words.txt file to work with.

## Important Files

The following files are relevant for the reviewer:

- The [Makefile](https://github.com/STAT545-UBC-students/hw09-j-schaub/blob/master/Makefile): Contains the original and added rules to produce a `letters.tsv` file from `first_letter.R`, a plot in `letters.png` of the `letters.tsv` data, and an `final_report.html` file from `final_report.Rmd`.

- The [R Script](https://github.com/STAT545-UBC-stKudents/hw09-j-schaub/blob/master/first_letter.R): `first_letter.R`, which contains the code to determine the frequency of the first letter of each word.

- The [.tsv File](https://github.com/STAT545-UBC-students/hw09-j-schaub/blob/master/letters.tsv): `letters.tsv`, which contains the information in a table format that was extracted from `word_length.R`, produced by the `Makefile`.

- The [R Markdown File](https://github.com/STAT545-UBC-students/hw09-j-schaub/blob/master/final_report.Rmd): `final_report.Rmd`, which contains the code to display the table from the `letters.tsv` file as `letters.png`.

- The [.png File](https://github.com/STAT545-UBC-students/hw09-j-schaub/blob/master/letters.png): `letters.png`, which contains the plot produced by the `Makefile` from the `letters.tsv` file.

- The [HTML File](https://github.com/STAT545-UBC-students/hw09-j-schaub/blob/master/final_report.html): Contains `final_report.Rmd` as `final_report.html`.
