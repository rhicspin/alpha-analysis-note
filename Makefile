all : alpha-analysis-note.pdf

astar_plots :
	$(MAKE) -C astar_plots

alpha-analysis-note.pdf : alpha-analysis-note.tex $(wildcard gfx/*) $(wildcard gfx/*/*/*) astar_plots
	xelatex $<
	xelatex $<

.PHONY : clean cleanall ps-strip astar_plots

clean :
	rm alpha-analysis-note.aux  alpha-analysis-note.log  alpha-analysis-note.out
	$(MAKE) -C astar_plots clean

cleanall : clean
	rm alpha-analysis-note.pdf

ps-strip :
	find gfx -name "*.eps" -exec ./ps-strip.py {} \;
