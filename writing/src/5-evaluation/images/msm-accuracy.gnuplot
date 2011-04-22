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

set output "msm-accuracy-32.eps";
#set title 'target size = 32';
plot 'icgi08.dat' every :::0::0 using 1:4 title "RPNI" with linespoints, \
     'icgi08.dat' every :::0::0 using 1:5 title "BlueFringe" with linespoints, \
     'icgi08.dat' every :::0::0 using 1:7 title "MSM (5%)" with linespoints, \
     'icgi08.dat' every :::0::0 using 1:8 title "MSM (10%)" with linespoints, \
     'icgi08.dat' every :::0::0 using 1:9 title "MSM (20%)" with linespoints, \
     'icgi08.dat' every :::0::0 using 1:10 title "MSM (100%)" with linespoints;

set output "msm-accuracy-64.eps";
#set title 'target size = 64';
plot 'icgi08.dat' every :::1::1 using 1:4 title "RPNI" with linespoints, \
     'icgi08.dat' every :::1::1 using 1:5 title "BlueFringe" with linespoints, \
     'icgi08.dat' every :::1::1 using 1:7 title "MSM (5%)" with linespoints, \
     'icgi08.dat' every :::1::1 using 1:8 title "MSM (10%)" with linespoints, \
     'icgi08.dat' every :::1::1 using 1:9 title "MSM (20%)" with linespoints, \
     'icgi08.dat' every :::1::1 using 1:10 title "MSM (100%)" with linespoints;


