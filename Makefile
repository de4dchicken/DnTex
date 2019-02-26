TEX=xelatex
TEXFLAGS=-interaction=nonstopmode
DEBUGFLAGS=
LOG=> compile.log

TEXFILE:=sheet.tex

all: sheet.pdf

.PHONY: clean cleanall debug
	
clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.bcf
	rm -f *.blg
	rm -f *.log
	rm -f *.out
	rm -f *.run.xml
	rm -f *.toc

cleanall:
	make clean
	rm -f *.pdf compile.log

sheet.pdf: *.tex assets/*.tex

debug: sheet.tex
	$(TEX) $< $(DEBUGFLAGS)

%.pdf: %.tex #pattern for every .tex
	$(TEX) $< $(TEXFLAGS) $(LOG)
	$(TEX) $< $(TEXFLAGS) $(LOG)
	make clean
	