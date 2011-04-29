set terminal postscript "Arial" 30;
set size ratio +0.8;

set style line 1 lt 1 lw 3;
set style line 2 lt 2 lw 3;
set style line 3 lt 3 lw 3;
set style line 4 lt 6 lw 3;
set style line 5 lt 1 lw 2;
set style line 6 lt 2 lw 2;
set style line 7 lt 3 lw 2;
set style line 8 lt 6 lw 2;
set pointsize 2.0;

set lmargin 3
set bmargin 2
set rmargin 0
set tmargin 1

set grid
set style data linespoints;
set key right bottom;

set xrange [0.5:6.5];
set xlabel "learning sample (%)";
set xtics nomirror norotate ("3" 1, "6" 2, "12.5" 3, "25" 4, "50" 5, "100" 6);

set logscale y;
set autoscale y;
set ylabel "time (sec.)";
set output "time.eps";

################################################################################ All
set title 'target size = 20';
set yrange [0.001:1]
set ytics nomirror norotate 0.001,0.1,10;
plot 'aai08-time.dat' every :::0::0 using 2:3  title "RPNI" with lp ls 1, \
     'aai08-time.dat' every :::0::0 using 2:4  title "Blue-fringe" with lp ls 2, \
     'aai08-time.dat' every :::0::0 using 2:5  title "QSM-rpni" with lp ls 3, \
     'aai08-time.dat' every :::0::0 using 2:6  title "QSM-fringe" with lp ls 4;

set title 'target size = 50';
set yrange [0.001:50]
set ytics nomirror norotate 0.01,0.1,10;
plot 'aai08-time.dat' every :::1::1 using 2:3  title "RPNI" with lp ls 1, \
     'aai08-time.dat' every :::1::1 using 2:4  title "Blue-fringe" with lp ls 2, \
     'aai08-time.dat' every :::1::1 using 2:5  title "QSM-rpni" with lp ls 3, \
     'aai08-time.dat' every :::1::1 using 2:6  title "QSM-fringe" with lp ls 4;

set title 'target size = 100';
set yrange [0.01:500]
set ytics nomirror norotate 0.1,0.1,500;
plot 'aai08-time.dat' every :::2::2 using 2:3  title "RPNI" with lp ls 1, \
     'aai08-time.dat' every :::2::2 using 2:4  title "Blue-fringe" with lp ls 2, \
     'aai08-time.dat' every :::2::2 using 2:5  title "QSM-rpni" with lp ls 3, \
     'aai08-time.dat' every :::2::2 using 2:6  title "QSM-fringe" with lp ls 4;

set title 'target size = 200';
set yrange [0.01:5000]
set ytics nomirror norotate 0.1,0.1,5000;
plot 'aai08-time.dat' every :::3::3 using 2:3  title "RPNI" with lp ls 1, \
     'aai08-time.dat' every :::3::3 using 2:4  title "Blue-fringe" with lp ls 2, \
     'aai08-time.dat' every :::3::3 using 2:5  title "QSM-rpni" with lp ls 3, \
     'aai08-time.dat' every :::3::3 using 2:6  title "QSM-fringe" with lp ls 4;

################################################################################ RPNI vs. Blue-fringe
set title 'target size = 20';
set yrange [0.001:1]
set ytics nomirror norotate 0.001,0.1,10;
plot 'aai08-time.dat' every :::0::0 using 2:3 title "RPNI" with lp ls 1, \
     'aai08-time.dat' every :::0::0 using 2:4 title "Blue-fringe" with lp ls 3;

set title 'target size = 50';
set yrange [0.001:50]
set ytics nomirror norotate 0.01,0.1,10;
plot 'aai08-time.dat' every :::1::1 using 2:3 title "RPNI" with lp ls 1, \
     'aai08-time.dat' every :::1::1 using 2:4 title "Blue-fringe" with lp ls 3;

set title 'target size = 100';
set yrange [0.01:500]
set ytics nomirror norotate 0.1,0.1,500;
plot 'aai08-time.dat' every :::2::2 using 2:3 title "RPNI" with lp ls 1, \
     'aai08-time.dat' every :::2::2 using 2:4 title "Blue-fringe" with lp ls 3;

set title 'target size = 200';
set yrange [0.01:5000]
set ytics nomirror norotate 0.1,0.1,5000;
plot 'aai08-time.dat' every :::3::3 using 2:3 title "RPNI" with lp ls 1, \
     'aai08-time.dat' every :::3::3 using 2:4 title "Blue-fringe" with lp ls 3;

