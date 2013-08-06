all : alpha-analysis-note.pdf

alpha-analysis-note.pdf : alpha-analysis-note.tex
	xelatex $<
	xelatex $<

.PHONY : clean cleanall

clean :
	rm alpha-analysis-note.aux  alpha-analysis-note.log  alpha-analysis-note.out

cleanall : clean
	rm alpha-analysis-note.pdf
