all : alpha-analysis-note.pdf

astar_plots :
	$(MAKE) -C astar_plots

alpha-analysis-note.pdf : alpha-analysis-note.tex $(wildcard gfx/*) $(wildcard gfx/*/*/*) astar_plots
	latexmk -pdf -pdflatex="xelatex -halt-on-error" -use-make $<

.PHONY : clean cleanall ps-strip astar_plots

clean :
	latexmk -CA
	$(MAKE) -C astar_plots clean

cleanall : clean
	rm alpha-analysis-note.pdf

ps-strip :
	find gfx -name "*.eps" -exec ./ps-strip.py {} \;
