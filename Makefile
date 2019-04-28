TEX=xelatex
TEXFLAGS=-interaction=nonstopmode
DEBUGFLAGS=
LOG=> compile.log

all: charsheet.pdf 

.PHONY: clean cleanall debug remake
	
clean:
	rm -f charsheet.aux
	rm -f charsheet.bbl
	rm -f charsheet.bcf
	rm -f charsheet.blg
	rm -f charsheet.log
	rm -f charsheet.out
	rm -f charsheet.run.xml
	rm -f charsheet.toc

cleanall:
	make clean
	rm -f charsheet.pdf compile.log

remake:
	make cleanall
	make all

charsheet.pdf: *.tex #bilder/* 

debug: charsheet.tex
	$(TEX) $< $(DEBUGFLAGS)

%.pdf: %.tex # Muster für alle TeX-Dateien
	$(TEX) $< $(TEXFLAGS) $(LOG)
	$(TEX) $< $(TEXFLAGS) $(LOG)
	make clean