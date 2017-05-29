all: histogram.tsv

clean:
	rm -f words.txt histogram.tsv

histogram.tsv: histogram.r words.txt
	Rscript $<

words.txt: /usr/share/dict/words
	cp $< $@