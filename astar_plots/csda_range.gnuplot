set xrange [0:30]
set xlab "CSDA range, {/Symbol m}m"
set ylab "E, MeV"

set grid
set key off
set term epscairo enhanced font "Times-New-Roman,18" size 3,2.4
set output "csda_range.eps"

plot "astar.data" using ($2/2.3296*10000):1