################################################################################ RPNI vs. QSM-rpni
set title 'target size = 20';
set yrange [0.001:1]
set ytics nomirror norotate 0.001,0.1,10;
plot 'aai08-time.dat' every :::0::0 using 2:3 title "RPNI" with lp ls 1, \
     'aai08-time.dat' every :::0::0 using 2:5 title "QSM-rpni" with lp ls 3;

set title 'target size = 50';
set yrange [0.001:50]
set ytics nomirror norotate 0.01,0.1,10;
plot 'aai08-time.dat' every :::1::1 using 2:3 title "RPNI" with lp ls 1, \
     'aai08-time.dat' every :::1::1 using 2:5 title "QSM-rpni" with lp ls 3;

set title 'target size = 100';
set yrange [0.01:500]
set ytics nomirror norotate 0.1,0.1,500;
plot 'aai08-time.dat' every :::2::2 using 2:3 title "RPNI" with lp ls 1, \
     'aai08-time.dat' every :::2::2 using 2:5 title "QSM-rpni" with lp ls 3;

set title 'target size = 200';
set yrange [0.01:5000]
set ytics nomirror norotate 0.1,0.1,5000;
plot 'aai08-time.dat' every :::3::3 using 2:3 title "RPNI" with lp ls 1, \
     'aai08-time.dat' every :::3::3 using 2:5 title "QSM-rpni" with lp ls 3;

################################################################################ Blue-fringe vs. QSM-fringe
set title 'target size = 20';
set yrange [0.001:1]
set ytics nomirror norotate 0.001,0.1,10;
plot 'aai08-time.dat' every :::0::0 using 2:4  title "Blue-fringe" with lp ls 1, \
     'aai08-time.dat' every :::0::0 using 2:6  title "QSM-fringe" with lp ls 3;

set title 'target size = 50';
set yrange [0.001:50]
set ytics nomirror norotate 0.01,0.1,10;
plot 'aai08-time.dat' every :::1::1 using 2:4  title "Blue-fringe" with lp ls 1, \
     'aai08-time.dat' every :::1::1 using 2:6  title "QSM-fringe" with lp ls 3;

set title 'target size = 100';
set yrange [0.01:500]
set ytics nomirror norotate 0.1,0.1,500;
plot 'aai08-time.dat' every :::2::2 using 2:4  title "Blue-fringe" with lp ls 1, \
     'aai08-time.dat' every :::2::2 using 2:6  title "QSM-fringe" with lp ls 3;

set title 'target size = 200';
set yrange [0.01:5000]
set ytics nomirror norotate 0.1,0.1,5000;
plot 'aai08-time.dat' every :::3::3 using 2:4  title "Blue-fringe" with lp ls 1, \
     'aai08-time.dat' every :::3::3 using 2:6  title "QSM-fringe" with lp ls 3;

################################################################################ QSM-rpni vs. QSM-fringe
set title 'target size = 20';
set yrange [0.001:1]
set ytics nomirror norotate 0.001,0.1,10;
plot 'aai08-time.dat' every :::0::0 using 2:5  title "QSM-rpni" with lp ls 1, \
     'aai08-time.dat' every :::0::0 using 2:6  title "QSM-fringe" with lp ls 3;

set title 'target size = 50';
set yrange [0.001:50]
set ytics nomirror norotate 0.01,0.1,10;
plot 'aai08-time.dat' every :::1::1 using 2:5  title "QSM-rpni" with lp ls 1, \
     'aai08-time.dat' every :::1::1 using 2:6  title "QSM-fringe" with lp ls 3;

set title 'target size = 100';
set yrange [0.01:500]
set ytics nomirror norotate 0.1,0.1,500;
plot 'aai08-time.dat' every :::2::2 using 2:5  title "QSM-rpni" with lp ls 1, \
     'aai08-time.dat' every :::2::2 using 2:6  title "QSM-fringe" with lp ls 3;

set title 'target size = 200';
set yrange [0.01:5000]
set ytics nomirror norotate 0.1,0.1,5000;
plot 'aai08-time.dat' every :::3::3 using 2:5  title "QSM-rpni" with lp ls 1, \
     'aai08-time.dat' every :::3::3 using 2:6  title "QSM-fringe" with lp ls 3;


