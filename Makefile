all: final_report.html

clean:
	rm -f words.txt histogram.tsv histogram.png report.md report.html letters.tsv letters.png final_report.md final_report.html

words.txt:
	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'

report.html: report.rmd histogram.tsv histogram.png
	Rscript -e 'rmarkdown::render("$<")'

histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf #remove the Rplots file

histogram.tsv: histogram.r words.txt
	Rscript $<

#NEW 
#Adding rule for letters.tsv, which requires the R script and words.txt
letters.tsv: first_letter.R words.txt
	Rscript $< 
	
#Adding rule for letters.png, which requires letters.tsv
letters.png: letters.tsv
	Rscript -e 'library(ggplot2); qplot(letters, Freq, data = read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf #remove Rplots

#Adding rule for building the HTML document through mardown
final_report.html: final_report.rmd letters.tsv letters.png
	Rscript -e 'rmarkdown::render("$<")'

