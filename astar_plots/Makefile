all : csda_range.eps stopping_power.eps

csda_range.eps : csda_range.gnuplot
	gnuplot $<

stopping_power.eps : stopping_power.gnuplot
	gnuplot $<

.PHONY : clean

clean :
	rm csda_range.eps stopping_power.eps
