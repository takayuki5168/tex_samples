.SUFFIXES: .tex .dvi .pdf

all: main.pdf

clean:
	rm -rf *.aux *.dvi *.log

.tex.dvi:
	platex -kanji=utf-8 $<

.dvi.pdf:
	dvipdfmx $<

main.pdf: main.tex main.dvi
