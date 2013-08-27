all : alpha-analysis-note.pdf

alpha-analysis-note.pdf : alpha-analysis-note.tex $(wildcard gfx/*) $(wildcard gfx/*/*/*)
	xelatex $<
	xelatex $<

.PHONY : clean cleanall ps-strip

clean :
	rm alpha-analysis-note.aux  alpha-analysis-note.log  alpha-analysis-note.out

cleanall : clean
	rm alpha-analysis-note.pdf

ps-strip :
	find gfx -name "*.eps" -exec ./ps-strip.py {} \;
