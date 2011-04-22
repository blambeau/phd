set terminal postscript "Arial" 25

set xrange [0.5:6.5];
set xlabel "learning sample (%)";
set xtics nomirror norotate ( \
	"3" 1,\
	"6" 2,\
	"12.5" 3,\
	"25" 4,\
	"50" 5, \
	"100" 6 \
)

set yrange [0.50:1.02];
set ylabel "accuracy";
set ytics nomirror norotate 0.5,0.1,1.0

set grid
set style data linespoints
set key right bottom;

set output "rpni-bluefringe-20.eps";
#set title 'target size = 20';
plot 'aai07.dat' every :::0::0 using 2:4 title "RPNI" with linespoints, \
     'aai07.dat' every :::0::0 using 2:6 title "BlueFringe" with linespoints;

set output "rpni-bluefringe-50.eps";
#set title 'target size = 50';
plot 'aai07.dat' every :::1::1 using 2:4 title "RPNI" with linespoints, \
     'aai07.dat' every :::1::1 using 2:6 title "BlueFringe" with linespoints;

set output "rpni-bluefringe-100.eps";
#set title 'target size = 100';
plot 'aai07.dat' every :::3::3 using 2:4 title "RPNI" with linespoints, \
     'aai07.dat' every :::3::3 using 2:6 title "BlueFringe" with linespoints;


