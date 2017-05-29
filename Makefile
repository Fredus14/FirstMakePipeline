all: histogram.png

clean:
	rm -f words.txt histogram.tsv

histogram.tsv: histogram.r words.txt
	Rscript $<

words.txt: /usr/share/dict/words
	cp $< $@

histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'