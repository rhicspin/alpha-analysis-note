l_am = 27.8459821428571
l_gd = 13.6688719093407

set xrange [0:30]
set xlab "z, {/Symbol m}m"
set ylab "dE/dz, MeV/{/Symbol m}m"

set grid
set key box opaque bottom left
set term epscairo enhanced font "Times-New-Roman,18" size 3,2.4
set output "stopping_power.eps"

x0=NaN
y0=NaN
plot \
	 "astar.data" using (xx=l_am-$2/2.3296*10000,dx=xx-x0,x0=xx,xx-dx/2):(dy=$1-y0,y0=$1,-dy/dx) title "   Am" \
	,"astar.data" using (xx=l_gd-$2/2.3296*10000,dx=xx-x0,x0=xx,xx-dx/2):(dy=$1-y0,y0=$1,-dy/dx) title "   Gd"
