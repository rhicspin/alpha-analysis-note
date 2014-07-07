all : alpha-analysis-note.pdf

astar_plots :
	$(MAKE) -C astar_plots

alpha-analysis-note.pdf : alpha-analysis-note.tex astar_plots
	latexmk -pdf -pdflatex="xelatex -halt-on-error" -use-make $<

.PHONY : clean cleanall ps-strip astar_plots alpha-analysis-note.pdf

clean :
	latexmk -CA
	$(MAKE) -C astar_plots clean

cleanall : clean
	rm alpha-analysis-note.pdf

ps-strip :
	find gfx -name "*.eps" -exec ./ps-strip.py {} \;
