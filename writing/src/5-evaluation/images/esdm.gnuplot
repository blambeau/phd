set terminal postscript "Arial" 30;
set size ratio +0.9;

set style line 1 lt 1 lw 3;
set style line 2 lt 2 lw 3;
set style line 3 lt 3 lw 3;
set style line 4 lt 6 lw 3;
set style line 5 lt 1 lw 2;
set style line 6 lt 2 lw 2;
set style line 7 lt 3 lw 2;
set style line 8 lt 6 lw 2;
set pointsize 1.8;

set lmargin 1
set bmargin 2
set rmargin 0
set tmargin 1

set grid
set style data linespoints;
set key right bottom;

set xrange [0.5:6.5];
set xlabel "learning sample (%)";
set xtics nomirror norotate ("3" 1, "6" 2, "12.5" 3, "25" 4, "50" 5, "100" 6);

################################################################################ Accuracy
set yrange [0.50:1.02];
set ylabel "accuracy";
set ytics nomirror norotate 0.5,0.1,1.0

set output "edsm-acc-20.eps";
set title 'target size = 20';
plot 'aai08-accuracy.dat' every :::0::0 using 2:4 title "RPNI" with lp ls 1, \
     'aai08-accuracy.dat' every :::0::0 using 2:6 title "Blue-fringe" with lp ls 3;

set output "edsm-acc-50.eps";
set title 'target size = 50';
plot 'aai08-accuracy.dat' every :::1::1 using 2:4 title "RPNI" with lp ls 1, \
     'aai08-accuracy.dat' every :::1::1 using 2:6 title "Blue-fringe" with lp ls 3;

set output "edsm-acc-100.eps";
set title 'target size = 100';
plot 'aai08-accuracy.dat' every :::2::2 using 2:4 title "RPNI" with lp ls 1, \
     'aai08-accuracy.dat' every :::2::2 using 2:6 title "Blue-fringe" with lp ls 3;

set output "edsm-acc-200.eps";
set title 'target size = 200';
plot 'aai08-accuracy.dat' every :::3::3 using 2:4 title "RPNI" with lp ls 1, \
     'aai08-accuracy.dat' every :::3::3 using 2:6 title "Blue-fringe" with lp ls 3;

################################################################################ Positive queries
set autoscale y;
set ylabel "nb. queries (pos)";

set yrange [-6:11];
set ytics nomirror norotate 0,2,10;
set output "edsm-pos-queries-20.eps";
set title 'target size = 20';
plot 'aai08-queries.dat' every :::0::0 using 3:4 title "QSM-rpni +" with linespoints ls 1, \
     'aai08-queries.dat' every :::1::1 using 3:4 title "QSM-fringe +" with linespoints ls 3;

set yrange [-50:100];
set output "edsm-pos-queries-50.eps";
set ytics nomirror norotate 0,20,100;
set title 'target size = 50';
plot 'aai08-queries.dat' every :::2::2 using 3:4 title "QSM-rpni +" with linespoints ls 1, \
     'aai08-queries.dat' every :::3::3 using 3:4 title "QSM-fringe +" with linespoints ls 3;

set yrange [-200:350];
set output "edsm-pos-queries-100.eps";
set ytics nomirror norotate 0,100,400;
set title 'target size = 100';
plot 'aai08-queries.dat' every :::4::4 using 3:4 title "QSM-rpni +" with linespoints ls 1, \
     'aai08-queries.dat' every :::5::5 using 3:4 title "QSM-fringe +" with linespoints ls 3;

set yrange [-1000:2000];
set ytics nomirror norotate 0,400,2000;
set output "edsm-pos-queries-200.eps";
set title 'target size = 200';
plot 'aai08-queries.dat' every :::6::6 using 3:4 title "QSM-rpni +" with linespoints ls 1, \
     'aai08-queries.dat' every :::7::7 using 3:4 title "QSM-fringe +" with linespoints ls 3;

################################################################################ Negative queries
set ylabel "nb. queries (neg)";

set yrange [-6:11];
set ytics nomirror norotate 0,2,10;
set output "edsm-neg-queries-20.eps";
set title 'target size = 20';
plot 'aai08-queries.dat' every :::0::0 using 3:5 title "QSM-rpni -" with linespoints ls 1, \
     'aai08-queries.dat' every :::1::1 using 3:5 title "QSM-fringe -" with linespoints ls 3;

set yrange [-50:100];
set output "edsm-neg-queries-50.eps";
set ytics nomirror norotate 0,20,100;
set title 'target size = 50';
plot 'aai08-queries.dat' every :::2::2 using 3:5 title "QSM-rpni -" with linespoints ls 1, \
     'aai08-queries.dat' every :::3::3 using 3:5 title "QSM-fringe -" with linespoints ls 3;

set yrange [-200:350];
set output "edsm-neg-queries-100.eps";
set ytics nomirror norotate 0,100,400;
set title 'target size = 100';
plot 'aai08-queries.dat' every :::4::4 using 3:5 title "QSM-rpni -" with linespoints ls 1, \
     'aai08-queries.dat' every :::5::5 using 3:5 title "QSM-fringe -" with linespoints ls 3;

set yrange [-1000:2000];
set ytics nomirror norotate 0,400,2000;
set output "edsm-neg-queries-200.eps";
set title 'target size = 200';
plot 'aai08-queries.dat' every :::6::6 using 3:5 title "QSM-rpni -" with linespoints ls 1, \
     'aai08-queries.dat' every :::7::7 using 3:5 title "QSM-fringe -" with linespoints ls 3;

################################################################################ Time
set logscale y;
set autoscale y;
set ylabel "time (sec.)";

set output "edsm-time-20.eps";
set title 'target size = 20';
set yrange [0.001:1]
set ytics nomirror norotate 0.001,0.1,10;
plot 'aai08-time.dat' every :::0::0 using 2:3 title "RPNI" with lp ls 1, \
     'aai08-time.dat' every :::0::0 using 2:4 title "Blue-fringe" with lp ls 3;

set output "edsm-time-50.eps";
set yrange [0.001:50]
set ytics nomirror norotate 0.01,0.1,10;
set title 'target size = 50';
plot 'aai08-time.dat' every :::1::1 using 2:3 title "RPNI" with lp ls 1, \
     'aai08-time.dat' every :::1::1 using 2:4 title "Blue-fringe" with lp ls 3;

set output "edsm-time-100.eps";
set yrange [0.01:500]
set ytics nomirror norotate 0.1,0.1,500;
set title 'target size = 100';
plot 'aai08-time.dat' every :::2::2 using 2:3 title "RPNI" with lp ls 1, \
     'aai08-time.dat' every :::2::2 using 2:4 title "Blue-fringe" with lp ls 3;

set output "edsm-time-200.eps";
set yrange [0.01:5000]
set ytics nomirror norotate 0.1,0.1,5000;
set title 'target size = 200';
plot 'aai08-time.dat' every :::3::3 using 2:3 title "RPNI" with lp ls 1, \
     'aai08-time.dat' every :::3::3 using 2:4 title "Blue-fringe" with lp ls 3;

